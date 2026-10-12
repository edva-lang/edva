**Edva audit issue index — 2026-10-12**

Milestone: [Edva correctness and documentation audit — 2026-10-12](https://gitea.gde.to/ike/dva/milestone/6).

[Audit report](report.md). All 19 findings have one issue, with evidence and acceptance criteria.

| Finding | Issue | Work |
|---|---|---|
| 1 | [#124](https://gitea.gde.to/ike/dva/issues/124) | Fix duplicate map keys when updating after tombstone deletion |
| 2 | [#125](https://gitea.gde.to/ike/dva/issues/125) | Bound map probes and rebuild tables saturated with tombstones |
| 3 | [#126](https://gitea.gde.to/ike/dva/issues/126) | Preserve outer String lifetimes across nested arena restores |
| 4 | [#127](https://gitea.gde.to/ike/dva/issues/127) | Define safe arena generation handling beyond 16-bit tag exhaustion |
| 5 | [#128](https://gitea.gde.to/ike/dva/issues/128) | Generate width-correct guards for narrow integer division and remainder |
| 6 | [#129](https://gitea.gde.to/ike/dva/issues/129) | Preserve operand width and result type in narrow bit shifts |
| 7 | [#130](https://gitea.gde.to/ike/dva/issues/130) | Use unsigned conversion for unsigned integer-to-float casts |
| 8 | [#131](https://gitea.gde.to/ike/dva/issues/131) | Implement valid float-to-fixed-width-integer conversions |
| 9 | [#132](https://gitea.gde.to/ike/dva/issues/132) | Validate primitive casts and Builder constructor arguments before codegen |
| 10 | [#133](https://gitea.gde.to/ike/dva/issues/133) | Check String map-key lengths before calling memcmp |
| 11 | [#134](https://gitea.gde.to/ike/dva/issues/134) | Align Builder ownership documentation with the accepted detach/reset contract |
| 12 | [#135](https://gitea.gde.to/ike/dva/issues/135) | Specify NaN behavior for !< and !> versus logical negation |
| 13 | [#136](https://gitea.gde.to/ike/dva/issues/136) | Reconcile semantic layout metadata with runtime and target ABI lowering |
| 14 | [#137](https://gitea.gde.to/ike/dva/issues/137) | Correct and test executable examples in the Quarto language reference |
| 15 | [#138](https://gitea.gde.to/ike/dva/issues/138) | Correct LLM ram constructors and generate consistent precedence guidance |
| 16 | [#139](https://gitea.gde.to/ike/dva/issues/139) | Correct mem API signatures, pool argument order, and missing API claims |
| 17 | [#140](https://gitea.gde.to/ike/dva/issues/140) | Reconcile ram representations and allocation guarantees across references |
| 18 | [#141](https://gitea.gde.to/ike/dva/issues/141) | Validate documentation evidence and examples in pull-request CI |
| 19 | [#142](https://gitea.gde.to/ike/dva/issues/142) | Fail privileged-test compilation errors before skipping hardware execution |
