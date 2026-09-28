# Agent Workspace Template

A small, tool-neutral starting point for giving coding agents clear project context, development guidance, and reusable task workflows.

The template uses a root `AGENTS.md` as its shared entry point. Supporting documentation uses ordinary Markdown. Reusable workflows follow the Agent Skills folder format; agents can read each `SKILL.md` directly when automatic skill discovery is unavailable.

Automatic discovery varies by agent. This template keeps the shared content readable and does not require a particular agent runtime or configuration.

## Structure

```text
.
├── AGENTS.md
├── README.md
├── init.sh
├── .gitignore
├── docs/
│   ├── architecture/
│   │   └── overview.md
│   └── development/
│       └── testing.md
└── .agents/
    └── skills/
        ├── bug-fix/
        │   └── SKILL.md
        ├── code-review/
        │   └── SKILL.md
        ├── performance-review/
        │   └── SKILL.md
        └── refactor/
            └── SKILL.md
```

## Use the template

1. Copy the files into your project.
2. Replace the placeholders in `AGENTS.md`, `docs/architecture/overview.md`, and `docs/development/testing.md`.
3. Remove sections and example rules that do not apply; add only project-specific guidance.
4. Keep `AGENTS.md` focused on information agents need to orient themselves and route tasks to relevant documents.
5. Add a skill only for a reusable workflow. Keep its procedure in that skill's `SKILL.md` and supporting scripts or references alongside it when needed.

## Initialize a new GitHub repository with init.sh

Use this script when you have a fresh copy of the template files in a new directory without an existing `.git` directory. Do not run it inside this template's Git checkout or another existing Git repository. It initializes Git in the current directory and commits all non-ignored files, so review the files and remove secrets before running it.

```bash
bash init.sh <repo-name> [owner] [--private|--public|--internal]
```

Examples:

```bash
bash init.sh my-agent-guidelines
bash init.sh my-agent-guidelines MingRay --public
```

The default visibility is `--private`. Pass `--public` only when the repository should be public. If GitHub CLI is authenticated, the script creates the remote repository and pushes the initial commit. If `owner` is omitted, GitHub CLI uses the authenticated account. The `--internal` option is available only when the GitHub account or organization supports internal repositories.

If GitHub CLI (`gh`) is missing or not authenticated, the script still creates a local Git repository and initial commit. Create the remote repository manually, then run the `git remote add origin` and `git push` commands printed by the script. To use GitHub CLI, install it and sign in with `gh auth login` first.

### Requirements and supported shells

- Bash and Git are required. No Node.js or project runtime is needed by `init.sh`.
- Git must have `user.name` and `user.email` configured; set them with `git config --global user.name` and `git config --global user.email`.
- On macOS and Linux, run it from Bash or another terminal that provides Bash.
- On Windows, run it in Git Bash or WSL. PowerShell and Command Prompt cannot run this Bash script directly.
- GitHub CLI is optional. It is required only for automatic remote creation and push; the selected GitHub account needs permission to create a repository.
- `--internal` may be rejected for personal accounts or organizations that do not allow internal repositories.

`.gitignore` provides a common starting set of local, environment, dependency, and build-output ignores. Extend it for the language and tools used by your project; it is not a complete ignore list for every stack.

## Design principles

- Keep one concise, ordinary-Markdown entry point at the repository root.
- Put architecture and development documentation in `docs/`.
- Load task-specific procedures only when they are relevant.
- Treat examples as prompts to customize, not universal rules.
- Do not claim an agent automatically discovers files unless that behavior is documented for that agent.
