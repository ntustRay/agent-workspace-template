#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  bash init.sh <repo-name> [owner] [--private|--public|--internal]

Initializes the current template directory as a Git repository and creates/pushes
a GitHub repository when GitHub CLI is installed and authenticated.

Defaults:
  owner       The authenticated GitHub user (when gh is available)
  visibility  --private

Run from a fresh copy of the template, outside any existing Git repository.
EOF
}

fail() {
  printf 'Error: %s\n' "$1" >&2
  exit 1
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

if [[ $# -lt 1 || $# -gt 3 ]]; then
  usage >&2
  exit 2
fi

REPO_NAME="$1"
OWNER="${2:-}"
VISIBILITY="${3:---private}"

case "$VISIBILITY" in
  --private|--public|--internal) ;;
  *) fail "Visibility must be --private, --public, or --internal." ;;
esac

command -v git >/dev/null 2>&1 || fail "Git is required."
[[ -f AGENTS.md && -d docs && -d .agents/skills ]] || fail "Run this script from the root of a copied template."

if git rev-parse --show-toplevel >/dev/null 2>&1; then
  fail "This directory is already inside a Git repository. Use a fresh template copy without a .git directory."
fi

git config user.name >/dev/null 2>&1 || fail "Set your Git author name first: git config --global user.name \"Your Name\""
git config user.email >/dev/null 2>&1 || fail "Set your Git author email first: git config --global user.email \"you@example.com\""

CREATE_REMOTE=false
if command -v gh >/dev/null 2>&1; then
  if gh auth status >/dev/null 2>&1; then
    CREATE_REMOTE=true
  else
    printf "GitHub CLI is installed but not authenticated; creating a local repository only.\n"
    printf "To enable remote creation later, run: gh auth login\n"
  fi
fi

git init
git branch -M main
git add --all
git commit -m "chore: initialize project"

if [[ "$CREATE_REMOTE" == true ]]; then
  REPO_PATH="$REPO_NAME"
  if [[ -n "$OWNER" ]]; then
    REPO_PATH="$OWNER/$REPO_NAME"
  fi

  if ! gh repo create "$REPO_PATH" "$VISIBILITY" \
    --description "Agent workspace for coding projects." \
    --source=. \
    --remote=origin \
    --push; then
    printf "\nThe local repository and commit were created, but GitHub repo creation or push failed.\n" >&2
    printf "Create the remote repository, then run:\n" >&2
    printf "  git remote add origin <repository-url>\n" >&2
    printf "  git push -u origin main\n" >&2
    exit 1
  fi
else
  printf "\nThe local repository was initialized. Create a GitHub repository, then run:\n"
  printf "  git remote add origin <repository-url>\n"
  printf "  git push -u origin main\n"
fi
