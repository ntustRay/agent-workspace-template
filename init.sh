#!/usr/bin/env bash
set -euo pipefail

REPO_NAME="${1:-agent-workspace-template}"
OWNER="${2:-ntustRay}"
VISIBILITY="${3:---public}"

git init
git branch -M main
git add .
git commit -m "chore: initialize agent workspace template"

if command -v gh >/dev/null 2>&1; then
  gh repo create "$OWNER/$REPO_NAME" "$VISIBILITY" \
    --description "Minimal vendor-neutral AI agent instruction template for coding projects." \
    --source=. \
    --remote=origin \
    --push
else
  echo "GitHub CLI 'gh' is not installed."
  echo "Install it or create the GitHub repo manually, then run:"
  echo "git remote add origin git@github.com:$OWNER/$REPO_NAME.git"
  echo "git push -u origin main"
fi
