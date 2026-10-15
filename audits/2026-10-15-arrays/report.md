# Growable-array correctness audit — 2026-10-15

Pulled GitHub master to `d8538a0` and rebuilt `edva 1.1.1+d8538a0`. This audit covers `(T){}` lowering/runtime operations and representative uses of those arrays inside the compiler. It does not treat byte Builders `{capacity}` or fixed homogeneous records as growable arrays.

Evidence: [build identity](build.json), [28 probes](results.json), [probe sources](reproductions/), [ten regression results](regressions.json), [capacity IR excerpts](capacity-ir.txt). Findings apply to the current Linux/native compiler; cross-target behavior and concurrent array use were not exhaustively tested. No implementation changes, issues, commits, or pushes were made for this audit.

## 1. High: indexed writes bypass bounds checking and return success

`oob_write` creates a one-element array and writes index 5. The result's success branch runs and length remains 1. `negative_write` writes index -1 and likewise prints `accepted`. The corresponding reads correctly return errors (`oob_read`). A successful in-range write is also covered (`write_result`).

In `src/codegen/expr.dva:7097`, `codegen_typed_eval_index_write` obtains the buffer, computes an i64 slot, stores, and synthesizes a successful ramification. The array path does not compare the index against zero/length. Consequently the documented `< | Error >` contract does not protect writes, and `!| _` cannot catch these out-of-bounds stores. Negative indices can corrupt preceding memory; these probes deliberately run in separate processes.

Fix before other cleanup: validate initialization and `0 <= index < length` before the store; build the Error result on failure. Test negative, equal-to-length, within-capacity-but-outside-length, and beyond-capacity indices, through both local arrays and record members.

Compiler impact: code such as the Tarjan stack and indent stack uses `array(index) = value !| _` as a checked operation. Their local index invariants may be correct, but the compiler currently provides no runtime backstop if those invariants break.

## 2. High: slices of narrow-element arrays use incompatible strides

Growable-array storage uses 8-byte slots regardless of element type. Array-to-slice construction computes its start offset with an 8-byte stride (`src/codegen/expr.dva:6907`), but slice indexing/writing/iteration subsequently uses the primitive LLVM element width.

`u8_slice` stores 10, 20, 30. Direct array index 1 yields 20, while slice index 1 yields 0. Writing 99 to slice index 1 affects bytes in the first array slot rather than the second; the subsequent first-element read prints 25354 and the second remains 20. `flag_slice` similarly reads true through the array and false through its slice. Int and record-pointer controls do not expose this stride mismatch (`slice_records`).

Fix: make array and slice element layouts agree, or represent stride explicitly where needed. Validate narrow signed/unsigned integers, flags, and f32 across views, subviews, reads, writes, and iteration. This is wrong-element access/corruption, not merely a formatting discrepancy.

## 3. High: narrow integer packing/unpacking is inconsistent

`i8_index` appends i8(-1), reads it as Int, overwrites with i8(-2), then reads and iterates. Output is `255, -2, -2`; the first value should be -1. `u8_index` appends 255 and overwrites with 128: output is `255, -128, 128`. A lookup and iteration disagree about the same unsigned value. `narrow_scalar_control` correctly prints -1 and 128 without array storage.

`codegen_array_append` (`src/codegen/main.dva:1539`) stores the supplied non-pointer LLVM value directly into an 8-byte slot; it does not normalize scalar width. Indexed writes use integer coercion, while iteration loads an i64 and returns it unchanged for integer-like elements (`src/codegen/stmt.dva:6214`). Read result construction then has its own interpretation of those bits. Merely fixing slice stride will not fix this independent round-trip failure.

Fix: define one slot packing/unpacking rule, including sign/zero extension and truncation at boundaries, and reuse it for append, write, lookup, slice conversion, and iteration. Cover minimum/maximum values and reuse of previously occupied slots.

## 4. Medium: Float updates and f32 iteration emit invalid LLVM

`float_iter` successfully appends and iterates 1.5 and 2.5. `float_update` fails when assigning 2.5 to an existing Float slot: the IR contains `ptrtoint (double ... to i64)` and Clang rejects it (E5013). The array write path still uses generic integer coercion, unlike the newly repaired map storage path.

`f32_array` fails LLVM verification on `bitcast i64 ... to float` during iteration: bitcasts cannot change the bit width. This is another manifestation of the slot-conversion inconsistency, with its own required floating-point rules.

Fix: use bit-preserving Float/f32 slot conversion helpers and reuse them across mutations and reads. Require language-level diagnostics for genuinely unsupported types rather than backend failures.

## 5. Contract mismatch: `++array` is a shallow element copy

`copy_record` copies an array of records and mutates a record obtained from the copy. The original record now has value 99. `copy_nested` copies an array of arrays and appends to a nested array obtained from the copy; the original nested array's length becomes 2.

`codegen_array_copy` (`src/codegen/main.dva:891`) copies the header and slot buffer with memcpy. Pointer-bearing elements remain shared. The Quarto array chapter and GRAMMAR describe `++` as a deep copy; the implementation only makes the outer buffer independent. Existing test 243 checks scalar elements and outer length independence, so it passes.

