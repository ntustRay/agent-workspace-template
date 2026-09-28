---
name: code-review
description: Review a proposed code change for correctness, regressions, API impact, security, performance, and missing tests. Use when asked to review a diff or pull request.
---

# Code review

Review the diff and the surrounding code. Report findings before general comments.

## Check

1. Correctness and likely regressions
2. Public API and compatibility impact
3. Error handling and security-sensitive behavior
4. Performance and resource use where relevant
5. Tests for changed behavior and important edge cases
6. Maintainability and consistency with nearby code

## Report

For each finding, include severity, file and location, impact, and a suggested fix. Do not report speculative issues as confirmed defects.

Finish with:

- Findings, ordered by severity
- Important test gaps
- A concise summary if no actionable findings were found
