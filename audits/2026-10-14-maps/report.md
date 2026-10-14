# Native map (`^`) implementation audit — 2026-10-14

Original source HEAD: `6d9c162`; compiler: `edva 1.1.1+8b092c9-dirty`. The intervening commit changes documentation/audit evidence only. This review concerns native associative maps, not `std/fp::map`. No compiler implementation was changed for this review.

Publication follow-up: pulled upstream `4e5b2f5`, including the underscore fixes in `7b0e39e`, and rebased the audit as `e259385`. Rebuilt the compiler and reran all 35 probes plus the five existing map regression tests. The implicit-key defect in section 7 is now fixed; the other reproduced findings remain. See [rerun compiler identity](rerun-build.json), [rerun results](rerun-results.json), and [rerun regressions](rerun-regressions.json). Original timing measurements remain labeled with the original build; they were not rebenchmarked during publication.

Evidence: [build identity](build.json), [35 exploratory probes](results.json), [sources](reproductions/), [timings](timings.json), [five existing regression tests](regressions.json). These are local Linux/native results, not a cross-target or exhaustive audit. Three unsuccessful exploratory probes (`array`, `f32`, `small_int`) use unsupported syntax/type names; they are retained for transparency and are not findings. `array_fixed` is the valid array-value control.

## 1. High: membership and deletion bypass map/key type validation and can segfault

`badkey_member.dva` and `badkey_delete.dva` build an `Int ^ Int` map with six entries, then evaluate `m ^? "x"` or `m ^- "x"`. Both compile successfully and terminate with SIGSEGV (exit -11). No unsafe memory operation is present in the source.

Conversely, `wrong_member` and `wrong_delete` pass an Int to a String-key map and silently return false. The equivalent wrong-key lookup and insertion correctly fail E3084 (`wrong_lookup`, `wrong_key`). `1 ^? 2` and `1 ^- 2` reach LLVM verification with invalid loads instead of receiving a language-level receiver-type diagnostic (`nonmap_member`, `nonmap_delete`).

Cause: `src/annotate.dva:1990` returns a Flag for membership/deletion without checking the target or unifying the key type. `src/codegen/stmt.dva:6810` then selects hashing and equality from the supplied key expression's type. A String search in an Int table therefore interprets stored integers as String addresses.

Fix: require a Map receiver and unify the supplied key with its declared/inferred key type for every operation before lowering. Add negative tests for both directions of mismatch and non-map receivers.

## 2. High: Float values cannot be inserted, despite the storable-value contract

Both typed construction followed by `m ^ 1 = 1.5` (`float`) and literal `(1 ^= 1.5)` (`float_literal`) emit an invalid `ptrtoint (double ... to i64)` cast. Clang rejects the IR with E5013. An empty Float map's missing lookup/fallback works (`lookup_float_only`), narrowing the failure to value storage rather than the declaration.

`src/codegen/expr.dva:7148` and `src/codegen/stmt.dva:6802` route non-pointer values through integer coercion without explicit floating-point bit packing. Map iteration already has a float bitcast path (`src/codegen/stmt.dva:6417`), so packing and unpacking do not share one coherent representation rule.

Fix: implement explicit scalar-to-slot packing/unpacking, including Float and supported narrow scalar types, and test insertion, overwrite, lookup, growth, and iteration. Int, String, Flag, record, array, ramification, nested-map, and a function-value control succeeded in this audit; the advertised generality is partially implemented, not wholly absent.

## 3. Medium: bare identifier keys are misparsed in assignment

```dva
#type M Int ^ Int
m = M()
k = 1
m ^ k = 42
```

`bare_identifier_key` fails E3033 (attempting to reassign immutable `k`) and E3084 (Int versus Unit). Changing only the last statement to `m ^ (k) = 42` succeeds and lookup returns 42 (`parenthesized_key`). The same problem affected cycle-bound keys during probe construction.

`src/parser.dva:3850` says the caret key is a single atom and calls `parse_atom`; identifier parsing can consume the assignment intended for the map access. Literal-key examples conceal this discrepancy.

Fix: parse the key in a mode that cannot consume its surrounding assignment, then apply assignment to the full key access. Test literal, identifier, parenthesized, and calculated keys.

## 4. Medium: unsupported inferred key types escape declaration checks

`decl_bad_key` (`#type M Float ^ Int`) correctly fails E2090. `bad_literal_key` (`m = (1.5 ^= 42)`) instead reaches LLVM verification with attempts to load String data from a `double`.

Literal annotation (`src/annotate.dva:1774`) unifies pair types but does not enforce the restricted key set. Runtime hashing treats non-integer, non-pointer keys as Strings (`src/codegen/runtime.dva:2190`).

Fix: apply the same key eligibility check to inferred literals, aliases, and instantiated map types, with language diagnostics before runtime code generation.

## 5. Medium: resizing during iteration silently switches to stale table contents

`mutate_delete_control` iterates a six-entry map and deletes all six keys in the first body invocation. Only the first entry is visited, and the final count is zero.

`mutate_delete` adds key 100 before those deletions, triggering growth. The iterator still visits all six original keys (0, 5, 2, 4, 1, 3), although they have been deleted from the current map; final count is one. `mutation` similarly sees the old value 5 after updating key 5 to 999, while a later lookup returns 999.

Cause: `codegen_typed_eval_map_cycle` caches capacity and the keys/values/states pointers once (`src/codegen/stmt.dva:6319`). Growth replaces those pointers in the map header and intentionally retains old buffers. Without growth, deletions affect the iterator's table; with growth, they do not. This is neither a consistent live view nor a snapshot from iteration start.

