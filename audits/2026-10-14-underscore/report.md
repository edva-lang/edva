# Underscore consistency review — 2026-10-14

Reviewed source `750bfba` using the rebuilt `edva 1.1.1+2ebb4ab-dirty` binary. The intervening commit changes documentation only. [Build identity](build.json), [41 probe results](results.json), [reader-facing Quarto chapter](../../doc/reference/language/underscore.qmd).

The roles of `_` are not unified: parser-generated parameters, ambient cycle/branch values, pattern wildcards, and ordinary assignments share its spelling. Some differences are intentional syntactic distinctions; others produce silent wrong values or disagree between annotation and lowering. No implementation files were changed for this review.

Before publishing, integrated GitHub `8b092c9`, including the section fixes in `cfd5a5f` that closed Gitea #180, and rebuilt the compiler. The 41 probes were rerun; see [rerun build identity](rerun-build.json) and [rerun results](rerun-results.json). The original results remain preserved. The related enum-section defect is fixed upstream; the ordinary guarded-branch finding below remains distinct.

## Confirmed defects and contract gaps

| Finding | Reproduction | Observed behavior | Interpretation / recommended action |
|---|---|---|---|
| Unbound `_` is accepted as a value | `unbound.dva`: `x: Int; x = _` | Prints 0. `named_lambda_alias.dva`: `f = value => _ + 1` prints 1 for input 8. | Reject uses without a binding. `_` is not an automatic alias for every named function parameter. `annotate_expr` gives missing `_` a fresh type variable, and `codegen_missing_load` suppresses the undefined-name diagnostic for `_`. |
| Assignment is not a discard | `discard_read.dva`, `discard_same_type.dva`, `discard_in_cycle.dva` | `_ = 7` can be read back; assigning `_` twice gives E3033; assigning `_ = 99` inside a cycle makes the subsequent read 99. | Decide between a genuine discard target and ordinary name binding. Current stdlib uses `_ = ...` idiomatically for ignored results, but that spelling is not a nonbinding sink. |
| Grouping misidentifies branch-local payload references as free | `ram_grouping.dva`, `ram_grouping_transform.dva` | `(r | _ | 0)` returns Int; changing it to `(r | _ + 2 | 0)` creates a function and fails a required Int return. | `has_free_underscore_branches` skips identity extractors but scans other branch bodies without respecting payload scope. Make free-variable detection binder-aware. |
| Ordinary guarded branch subjects are not available consistently through `_` | `normal_guard.dva` | `7 [> 0] _ + 2 | 0` prints 2, not 9. | Annotation introduces a branch `_` of subject type, but runtime binding is not consistent. Either bind the documented subject or reject the reference; do not synthesize zero. Related enum-section handling is already tracked in Gitea #180. |
| Nested cycles clobber ambient `_` | `nested_cycle.dva`, `named_cycle_shadow.dva` | After inner `1 @ ...`, outer `_` is 0 instead of 10/11. A saved/named outer value remains correct. | Restore outer implicit bindings at scope exit, or specify an intentionally shared state model. The named loop variables behave more predictably than aliases. |
| Implicit and named post-cycle indices disagree | `string_cycle_escape.dva` | Breaking on byte `b` in `"abc"` leaves `_i` as 0; an explicit `index` is 1. `implicit_cycle.dva` also reads 0 after completion. | Define alias lifetime and exit behavior consistently. The grammar promises persistence for named String-cycle indices; this cannot safely be generalized to `_i`. |
| Map implicit key has the wrong static type | `map_cycle.dva`, `map_named.dva` | A single String key `"key"` prints as a large integer through `_i`; `value, key =>` prints `key`. The integer varies between runs. | `annotate_cycle` binds `_i` as Int while map lowering supplies the key's actual representation. Use the actual map key type consistently. |
| Absent payload extraction can silently become zero | `unit_payload.dva` | For an absent `< Int | >`, `r | _ | _` prints 0. | A unit slot has no payload. Reject extraction or define a suitable unit value policy; do not invent an Int. Contrast `error_extract.dva`, where negative Error extraction correctly terminates with E4011. |

## Syntax distinctions and additional observations

