---
name: refactor
description: Restructure code to improve clarity or maintainability while preserving behavior. Use when asked to refactor code.
---

# Refactor

1. Identify the specific maintenance problem the refactor addresses.
2. Read the relevant architecture notes and nearby implementation.
3. Preserve observable behavior and public interfaces unless the request says otherwise.
4. Keep the change focused; avoid unrelated cleanup.
5. Run relevant tests and checks from `docs/development/testing.md`.
6. Summarize the reason for the refactor and the evidence that behavior remains intact.