The mutation-during-iteration contract is undocumented. Fix by choosing a defined policy: reject/detect structural mutation, use a deliberate snapshot, or implement a specified live traversal. Do not let an internal resize decide observable semantics accidentally.

## 6. Medium: integer hashing produces severe clustering for aligned keys

The hash is multiplication by an odd constant; bucket selection masks the low bits. Multiplication alone cannot bring high key bits into the low bits. For keys `i * 65536`, every initial bucket is zero while capacity is at most 65536. Linear probing therefore makes insertion quadratic over this range. The same weakness affects aligned address keys, although this audit benchmarks Int keys only.

Three end-to-end runs inserting 20,000 entries:

| Keys | Elapsed milliseconds |
|---|---|
| Consecutive integers | 3.01, 3.40, 3.63 |
| Multiples of 65536 | 308.05, 293.76, 297.00 |

Both programs report the correct count. Timings include process launch and are illustrative, not a general benchmark suite. The collision mechanism follows directly from `src/codegen/runtime.dva:2190` and its power-of-two bucket masking.

Fix: use a proper integer finalizer that mixes high bits into low bits, and test aligned keys in addition to consecutive keys. Consider a keyed string hash if adversarially selected keys are part of the intended use case.

## 7. Fixed upstream: implicit map key `_i` had the wrong annotation type

The original `implicit_key` probe iterated `("key" ^= 7)` and printed `_i` as a large address-like integer, not `key`. Tracked and now closed in [Gitea #187](https://gitea.gde.to/ike/dva/issues/187). After pulling and rebuilding, the same probe correctly prints `key`. No duplicate issue was created.

## 8. Documentation discrepancies and a parser-status defect exposed by its example

The current [map chapter](../../doc/reference/types/map.qmd) has several gaps:

- Its lookup example uses `result | [score] score | [err] 0`. With declarations/imports supplied verbatim (`doc_lookup`), the compiler emits E2024, exits successfully, builds a binary, and prints only a newline instead of 95. Correct the example to supported payload branches (for example `result | score => score | err => 0`). Separately, error diagnostics must cause compilation failure; this parser-status defect is broader than maps.
- The claim that values may be any storable type conflicts with Float insertion failures.
- Hashing is described as “SipHash/FNV”; the emitted function is neither SipHash nor standard FNV-1a: `src/codegen/runtime.dva:810` adds each byte before multiplying, rather than XORing it. The comment calls it FNV-1a. Align algorithm, comments, and documentation.
- Literal construction and iteration are absent from the chapter. Iteration order, value/key binder order, implicit key typing, aliasing, and mutation rules need documentation.
- Expected O(1) behavior needs qualification: hashing/equality depend on String length, collisions can make operations linear, and the integer hash has the concrete alignment weakness above.

## Additional resource/performance observations (source review)

- Growth/rebuild allocates new buffers and intentionally retains old buffers (`src/codegen/runtime.dva:2366`). Geometric growth has bounded proportional retained capacity, but repeated same-capacity tombstone rebuilds accumulate memory over the arena lifetime even with a small live map. This follows from ownership/allocation code; no RSS benchmark was performed here. Document the ownership/lifetime cost or reclaim/reuse buffers where feasible.
- `codegen_map_insert` checks prospective occupancy before determining whether the key already exists (`src/codegen/runtime.dva:2452`). An overwrite at the threshold can therefore rebuild/grow without increasing the live count. Avoid unnecessary rehashing on replacement.

## Validation and suggested order

The existing map tests 177, 207, 324, 325, and 336 all pass with exact expected output. In particular, previously fixed tombstone update/saturation and String-length equality regressions were not rediscovered as open bugs.

Prioritize (1) unsafe membership/deletion typing, (2) Float storage, (3) key assignment parsing and inferred-key validation, then iteration semantics and hashing. Keep the existing `_i` ticket and treat documentation/parser-status corrections separately. The results retain failed exploratory inputs and controls so the limits of each conclusion are visible.

Run `nu audits/2026-10-14-maps/run_probes.nu` to rerun the probe sources. Outputs go to `rerun-results.json`; original evidence is preserved. Binaries/IR are created outside the repository. The follow-up publication request created the Gitea issues listed below and pushed the report and evidence to GitHub.


## Gitea tracking

- [#195](https://gitea.gde.to/ike/dva/issues/195): maps: validate membership and deletion receiver/key types before lowering
- [#196](https://gitea.gde.to/ike/dva/issues/196): maps: correctly pack Float values for insertion and literals
- [#197](https://gitea.gde.to/ike/dva/issues/197): parser: parse bare identifier map keys correctly in assignments
- [#198](https://gitea.gde.to/ike/dva/issues/198): maps: enforce supported key types for inferred literals
- [#199](https://gitea.gde.to/ike/dva/issues/199): maps: define and enforce mutation-during-iteration semantics
- [#200](https://gitea.gde.to/ike/dva/issues/200): maps: mix high key bits before power-of-two bucket selection
- [#201](https://gitea.gde.to/ike/dva/issues/201): docs: correct map examples, hashing claims and iteration contracts
- [#202](https://gitea.gde.to/ike/dva/issues/202): parser: fail compilation when map documentation example emits E2024
- [#203](https://gitea.gde.to/ike/dva/issues/203): maps: avoid unnecessary rehash on overwrite and retained-buffer growth under churn
