# Agent instructions

This file is the shared entry point for coding agents. This repository is a template: replace all placeholders and examples with facts about the project that adopts it.

## Project context

- Describe the project purpose, stack, and important boundaries here.
- Read `docs/architecture/overview.md` when a task touches module responsibilities, system boundaries, or important data and event flows.
- Follow any more specific `AGENTS.md` found in the directory being changed.

## Development and verification

- Read `docs/development/testing.md` for the project's setup and verification commands.
- Do not guess commands. Update that document when project commands change.
- Report which relevant checks passed and which were not run.

## General rules

- Keep changes focused and maintainable.
- Preserve existing behavior unless the task requires a behavior change.
- Check compatibility and public API impact before changing exported interfaces.
- Do not add dependencies or abstractions without a clear need.
- Do not hide errors or invent fallback behavior.
- Add or update tests for behavior changes.

## Reusable workflows

When a task matches a workflow below, read its `SKILL.md` before acting. These files are plain Markdown and can be followed directly even when the agent does not automatically discover Agent Skills.

- Review a diff: `.agents/skills/code-review/SKILL.md`
- Diagnose and fix a bug: `.agents/skills/bug-fix/SKILL.md`
- Refactor code: `.agents/skills/refactor/SKILL.md`
- Review or optimize performance: `.agents/skills/performance-review/SKILL.md`
