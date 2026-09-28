---
name: bug-fix
description: Diagnose and fix a reproducible defect while preserving intended behavior. Use when asked to investigate or repair a bug.
---

# Bug fix

1. Reproduce the problem or identify the failing behavior from reliable evidence.
2. Trace the smallest cause through the relevant code path.
3. Make the smallest change that fixes the cause.
4. Add or update a focused test when the behavior can be tested.
5. Run the relevant verification commands from `docs/development/testing.md`.
6. Summarize the cause, fix, and checks performed.

Do not hide errors or add fallback behavior unless the project contract calls for it.
