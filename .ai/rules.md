# Rules

## TypeScript

- Avoid `any`.
- Prefer `unknown` + narrowing when input is uncertain.
- Public APIs must have explicit types.
- Prefer readable types over clever generic abstractions.
- Use discriminated unions when they make API states clearer.

## Code style

- Prefer readable names over short names.
- Prefer small functions with clear responsibility.
- Avoid hidden side effects.
- Prefer early returns over deeply nested conditionals.
- Do not introduce clever abstractions without clear payoff.

## Performance

- Avoid duplicated large arrays or objects.
- Avoid object allocation in hot loops.
- Avoid full recomputation when incremental work is enough.
- Any performance-sensitive change should explain how to measure it.

## Testing

- Add tests for behavior changes.
- Prefer focused unit tests for data transforms and pure logic.
- Add integration tests when module boundaries are affected.
- Include edge cases and failure paths when relevant.
