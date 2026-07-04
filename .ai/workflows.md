# Workflows

## Code review

Review in this order:

1. Correctness
2. Public API impact
3. Type safety
4. Performance and memory
5. Test coverage
6. Naming and maintainability

Use severity:

- P0: must fix
- P1: should fix
- P2: nice to improve

Output:

- Summary
- Findings
- Suggested fixes
- Missing tests
- Final recommendation

## Bug fix

Before fixing:

1. Identify the smallest reproducible cause.
2. Explain the root cause.
3. Make the smallest safe change.
4. Add or update tests.
5. Mention possible side effects.

## Refactor

Before refactoring:

1. Explain why the refactor is needed.
2. Preserve behavior.
3. Avoid changing public APIs unless requested.
4. Keep the diff small.
5. Add tests if behavior could be affected.

## Performance review

Check:

- duplicated memory
- hot-loop allocations
- unnecessary recomputation
- expensive transforms
- avoidable rendering or UI updates

For each issue, explain:

- why it matters
- suggested fix
- trade-off
- measurement method
