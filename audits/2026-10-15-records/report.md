# Record manipulation audit — 2026-10-15

Audited construction, defaults/functional updates, splats, member writes, nested replacement, copying, definite initialization, homogeneous indexing/slicing, packed records, and bitfields. Repository HEAD: `c0869ad`; compiler: `edva 1.1.1+01fe6c1`. `make edva` succeeded with no rebuild required. The compiler predates the latest audit-only commits; its exact hash is saved in [build.json](build.json). The existing `src/version.dva` modification was preserved.

Evidence: [44 probes and results](results.json), [sources](reproductions/), [LLVM excerpts](ir-evidence.txt), [14 existing regression tests](regressions.json). All 14 existing tests pass using the suite's trailing-newline-insensitive comparison. Test 225 lacks a final newline in its expected file; its exact-byte comparison differs only for that reason.

The initial audit made no compiler implementation changes. Publication and tracking details are recorded below. Findings concern native Linux output; FFI ABI, cross-target layout, concurrency, and all compiler-internal record uses were not exhaustively audited.

## 1. High: homogeneous record indexing omits bounds checks

`fixed_read_oob` and `fixed_read_negative` pass a three-element record to a function and read indices 3 and -1. Both compile and return unrelated memory instead of rejecting the access. `fixed_write_oob` and `fixed_write_negative` likewise compile out-of-range stores. Their `accepted` text confirms execution continued, not that the write returns a checked success value: record indexed writes have Unit type.

`src/codegen/expr.dva:7052` lowers reads directly to a typed GEP/load; the Record write branch at `:7191` similarly stores without a range comparison. GRAMMAR's operator table promises bounds-checked homogeneous record indexing.

Add `0 <= index < count` checks to both paths, with the intended runtime failure behavior. Test runtime indices, negative values, count, and valid boundaries. Literal rejection alone would not close the dynamic-index defect.

## 2. High: indexed writes use the RHS representation instead of the element layout

`fixed_narrow_write` assigns an ordinary integer 99 to index 1 of `(10u8,20u8,30u8)`. All three fields still read 10,20,30. The generated store uses an i64 stride and width, writing eight bytes from offset 8 instead of one byte at offset 1. The explicit `99u8` control works.

`fixed_record_write` replaces the second inline two-field record. Instead, the first record's second field becomes a pointer-shaped integer and the second record remains 3,4. The same branch at `src/codegen/expr.dva:7194` selects `llvm_type_of_vt(vv.1)`; Record maps to a pointer, so it stores a record pointer at offset 8 instead of copying the inline record at offset 16.

Derive stride and storage type from the target element schema, coerce scalars to that type, and memcpy composite elements. Pair tests with direct member reads and writes so a shared indexing bug cannot conceal the corruption.

## 3. High: fixed-record slices use incompatible storage conventions

`fixed_u8_slice` slices `(10u8,20u8,30u8)` and accesses slice index 1. It reads an unrelated byte; writing that index leaves the original three fields unchanged. `fixed_narrow_read` confirms direct record index 1 correctly returns 20.

`fixed_record_slice` slices two inline records and reads the second element: the binary terminates with SIGSEGV. The view construction at `src/codegen/expr.dva:6957` uses a primitive/pointer element type, while slice reads at `:7019` always load an i64 slot and unpack it. Narrow inline elements are smaller than that slot, and inline records contain fields rather than record pointers.

Choose a slice representation that preserves the source element layout/stride, or materialize a compatible buffer with explicit copy semantics. Validate both reads and writes for narrow scalars and inline composites.

## 4. High: constructors disregard declared packed layout and narrow storage types

`packed_ctor` constructs `#packed (a: u8,b: u16,c: u8)` with explicit narrow values 1,4660,99. It reads back 1,13312,18, including through raw byte-offset reads. `packed_update` starts from a correctly initialized packed record, then `P(..p)` reproduces the same corruption.

`narrow_ctor` constructs `(a: u8,b: u8)` with accepted ordinary integer literals 1,2 and reads 1,0. Explicit u8 arguments work.

`src/annotate.dva:3358` retains the initializer expression's type for each field. `src/codegen/main.dva:2806–2824` constructs an unpacked LLVM struct from evaluated initializer types via `struct_type_n`; it neither selects the declared packed struct nor normalizes narrow values. Subsequent member access correctly uses the declared layout, exposing the mismatch.

Allocate using the declared record schema and convert/store each initializer to its actual field storage type. Cover packed functional updates and defaults as well as direct construction.

## 5. High: the large constant-record optimization breaks mutation

`large_const_mutation` constructs `1 {64}`, assigns 99 at index 1, and reads 1. `const64_volatile` also reads 1 through a volatile raw load. The 63-element control reads 99; copying the 64-element record first also permits independent mutation.

`src/codegen/main.dva:2828–2841` emits records with at least 64 equal-type constant fields as LLVM globals and calls `LLVMSetGlobalConstant(...,1)`. Indexed assignment still emits a store into this constant object. This gives LLVM undefined behavior; these runs silently ignore the store. A crash is not required to establish the defect.

Copy constant initial data into mutable storage before exposing a record that permits field/index mutation, or consistently enforce immutability before emitting stores.

## 6. High: partial initialization escapes through whole-record operations

After `p: P; p.x = 1`, `uninit_alias`, `uninit_copy`, `uninit_literal`, and `uninit_splat` all compile, then read the unwritten `y` through the new value. These runs happen to print zero; that is not evidence of defined initialization. `uninit_nested` and `uninit_update` correctly reject comparable direct field reads with E3130.

