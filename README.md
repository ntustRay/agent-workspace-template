# Agent Workspace Template

A small, tool-neutral starting point for giving coding agents clear project context, development guidance, and reusable task workflows.

The template uses a root `AGENTS.md` as its shared entry point. Supporting documentation uses ordinary Markdown. Reusable workflows follow the Agent Skills folder format; agents can read each `SKILL.md` directly when automatic skill discovery is unavailable.

Automatic discovery varies by agent. This template keeps the shared content readable and does not require a particular agent runtime or configuration.

## Structure

```text
.
├── AGENTS.md
├── README.md
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

## Design principles

- Keep one concise, ordinary-Markdown entry point at the repository root.
- Put architecture and development documentation in `docs/`.
- Load task-specific procedures only when they are relevant.
- Treat examples as prompts to customize, not universal rules.
- Do not claim an agent automatically discovers files unless that behavior is documented for that agent.