Decide the intended contract: implement recursive copying with explicit alias/cycle semantics, or document a shallow container copy accurately. Do not promise transitive isolation. Thread-copy helpers also use slot-buffer copying; thread-boundary ownership needs a separate targeted review before claiming isolation for nested mutable elements.

## 6. Medium: growth changes mutation visibility during iteration

Array iteration captures both length and buffer pointer before entering the loop (`src/codegen/stmt.dva:6066`). In `iter_growth16`, the first iteration appends the seventeenth element and changes element 1 to 99. The next iteration still yields the old value 1, while lookup after the loop returns 99. When no growth occurs, `iter_control` sees the updated next value 99.

This is not a consistent snapshot: updates are visible until a reallocation detaches the iterator from the current buffer. Fix by choosing and implementing a clear iteration policy (live reads over an initial count, deliberate snapshot, or structural-mutation rejection). Document whether appended elements are visited.

Slices also retain their original buffer: `slice_growth16` prints 1 through the old slice and 99 through the array. Such invalidation can be a legitimate borrowed-view rule, but the current docs do not explain it. Retained arena storage makes the stale view silently usable rather than diagnosing invalidation. Specify view lifetime and mutation rules separately from iterator behavior.

## 7. Medium: named array initial capacity is ignored

`#type A Int{2}; a = A()` and `a: A` both initialize capacity 16. Inline `a = Int{2}` initializes capacity 2. See the saved IR excerpts; these observations do not depend solely on inferring allocation behavior from a slice.

The paired probes `slice_growth`, `capacity_forward`, and `capacity_inline` demonstrate the difference: the third append reallocates only for the inline form. Constructor and lazy initialization paths call `codegen_array_create` (default 16), while inline array construction calls `codegen_array_create_cap`.

Fix: carry the declared capacity through constructors and lazy creation. Test both small and large requested capacities, with a defined policy for zero/negative/overflowing capacities. The existing zero-capacity probe succeeds via the default fallback; that alone does not establish the full capacity contract.

## 8. Additional growth concern from source review

`get_or_emit_array_grow` (`src/codegen/main.dva:1486`) copies `len * 8 + 1` bytes, but initial array allocation reserves exactly `cap * 8` bytes (`codegen_array_create_cap`). At the first growth, `len == cap`: the requested memcpy reads one byte beyond the logical allocation. This appears inherited from byte/string terminator handling; arrays have no corresponding terminator contract.

The arena may provide readable padding, so this audit does not claim a demonstrated crash from that extra byte. Remove the extra byte and use checked capacity/byte-size arithmetic. Current multiplication/doubling can overflow before the checked addition of one; no enormous-allocation runtime test was attempted.

## Compiler-internal array usage review

- **Tarjan stacks (`src/dep_graph.dva:268`)** correctly separate physical array length from logical stack pointer, reuse existing slots on push, and check for an empty stack before the SCC pop loop. No stack-index defect was reproduced. The unit test's original harness fails because it still calls removed `print`; a temporary copy adding `#use io` and replacing `print` with `io::out` passes all 28 assertions. See [original harness result](dep-unit.json) and [adapted result](dep-unit-adapted.json). Repository test source was not edited.
- **Indent stack (`src/lexer.dva:1049`)** likewise overwrites a popped slot before extending the backing array. The already-present reuse logic is appropriate; do not replace it with unconditional append.
- **Scope/cycle stack truncation (`src/codegen/stmt.dva:1838`, `:3619`)** copies the requested prefix to a new array. This preserves element identity intentionally, but repeatedly rebuilding prefixes allocates and copies O(n) per pop. Loading stacks (`src/edva.dva:686`, `src/pkg.dva:894`) use the same approach. This is a performance/ownership consideration rather than a demonstrated incorrect pop. A logical length/stack abstraction could centralize invariants without relying on a broad array deep-copy promise.
- Compiler collections are predominantly Int/String/Addr and record/enum references. The inspected use sites do not establish that the narrow-element failures already corrupt the self-hosted compiler's normal workloads. The compiler nevertheless emits incorrect code for these legal array types, and its own checked-write idioms depend on the broken bounds path.

## Validation and next steps

Ten existing tests pass with exact expected output and exit status: 093, 126, 127, 128, 166, 189, 243, 244, 261, 309. The compiler itself rebuilt successfully. These checks cover existing behavior; they do not invalidate the new probes above. No full suite, sanitizer build, concurrent stress test, or cross-target matrix was run.

Fix write bounds first, then establish a shared element representation across storage and views. Follow with floating-point handling, capacity propagation, and explicit copy/iteration/view contracts. Update the array chapter: it currently promises checked writes and deep copying and also retains the same unsupported choice-example style previously found in the map chapter.

Run `nu audits/2026-10-15-arrays/run_probes.nu` to reproduce the probes; it saves `rerun-results.json` without overwriting the original results. Compilation/runtime are bounded by timeouts, with generated files outside the repository.