- `(_ * _)` has one parameter used twice. `(_)` is identity. `_i` alone does not trigger the grouped-lambda transformation. A grouped `_` shadows an already-bound `_`: `numeric_capture.dva` prints 4 for `f(3)` even after `_ = 7`.
- Parentheses matter beyond precedence. `(3 - 2 * (_ + 1))` tries arithmetic on an inner function and fails E3084. A record literal `(a = _, b = 1)` is not automatically an implicit lambda; an extra outer group `((a = _, b = 1))` creates the intended one. The unwrapped record experiment was even accepted as a callable and printed 0, so it must not be presented as a supported callback spelling; broader record-call validation is outside this review.
- `(value => _ + value)` creates an outer implicit parameter captured by the inner named lambda; the checked typed factory returns 13 for outer 10 and inner 3. A nested lambda with a different parameter name does not bind `_` itself.
- `_` in structured patterns is a wildcard. Bare `[_]` is instead parsed as an expression/value guard: `7 [_]` does not match, while `0 [_]` does in the unbound probes. It is not a general wildcard branch; use a bare fallback `|`.
- `(a, _) = ...` is not supported destructuring-assignment syntax (E2003). Wildcards belong to the implemented pattern positions.
- Explicit `_` parameters are rejected with E2040, including compile-time parameters. `_arg`, `__`, and `_i` are different ordinary identifiers; `_i => _i + 1` works.
- Numeric separators `1_000` and `1_000.5` were rejected with exit 1 and no diagnostic output in these runs. Underscores inside identifiers are supported; they do not imply digit-separator support.
- The anonymous `< Int | Int >` direct-print probe fails LLVM verification. Controls using a named ram type plus a typed Int extraction, or named branches, return 9. This is retained as an additional observation rather than attributed solely to underscore binding; generic printing/anonymous-ram representation can also be involved.

## Consistency model to consider

1. Resolve implicit parameters and payload/cycle bindings as ordinary lexical bindings with distinct internal identities; an unavailable binding must produce a diagnostic.
2. Keep pattern wildcard nodes separate from value references. Define a separate nonbinding discard assignment if `_ = expr` is intended as a sink.
3. Make grouping's free-variable scan aware of cycle and branch binders. Preserve the documented innermost-group rule, or redesign it explicitly.
4. Restore enclosing aliases after nested constructs, and give `_i` the iterable's actual index/key type.
5. Specify the behavior of payload-free branches and retain function-valued branches. Do not resolve ambiguity by automatically applying every function expression to the choice subject.

These recommendations are proposals, not implemented language changes. A more uniform model does not require removing identity lambdas, wildcard patterns, or implicit payload access.

## Reproducing

Run `nu audits/2026-10-14-underscore/run_probes.nu` from the repository. It compiles every source in `reproductions/`, runs successful builds with a five-second timeout, and saves `rerun-results.json` separately from the original `results.json`. Compilation is limited to 30 seconds per probe. Temporary binaries/IR are outside the repository.

This review covers the listed contexts on the current Linux host, not every combination of types, optimization modes, lifetime behavior, or target ABI. The enum/section overlap is discussed in closed [Gitea #180](https://gitea.gde.to/ike/dva/issues/180). New findings are tracked individually below, with issue metadata preserved in [issues.json](issues.json).


## Gitea tracking

- [#181](https://gitea.gde.to/ike/dva/issues/181): underscore: reject unbound implicit value references
- [#182](https://gitea.gde.to/ike/dva/issues/182): underscore: define nonbinding discard assignment semantics
- [#183](https://gitea.gde.to/ike/dva/issues/183): parser: respect branch payload scope in implicit-lambda detection
- [#184](https://gitea.gde.to/ike/dva/issues/184): choices: supply or reject underscore in ordinary guarded branch bodies
- [#185](https://gitea.gde.to/ike/dva/issues/185): cycles: restore enclosing implicit item after nested iteration
- [#186](https://gitea.gde.to/ike/dva/issues/186): cycles: define implicit index lifetime and post-break value
- [#187](https://gitea.gde.to/ike/dva/issues/187): maps: type implicit cycle key using the actual key type
- [#188](https://gitea.gde.to/ike/dva/issues/188): choices: reject payload extraction from absent unit slots
- [#189](https://gitea.gde.to/ike/dva/issues/189): type checking: reject calling a record literal as a function
- [#190](https://gitea.gde.to/ike/dva/issues/190): codegen: diagnose or correctly lower anonymous ram extraction passed to output
- [#191](https://gitea.gde.to/ike/dva/issues/191): diagnostics: report unsupported underscore numeric separators
