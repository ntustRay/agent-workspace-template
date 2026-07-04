# Agent Workspace Template

A minimal, vendor-neutral AI instruction template for coding projects.

This template keeps project context, coding rules, and workflows in one small shared workspace so Claude, Codex, opencode, Cline, and other coding agents can follow the same source of truth.

## Structure

```txt
.
├─ AGENTS.md
├─ AI.local.example.md
├─ .gitignore
└─ .ai/
   ├─ project.md
   ├─ rules.md
   └─ workflows.md
```

## Usage

1. Copy this template into your project.
2. Fill in `.ai/project.md`.
3. Adjust `.ai/rules.md` and `.ai/workflows.md`.
4. Copy `AI.local.example.md` to `AI.local.md` for personal preferences.
5. Keep `AI.local.md` ignored by git.

```bash
cp AI.local.example.md AI.local.md
```

## Design principle

- `AGENTS.md` is the entry point.
- `.ai/project.md` explains the project.
- `.ai/rules.md` defines persistent rules.
- `.ai/workflows.md` defines repeatable tasks.
- `AI.local.md` is personal and should not be committed.