`src/type_env.dva:373` treats any written descendant as enough for `init_is_ok(parent)`. The Var check at `src/annotate.dva:1267` uses that predicate, allowing the whole partial value to escape. Splat-generated typed Member expressions at `:4085` bypass the AST member-read check altogether.

Separate permission to traverse an initialized subfield from permission to consume the whole composite. Require complete initialization for aliases, copies, embedding, and splats, and validate generated field reads. Preserve valid incremental field construction.

## 7. Medium: constructors and splats repeat source calls and reorder effects

`ctor_once`, `splat_once`, and `update_once` each contain one `make(...)` expression but print `make` twice. With stateful sources, fields may therefore come from different records. `ctor_order` supplies `y: f(2), x: f(1)` and prints 1 then 2: evaluation follows declaration order instead of the written argument order. The ordering observation needs an explicit language contract; the repeated evaluation is independently observable.

`src/annotate.dva:3249` expands one tuple/base expression into separate member expressions per field; `:4085` similarly duplicates a nonliteral splat source. Code generation evaluates each separately.

Evaluate source operands once into temporaries, in a specified order, then extract fields. Ensure overrides do not accidentally trigger or suppress base evaluation depending on how many fields remain.

## 8. Medium: invalid constructor arguments are silently discarded

`extra_args` accepts `P(1,2,3)` for a two-field record. `duplicate_args` accepts repeated `x:` and uses the first. `ctor_excess_effect` proves an excess `f(99)` expression is discarded without running it.

`src/annotate.dva:3323` validates unknown named fields, but does not reject duplicate bindings or unconsumed positional arguments. Field-by-field selection drops unused arguments.

Validate argument consumption, duplicates, and positional/named collisions before field expansion. Reject extras with a source diagnostic.

## 9. Medium: bitfield constructors produce malformed values

`bitfield_ctor` accepts `B(3,5)` for `#packed u8 (a:4,b:4)` but returns 0,1 rather than 3,5. `B()` also returns 0,1 in this run; do not interpret those values as deterministic defaults.

The constructor dispatch at `src/annotate.dva:3403` treats the bitfield's structural Rec type as an ordinary record constructor. Its TypeInfo is Bitfield, so `annotate_record_ctor` finds zero Rec fields, emits an empty Record, and drops arguments. Saved IR allocates `{}`, stores its pointer in `@var.b`, then bitfield reads load bytes from that variable slot. Ordinary forward-declared bitfield writes and `bitfield_copy` work.

Implement explicit bitfield packing/arity handling, or reject constructor syntax until supported. Never accept it as an empty record.

## 10. Medium: a full-width 64-bit field always reads zero

`bitfield64` assigns 123 to a sole 64-bit field and reads zero; `bitfield32_control` reads 123. Both member read and write mask construction use `(1 .<. bf.bit_width) - 1` (`src/codegen/expr.dva:5275`, `src/codegen/main.dva:2680`). Width 64 yields a zero mask in this compiler. Saved IR explicitly contains `and i64 ..., 0`.

Special-case the full backing width or compute masks without a width-sized shift. Test 1,63,64-bit widths and high-bit values across reads and updates.

## Copy semantics and passing controls

`copy_nested`, `nested_replace`, and `update_nested` preserve independence for inline nested record fields. `alias_record` confirms ordinary assignment shares the same record storage. `copy_array` confirms that `++record` shares a nested growable array: appending through the copy changes both lengths to 2. The Record Copy branch (`src/codegen/main.dva:2924`) uses memcpy; pointer-bearing fields remain shared. This is a further instance of the deep-copy documentation mismatch already identified in the array audit, rather than a new independent implementation mechanism.

Explicitly typed narrow construction/writes and Float/f32 member updates pass. Implicit Float-to-f32 construction/assignment is correctly rejected with E3084; that probe is a negative control. Existing view, nested-record, splat, default/update, layout-compatibility, and bitfield tests pass, but miss the triggers above.

Prioritize bounds checks and target-driven element/record storage, then constant-record mutability and complete-init checks. Follow with single evaluation and constructor/bitfield validation. Run `nu audits/2026-10-15-records/run_probes.nu` to reproduce all probes; it writes `rerun-results.json`, preserving original evidence, and puts binaries/IR in a temporary directory. No full test suite or sanitizer run was performed.

## Publication follow-up

Created one Gitea issue per numbered finding, each with reproductions and acceptance guidance:

- Finding 1: [records: bounds-check homogeneous indexed reads and writes](https://gitea.gde.to/ike/dva/issues/218)
- Finding 2: [records: use target element layout for indexed assignments](https://gitea.gde.to/ike/dva/issues/219)
- Finding 3: [records: preserve inline element layout in fixed-record slices](https://gitea.gde.to/ike/dva/issues/220)
- Finding 4: [records: honor declared packed layout and narrow field types in constructors](https://gitea.gde.to/ike/dva/issues/221)
- Finding 5: [records: preserve mutation semantics for large constant records](https://gitea.gde.to/ike/dva/issues/222)
- Finding 6: [records: reject partially initialized values in whole-record operations](https://gitea.gde.to/ike/dva/issues/223)
- Finding 7: [records: evaluate constructor and splat operands once](https://gitea.gde.to/ike/dva/issues/224)
- Finding 8: [records: reject excess and duplicate constructor arguments](https://gitea.gde.to/ike/dva/issues/225)
- Finding 9: [bitfields: pack constructor arguments or reject unsupported construction](https://gitea.gde.to/ike/dva/issues/226)
- Finding 10: [bitfields: handle full-width 64-bit masks without shift overflow](https://gitea.gde.to/ike/dva/issues/227)
