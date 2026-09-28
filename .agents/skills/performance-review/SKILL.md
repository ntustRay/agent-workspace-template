---
name: performance-review
description: Inspect code for a measured or suspected performance bottleneck. Use when asked to review performance or optimize a hot path.
---

# Performance review

1. Identify the workload, data size, and performance target if they are documented.
2. Trace the hot path and identify avoidable allocation, copying, recomputation, or I/O.
3. Separate measured bottlenecks from hypotheses.
4. Recommend the smallest useful change and explain its trade-offs.
5. Define a repeatable measurement or benchmark to verify the change.
6. Avoid optimization claims without evidence from a measurement.
