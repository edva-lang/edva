; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_active_gen_tls = external thread_local global i64
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@"var.version::VERSION" = external global ptr
@"var.lsp::SYM_FUNCTION" = global i64 12
@"var.lsp::SYM_VARIABLE" = global i64 13
@"var.lsp::SYM_CONSTANT" = global i64 14
@"var.lsp::SYM_STRUCT" = global i64 23
@"var.lsp::SYM_ENUM" = global i64 10
@"var.lsp::open_docs" = global ptr null
@str.0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.0 }
@"var.lsp::stdlib_dir_path" = global ptr null
@"var.lsp::active_doc_text" = global ptr null
@"var.lsp::pending_syms" = global ptr null
@"var.lsp::pending_diags" = global ptr null
@clo.const = internal constant { ptr, ptr } { ptr @"lsp::set_stdlib_dir", ptr null }
@"var.lsp::set_stdlib_dir" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"lsp::has_override", ptr null }
@"var.lsp::has_override" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"lsp::get_override_text", ptr null }
@"var.lsp::get_override_text" = global ptr null
@str.1 = internal unnamed_addr constant [2 x i8] c"?\00"
@str.3 = internal unnamed_addr constant [8 x i8] c"lsp.dva\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.3 }
@str.4 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.4 }
@dva_thread_rec = external thread_local global ptr
@str.5 = internal unnamed_addr constant [4 x i8] c"...\00"
@str.6 = internal unnamed_addr constant [3 x i8] c": \00"
@clo.const.3 = internal constant { ptr, ptr } { ptr @"lsp::update_sym_type", ptr null }
@clo.const.4 = internal constant { ptr, ptr } { ptr @"lsp::find_top_sym_line", ptr null }
@clo.const.5 = internal constant { ptr, ptr } { ptr @"lsp::next_top_sym_line", ptr null }
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str.7 = internal unnamed_addr constant [2 x i8] c"_\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.7 }
@str.8 = internal unnamed_addr constant [3 x i8] c"__\00"
@str.9 = internal unnamed_addr constant [3 x i8] c"()\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.9 }
@clo.const.6 = internal constant { ptr, ptr } { ptr @"lsp::count_doc_lines", ptr null }
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.7 = internal constant { ptr, ptr } { ptr @"lsp::get_line_at", ptr null }
@clo.const.8 = internal constant { ptr, ptr } { ptr @"lsp::sym_has_loc", ptr null }
@clo.const.9 = internal constant { ptr, ptr } { ptr @"lsp::find_local_binding_loc", ptr null }
@clo.const.10 = internal constant { ptr, ptr } { ptr @"lsp::line_has_type_annot", ptr null }
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.11 = internal constant { ptr, ptr } { ptr @"lsp::collect_local_typed_exprs", ptr null }
@clo.const.12 = internal constant { ptr, ptr } { ptr @"lsp::enrich_symbols_with_tast", ptr null }
@clo.const.13 = internal constant { ptr, ptr } { ptr @"lsp::record_typecheck_ok", ptr null }
@"var.lsp::record_typecheck_ok" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"lsp::has_diag", ptr null }
@clo.const.15 = internal constant { ptr, ptr } { ptr @"lsp::add_unique_diag", ptr null }
@str.10 = internal unnamed_addr constant [11 x i8] c" (origin: \00"
@str.11 = internal unnamed_addr constant [2 x i8] c":\00"
@str.12 = internal unnamed_addr constant [2 x i8] c")\00"
@clo.const.16 = internal constant { ptr, ptr } { ptr @"lsp::record_typecheck_errs", ptr null }
@"var.lsp::record_typecheck_errs" = global ptr null
@detached_builder = internal unnamed_addr constant [93 x i8] c"E4013: Builder buffer was detached by freeze. Append data or create a new Builder before &b\0A\00"
@clo.const.17 = internal constant { ptr, ptr } { ptr @"lsp::read_byte", ptr null }
@"var.lsp::read_byte" = global ptr null
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.18 = internal constant { ptr, ptr } { ptr @"lsp::read_header_line", ptr null }
@"var.lsp::read_header_line" = global ptr null
@str.13 = internal unnamed_addr constant [16 x i8] c"content-length:\00"
@clo.const.19 = internal constant { ptr, ptr } { ptr @"lsp::parse_content_length", ptr null }
@"var.lsp::parse_content_length" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"$anon_fn.107", ptr null }
@clo.const.21 = internal constant { ptr, ptr } { ptr @"lsp::read_exact_bytes", ptr null }
@"var.lsp::read_exact_bytes" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"lsp::read_rpc_message", ptr null }
@"var.lsp::read_rpc_message" = global ptr null
@str.14 = internal unnamed_addr constant [17 x i8] c"Content-Length: \00"
@str.15 = internal unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00"
@clo.const.23 = internal constant { ptr, ptr } { ptr @"lsp::send_rpc_payload", ptr null }
@"var.lsp::send_rpc_payload" = global ptr null
@clo.const.24 = internal constant { ptr, ptr } { ptr @"lsp::hex_val", ptr null }
@"var.lsp::hex_val" = global ptr null
@str.16 = internal unnamed_addr constant [8 x i8] c"file://\00"
@clo.const.25 = internal constant { ptr, ptr } { ptr @"lsp::uri_to_path", ptr null }
@"var.lsp::uri_to_path" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"lsp::path_to_uri", ptr null }
@"var.lsp::path_to_uri" = global ptr null
@str.17 = internal unnamed_addr constant [4 x i8] c"Int\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.17 }
@str.18 = internal unnamed_addr constant [3 x i8] c"i8\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.18 }
@str.19 = internal unnamed_addr constant [4 x i8] c"i16\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.19 }
@str.20 = internal unnamed_addr constant [4 x i8] c"i32\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.20 }
@str.21 = internal unnamed_addr constant [4 x i8] c"i64\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.21 }
@str.22 = internal unnamed_addr constant [3 x i8] c"u8\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.22 }
@str.23 = internal unnamed_addr constant [4 x i8] c"u16\00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.23 }
@str.24 = internal unnamed_addr constant [4 x i8] c"u32\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.24 }
@str.25 = internal unnamed_addr constant [4 x i8] c"u64\00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.25 }
@str.26 = internal unnamed_addr constant [6 x i8] c"Float\00"
@str.26.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.26 }
@str.27 = internal unnamed_addr constant [4 x i8] c"f32\00"
@str.27.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.27 }
@str.28 = internal unnamed_addr constant [7 x i8] c"String\00"
@str.28.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.28 }
@str.29 = internal unnamed_addr constant [5 x i8] c"Rune\00"
@str.29.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.29 }
@str.30 = internal unnamed_addr constant [3 x i8] c"<>\00"
@str.30.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.30 }
@str.31 = internal unnamed_addr constant [5 x i8] c"Addr\00"
@str.31.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.31 }
@str.32 = internal unnamed_addr constant [8 x i8] c"Builder\00"
@str.32.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.32 }
@str.33 = internal unnamed_addr constant [6 x i8] c"Error\00"
@str.33.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.33 }
@str.34 = internal unnamed_addr constant [5 x i8] c"Type\00"
@str.34.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.34 }
@clo.const.27 = internal constant { ptr, ptr } { ptr @"lsp::format_value_type", ptr null }
@"var.lsp::format_value_type" = global ptr null
@str.35 = internal unnamed_addr constant [3 x i8] c"[]\00"
@str.35.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.35 }
@str.36 = internal unnamed_addr constant [4 x i8] c"_[]\00"
@str.36.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.36 }
@str.37 = internal unnamed_addr constant [2 x i8] c"(\00"
@str.38 = internal unnamed_addr constant [3 x i8] c", \00"
@str.39 = internal unnamed_addr constant [16 x i8] c"#type(packed = \00"
@str.40 = internal unnamed_addr constant [3 x i8] c"< \00"
@str.41 = internal unnamed_addr constant [4 x i8] c" | \00"
@str.42 = internal unnamed_addr constant [3 x i8] c" >\00"
@str.43 = internal unnamed_addr constant [2 x i8] c"{\00"
@str.44 = internal unnamed_addr constant [2 x i8] c"}\00"
@str.45 = internal unnamed_addr constant [4 x i8] c" ^ \00"
@str.46 = internal unnamed_addr constant [5 x i8] c" => \00"
@str.47 = internal unnamed_addr constant [15 x i8] c"#type(align = \00"
@str.48 = internal unnamed_addr constant [3 x i8] c") \00"
@clo.const.28 = internal constant { ptr, ptr } { ptr @"lsp::format_type_info", ptr null }
@"var.lsp::format_type_info" = global ptr null
@str.49 = internal unnamed_addr constant [6 x i8] c"<fwd>\00"
@clo.const.29 = internal constant { ptr, ptr } { ptr @"lsp::is_fwd_marker", ptr null }
@"var.lsp::is_fwd_marker" = global ptr null
@str.50 = internal unnamed_addr constant [7 x i8] c"#type \00"
@str.51 = internal unnamed_addr constant [2 x i8] c" \00"
@str.52 = internal unnamed_addr constant [10 x i8] c"#foreign \00"
@str.53 = internal unnamed_addr constant [4 x i8] c" = \00"
@str.54 = internal unnamed_addr constant [8 x i8] c" => ...\00"
@clo.const.30 = internal constant { ptr, ptr } { ptr @"lsp::extract_symbols", ptr null }
@"var.lsp::extract_symbols" = global ptr null
@"var.lsp::sym_has_loc" = global ptr null
@"var.lsp::find_top_sym_line" = global ptr null
@"var.lsp::next_top_sym_line" = global ptr null
@"var.lsp::line_has_type_annot" = global ptr null
@"var.lsp::find_local_binding_loc" = global ptr null
@"var.lsp::collect_local_typed_exprs" = global ptr null
@"var.lsp::update_sym_type" = global ptr null
@"var.lsp::enrich_symbols_with_tast" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"lsp::has_use_imports", ptr null }
@"var.lsp::has_use_imports" = global ptr null
@str.55 = internal unnamed_addr constant [18 x i8] c"{\22start\22:{\22line\22:\00"
@str.56 = internal unnamed_addr constant [14 x i8] c",\22character\22:\00"
@str.57 = internal unnamed_addr constant [17 x i8] c"},\22end\22:{\22line\22:\00"
@str.58 = internal unnamed_addr constant [3 x i8] c"}}\00"
@clo.const.32 = internal constant { ptr, ptr } { ptr @"lsp::lsp_range_json", ptr null }
@"var.lsp::lsp_range_json" = global ptr null
@str.59 = internal unnamed_addr constant [2 x i8] c"E\00"
@str.60 = internal unnamed_addr constant [10 x i8] c"{\22range\22:\00"
@str.61 = internal unnamed_addr constant [13 x i8] c",\22severity\22:\00"
@str.62 = internal unnamed_addr constant [11 x i8] c",\22code\22:\22E\00"
@str.63 = internal unnamed_addr constant [2 x i8] c"\22\00"
@str.64 = internal unnamed_addr constant [17 x i8] c",\22source\22:\22edva\22\00"
@str.65 = internal unnamed_addr constant [12 x i8] c",\22message\22:\00"
@clo.const.33 = internal constant { ptr, ptr } { ptr @"lsp::lsp_diag_json", ptr null }
@"var.lsp::lsp_diag_json" = global ptr null
@str.66 = internal unnamed_addr constant [77 x i8] c"{\22jsonrpc\22:\222.0\22,\22method\22:\22textDocument/publishDiagnostics\22,\22params\22:{\22uri\22:\00"
@str.67 = internal unnamed_addr constant [17 x i8] c",\22diagnostics\22:[\00"
@str.68 = internal unnamed_addr constant [2 x i8] c",\00"
@str.69 = internal unnamed_addr constant [4 x i8] c"]}}\00"
@clo.const.34 = internal constant { ptr, ptr } { ptr @"lsp::publish_diagnostics", ptr null }
@"var.lsp::publish_diagnostics" = global ptr null
@clo.const.35 = internal constant { ptr, ptr } { ptr @"lsp::copy_sym_entries", ptr null }
@"var.lsp::copy_sym_entries" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"lsp::upsert_doc", ptr null }
@"var.lsp::upsert_doc" = global ptr null
@clo.const.37 = internal constant { ptr, ptr } { ptr @"lsp::get_doc", ptr null }
@"var.lsp::get_doc" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"lsp::remove_doc", ptr null }
@"var.lsp::remove_doc" = global ptr null
@"var.lsp::has_diag" = global ptr null
@"var.lsp::add_unique_diag" = global ptr null
@clo.const.39 = internal constant { ptr, ptr } { ptr @"lsp::analyze_document", ptr null }
@"var.lsp::analyze_document" = global ptr null
@clo.const.40 = internal constant { ptr, ptr } { ptr @"lsp::is_ident_char", ptr null }
@"var.lsp::is_ident_char" = global ptr null
@"var.lsp::get_line_at" = global ptr null
@"var.lsp::count_doc_lines" = global ptr null
@clo.const.41 = internal constant { ptr, ptr } { ptr @"lsp::extract_word_at", ptr null }
@"var.lsp::extract_word_at" = global ptr null
@clo.const.42 = internal constant { ptr, ptr } { ptr @"lsp::is_op_char", ptr null }
@"var.lsp::is_op_char" = global ptr null
@str.70 = internal unnamed_addr constant [4 x i8] c"|_|\00"
@clo.const.43 = internal constant { ptr, ptr } { ptr @"lsp::extract_operator_at", ptr null }
@"var.lsp::extract_operator_at" = global ptr null
@str.71 = internal unnamed_addr constant [2 x i8] c"|\00"
@str.72 = internal unnamed_addr constant [196 x i8] c"**Choice / fallback separator** `|` *(LBP 50 / RBP 60, left)* \E2\80\94 Separates positive and negative ramification arms (`r | pos | neg`) or supplies the trailing fallback branch of a guarded choice.\00"
@str.72.struct = internal unnamed_addr constant { i64, ptr } { i64 195, ptr @str.72 }
@str.73 = internal unnamed_addr constant [3 x i8] c"!|\00"
@str.74 = internal unnamed_addr constant [212 x i8] c"**Skip-positive choice** `!|` *(LBP 50 / RBP 60, left)* \E2\80\94 Ignores a unit positive slot (`< | E >` or `<>`) and evaluates its RHS only on negative/failure.\0A\0A```dva\0Aarr(i) = val !| err => log::error(err.msg)\0A```\00"
@str.74.struct = internal unnamed_addr constant { i64, ptr } { i64 211, ptr @str.74 }
@str.75 = internal unnamed_addr constant [4 x i8] c"--|\00"
@str.76 = internal unnamed_addr constant [104 x i8] c"**Early return** `--|` \E2\80\94 Immediately returns from the enclosing function (`--| value` or unit `--|`).\00"
@str.76.struct = internal unnamed_addr constant { i64, ptr } { i64 103, ptr @str.76 }
@str.77 = internal unnamed_addr constant [4 x i8] c"--!\00"
@str.78 = internal unnamed_addr constant [205 x i8] c"**Propagate / unwrap** `--!` *(LBP 170, postfix, left)* \E2\80\94 Unwraps the positive payload of a ramification or early-returns its negative slot from the enclosing function.\0A\0A```dva\0Aitem = lookup(key)--!\0A```\00"
@str.78.struct = internal unnamed_addr constant { i64, ptr } { i64 204, ptr @str.78 }
@str.79 = internal unnamed_addr constant [4 x i8] c"-->\00"
@str.80 = internal unnamed_addr constant [152 x i8] c"**Break cycle** `-->` / `-->N` *(LBP 10 / RBP 20)* \E2\80\94 Exits the innermost enclosing `@` cycle (or `N` levels out, triggering any `>--` escape branch).\00"
@str.80.struct = internal unnamed_addr constant { i64, ptr } { i64 151, ptr @str.80 }
@str.81 = internal unnamed_addr constant [4 x i8] c"--^\00"
@str.82 = internal unnamed_addr constant [138 x i8] c"**Continue cycle** `--^` / `--^N` *(LBP 10 / RBP 20)* \E2\80\94 Advances immediately to the next iteration (skipping element emission in `@>`).\00"
@str.82.struct = internal unnamed_addr constant { i64, ptr } { i64 137, ptr @str.82 }
@str.83 = internal unnamed_addr constant [4 x i8] c">--\00"
@str.84 = internal unnamed_addr constant [155 x i8] c"**Cycle escape branch** `>--` *(LBP 10 / RBP 20)* \E2\80\94 Produces `<+ escape_val +>` when the attached cycle exits via `-->`, or `<-->` on normal completion.\00"
@str.84.struct = internal unnamed_addr constant { i64, ptr } { i64 154, ptr @str.84 }
@str.85 = internal unnamed_addr constant [3 x i8] c"<+\00"
@str.86 = internal unnamed_addr constant [143 x i8] c"**Positive ramification opener** `<+ expr ...` \E2\80\94 Constructs a positive payload: `<+ expr +>` for `< T | >`, or `<+ expr ->` for `< T | E >`.\00"
@str.86.struct = internal unnamed_addr constant { i64, ptr } { i64 142, ptr @str.86 }
@str.87 = internal unnamed_addr constant [3 x i8] c"+>\00"
@str.88 = internal unnamed_addr constant [118 x i8] c"**Positive / RamPP-neg closer** `+>` \E2\80\94 Closes `<+ expr +>` (`< T | >`) or `<- expr +>` (`< T | E >` negative slot).\00"
@str.88.struct = internal unnamed_addr constant { i64, ptr } { i64 117, ptr @str.88 }
@str.89 = internal unnamed_addr constant [3 x i8] c"<-\00"
@str.90 = internal unnamed_addr constant [143 x i8] c"**Negative ramification opener** `<- expr ...` \E2\80\94 Constructs a negative payload: `<- expr ->` for `< | E >`, or `<- expr +>` for `< T | E >`.\00"
@str.90.struct = internal unnamed_addr constant { i64, ptr } { i64 142, ptr @str.90 }
@str.91 = internal unnamed_addr constant [3 x i8] c"->\00"
@str.92 = internal unnamed_addr constant [118 x i8] c"**Negative / RamPP-pos closer** `->` \E2\80\94 Closes `<- expr ->` (`< | E >`) or `<+ expr ->` (`< T | E >` positive slot).\00"
@str.92.struct = internal unnamed_addr constant { i64, ptr } { i64 117, ptr @str.92 }
@str.93 = internal unnamed_addr constant [124 x i8] c"**Unit Flag type / negative flag** `<>` \E2\80\94 Binary boolean type whose unit constructors are `<+>` (true) and `<->` (false).\00"
@str.93.struct = internal unnamed_addr constant { i64, ptr } { i64 123, ptr @str.93 }
@str.94 = internal unnamed_addr constant [4 x i8] c"<+>\00"
@str.95 = internal unnamed_addr constant [72 x i8] c"**Positive Flag literal** `<+>` \E2\80\94 True / positive unit value of `<>`.\00"
@str.95.struct = internal unnamed_addr constant { i64, ptr } { i64 71, ptr @str.95 }
@str.96 = internal unnamed_addr constant [4 x i8] c"<->\00"
@str.97 = internal unnamed_addr constant [73 x i8] c"**Negative Flag literal** `<->` \E2\80\94 False / negative unit value of `<>`.\00"
@str.97.struct = internal unnamed_addr constant { i64, ptr } { i64 72, ptr @str.97 }
@str.98 = internal unnamed_addr constant [5 x i8] c"<-->\00"
@str.99 = internal unnamed_addr constant [68 x i8] c"**Absent RamPN value** `<-->` \E2\80\94 Empty negative slot of `< T | >`.\00"
@str.99.struct = internal unnamed_addr constant { i64, ptr } { i64 67, ptr @str.99 }
@str.100 = internal unnamed_addr constant [5 x i8] c"<++>\00"
@str.101 = internal unnamed_addr constant [68 x i8] c"**Success RamNP value** `<++>` \E2\80\94 Unit positive slot of `< | E >`.\00"
@str.101.struct = internal unnamed_addr constant { i64, ptr } { i64 67, ptr @str.101 }
@str.102 = internal unnamed_addr constant [4 x i8] c"|->\00"
@str.103 = internal unnamed_addr constant [101 x i8] c"**Return false on match** `cond |->` \E2\80\94 Sugar for `cond | --| <->` inside `<>`-returning functions.\00"
@str.103.struct = internal unnamed_addr constant { i64, ptr } { i64 100, ptr @str.103 }
@str.104 = internal unnamed_addr constant [4 x i8] c"|+>\00"
@str.105 = internal unnamed_addr constant [100 x i8] c"**Return true on match** `cond |+>` \E2\80\94 Sugar for `cond | --| <+>` inside `<>`-returning functions.\00"
@str.105.struct = internal unnamed_addr constant { i64, ptr } { i64 99, ptr @str.105 }
@str.106 = internal unnamed_addr constant [5 x i8] c"|-->\00"
@str.107 = internal unnamed_addr constant [110 x i8] c"**Return absence on match** `cond |-->` \E2\80\94 Sugar for `cond | --| <-->` inside `< T | >`-returning functions.\00"
@str.107.struct = internal unnamed_addr constant { i64, ptr } { i64 109, ptr @str.107 }
@str.108 = internal unnamed_addr constant [5 x i8] c"|++>\00"
@str.109 = internal unnamed_addr constant [110 x i8] c"**Return success on match** `cond |++>` \E2\80\94 Sugar for `cond | --| <++>` inside `< | E >`-returning functions.\00"
@str.109.struct = internal unnamed_addr constant { i64, ptr } { i64 109, ptr @str.109 }
@str.110 = internal unnamed_addr constant [170 x i8] c"**Unwrap-or-default** `|_|` *(choice sugar)* \E2\80\94 Evaluates to the positive payload of `< T | >` or `< T | E >`, or falls back to the RHS expression (`opt |_| fallback`).\00"
@str.110.struct = internal unnamed_addr constant { i64, ptr } { i64 169, ptr @str.110 }
@str.111 = internal unnamed_addr constant [2 x i8] c"@\00"
@str.112 = internal unnamed_addr constant [136 x i8] c"**Cycle** `@` *(LBP 10 / RBP 20, left)* \E2\80\94 Statement loop over integers, ranges, collections, maps, or conditions (`i =>`, `_`, `_i`).\00"
@str.112.struct = internal unnamed_addr constant { i64, ptr } { i64 135, ptr @str.112 }
@str.113 = internal unnamed_addr constant [3 x i8] c"@@\00"
@str.114 = internal unnamed_addr constant [127 x i8] c"**Rune cycle** `@@` *(LBP 10 / RBP 20, left)* \E2\80\94 Iterates decoded UTF-8 Unicode `Rune` codepoints of a `String` or `Builder`.\00"
@str.114.struct = internal unnamed_addr constant { i64, ptr } { i64 126, ptr @str.114 }
@str.115 = internal unnamed_addr constant [3 x i8] c"@>\00"
@str.116 = internal unnamed_addr constant [185 x i8] c"**Expression cycle** `@>` *(LBP 10 / RBP 20, left)* \E2\80\94 Map (`xs @> f`), filter-map (`xs @> (x => cond | <+ y +>)`), direct freeze (`+(xs @> ...)`), or seeded fold (`(acc0, xs) @> f`).\00"
@str.116.struct = internal unnamed_addr constant { i64, ptr } { i64 184, ptr @str.116 }
@str.117 = internal unnamed_addr constant [4 x i8] c"@@>\00"
@str.118 = internal unnamed_addr constant [116 x i8] c"**Rune expression cycle** `@@>` *(LBP 10 / RBP 20, left)* \E2\80\94 Decodes UTF-8 `Rune`s and collects/folds across `@>`.\00"
@str.118.struct = internal unnamed_addr constant { i64, ptr } { i64 115, ptr @str.118 }
@str.119 = internal unnamed_addr constant [2 x i8] c"$\00"
@str.120 = internal unnamed_addr constant [155 x i8] c"**Low-precedence apply** `$` *(LBP 30 / RBP 30, right)* \E2\80\94 Applies LHS to trailing RHS expression (`f $ x` is `f(x)`), absorbing unparenthesized choices.\00"
@str.120.struct = internal unnamed_addr constant { i64, ptr } { i64 154, ptr @str.120 }
@str.121 = internal unnamed_addr constant [3 x i8] c"$>\00"
@str.122 = internal unnamed_addr constant [166 x i8] c"**Pipeline feed** `$>` *(LBP 40 / RBP 50, left)* \E2\80\94 Passes LHS as first argument (`x $> f(a)` is `f(x, a)`) or into explicit `_` placeholder slots (`x $> f(a, _)`).\00"
@str.122.struct = internal unnamed_addr constant { i64, ptr } { i64 165, ptr @str.122 }
@str.123 = internal unnamed_addr constant [4 x i8] c"$>>\00"
@str.124 = internal unnamed_addr constant [198 x i8] c"**Monadic ram bind** `$>>` *(LBP 40 / RBP 50, left)* \E2\80\94 Passes positive payload into a ram-returning continuation, short-circuiting negative values (`E3091` if continuation does not return a ram).\00"
@str.124.struct = internal unnamed_addr constant { i64, ptr } { i64 197, ptr @str.124 }
@str.125 = internal unnamed_addr constant [4 x i8] c"$+>\00"
@str.126 = internal unnamed_addr constant [144 x i8] c"**Ram positive map** `$+>` *(LBP 40 / RBP 50, left)* \E2\80\94 Maps over the positive slot of `< T | E >` or `< T | >`, preserving the negative slot.\00"
@str.126.struct = internal unnamed_addr constant { i64, ptr } { i64 143, ptr @str.126 }
@str.127 = internal unnamed_addr constant [4 x i8] c"$->\00"
@str.128 = internal unnamed_addr constant [144 x i8] c"**Ram negative map** `$->` *(LBP 40 / RBP 50, left)* \E2\80\94 Maps over the negative slot of `< T | E >` or `< | E >`, preserving the positive slot.\00"
@str.128.struct = internal unnamed_addr constant { i64, ptr } { i64 143, ptr @str.128 }
@str.129 = internal unnamed_addr constant [3 x i8] c".>\00"
@str.130 = internal unnamed_addr constant [122 x i8] c"**Function composition** `.>` *(LBP 40 / RBP 50, left)* \E2\80\94 Left-to-right composition: `(f .> g)(x)` evaluates `g(f(x))`.\00"
@str.130.struct = internal unnamed_addr constant { i64, ptr } { i64 121, ptr @str.130 }
@str.131 = internal unnamed_addr constant [3 x i8] c"!!\00"
@str.132 = internal unnamed_addr constant [142 x i8] c"**Force-unwrap** `!!` *(LBP 170, postfix, left)* \E2\80\94 Unwraps positive ram payload (`< T | E >` / `< T | >`), aborting at runtime if negative.\00"
@str.132.struct = internal unnamed_addr constant { i64, ptr } { i64 141, ptr @str.132 }
@str.133 = internal unnamed_addr constant [3 x i8] c"!<\00"
@str.134 = internal unnamed_addr constant [119 x i8] c"**Greater-or-equal** `!<` *(LBP 120 / RBP 130, left, chainable)* \E2\80\94 Ordered \22not less\22 (`>=`); yields `<->` on `NaN`.\00"
@str.134.struct = internal unnamed_addr constant { i64, ptr } { i64 118, ptr @str.134 }
@str.135 = internal unnamed_addr constant [3 x i8] c"!>\00"
@str.136 = internal unnamed_addr constant [119 x i8] c"**Less-or-equal** `!>` *(LBP 120 / RBP 130, left, chainable)* \E2\80\94 Ordered \22not greater\22 (`<=`); yields `<->` on `NaN`.\00"
@str.136.struct = internal unnamed_addr constant { i64, ptr } { i64 118, ptr @str.136 }
@str.137 = internal unnamed_addr constant [3 x i8] c"==\00"
@str.138 = internal unnamed_addr constant [136 x i8] c"**Structural equality** `==` *(LBP 120 / RBP 130, left)* \E2\80\94 Compares scalars, `String`, records, enums, `Type`, and flags (`<>` XNOR).\00"
@str.138.struct = internal unnamed_addr constant { i64, ptr } { i64 135, ptr @str.138 }
@str.139 = internal unnamed_addr constant [3 x i8] c"!=\00"
@str.140 = internal unnamed_addr constant [115 x i8] c"**Structural inequality** `!=` *(LBP 120 / RBP 130, left)* \E2\80\94 Negation of `==` (`<>` XOR; `NaN != NaN` is `<+>`).\00"
@str.140.struct = internal unnamed_addr constant { i64, ptr } { i64 114, ptr @str.140 }
@str.141 = internal unnamed_addr constant [3 x i8] c"..\00"
@str.142 = internal unnamed_addr constant [116 x i8] c"**Half-open range** `a..b` *(LBP 70 / RBP 80, left)* \E2\80\94 Interval `[a, b)` for choice guards, cycles, and subviews.\00"
@str.142.struct = internal unnamed_addr constant { i64, ptr } { i64 115, ptr @str.142 }
@str.143 = internal unnamed_addr constant [4 x i8] c"..=\00"
@str.144 = internal unnamed_addr constant [132 x i8] c"**Closed range** `a...b` / `a..=b` *(LBP 70 / RBP 80, left)* \E2\80\94 Inclusive interval `[a, b]` for choice guards, cycles, and slices.\00"
@str.144.struct = internal unnamed_addr constant { i64, ptr } { i64 131, ptr @str.144 }
@str.145 = internal unnamed_addr constant [2 x i8] c"^\00"
@str.146 = internal unnamed_addr constant [99 x i8] c"**Map lookup / insert** `m ^ k` \E2\80\94 Returns `< V | Error >` on read (`m ^ k = v` inserts/updates).\00"
@str.146.struct = internal unnamed_addr constant { i64, ptr } { i64 98, ptr @str.146 }
@str.147 = internal unnamed_addr constant [3 x i8] c"^?\00"
@str.148 = internal unnamed_addr constant [85 x i8] c"**Map key membership** `m ^? k` \E2\80\94 Returns `<>` (`<+>` when key `k` exists in `m`).\00"
@str.148.struct = internal unnamed_addr constant { i64, ptr } { i64 84, ptr @str.148 }
@str.149 = internal unnamed_addr constant [3 x i8] c"^-\00"
@str.150 = internal unnamed_addr constant [79 x i8] c"**Map key delete** `m ^- k` \E2\80\94 Removes key `k` from map `m` and returns `<>`.\00"
@str.150.struct = internal unnamed_addr constant { i64, ptr } { i64 78, ptr @str.150 }
@str.151 = internal unnamed_addr constant [3 x i8] c"+=\00"
@str.152 = internal unnamed_addr constant [119 x i8] c"**Append in-place** `+=` *(LBP 60 / RBP 50, right)* \E2\80\94 Appends chunk to `Builder` or element to growable array `T{}`.\00"
@str.152.struct = internal unnamed_addr constant { i64, ptr } { i64 118, ptr @str.152 }
@str.153 = internal unnamed_addr constant [3 x i8] c":=\00"
@str.154 = internal unnamed_addr constant [66 x i8] c"**Dynamic rebinding** `:=` \E2\80\94 Rebinds an existing variable slot.\00"
@str.154.struct = internal unnamed_addr constant { i64, ptr } { i64 65, ptr @str.154 }
@str.155 = internal unnamed_addr constant [4 x i8] c"::=\00"
@str.156 = internal unnamed_addr constant [124 x i8] c"**Global mutation** `::=` *(LBP 60 / RBP 50, right)* \E2\80\94 Mutates a declared module-level global variable inside a function.\00"
@str.156.struct = internal unnamed_addr constant { i64, ptr } { i64 123, ptr @str.156 }
@str.157 = internal unnamed_addr constant [2 x i8] c"=\00"
@str.158 = internal unnamed_addr constant [128 x i8] c"**Binding / update** `=` *(LBP 60 / RBP 50, right)* \E2\80\94 Binds a new identifier or updates an active primed `x'` / field target.\00"
@str.158.struct = internal unnamed_addr constant { i64, ptr } { i64 127, ptr @str.158 }
@str.159 = internal unnamed_addr constant [168 x i8] c"**Length / count** `?` *(LBP 160 / RBP 180, prefix)* \E2\80\94 Returns byte length (`String`/`Builder`), element count (`T{}`/`T[]`), entry count (`K ^ V`), or member count.\00"
@str.159.struct = internal unnamed_addr constant { i64, ptr } { i64 167, ptr @str.159 }
@str.160 = internal unnamed_addr constant [3 x i8] c"??\00"
@str.161 = internal unnamed_addr constant [109 x i8] c"**UTF-8 codepoint count** `??` *(LBP 160 / RBP 180, prefix)* \E2\80\94 Counts Unicode scalar values in a `String`.\00"
@str.161.struct = internal unnamed_addr constant { i64, ptr } { i64 108, ptr @str.161 }
@str.162 = internal unnamed_addr constant [2 x i8] c"+\00"
@str.163 = internal unnamed_addr constant [151 x i8] c"**Addition / concat / Builder freeze** `+` \E2\80\94 Binary numeric add or string/builder concatenation (LBP 140); unary `+b` freezes `Builder` to `String`.\00"
@str.163.struct = internal unnamed_addr constant { i64, ptr } { i64 150, ptr @str.163 }
@str.164 = internal unnamed_addr constant [3 x i8] c"++\00"
@str.165 = internal unnamed_addr constant [146 x i8] c"**Deep arena copy** `++` *(LBP 160 / RBP 180, prefix)* \E2\80\94 Deep-copies `String`, `Builder`, record, array, or slice into the active `mem::Arena`.\00"
@str.165.struct = internal unnamed_addr constant { i64, ptr } { i64 145, ptr @str.165 }
@str.166 = internal unnamed_addr constant [3 x i8] c"~~\00"
@str.167 = internal unnamed_addr constant [121 x i8] c"**State lens** `~~` *(LBP 160 / RBP 180, prefix)* \E2\80\94 Creates a `(get, set)` two-way binding record over a mutable slot.\00"
@str.167.struct = internal unnamed_addr constant { i64, ptr } { i64 120, ptr @str.167 }
@str.168 = internal unnamed_addr constant [2 x i8] c"&\00"
@str.169 = internal unnamed_addr constant [98 x i8] c"**Address-of** `&` *(LBP 160 / RBP 180, prefix)* \E2\80\94 Extracts raw `Addr` buffer or value pointer.\00"
@str.169.struct = internal unnamed_addr constant { i64, ptr } { i64 97, ptr @str.169 }
@str.170 = internal unnamed_addr constant [3 x i8] c"=>\00"
@str.171 = internal unnamed_addr constant [104 x i8] c"**Function / lambda arrow** `=>` \E2\80\94 Defines function signature/body or parameter binder (`x => expr`).\00"
@str.171.struct = internal unnamed_addr constant { i64, ptr } { i64 103, ptr @str.171 }
@str.172 = internal unnamed_addr constant [4 x i8] c"!=>\00"
@str.173 = internal unnamed_addr constant [84 x i8] c"**Nullary function arrow** `!=>` \E2\80\94 Defines a 0-argument function invoked as `f!`.\00"
@str.173.struct = internal unnamed_addr constant { i64, ptr } { i64 83, ptr @str.173 }
@str.174 = internal unnamed_addr constant [4 x i8] c".<.\00"
@str.175 = internal unnamed_addr constant [4 x i8] c".>.\00"
@str.176 = internal unnamed_addr constant [131 x i8] c"**Bit shift** `.<.` (left) / `.>.` (right) *(LBP 130 / RBP 140, non-associative)* \E2\80\94 Requires parentheses when chained (`E2025`).\00"
@str.176.struct = internal unnamed_addr constant { i64, ptr } { i64 130, ptr @str.176 }
@str.177 = internal unnamed_addr constant [4 x i8] c".&.\00"
@str.178 = internal unnamed_addr constant [4 x i8] c".|.\00"
@str.179 = internal unnamed_addr constant [4 x i8] c".^.\00"
@str.180 = internal unnamed_addr constant [4 x i8] c".!.\00"
@str.181 = internal unnamed_addr constant [106 x i8] c"**Bitwise operators** `.&.` (AND, LBP 110), `.^.` (XOR, LBP 105), `.|.` (OR, LBP 100), `.!.` (unary NOT).\00"
@str.181.struct = internal unnamed_addr constant { i64, ptr } { i64 105, ptr @str.181 }
@clo.const.44 = internal constant { ptr, ptr } { ptr @"lsp::operator_hover_doc", ptr null }
@"var.lsp::operator_hover_doc" = global ptr null
@str.182 = internal unnamed_addr constant [50 x i8] c"`Int` \E2\80\94 64-bit signed integer (`i64`, 8 bytes).\00"
@str.182.struct = internal unnamed_addr constant { i64, ptr } { i64 49, ptr @str.182 }
@str.183 = internal unnamed_addr constant [61 x i8] c"`Float` \E2\80\94 64-bit IEEE-754 floating-point (`f64`, 8 bytes).\00"
@str.183.struct = internal unnamed_addr constant { i64, ptr } { i64 60, ptr @str.183 }
@str.184 = internal unnamed_addr constant [67 x i8] c"`String` \E2\80\94 Immutable UTF-8 byte view (`{ ptr, i64 }`, 16 bytes).\00"
@str.184.struct = internal unnamed_addr constant { i64, ptr } { i64 66, ptr @str.184 }
@str.185 = internal unnamed_addr constant [50 x i8] c"`Rune` \E2\80\94 Unicode scalar value (`i32`, 4 bytes).\00"
@str.185.struct = internal unnamed_addr constant { i64, ptr } { i64 49, ptr @str.185 }
@str.186 = internal unnamed_addr constant [60 x i8] c"`Builder` \E2\80\94 Mutable Arena-backed byte buffer (`{ cap }`).\00"
@str.186.struct = internal unnamed_addr constant { i64, ptr } { i64 59, ptr @str.186 }
@str.187 = internal unnamed_addr constant [57 x i8] c"`Addr` \E2\80\94 Untyped raw memory address (`@[addr]`, `&x`).\00"
@str.187.struct = internal unnamed_addr constant { i64, ptr } { i64 56, ptr @str.187 }
@str.188 = internal unnamed_addr constant [91 x i8] c"`Error` \E2\80\94 Structured error record (`code`, `message`, `file`, `line`, `col`, `context`).\00"
@str.188.struct = internal unnamed_addr constant { i64, ptr } { i64 90, ptr @str.188 }
@str.189 = internal unnamed_addr constant [67 x i8] c"`Type` \E2\80\94 First-class compile-time type value (`#param T: Type`).\00"
@str.189.struct = internal unnamed_addr constant { i64, ptr } { i64 66, ptr @str.189 }
@str.190 = internal unnamed_addr constant [5 x i8] c"#use\00"
@str.191 = internal unnamed_addr constant [76 x i8] c"`#use <module>` \E2\80\94 Imports a standard library, relative, or `@pkg` module.\00"
@str.191.struct = internal unnamed_addr constant { i64, ptr } { i64 75, ptr @str.191 }
@str.192 = internal unnamed_addr constant [6 x i8] c"#type\00"
@str.193 = internal unnamed_addr constant [91 x i8] c"`#type[(mods)] <Name> <Def>` \E2\80\94 Declares a named record, bitfield, ramification, or enum.\00"
@str.193.struct = internal unnamed_addr constant { i64, ptr } { i64 90, ptr @str.193 }
@str.194 = internal unnamed_addr constant [9 x i8] c"#foreign\00"
@str.195 = internal unnamed_addr constant [70 x i8] c"`#foreign(\22<abi>\22)` \E2\80\94 Declares external C ABI functions or symbols.\00"
@str.195.struct = internal unnamed_addr constant { i64, ptr } { i64 69, ptr @str.195 }
@str.196 = internal unnamed_addr constant [8 x i8] c"#public\00"
@str.197 = internal unnamed_addr constant [71 x i8] c"`#public` \E2\80\94 Exports subsequent declarations from the current module.\00"
@str.197.struct = internal unnamed_addr constant { i64, ptr } { i64 70, ptr @str.197 }
@str.198 = internal unnamed_addr constant [9 x i8] c"#private\00"
@str.199 = internal unnamed_addr constant [61 x i8] c"`#private` \E2\80\94 Marks subsequent declarations module-private.\00"
@str.199.struct = internal unnamed_addr constant { i64, ptr } { i64 60, ptr @str.199 }
@str.200 = internal unnamed_addr constant [8 x i8] c"#export\00"
@str.201 = internal unnamed_addr constant [72 x i8] c"`#export[(\22sym\22)]` \E2\80\94 Exports a function with unmangled C ABI linkage.\00"
@str.201.struct = internal unnamed_addr constant { i64, ptr } { i64 71, ptr @str.201 }
@str.202 = internal unnamed_addr constant [7 x i8] c"#param\00"
@str.203 = internal unnamed_addr constant [87 x i8] c"`#param <bindings>` \E2\80\94 Compile-time functor parameters or function type/value params.\00"
@str.203.struct = internal unnamed_addr constant { i64, ptr } { i64 86, ptr @str.203 }
@str.204 = internal unnamed_addr constant [7 x i8] c"#const\00"
@str.205 = internal unnamed_addr constant [74 x i8] c"`#const <bindings>` \E2\80\94 Compile-time constant bindings (module or local).\00"
@str.205.struct = internal unnamed_addr constant { i64, ptr } { i64 73, ptr @str.205 }
@str.206 = internal unnamed_addr constant [8 x i8] c"#pragma\00"
@str.207 = internal unnamed_addr constant [85 x i8] c"`#pragma(<opts>)` \E2\80\94 Sets module compiler pragmas (`integer`, `fpfast`, `swizzle`).\00"
@str.207.struct = internal unnamed_addr constant { i64, ptr } { i64 84, ptr @str.207 }
@str.208 = internal unnamed_addr constant [7 x i8] c"#infix\00"
@str.209 = internal unnamed_addr constant [80 x i8] c"`#infix(<lbp>, <rbp>) <fn>` \E2\80\94 Binds a user-defined infix operator precedence.\00"
@str.209.struct = internal unnamed_addr constant { i64, ptr } { i64 79, ptr @str.209 }
@str.210 = internal unnamed_addr constant [4 x i8] c"#os\00"
@str.211 = internal unnamed_addr constant [81 x i8] c"`#os` \E2\80\94 Target operating system name (`\22linux\22`, `\22macos\22`, `\22windows\22`, ...).\00"
@str.211.struct = internal unnamed_addr constant { i64, ptr } { i64 80, ptr @str.211 }
@str.212 = internal unnamed_addr constant [6 x i8] c"#arch\00"
@str.213 = internal unnamed_addr constant [80 x i8] c"`#arch` \E2\80\94 Target CPU architecture (`\22x86_64\22`, `\22aarch64\22`, `\22wasm32\22`, ...).\00"
@str.213.struct = internal unnamed_addr constant { i64, ptr } { i64 79, ptr @str.213 }
@str.214 = internal unnamed_addr constant [8 x i8] c"#target\00"
@str.215 = internal unnamed_addr constant [41 x i8] c"`#target` \E2\80\94 Full target triple string.\00"
@str.215.struct = internal unnamed_addr constant { i64, ptr } { i64 40, ptr @str.215 }
@str.216 = internal unnamed_addr constant [6 x i8] c"#size\00"
@str.217 = internal unnamed_addr constant [61 x i8] c"`#size <Type>` \E2\80\94 Compile-time byte size of a type (`Int`).\00"
@str.217.struct = internal unnamed_addr constant { i64, ptr } { i64 60, ptr @str.217 }
@str.218 = internal unnamed_addr constant [7 x i8] c"#align\00"
@str.219 = internal unnamed_addr constant [67 x i8] c"`#align <Type>` \E2\80\94 Compile-time byte alignment of a type (`Int`).\00"
@str.219.struct = internal unnamed_addr constant { i64, ptr } { i64 66, ptr @str.219 }
@str.220 = internal unnamed_addr constant [6 x i8] c"#name\00"
@str.221 = internal unnamed_addr constant [64 x i8] c"`#name <Type>` \E2\80\94 Canonical display name of a type (`String`).\00"
@str.221.struct = internal unnamed_addr constant { i64, ptr } { i64 63, ptr @str.221 }
@str.222 = internal unnamed_addr constant [6 x i8] c"#zero\00"
@str.223 = internal unnamed_addr constant [49 x i8] c"`#zero <Type>` \E2\80\94 Default zero value of a type.\00"
@str.223.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.223 }
@str.224 = internal unnamed_addr constant [7 x i8] c"#arity\00"
@str.225 = internal unnamed_addr constant [73 x i8] c"`#arity <Type>` \E2\80\94 Member or variant count of a record or enum (`Int`).\00"
@str.225.struct = internal unnamed_addr constant { i64, ptr } { i64 72, ptr @str.225 }
@str.226 = internal unnamed_addr constant [12 x i8] c"#has_member\00"
@str.227 = internal unnamed_addr constant [91 x i8] c"`#has_member <T>, <name>` \E2\80\94 Compile-time check whether `<T>` has field/variant `<name>`.\00"
@str.227.struct = internal unnamed_addr constant { i64, ptr } { i64 90, ptr @str.227 }
@str.228 = internal unnamed_addr constant [9 x i8] c"#members\00"
@str.229 = internal unnamed_addr constant [89 x i8] c"`#members <T> @ m =>` \E2\80\94 Compile-time unrolled iteration over fields/variants of `<T>`.\00"
@str.229.struct = internal unnamed_addr constant { i64, ptr } { i64 88, ptr @str.229 }
@str.230 = internal unnamed_addr constant [8 x i8] c"#member\00"
@str.231 = internal unnamed_addr constant [102 x i8] c"`#member <tgt>, <mem>[, <pay>]` \E2\80\94 Accesses or constructs a field/variant dynamically by index/name.\00"
@str.231.struct = internal unnamed_addr constant { i64, ptr } { i64 101, ptr @str.231 }
@clo.const.45 = internal constant { ptr, ptr } { ptr @"lsp::builtin_hover_doc", ptr null }
@"var.lsp::builtin_hover_doc" = global ptr null
@str.232 = internal unnamed_addr constant [5 x i8] c".dva\00"
@clo.const.46 = internal constant { ptr, ptr } { ptr @"lsp::find_imported_symbol", ptr null }
@"var.lsp::find_imported_symbol" = global ptr null
@clo.const.47 = internal constant { ptr, ptr } { ptr @"lsp::split_qualified", ptr null }
@"var.lsp::split_qualified" = global ptr null
@str.233 = internal unnamed_addr constant [5 x i8] c"null\00"
@str.233.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.233 }
@clo.const.48 = internal constant { ptr, ptr } { ptr @"lsp::format_id_json", ptr null }
@"var.lsp::format_id_json" = global ptr null
@str.234 = internal unnamed_addr constant [23 x i8] c"{\22jsonrpc\22:\222.0\22,\22id\22:\00"
@str.235 = internal unnamed_addr constant [11 x i8] c",\22result\22:\00"
@clo.const.49 = internal constant { ptr, ptr } { ptr @"lsp::send_result", ptr null }
@"var.lsp::send_result" = global ptr null
@str.236 = internal unnamed_addr constant [18 x i8] c"{\22capabilities\22:{\00"
@str.237 = internal unnamed_addr constant [22 x i8] c"\22textDocumentSync\22:1,\00"
@str.238 = internal unnamed_addr constant [22 x i8] c"\22hoverProvider\22:true,\00"
@str.239 = internal unnamed_addr constant [27 x i8] c"\22definitionProvider\22:true,\00"
@str.240 = internal unnamed_addr constant [31 x i8] c"\22documentSymbolProvider\22:true,\00"
@str.241 = internal unnamed_addr constant [35 x i8] c"\22documentFormattingProvider\22:true,\00"
@str.242 = internal unnamed_addr constant [26 x i8] c"\22inlayHintProvider\22:true,\00"
@str.243 = internal unnamed_addr constant [53 x i8] c"\22completionProvider\22:{\22triggerCharacters\22:[\22.\22,\22:\22]}\00"
@str.244 = internal unnamed_addr constant [45 x i8] c"},\22serverInfo\22:{\22name\22:\22edva-lsp\22,\22version\22:\00"
@clo.const.50 = internal constant { ptr, ptr } { ptr @"lsp::handle_initialize", ptr null }
@"var.lsp::handle_initialize" = global ptr null
@str.245 = internal unnamed_addr constant [13 x i8] c"textDocument\00"
@str.245.struct = internal unnamed_addr constant { i64, ptr } { i64 12, ptr @str.245 }
@str.246 = internal unnamed_addr constant [9 x i8] c"position\00"
@str.246.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.246 }
@str.247 = internal unnamed_addr constant [4 x i8] c"uri\00"
@str.247.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.247 }
@str.248 = internal unnamed_addr constant [5 x i8] c"line\00"
@str.248.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.248 }
@str.249 = internal unnamed_addr constant [10 x i8] c"character\00"
@str.249.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.249 }
@clo.const.51 = internal constant { ptr, ptr } { ptr @"lsp::extract_doc_uri_and_pos", ptr null }
@"var.lsp::extract_doc_uri_and_pos" = global ptr null
@str.250 = internal unnamed_addr constant [40 x i8] c"{\22contents\22:{\22kind\22:\22markdown\22,\22value\22:\00"
@str.251 = internal unnamed_addr constant [8 x i8] c"```dva\0A\00"
@str.252 = internal unnamed_addr constant [14 x i8] c"\0A```\0A*(from `\00"
@str.253 = internal unnamed_addr constant [4 x i8] c"`)*\00"
@str.254 = internal unnamed_addr constant [5 x i8] c"\0A```\00"
@clo.const.52 = internal constant { ptr, ptr } { ptr @"lsp::handle_hover", ptr null }
@"var.lsp::handle_hover" = global ptr null
@str.255 = internal unnamed_addr constant [8 x i8] c"{\22uri\22:\00"
@str.256 = internal unnamed_addr constant [10 x i8] c",\22range\22:\00"
@clo.const.53 = internal constant { ptr, ptr } { ptr @"lsp::handle_definition", ptr null }
@"var.lsp::handle_definition" = global ptr null
@str.257 = internal unnamed_addr constant [2 x i8] c"[\00"
@str.258 = internal unnamed_addr constant [9 x i8] c"{\22name\22:\00"
@str.259 = internal unnamed_addr constant [11 x i8] c",\22detail\22:\00"
@str.260 = internal unnamed_addr constant [9 x i8] c",\22kind\22:\00"
@str.261 = internal unnamed_addr constant [19 x i8] c",\22selectionRange\22:\00"
@str.262 = internal unnamed_addr constant [2 x i8] c"]\00"
@clo.const.54 = internal constant { ptr, ptr } { ptr @"lsp::handle_document_symbol", ptr null }
@"var.lsp::handle_document_symbol" = global ptr null
@str.263 = internal unnamed_addr constant [11 x i8] c"[{\22range\22:\00"
@str.264 = internal unnamed_addr constant [12 x i8] c",\22newText\22:\00"
@str.265 = internal unnamed_addr constant [3 x i8] c"}]\00"
@clo.const.55 = internal constant { ptr, ptr } { ptr @"lsp::handle_formatting", ptr null }
@"var.lsp::handle_formatting" = global ptr null
@str.266 = internal unnamed_addr constant [10 x i8] c"{\22label\22:\00"
@clo.const.56 = internal constant { ptr, ptr } { ptr @"lsp::handle_completion", ptr null }
@"var.lsp::handle_completion" = global ptr null
@str.267 = internal unnamed_addr constant [6 x i8] c"range\00"
@str.267.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.267 }
@str.268 = internal unnamed_addr constant [6 x i8] c"start\00"
@str.268.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.268 }
@str.269 = internal unnamed_addr constant [4 x i8] c"end\00"
@str.269.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.269 }
@str.270 = internal unnamed_addr constant [21 x i8] c"{\22position\22:{\22line\22:\00"
@str.271 = internal unnamed_addr constant [10 x i8] c",\22label\22:\00"
@str.272 = internal unnamed_addr constant [51 x i8] c",\22kind\22:1,\22paddingLeft\22:false,\22paddingRight\22:true}\00"
@clo.const.57 = internal constant { ptr, ptr } { ptr @"lsp::handle_inlay_hint", ptr null }
@"var.lsp::handle_inlay_hint" = global ptr null
@str.273 = internal unnamed_addr constant [5 x i8] c"text\00"
@str.273.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.273 }
@clo.const.58 = internal constant { ptr, ptr } { ptr @"lsp::handle_did_open", ptr null }
@"var.lsp::handle_did_open" = global ptr null
@str.274 = internal unnamed_addr constant [15 x i8] c"contentChanges\00"
@str.274.struct = internal unnamed_addr constant { i64, ptr } { i64 14, ptr @str.274 }
@clo.const.59 = internal constant { ptr, ptr } { ptr @"lsp::handle_did_change", ptr null }
@"var.lsp::handle_did_change" = global ptr null
@clo.const.60 = internal constant { ptr, ptr } { ptr @"lsp::handle_did_save", ptr null }
@"var.lsp::handle_did_save" = global ptr null
@clo.const.61 = internal constant { ptr, ptr } { ptr @"lsp::handle_did_close", ptr null }
@"var.lsp::handle_did_close" = global ptr null
@str.275 = internal unnamed_addr constant [7 x i8] c"method\00"
@str.275.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.275 }
@str.276 = internal unnamed_addr constant [3 x i8] c"id\00"
@str.276.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.276 }
@str.277 = internal unnamed_addr constant [7 x i8] c"params\00"
@str.277.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.277 }
@str.278 = internal unnamed_addr constant [11 x i8] c"initialize\00"
@str.279 = internal unnamed_addr constant [12 x i8] c"initialized\00"
@str.280 = internal unnamed_addr constant [9 x i8] c"shutdown\00"
@str.281 = internal unnamed_addr constant [5 x i8] c"exit\00"
@str.282 = internal unnamed_addr constant [21 x i8] c"textDocument/didOpen\00"
@str.283 = internal unnamed_addr constant [23 x i8] c"textDocument/didChange\00"
@str.284 = internal unnamed_addr constant [21 x i8] c"textDocument/didSave\00"
@str.285 = internal unnamed_addr constant [22 x i8] c"textDocument/didClose\00"
@str.286 = internal unnamed_addr constant [19 x i8] c"textDocument/hover\00"
@str.287 = internal unnamed_addr constant [24 x i8] c"textDocument/definition\00"
@str.288 = internal unnamed_addr constant [28 x i8] c"textDocument/documentSymbol\00"
@str.289 = internal unnamed_addr constant [24 x i8] c"textDocument/formatting\00"
@str.290 = internal unnamed_addr constant [24 x i8] c"textDocument/completion\00"
@str.291 = internal unnamed_addr constant [23 x i8] c"textDocument/inlayHint\00"
@str.292 = internal unnamed_addr constant [55 x i8] c",\22error\22:{\22code\22:-32601,\22message\22:\22Method not found\22}}\00"
@clo.const.63 = internal constant { ptr, ptr } { ptr @"lsp::main", ptr null }
@"var.lsp::main" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_lsp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

; Function Attrs: alwaysinline
define internal noalias ptr @dva_arena_alloc(ptr %0, i64 %1) #1 {
entry:
  %align.add = add i64 %1, 15
  %aligned = and i64 %align.add, -16
  %cap = load i64, ptr %0, align 8
  %nc.ptr = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %0, i32 0, i32 1
  %nc = load i64, ptr %nc.ptr, align 8
  %off.ptr = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %0, i32 0, i32 2
  %off = load i64, ptr %off.ptr, align 8
  %has.chunk = icmp ne i64 %nc, 0
  %remaining = sub i64 %cap, %off
  %fits = icmp ule i64 %aligned, %remaining
  %no.wrap = icmp uge i64 %aligned, %1
  %fits.safe = and i1 %fits, %no.wrap
  %fast.ok = and i1 %has.chunk, %fits.safe
  br i1 %fast.ok, label %bump, label %slow

common.ret:                                       ; preds = %slow, %bump
  %common.ret.op = phi ptr [ %result, %bump ], [ %result.slow, %slow ]
  ret ptr %common.ret.op

bump:                                             ; preds = %entry
  %chunks = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %0, i32 0, i32 3
  %last = sub nuw i64 %nc, 1
  %slot = getelementptr [16384 x ptr], ptr %chunks, i64 0, i64 %last
  %chunk = load ptr, ptr %slot, align 8
  %result = getelementptr i8, ptr %chunk, i64 %off
  %next = add i64 %off, %aligned
  store i64 %next, ptr %off.ptr, align 8
  br label %common.ret

slow:                                             ; preds = %entry
  %result.slow = call ptr @dva_arena_alloc_slow(ptr %0, i64 %1)
  br label %common.ret
}

; Function Attrs: noinline
declare noalias ptr @dva_arena_alloc_slow(ptr, i64) #2

; Function Attrs: noinline
declare i1 @dva_arena_validate_tag(ptr, i64) #2

define internal void @__dva_global_init_lsp() #3 {
entry:
  store i64 12, ptr @"var.lsp::SYM_FUNCTION", align 8
  store i64 13, ptr @"var.lsp::SYM_VARIABLE", align 8
  store i64 14, ptr @"var.lsp::SYM_CONSTANT", align 8
  store i64 23, ptr @"var.lsp::SYM_STRUCT", align 8
  store i64 10, ptr @"var.lsp::SYM_ENUM", align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr @"var.lsp::open_docs", align 8
  store ptr @str.0.struct, ptr @"var.lsp::stdlib_dir_path", align 8
  store ptr @str.0.struct, ptr @"var.lsp::active_doc_text", align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.new3, align 8
  %a.data.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 1
  store ptr %a.buf5, ptr %a.data.gep7, align 8
  %a.cap.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep8, align 8
  store ptr %a.new3, ptr @"var.lsp::pending_syms", align 8
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 128)
  store i64 0, ptr %a.new10, align 8
  %a.data.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new10, i32 0, i32 1
  store ptr %a.buf12, ptr %a.data.gep14, align 8
  %a.cap.gep15 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new10, i32 0, i32 2
  store i64 16, ptr %a.cap.gep15, align 8
  store ptr %a.new10, ptr @"var.lsp::pending_diags", align 8
  store ptr @clo.const, ptr @"var.lsp::set_stdlib_dir", align 8
  store ptr @clo.const.1, ptr @"var.lsp::has_override", align 8
  store ptr @clo.const.2, ptr @"var.lsp::get_override_text", align 8
  store ptr @clo.const.13, ptr @"var.lsp::record_typecheck_ok", align 8
  store ptr @clo.const.16, ptr @"var.lsp::record_typecheck_errs", align 8
  store ptr @clo.const.17, ptr @"var.lsp::read_byte", align 8
  store ptr @clo.const.18, ptr @"var.lsp::read_header_line", align 8
  store ptr @clo.const.19, ptr @"var.lsp::parse_content_length", align 8
  store ptr @clo.const.21, ptr @"var.lsp::read_exact_bytes", align 8
  store ptr @clo.const.22, ptr @"var.lsp::read_rpc_message", align 8
  store ptr @clo.const.23, ptr @"var.lsp::send_rpc_payload", align 8
  store ptr @clo.const.24, ptr @"var.lsp::hex_val", align 8
  store ptr @clo.const.25, ptr @"var.lsp::uri_to_path", align 8
  store ptr @clo.const.26, ptr @"var.lsp::path_to_uri", align 8
  store ptr @clo.const.27, ptr @"var.lsp::format_value_type", align 8
  store ptr @clo.const.28, ptr @"var.lsp::format_type_info", align 8
  store ptr @clo.const.29, ptr @"var.lsp::is_fwd_marker", align 8
  store ptr @clo.const.30, ptr @"var.lsp::extract_symbols", align 8
  store ptr @clo.const.8, ptr @"var.lsp::sym_has_loc", align 8
  store ptr @clo.const.4, ptr @"var.lsp::find_top_sym_line", align 8
  store ptr @clo.const.5, ptr @"var.lsp::next_top_sym_line", align 8
  store ptr @clo.const.10, ptr @"var.lsp::line_has_type_annot", align 8
  store ptr @clo.const.9, ptr @"var.lsp::find_local_binding_loc", align 8
  store ptr @clo.const.11, ptr @"var.lsp::collect_local_typed_exprs", align 8
  store ptr @clo.const.3, ptr @"var.lsp::update_sym_type", align 8
  store ptr @clo.const.12, ptr @"var.lsp::enrich_symbols_with_tast", align 8
  store ptr @clo.const.31, ptr @"var.lsp::has_use_imports", align 8
  store ptr @clo.const.32, ptr @"var.lsp::lsp_range_json", align 8
  store ptr @clo.const.33, ptr @"var.lsp::lsp_diag_json", align 8
  store ptr @clo.const.34, ptr @"var.lsp::publish_diagnostics", align 8
  store ptr @clo.const.35, ptr @"var.lsp::copy_sym_entries", align 8
  store ptr @clo.const.36, ptr @"var.lsp::upsert_doc", align 8
  store ptr @clo.const.37, ptr @"var.lsp::get_doc", align 8
  store ptr @clo.const.38, ptr @"var.lsp::remove_doc", align 8
  store ptr @clo.const.14, ptr @"var.lsp::has_diag", align 8
  store ptr @clo.const.15, ptr @"var.lsp::add_unique_diag", align 8
  store ptr @clo.const.39, ptr @"var.lsp::analyze_document", align 8
  store ptr @clo.const.40, ptr @"var.lsp::is_ident_char", align 8
  store ptr @clo.const.7, ptr @"var.lsp::get_line_at", align 8
  store ptr @clo.const.6, ptr @"var.lsp::count_doc_lines", align 8
  store ptr @clo.const.41, ptr @"var.lsp::extract_word_at", align 8
  store ptr @clo.const.42, ptr @"var.lsp::is_op_char", align 8
  store ptr @clo.const.43, ptr @"var.lsp::extract_operator_at", align 8
  store ptr @clo.const.44, ptr @"var.lsp::operator_hover_doc", align 8
  store ptr @clo.const.45, ptr @"var.lsp::builtin_hover_doc", align 8
  store ptr @clo.const.46, ptr @"var.lsp::find_imported_symbol", align 8
  store ptr @clo.const.47, ptr @"var.lsp::split_qualified", align 8
  store ptr @clo.const.48, ptr @"var.lsp::format_id_json", align 8
  store ptr @clo.const.49, ptr @"var.lsp::send_result", align 8
  store ptr @clo.const.50, ptr @"var.lsp::handle_initialize", align 8
  store ptr @clo.const.51, ptr @"var.lsp::extract_doc_uri_and_pos", align 8
  store ptr @clo.const.52, ptr @"var.lsp::handle_hover", align 8
  store ptr @clo.const.53, ptr @"var.lsp::handle_definition", align 8
  store ptr @clo.const.54, ptr @"var.lsp::handle_document_symbol", align 8
  store ptr @clo.const.55, ptr @"var.lsp::handle_formatting", align 8
  store ptr @clo.const.56, ptr @"var.lsp::handle_completion", align 8
  store ptr @clo.const.57, ptr @"var.lsp::handle_inlay_hint", align 8
  store ptr @clo.const.58, ptr @"var.lsp::handle_did_open", align 8
  store ptr @clo.const.59, ptr @"var.lsp::handle_did_change", align 8
  store ptr @clo.const.60, ptr @"var.lsp::handle_did_save", align 8
  store ptr @clo.const.61, ptr @"var.lsp::handle_did_close", align 8
  store ptr @clo.const.63, ptr @"var.lsp::main", align 8
  ret void
}

declare i64 @read(i32, ptr, i64)

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #4

define void @"lsp::set_stdlib_dir"(ptr %0) #3 {
entry:
  store ptr %0, ptr @"var.lsp::stdlib_dir_path", align 8
  ret void
}

define i1 @"lsp::has_override"(ptr %0) #3 {
entry:
  %a.load = load ptr, ptr @"var.lsp::open_docs", align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  store i64 0, ptr %a.create1, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create1, ptr @"var.lsp::open_docs", align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr @"var.lsp::open_docs", align 8
  %a.null5 = icmp eq ptr %a.load2, null
  br i1 %a.null5, label %a.create6, label %a.after7

a.create6:                                        ; preds = %a.after
  %arena.cur8 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create9 = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 24)
  %arena.cur10 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf11 = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 128)
  store i64 0, ptr %a.create9, align 8
  %a.data.gep13 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create9, i32 0, i32 1
  store ptr %a.buf11, ptr %a.data.gep13, align 8
  %a.cap.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create9, i32 0, i32 2
  store i64 16, ptr %a.cap.gep14, align 8
  br label %a.after7

a.after7:                                         ; preds = %a.create6, %a.after
  %var.docs.0 = phi ptr [ %a.create9, %a.create6 ], [ %a.load2, %a.after ]
  %arr.cycle.len16 = load i64, ptr %var.docs.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.docs.0, i32 0, i32 1
  %arr.cycle.data17 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.834

loop.header.834:                                  ; preds = %choice.exit, %a.after7
  %loop.idx.834.0 = phi i64 [ 0, %a.after7 ], [ %loop.next, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.834.0, %arr.cycle.len16
  br i1 %loop.cond, label %loop.body.834, label %loop.exit.834

loop.body.834:                                    ; preds = %loop.header.834
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data17, i64 %loop.idx.834.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %slot.i2p, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len20 = load i64, ptr %fld.load, align 8
  %eq.lhs.len21 = and i64 %eq.lhs.len20, 281474976710655
  %eq.rhs.len22 = load i64, ptr %0, align 8
  %eq.rhs.len23 = and i64 %eq.rhs.len22, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len21, %eq.rhs.len23
  br i1 %eq.len, label %str.eq.then, label %choice.exit

loop.exit.834:                                    ; preds = %str.eq.then, %loop.header.834
  %"var.found'.0" = phi i1 [ false, %loop.header.834 ], [ true, %str.eq.then ]
  ret i1 %"var.found'.0"

str.eq.then:                                      ; preds = %loop.body.834
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data24 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.rhs.data25 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data24, ptr %eq.rhs.data25, i64 %eq.lhs.len21)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %loop.exit.834, label %choice.exit

choice.exit:                                      ; preds = %loop.body.834, %str.eq.then
  %loop.next = add i64 %loop.idx.834.0, 1
  br label %loop.header.834
}

declare i32 @memcmp(ptr, ptr, i64) #3

define { i64, ptr } @"lsp::get_override_text"(ptr %0) #3 {
entry:
  %a.load = load ptr, ptr @"var.lsp::open_docs", align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  store i64 0, ptr %a.create1, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create1, ptr @"var.lsp::open_docs", align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr @"var.lsp::open_docs", align 8
  %a.null5 = icmp eq ptr %a.load2, null
  br i1 %a.null5, label %a.create6, label %a.after7

a.create6:                                        ; preds = %a.after
  %arena.cur8 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create9 = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 24)
  %arena.cur10 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf11 = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 128)
  store i64 0, ptr %a.create9, align 8
  %a.data.gep13 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create9, i32 0, i32 1
  store ptr %a.buf11, ptr %a.data.gep13, align 8
  %a.cap.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create9, i32 0, i32 2
  store i64 16, ptr %a.cap.gep14, align 8
  br label %a.after7

a.after7:                                         ; preds = %a.create6, %a.after
  %var.docs.0 = phi ptr [ %a.create9, %a.create6 ], [ %a.load2, %a.after ]
  %arr.cycle.len16 = load i64, ptr %var.docs.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.docs.0, i32 0, i32 1
  %arr.cycle.data17 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.836

loop.header.836:                                  ; preds = %choice.exit, %a.after7
  %loop.idx.836.0 = phi i64 [ 0, %a.after7 ], [ %loop.next, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.836.0, %arr.cycle.len16
  br i1 %loop.cond, label %loop.body.836, label %loop.exit.836

loop.body.836:                                    ; preds = %loop.header.836
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data17, i64 %loop.idx.836.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %slot.i2p, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len20 = load i64, ptr %fld.load, align 8
  %eq.lhs.len21 = and i64 %eq.lhs.len20, 281474976710655
  %eq.rhs.len22 = load i64, ptr %0, align 8
  %eq.rhs.len23 = and i64 %eq.rhs.len22, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len21, %eq.rhs.len23
  br i1 %eq.len, label %str.eq.then, label %choice.exit

loop.exit.836:                                    ; preds = %loop.header.836, %choice.then
  %"var.res'.0" = phi ptr [ %fld.load28, %choice.then ], [ null, %loop.header.836 ]
  %ret.niche.nn = icmp ne ptr %"var.res'.0", null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

str.eq.then:                                      ; preds = %loop.body.836
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data24 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.rhs.data25 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data24, ptr %eq.rhs.data25, i64 %eq.lhs.len21)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.then
  %fld.gep27 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %slot.i2p, i32 0, i32 2
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  br label %loop.exit.836

choice.exit:                                      ; preds = %loop.body.836, %str.eq.then
  %loop.next = add i64 %loop.idx.836.0, 1
  br label %loop.header.836

ret.niche.load:                                   ; preds = %loop.exit.836
  %ret.niche.val = load { i64, ptr }, ptr %"var.res'.0", align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %loop.exit.836
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %loop.exit.836 ]
  ret { i64, ptr } %ret.niche.pack
}

define void @"lsp::record_typecheck_ok"(ptr %0, ptr %1) #3 {
entry:
  %a.load = load ptr, ptr @"var.lsp::pending_syms", align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  store i64 0, ptr %a.create1, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create1, ptr @"var.lsp::pending_syms", align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr @"var.lsp::pending_syms", align 8
  %a.null6 = icmp eq ptr %1, null
  br i1 %a.null6, label %a.create7, label %a.after8

a.create7:                                        ; preds = %a.after
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 128)
  store i64 0, ptr %a.create10, align 8
  %a.data.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 1
  store ptr %a.buf12, ptr %a.data.gep14, align 8
  %a.cap.gep15 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 2
  store i64 16, ptr %a.cap.gep15, align 8
  br label %a.after8

a.after8:                                         ; preds = %a.create7, %a.after
  %var.tprog.0 = phi ptr [ %a.create10, %a.create7 ], [ %1, %a.after ]
  %var.load17 = load ptr, ptr @"var.lsp::active_doc_text", align 8
  call void @"lsp::enrich_symbols_with_tast"(ptr %a.load2, ptr %0, ptr %var.tprog.0, ptr %var.load17)
  ret void
}

define void @"lsp::enrich_symbols_with_tast"(ptr %0, ptr %1, ptr %2, ptr %3) #3 {
entry:
  %a.null = icmp eq ptr %2, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  store i64 0, ptr %a.create1, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.tprog.0 = phi ptr [ %a.create1, %a.create ], [ %2, %entry ]
  %arr.cycle.len3 = load i64, ptr %var.tprog.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.tprog.0, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.838

loop.header.838:                                  ; preds = %choice.exit, %a.after
  %loop.idx.838.0 = phi i64 [ 0, %a.after ], [ %loop.next, %choice.exit ]
  %var.syms.0 = phi ptr [ %0, %a.after ], [ %var.syms.1, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.838.0, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.838, label %loop.exit.838

loop.body.838:                                    ; preds = %loop.header.838
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %loop.idx.838.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %tag.id = load i64, ptr %slot.i2p, align 8
  switch i64 %tag.id, label %choice.exit [
    i64 0, label %choice.case
    i64 1, label %choice.case93
    i64 2, label %choice.case187
  ]

loop.exit.838:                                    ; preds = %loop.header.838
  ret void

choice.exit:                                      ; preds = %loop.body.838, %choice.case, %a.after31, %a.after212, %a.after118
  %var.syms.1 = phi ptr [ %var.syms.7, %a.after118 ], [ %var.syms.11, %a.after212 ], [ %var.syms.3, %a.after31 ], [ %var.syms.0, %choice.case ], [ %var.syms.0, %loop.body.838 ]
  %loop.next = add i64 %loop.idx.838.0, 1
  br label %loop.header.838

choice.case:                                      ; preds = %loop.body.838
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %slot.i2p, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %fld.load = load ptr, ptr %payload.ptr, align 8
  %tag.id12 = load i64, ptr %fld.load, align 8
  %tag.match13 = icmp eq i64 %tag.id12, 18
  br i1 %tag.match13, label %choice.case9, label %choice.exit

choice.case9:                                     ; preds = %choice.case
  %pay.gep14 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr15 = load ptr, ptr %pay.gep14, align 8
  %fld.load19 = load ptr, ptr %payload.ptr15, align 8
  %fld.gep21 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr15, i32 0, i32 5
  %fld.gep24 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep21, i32 0, i32 1
  %fld.load25 = load ptr, ptr %fld.gep24, align 8
  %call.res = call { i64, ptr } @"unify::show_utype"(ptr %1, ptr %fld.load25)
  %arena.cur26 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %a.null29 = icmp eq ptr %var.syms.0, null
  br i1 %a.null29, label %a.create30, label %a.after31

a.create30:                                       ; preds = %choice.case9
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 24)
  %arena.cur34 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf35 = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 128)
  store i64 0, ptr %a.create33, align 8
  %a.data.gep37 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create33, i32 0, i32 1
  store ptr %a.buf35, ptr %a.data.gep37, align 8
  %a.cap.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create33, i32 0, i32 2
  store i64 16, ptr %a.cap.gep38, align 8
  br label %a.after31

a.after31:                                        ; preds = %a.create30, %choice.case9
  %var.syms.3 = phi ptr [ %a.create33, %a.create30 ], [ %var.syms.0, %choice.case9 ]
  call void @"lsp::update_sym_type"(ptr %var.syms.3, ptr %fld.load19, ptr %ret.ub.alloc)
  %call.res56 = call i64 @"lsp::find_top_sym_line"(ptr %var.syms.3, ptr %fld.load19)
  %cmptmp = icmp sgt i64 %call.res56, 0
  %choice.res = select i1 %cmptmp, i64 %call.res56, i64 1
  %call.res74 = call i64 @"lsp::next_top_sym_line"(ptr %var.syms.3, i64 %choice.res)
  call void @"lsp::collect_local_typed_exprs"(ptr %var.syms.3, ptr %1, ptr %fld.gep21, ptr %3, i64 %choice.res, i64 %call.res74)
  br label %choice.exit

choice.case93:                                    ; preds = %loop.body.838
  %pay.gep98 = getelementptr inbounds { i64, ptr }, ptr %slot.i2p, i32 0, i32 1
  %payload.ptr99 = load ptr, ptr %pay.gep98, align 8
  %fld.load103 = load ptr, ptr %payload.ptr99, align 8
  %fld.gep105 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr99, i32 0, i32 2
  %fld.gep108 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep105, i32 0, i32 1
  %fld.load109 = load ptr, ptr %fld.gep108, align 8
  %call.res110 = call { i64, ptr } @"unify::show_utype"(ptr %1, ptr %fld.load109)
  %arena.cur111 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc112 = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 16)
  store { i64, ptr } %call.res110, ptr %ret.ub.alloc112, align 8
  %a.null116 = icmp eq ptr %var.syms.0, null
  br i1 %a.null116, label %a.create117, label %a.after118

a.create117:                                      ; preds = %choice.case93
  %arena.cur119 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create120 = call ptr @dva_arena_alloc(ptr %arena.cur119, i64 24)
  %arena.cur121 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf122 = call ptr @dva_arena_alloc(ptr %arena.cur121, i64 128)
  store i64 0, ptr %a.create120, align 8
  %a.data.gep124 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create120, i32 0, i32 1
  store ptr %a.buf122, ptr %a.data.gep124, align 8
  %a.cap.gep125 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create120, i32 0, i32 2
  store i64 16, ptr %a.cap.gep125, align 8
  br label %a.after118

a.after118:                                       ; preds = %a.create117, %choice.case93
  %var.syms.7 = phi ptr [ %a.create120, %a.create117 ], [ %var.syms.0, %choice.case93 ]
  call void @"lsp::update_sym_type"(ptr %var.syms.7, ptr %fld.load103, ptr %ret.ub.alloc112)
  %call.res143 = call i64 @"lsp::find_top_sym_line"(ptr %var.syms.7, ptr %fld.load103)
  %cmptmp146 = icmp sgt i64 %call.res143, 0
  %choice.res151 = select i1 %cmptmp146, i64 %call.res143, i64 1
  %call.res167 = call i64 @"lsp::next_top_sym_line"(ptr %var.syms.7, i64 %choice.res151)
  call void @"lsp::collect_local_typed_exprs"(ptr %var.syms.7, ptr %1, ptr %fld.gep105, ptr %3, i64 %choice.res151, i64 %call.res167)
  br label %choice.exit

choice.case187:                                   ; preds = %loop.body.838
  %pay.gep192 = getelementptr inbounds { i64, ptr }, ptr %slot.i2p, i32 0, i32 1
  %payload.ptr193 = load ptr, ptr %pay.gep192, align 8
  %fld.load197 = load ptr, ptr %payload.ptr193, align 8
  %fld.gep199 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr193, i32 0, i32 2
  %fld.gep202 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep199, i32 0, i32 1
  %fld.load203 = load ptr, ptr %fld.gep202, align 8
  %call.res204 = call { i64, ptr } @"unify::show_utype"(ptr %1, ptr %fld.load203)
  %arena.cur205 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc206 = call ptr @dva_arena_alloc(ptr %arena.cur205, i64 16)
  store { i64, ptr } %call.res204, ptr %ret.ub.alloc206, align 8
  %a.null210 = icmp eq ptr %var.syms.0, null
  br i1 %a.null210, label %a.create211, label %a.after212

a.create211:                                      ; preds = %choice.case187
  %arena.cur213 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create214 = call ptr @dva_arena_alloc(ptr %arena.cur213, i64 24)
  %arena.cur215 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf216 = call ptr @dva_arena_alloc(ptr %arena.cur215, i64 128)
  store i64 0, ptr %a.create214, align 8
  %a.data.gep218 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create214, i32 0, i32 1
  store ptr %a.buf216, ptr %a.data.gep218, align 8
  %a.cap.gep219 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create214, i32 0, i32 2
  store i64 16, ptr %a.cap.gep219, align 8
  br label %a.after212

a.after212:                                       ; preds = %a.create211, %choice.case187
  %var.syms.11 = phi ptr [ %a.create214, %a.create211 ], [ %var.syms.0, %choice.case187 ]
  call void @"lsp::update_sym_type"(ptr %var.syms.11, ptr %fld.load197, ptr %ret.ub.alloc206)
  %call.res237 = call i64 @"lsp::find_top_sym_line"(ptr %var.syms.11, ptr %fld.load197)
  %cmptmp240 = icmp sgt i64 %call.res237, 0
  %choice.res245 = select i1 %cmptmp240, i64 %call.res237, i64 1
  %call.res261 = call i64 @"lsp::next_top_sym_line"(ptr %var.syms.11, i64 %choice.res245)
  call void @"lsp::collect_local_typed_exprs"(ptr %var.syms.11, ptr %1, ptr %fld.gep199, ptr %3, i64 %choice.res245, i64 %call.res261)
  br label %choice.exit
}

declare { i64, ptr } @"unify::show_utype"(ptr, ptr) #3

define void @"lsp::update_sym_type"(ptr %0, ptr %1, ptr %2) #3 {
entry:
  %eq.lhs.len1 = load i64, ptr %2, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, 0
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

str.eq.then:                                      ; preds = %entry
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr @str.0, i64 0)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %entry, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %entry ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.839.then, label %choice.exit

and.839.then:                                     ; preds = %str.eq.merge
  %eq.lhs.len7 = load i64, ptr %2, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %eq.len11 = icmp eq i64 %eq.lhs.len8, 1
  br i1 %eq.len11, label %str.eq.then12, label %str.eq.merge14

str.eq.then12:                                    ; preds = %and.839.then
  %eq.lhs.data15 = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %eq.lhs.data16 = load ptr, ptr %eq.lhs.data15, align 8
  %eq.memcmp18 = call i32 @memcmp(ptr %eq.lhs.data16, ptr @str.1, i64 1)
  %eq.cmp.zero19 = icmp eq i32 %eq.memcmp18, 0
  br label %str.eq.merge14

str.eq.merge14:                                   ; preds = %and.839.then, %str.eq.then12
  %str.eq.result20 = phi i1 [ %eq.cmp.zero19, %str.eq.then12 ], [ false, %and.839.then ]
  %str.neq21 = xor i1 %str.eq.result20, true
  br i1 %str.neq21, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge14
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %loop.header.840, %str.eq.merge, %str.eq.merge14
  ret void

a.create:                                         ; preds = %choice.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create23 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur24 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 128)
  store i64 0, ptr %a.create23, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create23, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create23, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %var.syms.0 = phi ptr [ %a.create23, %a.create ], [ %0, %choice.then ]
  %a.len.query25 = load i64, ptr %var.syms.0, align 8
  br label %loop.header.840

loop.header.840:                                  ; preds = %choice.exit135, %a.after
  %loop.idx.840.0 = phi i64 [ 0, %a.after ], [ %loop.next, %choice.exit135 ]
  %var.syms.1 = phi ptr [ %var.syms.0, %a.after ], [ %var.syms.1, %choice.exit135 ]
  %loop.cond = icmp slt i64 %loop.idx.840.0, %a.len.query25
  br i1 %loop.cond, label %a.rd.check, label %choice.exit

a.rd.check:                                       ; preds = %loop.header.840
  %a.rd.len40 = load i64, ptr %var.syms.1, align 8
  %a.rd.ge0 = icmp sge i64 %loop.idx.840.0, 0
  %a.rd.lt = icmp slt i64 %loop.idx.840.0, %a.rd.len40
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.syms.1, i32 0, i32 1
  %a.rd.data41 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data41, i64 %loop.idx.840.0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur43 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc44 = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 56)
  store i64 4011, ptr %err.alloc44, align 8
  %err.msg.gep46 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc44, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep46, align 8
  %err.file.gep47 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc44, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep47, align 8
  %err.line.gep48 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc44, i32 0, i32 3
  store i64 537, ptr %err.line.gep48, align 8
  %err.col.gep49 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc44, i32 0, i32 4
  store i64 24, ptr %err.col.gep49, align 8
  %err.ctx.gep50 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc44, i32 0, i32 5
  store i64 %loop.idx.840.0, ptr %err.ctx.gep50, align 8
  %err.ctx1.gep52 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep50, i32 0, i32 1
  store i64 %a.rd.len40, ptr %err.ctx1.gep52, align 8
  %err.p2i53 = ptrtoint ptr %err.alloc44 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i53, %a.rd.err.oob ]
  br i1 %a.rd.tag, label %unwrap.pos.841, label %unwrap.abort.841

unwrap.pos.841:                                   ; preds = %a.rd.done
  %pay.ptr = inttoptr i64 %a.rd.pay to ptr
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %pay.ptr, i32 0, i32 8
  %fld.load = load i1, ptr %fld.gep, align 1
  %nottmp = xor i1 %fld.load, true
  br i1 %nottmp, label %and.842.then, label %choice.exit135

unwrap.abort.841:                                 ; preds = %a.rd.done
  %err.ptr = inttoptr i64 %a.rd.pay to ptr
  %err.code = load i64, ptr %err.ptr, align 8
  %err.msg.gep55 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep55, align 8
  %err.file.gep56 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep56, align 8
  %err.line.gep57 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep57, align 8
  %err.col.gep58 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep58, align 8
  %err.msg.len59 = load i64, ptr %err.msg.struct, align 8
  %err.msg.len60 = and i64 %err.msg.len59, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len60 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data61 = load ptr, ptr %err.msg.data, align 8
  %err.file.len62 = load i64, ptr %err.file.struct, align 8
  %err.file.len63 = and i64 %err.file.len62, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len63 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data64 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.841
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.841
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data61, i32 %err.file.len32, ptr %err.file.data64, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

and.842.then:                                     ; preds = %unwrap.pos.841
  %fld.load68 = load ptr, ptr %pay.ptr, align 8
  %eq.lhs.len71 = load i64, ptr %fld.load68, align 8
  %eq.lhs.len72 = and i64 %eq.lhs.len71, 281474976710655
  %eq.rhs.len74 = load i64, ptr %1, align 8
  %eq.rhs.len75 = and i64 %eq.rhs.len74, 281474976710655
  %eq.len76 = icmp eq i64 %eq.lhs.len72, %eq.rhs.len75
  br i1 %eq.len76, label %str.eq.then77, label %choice.exit135

str.eq.then77:                                    ; preds = %and.842.then
  %eq.lhs.data80 = getelementptr inbounds { i64, ptr }, ptr %fld.load68, i32 0, i32 1
  %eq.lhs.data81 = load ptr, ptr %eq.lhs.data80, align 8
  %eq.rhs.data82 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.rhs.data83 = load ptr, ptr %eq.rhs.data82, align 8
  %eq.memcmp84 = call i32 @memcmp(ptr %eq.lhs.data81, ptr %eq.rhs.data83, i64 %eq.lhs.len72)
  %eq.cmp.zero85 = icmp eq i32 %eq.memcmp84, 0
  br i1 %eq.cmp.zero85, label %and.843.then, label %choice.exit135

and.843.then:                                     ; preds = %str.eq.then77
  %fld.gep88 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %pay.ptr, i32 0, i32 1
  %fld.load89 = load ptr, ptr %fld.gep88, align 8
  %eq.lhs.len92 = load i64, ptr %fld.load89, align 8
  %eq.lhs.len93 = and i64 %eq.lhs.len92, 281474976710655
  %eq.rhs.len95 = load i64, ptr %1, align 8
  %eq.rhs.len96 = and i64 %eq.rhs.len95, 281474976710655
  %eq.len97 = icmp eq i64 %eq.lhs.len93, %eq.rhs.len96
  br i1 %eq.len97, label %str.eq.then98, label %or.844.else

str.eq.then98:                                    ; preds = %and.843.then
  %eq.lhs.data101 = getelementptr inbounds { i64, ptr }, ptr %fld.load89, i32 0, i32 1
  %eq.lhs.data102 = load ptr, ptr %eq.lhs.data101, align 8
  %eq.rhs.data103 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.rhs.data104 = load ptr, ptr %eq.rhs.data103, align 8
  %eq.memcmp105 = call i32 @memcmp(ptr %eq.lhs.data102, ptr %eq.rhs.data104, i64 %eq.lhs.len93)
  %eq.cmp.zero106 = icmp eq i32 %eq.memcmp105, 0
  br i1 %eq.cmp.zero106, label %a.after140, label %or.844.else

or.844.else:                                      ; preds = %and.843.then, %str.eq.then98
  %fld.load110 = load ptr, ptr %fld.gep88, align 8
  %str.len.query111 = load i64, ptr %fld.load110, align 8
  %str.len.query112 = and i64 %str.len.query111, 281474976710655
  %cmptmp = icmp sge i64 %str.len.query112, 3
  br i1 %cmptmp, label %and.845.then, label %choice.exit135

and.845.then:                                     ; preds = %or.844.else
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load110, i32 0, i32 1
  %s.read.data118 = load ptr, ptr %s.read.data, align 8
  %subtmp = sub nuw nsw i64 %str.len.query112, 3
  %rel.start = add nuw nsw i64 %str.len.query112, %subtmp
  %norm.start = select i1 false, i64 %rel.start, i64 %subtmp
  %c.start.0 = select i1 false, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %str.len.query112
  %final.start = select i1 %start.gt.len, i64 %str.len.query112, i64 %c.start.0
  %view.empty = icmp sle i64 %str.len.query112, %final.start
  %view.len.sub = sub nsw i64 %str.len.query112, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data118, i64 %final.start
  %eq.len127 = icmp eq i64 %view.len, 3
  br i1 %eq.len127, label %str.eq.then128, label %choice.exit135

str.eq.then128:                                   ; preds = %and.845.then
  %eq.memcmp131 = call i32 @memcmp(ptr %view.data, ptr @str.5, i64 3)
  %eq.cmp.zero132 = icmp eq i32 %eq.memcmp131, 0
  br i1 %eq.cmp.zero132, label %a.after140, label %choice.exit135

choice.exit135:                                   ; preds = %str.eq.then77, %and.842.then, %unwrap.pos.841, %or.844.else, %and.845.then, %a.wr.done, %str.eq.then128
  %loop.next = add i64 %loop.idx.840.0, 1
  br label %loop.header.840

a.after140:                                       ; preds = %str.eq.then98, %str.eq.then128
  %fld.load152 = load ptr, ptr %pay.ptr, align 8
  %cat.seg154 = load i64, ptr %1, align 8
  %cat.seg155 = and i64 %cat.seg154, 281474976710655
  %cat.seg156 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %cat.seg157 = load ptr, ptr %cat.seg156, align 8
  %cat.seg160 = load i64, ptr %2, align 8
  %cat.seg161 = and i64 %cat.seg160, 281474976710655
  %cat.seg162 = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %cat.seg163 = load ptr, ptr %cat.seg162, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg155, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %cat.sum.len165 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg161)
  %sum166 = extractvalue { i64, i1 } %cat.sum.len165, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum166, i64 1)
  %sum171 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur176 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur176, i64 %sum171)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %cat.seg157, i64 %cat.seg155, i1 false)
  %cat.dst177 = getelementptr i8, ptr %concat.buf, i64 %cat.seg155
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst177, ptr align 1 @str.6, i64 2, i1 false)
  %cat.off178 = add nuw nsw i64 %cat.seg155, 2
  %cat.dst179 = getelementptr i8, ptr %concat.buf, i64 %cat.off178
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst179, ptr align 1 %cat.seg163, i64 %cat.seg161, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum166
  store i8 0, ptr %concat.nul, align 1
  %arena.cur180 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur180, i64 16)
  store i64 %sum166, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %fld.gep182 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %pay.ptr, i32 0, i32 2
  %fld.load183 = load i64, ptr %fld.gep182, align 8
  %fld.gep185 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %pay.ptr, i32 0, i32 3
  %fld.load186 = load i64, ptr %fld.gep185, align 8
  %fld.gep188 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %pay.ptr, i32 0, i32 4
  %fld.load189 = load i64, ptr %fld.gep188, align 8
  %fld.gep191 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %pay.ptr, i32 0, i32 5
  %fld.load192 = load i64, ptr %fld.gep191, align 8
  %fld.gep194 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %pay.ptr, i32 0, i32 6
  %fld.load195 = load i64, ptr %fld.gep194, align 8
  %fld.gep197 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %pay.ptr, i32 0, i32 7
  %fld.load198 = load i1, ptr %fld.gep197, align 1
  %fld.load201 = load i1, ptr %fld.gep, align 1
  %arena.cur202 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur202, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr null, i32 1) to i64))
  store ptr %fld.load152, ptr %rec.alloc, align 8
  %rec.fld203 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %concat.str, ptr %rec.fld203, align 8
  %rec.fld204 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %fld.load183, ptr %rec.fld204, align 8
  %rec.fld205 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %fld.load186, ptr %rec.fld205, align 8
  %rec.fld206 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %fld.load189, ptr %rec.fld206, align 8
  %rec.fld207 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %fld.load192, ptr %rec.fld207, align 8
  %rec.fld208 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 6
  store i64 %fld.load195, ptr %rec.fld208, align 8
  %rec.fld209 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 7
  store i1 %fld.load198, ptr %rec.fld209, align 1
  %rec.fld210 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 8
  store i1 %fld.load201, ptr %rec.fld210, align 1
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  %a.wr.len211 = load i64, ptr %var.syms.1, align 8
  %a.wr.lt = icmp slt i64 %loop.idx.840.0, %a.wr.len211
  %a.wr.bounds = and i1 %a.rd.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.after140
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.syms.1, i32 0, i32 1
  %a.wr.data212 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data212, i64 %loop.idx.840.0
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.after140
  %arena.cur223 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc224 = call ptr @dva_arena_alloc(ptr %arena.cur223, i64 56)
  store i64 4011, ptr %err.alloc224, align 8
  %err.msg.gep226 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc224, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep226, align 8
  %err.file.gep227 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc224, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep227, align 8
  %err.line.gep228 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc224, i32 0, i32 3
  store i64 0, ptr %err.line.gep228, align 8
  %err.col.gep229 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc224, i32 0, i32 4
  store i64 0, ptr %err.col.gep229, align 8
  %err.ctx.gep230 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc224, i32 0, i32 5
  store i64 %loop.idx.840.0, ptr %err.ctx.gep230, align 8
  %err.ctx1.gep232 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep230, i32 0, i32 1
  store i64 %a.wr.len211, ptr %err.ctx1.gep232, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc224, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.exit135, label %choice.else

choice.else:                                      ; preds = %a.wr.done
  %err.code239 = load i64, ptr %a.wr.niche, align 8
  %err.msg.gep240 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct241 = load ptr, ptr %err.msg.gep240, align 8
  %err.file.gep242 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct243 = load ptr, ptr %err.file.gep242, align 8
  %err.line.gep244 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line245 = load i64, ptr %err.line.gep244, align 8
  %err.col.gep246 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col247 = load i64, ptr %err.col.gep246, align 8
  %err.msg.len249 = load i64, ptr %err.msg.struct241, align 8
  %err.msg.len250 = and i64 %err.msg.len249, 281474976710655
  %err.msg.len32251 = trunc i64 %err.msg.len250 to i32
  %err.msg.data252 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct241, i32 0, i32 1
  %err.msg.data253 = load ptr, ptr %err.msg.data252, align 8
  %err.file.len255 = load i64, ptr %err.file.struct243, align 8
  %err.file.len256 = and i64 %err.file.len255, 281474976710655
  %err.file.len32257 = trunc i64 %err.file.len256 to i32
  %err.file.data258 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct243, i32 0, i32 1
  %err.file.data259 = load ptr, ptr %err.file.data258, align 8
  %err.thread.rec260 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread261 = icmp ne ptr %err.thread.rec260, null
  br i1 %err.is.thread261, label %err.thread262, label %err.normal263

err.thread262:                                    ; preds = %choice.else
  %err.haserr.gep264 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec260, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep264, align 8
  %err.err.gep265 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec260, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep265, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal263:                                    ; preds = %choice.else
  %err.panic.printf266 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code239, i32 %err.msg.len32251, ptr %err.msg.data253, i32 %err.file.len32257, ptr %err.file.data259, i64 %err.line245, i64 %err.col247)
  call void @exit(i32 1)
  unreachable
}

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

define i64 @"lsp::find_top_sym_line"(ptr %0, ptr %1) #3 {
entry:
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  store i64 0, ptr %a.create1, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.syms.0 = phi ptr [ %a.create1, %a.create ], [ %0, %entry ]
  %arr.cycle.len3 = load i64, ptr %var.syms.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.syms.0, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.846

loop.header.846:                                  ; preds = %choice.exit, %a.after
  %loop.idx.846.0 = phi i64 [ 0, %a.after ], [ %loop.next, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.846.0, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.846, label %loop.exit.846

loop.body.846:                                    ; preds = %loop.header.846
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %loop.idx.846.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 8
  %fld.load = load i1, ptr %fld.gep, align 1
  %nottmp = xor i1 %fld.load, true
  br i1 %nottmp, label %and.847.then, label %choice.exit

loop.exit.846:                                    ; preds = %loop.header.846, %choice.then
  %"var.ln'.0" = phi i64 [ %fld.load18, %choice.then ], [ 0, %loop.header.846 ]
  ret i64 %"var.ln'.0"

and.847.then:                                     ; preds = %loop.body.846
  %fld.load8 = load ptr, ptr %slot.i2p, align 8
  %eq.lhs.len10 = load i64, ptr %fld.load8, align 8
  %eq.lhs.len11 = and i64 %eq.lhs.len10, 281474976710655
  %eq.rhs.len12 = load i64, ptr %1, align 8
  %eq.rhs.len13 = and i64 %eq.rhs.len12, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len11, %eq.rhs.len13
  br i1 %eq.len, label %str.eq.then, label %choice.exit

str.eq.then:                                      ; preds = %and.847.then
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %eq.lhs.data14 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.rhs.data15 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data14, ptr %eq.rhs.data15, i64 %eq.lhs.len11)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.then
  %fld.gep17 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 3
  %fld.load18 = load i64, ptr %fld.gep17, align 8
  br label %loop.exit.846

choice.exit:                                      ; preds = %and.847.then, %loop.body.846, %str.eq.then
  %loop.next = add i64 %loop.idx.846.0, 1
  br label %loop.header.846
}

define i64 @"lsp::next_top_sym_line"(ptr %0, i64 %1) #3 {
entry:
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  store i64 0, ptr %a.create1, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.syms.0 = phi ptr [ %a.create1, %a.create ], [ %0, %entry ]
  %arr.cycle.len3 = load i64, ptr %var.syms.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.syms.0, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.848

loop.header.848:                                  ; preds = %choice.exit, %a.after
  %"var.best'.0" = phi i64 [ 0, %a.after ], [ %"var.best'.1", %choice.exit ]
  %loop.idx.848.0 = phi i64 [ 0, %a.after ], [ %loop.next, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.848.0, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.848, label %loop.exit.848

loop.body.848:                                    ; preds = %loop.header.848
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %loop.idx.848.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 8
  %fld.load = load i1, ptr %fld.gep, align 1
  %nottmp = xor i1 %fld.load, true
  br i1 %nottmp, label %and.849.then, label %choice.exit

loop.exit.848:                                    ; preds = %loop.header.848
  ret i64 %"var.best'.0"

and.849.then:                                     ; preds = %loop.body.848
  %fld.gep7 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 3
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %cmptmp = icmp sgt i64 %fld.load8, %1
  br i1 %cmptmp, label %and.850.then, label %choice.exit

and.850.then:                                     ; preds = %and.849.then
  %cmptmp11 = icmp eq i64 %"var.best'.0", 0
  br i1 %cmptmp11, label %choice.then, label %or.851.else

or.851.else:                                      ; preds = %and.850.then
  %fld.gep13 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 3
  %fld.load14 = load i64, ptr %fld.gep13, align 8
  %cmptmp16 = icmp slt i64 %fld.load14, %"var.best'.0"
  br i1 %cmptmp16, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.850.then, %or.851.else
  %fld.gep18 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 3
  %fld.load19 = load i64, ptr %fld.gep18, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %and.849.then, %loop.body.848, %choice.then, %or.851.else
  %"var.best'.1" = phi i64 [ %fld.load19, %choice.then ], [ %"var.best'.0", %or.851.else ], [ %"var.best'.0", %loop.body.848 ], [ %"var.best'.0", %and.849.then ]
  %loop.next = add i64 %loop.idx.848.0, 1
  br label %loop.header.848
}

define void @"lsp::collect_local_typed_exprs"(ptr %0, ptr %1, ptr %2, ptr %3, i64 %4, i64 %5) #3 {
entry:
  %fld.load = load ptr, ptr %2, align 8
  %tag.id = load i64, ptr %fld.load, align 8
  switch i64 %tag.id, label %choice.exit [
    i64 16, label %choice.case
    i64 17, label %choice.case10
    i64 15, label %choice.case52
    i64 19, label %choice.case115
    i64 18, label %choice.case184
  ]

choice.exit:                                      ; preds = %str.eq.merge347, %str.eq.merge300, %str.eq.merge323, %and.859.then, %or.856.exit, %and.858.then, %a.after390, %a.store, %str.eq.merge371, %and.860.then, %entry, %a.after127, %a.after170, %loop.header.854, %loop.header.853, %a.after
  ret void

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %choice.case
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 128)
  store i64 0, ptr %a.create2, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case
  %var.syms.0 = phi ptr [ %a.create2, %a.create ], [ %0, %choice.case ]
  %fld.gep6 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %payload.ptr, i32 0, i32 1
  call void @"lsp::collect_local_typed_exprs"(ptr %var.syms.0, ptr %1, ptr %fld.gep6, ptr %3, i64 %4, i64 %5)
  br label %choice.exit

choice.case10:                                    ; preds = %entry
  %pay.gep15 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr16 = load ptr, ptr %pay.gep15, align 8
  %a.null20 = icmp eq ptr %payload.ptr16, null
  br i1 %a.null20, label %a.create21, label %a.after22

a.create21:                                       ; preds = %choice.case10
  %arena.cur23 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create24 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 24)
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf26 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 128)
  store i64 0, ptr %a.create24, align 8
  %a.data.gep28 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create24, i32 0, i32 1
  store ptr %a.buf26, ptr %a.data.gep28, align 8
  %a.cap.gep29 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create24, i32 0, i32 2
  store i64 16, ptr %a.cap.gep29, align 8
  br label %a.after22

a.after22:                                        ; preds = %a.create21, %choice.case10
  %var.bk.0 = phi ptr [ %a.create24, %a.create21 ], [ %payload.ptr16, %choice.case10 ]
  %arr.cycle.len31 = load i64, ptr %var.bk.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.bk.0, i32 0, i32 1
  %arr.cycle.data32 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.853

loop.header.853:                                  ; preds = %a.after38, %a.after22
  %loop.idx.853.0 = phi i64 [ 0, %a.after22 ], [ %loop.next, %a.after38 ]
  %var.syms.1 = phi ptr [ %0, %a.after22 ], [ %var.syms.2, %a.after38 ]
  %loop.cond = icmp slt i64 %loop.idx.853.0, %arr.cycle.len31
  br i1 %loop.cond, label %loop.body.853, label %choice.exit

loop.body.853:                                    ; preds = %loop.header.853
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data32, i64 %loop.idx.853.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %a.null36 = icmp eq ptr %var.syms.1, null
  br i1 %a.null36, label %a.create37, label %a.after38

a.create37:                                       ; preds = %loop.body.853
  %arena.cur39 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create40 = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 24)
  %arena.cur41 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf42 = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 128)
  store i64 0, ptr %a.create40, align 8
  %a.data.gep44 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create40, i32 0, i32 1
  store ptr %a.buf42, ptr %a.data.gep44, align 8
  %a.cap.gep45 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create40, i32 0, i32 2
  store i64 16, ptr %a.cap.gep45, align 8
  br label %a.after38

a.after38:                                        ; preds = %a.create37, %loop.body.853
  %var.syms.2 = phi ptr [ %a.create40, %a.create37 ], [ %var.syms.1, %loop.body.853 ]
  call void @"lsp::collect_local_typed_exprs"(ptr %var.syms.2, ptr %1, ptr %slot.i2p, ptr %3, i64 %4, i64 %5)
  %loop.next = add i64 %loop.idx.853.0, 1
  br label %loop.header.853

choice.case52:                                    ; preds = %entry
  %pay.gep57 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr58 = load ptr, ptr %pay.gep57, align 8
  %a.null62 = icmp eq ptr %0, null
  br i1 %a.null62, label %a.create63, label %a.after64

a.create63:                                       ; preds = %choice.case52
  %arena.cur65 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create66 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 24)
  %arena.cur67 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 128)
  store i64 0, ptr %a.create66, align 8
  %a.data.gep70 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create66, i32 0, i32 1
  store ptr %a.buf68, ptr %a.data.gep70, align 8
  %a.cap.gep71 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create66, i32 0, i32 2
  store i64 16, ptr %a.cap.gep71, align 8
  br label %a.after64

a.after64:                                        ; preds = %a.create63, %choice.case52
  %var.syms.3 = phi ptr [ %a.create66, %a.create63 ], [ %0, %choice.case52 ]
  call void @"lsp::collect_local_typed_exprs"(ptr %var.syms.3, ptr %1, ptr %payload.ptr58, ptr %3, i64 %4, i64 %5)
  %fld.gep80 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %payload.ptr58, i32 0, i32 1
  %fld.load81 = load ptr, ptr %fld.gep80, align 8
  %arr.cycle.len83 = load i64, ptr %fld.load81, align 8
  %arr.cycle.data84 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load81, i32 0, i32 1
  %arr.cycle.data85 = load ptr, ptr %arr.cycle.data84, align 8
  br label %loop.header.854

loop.header.854:                                  ; preds = %loop.body.854, %a.after64
  %loop.idx.854.0 = phi i64 [ 0, %a.after64 ], [ %loop.next114, %loop.body.854 ]
  %var.syms.4 = phi ptr [ %var.syms.3, %a.after64 ], [ %var.syms.4, %loop.body.854 ]
  %loop.cond87 = icmp slt i64 %loop.idx.854.0, %arr.cycle.len83
  br i1 %loop.cond87, label %loop.body.854, label %choice.exit

loop.body.854:                                    ; preds = %loop.header.854
  %arr.elem.gep89 = getelementptr i64, ptr %arr.cycle.data85, i64 %loop.idx.854.0
  %arr.elem.raw90 = load i64, ptr %arr.elem.gep89, align 8
  %slot.i2p91 = inttoptr i64 %arr.elem.raw90 to ptr
  %fld.gep109 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %slot.i2p91, i32 0, i32 5
  call void @"lsp::collect_local_typed_exprs"(ptr %var.syms.4, ptr %1, ptr %fld.gep109, ptr %3, i64 %4, i64 %5)
  %loop.next114 = add i64 %loop.idx.854.0, 1
  br label %loop.header.854

choice.case115:                                   ; preds = %entry
  %pay.gep120 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr121 = load ptr, ptr %pay.gep120, align 8
  %a.null125 = icmp eq ptr %0, null
  br i1 %a.null125, label %a.create126, label %a.after127

a.create126:                                      ; preds = %choice.case115
  %arena.cur128 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create129 = call ptr @dva_arena_alloc(ptr %arena.cur128, i64 24)
  %arena.cur130 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf131 = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 128)
  store i64 0, ptr %a.create129, align 8
  %a.data.gep133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create129, i32 0, i32 1
  store ptr %a.buf131, ptr %a.data.gep133, align 8
  %a.cap.gep134 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create129, i32 0, i32 2
  store i64 16, ptr %a.cap.gep134, align 8
  br label %a.after127

a.after127:                                       ; preds = %a.create126, %choice.case115
  %var.syms.6 = phi ptr [ %a.create129, %a.create126 ], [ %0, %choice.case115 ]
  call void @"lsp::collect_local_typed_exprs"(ptr %var.syms.6, ptr %1, ptr %payload.ptr121, ptr %3, i64 %4, i64 %5)
  %fld.gep157 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %payload.ptr121, i32 0, i32 1
  call void @"lsp::collect_local_typed_exprs"(ptr %var.syms.6, ptr %1, ptr %fld.gep157, ptr %3, i64 %4, i64 %5)
  %fld.gep162 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %payload.ptr121, i32 0, i32 2
  %fld.load163 = load ptr, ptr %fld.gep162, align 8
  %niche.ne.null = icmp ne ptr %fld.load163, null
  br i1 %niche.ne.null, label %a.after170, label %choice.exit

a.after170:                                       ; preds = %a.after127
  call void @"lsp::collect_local_typed_exprs"(ptr %var.syms.6, ptr %1, ptr %fld.load163, ptr %3, i64 %4, i64 %5)
  br label %choice.exit

choice.case184:                                   ; preds = %entry
  %pay.gep189 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr190 = load ptr, ptr %pay.gep189, align 8
  %a.null194 = icmp eq ptr %0, null
  br i1 %a.null194, label %a.create195, label %a.after196

a.create195:                                      ; preds = %choice.case184
  %arena.cur197 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create198 = call ptr @dva_arena_alloc(ptr %arena.cur197, i64 24)
  %arena.cur199 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf200 = call ptr @dva_arena_alloc(ptr %arena.cur199, i64 128)
  store i64 0, ptr %a.create198, align 8
  %a.data.gep202 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create198, i32 0, i32 1
  store ptr %a.buf200, ptr %a.data.gep202, align 8
  %a.cap.gep203 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create198, i32 0, i32 2
  store i64 16, ptr %a.cap.gep203, align 8
  br label %a.after196

a.after196:                                       ; preds = %a.create195, %choice.case184
  %var.syms.9 = phi ptr [ %a.create198, %a.create195 ], [ %0, %choice.case184 ]
  %fld.gep207 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr190, i32 0, i32 5
  call void @"lsp::collect_local_typed_exprs"(ptr %var.syms.9, ptr %1, ptr %fld.gep207, ptr %3, i64 %4, i64 %5)
  %fld.load213 = load ptr, ptr %payload.ptr190, align 8
  %str.len.query215 = load i64, ptr %fld.load213, align 8
  %str.len.query216 = and i64 %str.len.query215, 281474976710655
  %str.tag = lshr i64 %str.len.query215, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %a.after196
  %cmptmp = icmp eq i64 %str.len.query216, 0
  br i1 %cmptmp, label %or.856.exit, label %or.855.else

tag.slow_check:                                   ; preds = %a.after196
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

or.855.else:                                      ; preds = %str_ok
  %eq.lhs.len218 = load i64, ptr %fld.load213, align 8
  %eq.lhs.len219 = and i64 %eq.lhs.len218, 281474976710655
  %str.tag220 = lshr i64 %eq.lhs.len218, 48
  %tag.immortal222 = icmp eq i64 %str.tag220, 0
  %active.gen223 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current224 = icmp eq i64 %str.tag220, %active.gen223
  %tag.fast.ok225 = or i1 %tag.immortal222, %tag.current224
  br i1 %tag.fast.ok225, label %str_ok221, label %tag.slow_check226

str_ok221:                                        ; preds = %tag.slow_check226, %or.855.else
  %eq.len = icmp eq i64 %eq.lhs.len219, 1
  br i1 %eq.len, label %str.eq.then, label %or.856.else

tag.slow_check226:                                ; preds = %or.855.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag220)
  br label %str_ok221

str.eq.then:                                      ; preds = %str_ok221
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load213, i32 0, i32 1
  %eq.lhs.data228 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data228, ptr @str.7, i64 1)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %or.856.exit, label %or.856.else

or.856.else:                                      ; preds = %str_ok221, %str.eq.then
  %str.len.query231 = load i64, ptr %fld.load213, align 8
  %str.len.query232 = and i64 %str.len.query231, 281474976710655
  %str.tag233 = lshr i64 %str.len.query231, 48
  %tag.immortal235 = icmp eq i64 %str.tag233, 0
  %active.gen236 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current237 = icmp eq i64 %str.tag233, %active.gen236
  %tag.fast.ok238 = or i1 %tag.immortal235, %tag.current237
  br i1 %tag.fast.ok238, label %str_ok234, label %tag.slow_check239

or.856.exit:                                      ; preds = %str_ok, %str.eq.then257, %str_ok245, %str_ok234, %str.eq.then
  %or.856.phi = phi i1 [ true, %str.eq.then ], [ false, %str_ok234 ], [ %eq.cmp.zero261, %str.eq.then257 ], [ false, %str_ok245 ], [ true, %str_ok ]
  %nottmp = xor i1 %or.856.phi, true
  br i1 %nottmp, label %and.858.then, label %choice.exit

str_ok234:                                        ; preds = %tag.slow_check239, %or.856.else
  %cmptmp240 = icmp sge i64 %str.len.query232, 2
  br i1 %cmptmp240, label %and.857.then, label %or.856.exit

tag.slow_check239:                                ; preds = %or.856.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag233)
  br label %str_ok234

and.857.then:                                     ; preds = %str_ok234
  %s.chk.len242 = load i64, ptr %fld.load213, align 8
  %str.tag244 = lshr i64 %s.chk.len242, 48
  %tag.immortal246 = icmp eq i64 %str.tag244, 0
  %active.gen247 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current248 = icmp eq i64 %str.tag244, %active.gen247
  %tag.fast.ok249 = or i1 %tag.immortal246, %tag.current248
  br i1 %tag.fast.ok249, label %str_ok245, label %tag.slow_check250

str_ok245:                                        ; preds = %tag.slow_check250, %and.857.then
  %s.read.len251 = load i64, ptr %fld.load213, align 8
  %s.read.len252 = and i64 %s.read.len251, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load213, i32 0, i32 1
  %s.read.data253 = load ptr, ptr %s.read.data, align 8
  %end.gt.len = icmp sgt i64 2, %s.read.len252
  %final.end = select i1 %end.gt.len, i64 %s.read.len252, i64 2
  %view.empty = icmp sle i64 %final.end, 0
  %view.len = select i1 %view.empty, i64 0, i64 %final.end
  %eq.len256 = icmp eq i64 %view.len, 2
  br i1 %eq.len256, label %str.eq.then257, label %or.856.exit

tag.slow_check250:                                ; preds = %and.857.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag244)
  br label %str_ok245

str.eq.then257:                                   ; preds = %str_ok245
  %eq.memcmp260 = call i32 @memcmp(ptr %s.read.data253, ptr @str.8, i64 2)
  %eq.cmp.zero261 = icmp eq i32 %eq.memcmp260, 0
  br label %or.856.exit

and.858.then:                                     ; preds = %or.856.exit
  %fld.gep265 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr190, i32 0, i32 2
  %fld.load266 = load i1, ptr %fld.gep265, align 1
  %nottmp267 = xor i1 %fld.load266, true
  br i1 %nottmp267, label %and.859.then, label %choice.exit

and.859.then:                                     ; preds = %and.858.then
  %fld.gep269 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr190, i32 0, i32 3
  %fld.load270 = load i1, ptr %fld.gep269, align 1
  %nottmp271 = xor i1 %fld.load270, true
  br i1 %nottmp271, label %and.860.then, label %choice.exit

and.860.then:                                     ; preds = %and.859.then
  %fld.gep273 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr190, i32 0, i32 4
  %fld.load274 = load i1, ptr %fld.gep273, align 1
  %nottmp275 = xor i1 %fld.load274, true
  br i1 %nottmp275, label %choice.then276, label %choice.exit

choice.then276:                                   ; preds = %and.860.then
  %fld.gep281 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep207, i32 0, i32 1
  %fld.load282 = load ptr, ptr %fld.gep281, align 8
  %call.res = call { i64, ptr } @"unify::show_utype"(ptr %1, ptr %fld.load282)
  %arena.cur283 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur283, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %eq.lhs.len286 = load i64, ptr %ret.ub.alloc, align 8
  %eq.lhs.len287 = and i64 %eq.lhs.len286, 281474976710655
  %str.tag288 = lshr i64 %eq.lhs.len286, 48
  %tag.immortal290 = icmp eq i64 %str.tag288, 0
  %active.gen291 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current292 = icmp eq i64 %str.tag288, %active.gen291
  %tag.fast.ok293 = or i1 %tag.immortal290, %tag.current292
  br i1 %tag.fast.ok293, label %str_ok289, label %tag.slow_check294

str_ok289:                                        ; preds = %tag.slow_check294, %choice.then276
  %eq.len297 = icmp eq i64 %eq.lhs.len287, 0
  br i1 %eq.len297, label %str.eq.then298, label %str.eq.merge300

tag.slow_check294:                                ; preds = %choice.then276
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag288)
  br label %str_ok289

str.eq.then298:                                   ; preds = %str_ok289
  %eq.lhs.data301 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data302 = load ptr, ptr %eq.lhs.data301, align 8
  %eq.memcmp304 = call i32 @memcmp(ptr %eq.lhs.data302, ptr @str.0, i64 0)
  %eq.cmp.zero305 = icmp eq i32 %eq.memcmp304, 0
  br label %str.eq.merge300

str.eq.merge300:                                  ; preds = %str_ok289, %str.eq.then298
  %str.eq.result306 = phi i1 [ %eq.cmp.zero305, %str.eq.then298 ], [ false, %str_ok289 ]
  %str.neq = xor i1 %str.eq.result306, true
  br i1 %str.neq, label %and.861.then, label %choice.exit

and.861.then:                                     ; preds = %str.eq.merge300
  %eq.lhs.len309 = load i64, ptr %ret.ub.alloc, align 8
  %eq.lhs.len310 = and i64 %eq.lhs.len309, 281474976710655
  %str.tag311 = lshr i64 %eq.lhs.len309, 48
  %tag.immortal313 = icmp eq i64 %str.tag311, 0
  %active.gen314 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current315 = icmp eq i64 %str.tag311, %active.gen314
  %tag.fast.ok316 = or i1 %tag.immortal313, %tag.current315
  br i1 %tag.fast.ok316, label %str_ok312, label %tag.slow_check317

str_ok312:                                        ; preds = %tag.slow_check317, %and.861.then
  %eq.len320 = icmp eq i64 %eq.lhs.len310, 1
  br i1 %eq.len320, label %str.eq.then321, label %str.eq.merge323

tag.slow_check317:                                ; preds = %and.861.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag311)
  br label %str_ok312

str.eq.then321:                                   ; preds = %str_ok312
  %eq.lhs.data324 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data325 = load ptr, ptr %eq.lhs.data324, align 8
  %eq.memcmp327 = call i32 @memcmp(ptr %eq.lhs.data325, ptr @str.1, i64 1)
  %eq.cmp.zero328 = icmp eq i32 %eq.memcmp327, 0
  br label %str.eq.merge323

str.eq.merge323:                                  ; preds = %str_ok312, %str.eq.then321
  %str.eq.result329 = phi i1 [ %eq.cmp.zero328, %str.eq.then321 ], [ false, %str_ok312 ]
  %str.neq330 = xor i1 %str.eq.result329, true
  br i1 %str.neq330, label %and.862.then, label %choice.exit

and.862.then:                                     ; preds = %str.eq.merge323
  %eq.lhs.len333 = load i64, ptr %ret.ub.alloc, align 8
  %eq.lhs.len334 = and i64 %eq.lhs.len333, 281474976710655
  %str.tag335 = lshr i64 %eq.lhs.len333, 48
  %tag.immortal337 = icmp eq i64 %str.tag335, 0
  %active.gen338 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current339 = icmp eq i64 %str.tag335, %active.gen338
  %tag.fast.ok340 = or i1 %tag.immortal337, %tag.current339
  br i1 %tag.fast.ok340, label %str_ok336, label %tag.slow_check341

str_ok336:                                        ; preds = %tag.slow_check341, %and.862.then
  %eq.len344 = icmp eq i64 %eq.lhs.len334, 1
  br i1 %eq.len344, label %str.eq.then345, label %str.eq.merge347

tag.slow_check341:                                ; preds = %and.862.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag335)
  br label %str_ok336

str.eq.then345:                                   ; preds = %str_ok336
  %eq.lhs.data348 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data349 = load ptr, ptr %eq.lhs.data348, align 8
  %eq.memcmp351 = call i32 @memcmp(ptr %eq.lhs.data349, ptr @str.7, i64 1)
  %eq.cmp.zero352 = icmp eq i32 %eq.memcmp351, 0
  br label %str.eq.merge347

str.eq.merge347:                                  ; preds = %str_ok336, %str.eq.then345
  %str.eq.result353 = phi i1 [ %eq.cmp.zero352, %str.eq.then345 ], [ false, %str_ok336 ]
  %str.neq354 = xor i1 %str.eq.result353, true
  br i1 %str.neq354, label %and.863.then, label %choice.exit

and.863.then:                                     ; preds = %str.eq.merge347
  %eq.lhs.len357 = load i64, ptr %ret.ub.alloc, align 8
  %eq.lhs.len358 = and i64 %eq.lhs.len357, 281474976710655
  %str.tag359 = lshr i64 %eq.lhs.len357, 48
  %tag.immortal361 = icmp eq i64 %str.tag359, 0
  %active.gen362 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current363 = icmp eq i64 %str.tag359, %active.gen362
  %tag.fast.ok364 = or i1 %tag.immortal361, %tag.current363
  br i1 %tag.fast.ok364, label %str_ok360, label %tag.slow_check365

str_ok360:                                        ; preds = %tag.slow_check365, %and.863.then
  %eq.len368 = icmp eq i64 %eq.lhs.len358, 2
  br i1 %eq.len368, label %str.eq.then369, label %str.eq.merge371

tag.slow_check365:                                ; preds = %and.863.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag359)
  br label %str_ok360

str.eq.then369:                                   ; preds = %str_ok360
  %eq.lhs.data372 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data373 = load ptr, ptr %eq.lhs.data372, align 8
  %eq.memcmp375 = call i32 @memcmp(ptr %eq.lhs.data373, ptr @str.9, i64 2)
  %eq.cmp.zero376 = icmp eq i32 %eq.memcmp375, 0
  br label %str.eq.merge371

str.eq.merge371:                                  ; preds = %str_ok360, %str.eq.then369
  %str.eq.result377 = phi i1 [ %eq.cmp.zero376, %str.eq.then369 ], [ false, %str_ok360 ]
  %str.neq378 = xor i1 %str.eq.result377, true
  br i1 %str.neq378, label %a.after390, label %choice.exit

a.after390:                                       ; preds = %str.eq.merge371
  %call.res399 = call { i64, i64, i64 } @"lsp::find_local_binding_loc"(ptr %3, ptr %fld.load213, i64 %4, i64 %5, ptr %var.syms.9)
  %arena.cur400 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc401 = call ptr @dva_arena_alloc(ptr %arena.cur400, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  store { i64, i64, i64 } %call.res399, ptr %ret.ub.alloc401, align 8
  %fld.load404 = load i64, ptr %ret.ub.alloc401, align 8
  %cmptmp405 = icmp sgt i64 %fld.load404, 0
  br i1 %cmptmp405, label %choice.then406, label %choice.exit

choice.then406:                                   ; preds = %a.after390
  %call.res414 = call i1 @"lsp::line_has_type_annot"(ptr %3, i64 %4, i64 %fld.load404, ptr %fld.load213)
  %fld.load418 = load ptr, ptr %fld.gep207, align 8
  %tag.id423 = load i64, ptr %fld.load418, align 8
  %tag.match424 = icmp eq i64 %tag.id423, 16
  br i1 %tag.match424, label %choice.case420, label %choice.else

choice.case420:                                   ; preds = %choice.then406
  %var.load431 = load i64, ptr @"var.lsp::SYM_FUNCTION", align 8
  br label %choice.exit430

choice.else:                                      ; preds = %choice.then406
  %fld.gep433 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr190, i32 0, i32 1
  %fld.load434 = load i1, ptr %fld.gep433, align 1
  %var.load438 = load i64, ptr @"var.lsp::SYM_VARIABLE", align 8
  %var.load439 = load i64, ptr @"var.lsp::SYM_CONSTANT", align 8
  %choice.res440 = select i1 %fld.load434, i64 %var.load438, i64 %var.load439
  br label %choice.exit430

choice.exit430:                                   ; preds = %choice.else, %choice.case420
  %choice.res441 = phi i64 [ %var.load431, %choice.case420 ], [ %choice.res440, %choice.else ]
  %cat.seg444 = load i64, ptr %fld.load213, align 8
  %cat.seg445 = and i64 %cat.seg444, 281474976710655
  %str.tag446 = lshr i64 %cat.seg444, 48
  %tag.immortal448 = icmp eq i64 %str.tag446, 0
  %active.gen449 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current450 = icmp eq i64 %str.tag446, %active.gen449
  %tag.fast.ok451 = or i1 %tag.immortal448, %tag.current450
  br i1 %tag.fast.ok451, label %str_ok447, label %tag.slow_check452

str_ok447:                                        ; preds = %tag.slow_check452, %choice.exit430
  %cat.seg453 = getelementptr inbounds { i64, ptr }, ptr %fld.load213, i32 0, i32 1
  %cat.seg454 = load ptr, ptr %cat.seg453, align 8
  %cat.seg457 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg458 = and i64 %cat.seg457, 281474976710655
  %str.tag459 = lshr i64 %cat.seg457, 48
  %tag.immortal461 = icmp eq i64 %str.tag459, 0
  %active.gen462 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current463 = icmp eq i64 %str.tag459, %active.gen462
  %tag.fast.ok464 = or i1 %tag.immortal461, %tag.current463
  br i1 %tag.fast.ok464, label %str_ok460, label %tag.slow_check465

tag.slow_check452:                                ; preds = %choice.exit430
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag446)
  br label %str_ok447

str_ok460:                                        ; preds = %tag.slow_check465, %str_ok447
  %cat.seg466 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg467 = load ptr, ptr %cat.seg466, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg445, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %cat.sum.len469 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg458)
  %sum470 = extractvalue { i64, i1 } %cat.sum.len469, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum470, i64 1)
  %sum475 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur480 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur480, i64 %sum475)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %cat.seg454, i64 %cat.seg445, i1 false)
  %cat.dst481 = getelementptr i8, ptr %concat.buf, i64 %cat.seg445
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst481, ptr align 1 @str.6, i64 2, i1 false)
  %cat.off482 = add nuw nsw i64 %cat.seg445, 2
  %cat.dst483 = getelementptr i8, ptr %concat.buf, i64 %cat.off482
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst483, ptr align 1 %cat.seg467, i64 %cat.seg458, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum470
  store i8 0, ptr %concat.nul, align 1
  %arena.cur484 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur484, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum470, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %fld.load488 = load i64, ptr %ret.ub.alloc401, align 8
  %fld.gep490 = getelementptr inbounds { i64, i64, i64 }, ptr %ret.ub.alloc401, i32 0, i32 1
  %fld.load491 = load i64, ptr %fld.gep490, align 8
  %fld.gep496 = getelementptr inbounds { i64, i64, i64 }, ptr %ret.ub.alloc401, i32 0, i32 2
  %fld.load497 = load i64, ptr %fld.gep496, align 8
  %arena.cur499 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur499, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr null, i32 1) to i64))
  store ptr %fld.load213, ptr %rec.alloc, align 8
  %rec.fld500 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %concat.str, ptr %rec.fld500, align 8
  %rec.fld501 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %choice.res441, ptr %rec.fld501, align 8
  %rec.fld502 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %fld.load488, ptr %rec.fld502, align 8
  %rec.fld503 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %fld.load491, ptr %rec.fld503, align 8
  %rec.fld504 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %fld.load488, ptr %rec.fld504, align 8
  %rec.fld505 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 6
  store i64 %fld.load497, ptr %rec.fld505, align 8
  %rec.fld506 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 7
  store i1 %call.res414, ptr %rec.fld506, align 1
  %rec.fld507 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 8
  store i1 true, ptr %rec.fld507, align 1
  %a.len520 = load i64, ptr %var.syms.9, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.syms.9, i32 0, i32 2
  %a.cap521 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len520, %a.cap521
  br i1 %a.needs.grow, label %a.grow, label %a.store

tag.slow_check465:                                ; preds = %str_ok447
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag459)
  br label %str_ok460

a.grow:                                           ; preds = %str_ok460
  call void @dva_array_grow(ptr %var.syms.9)
  br label %a.store

a.store:                                          ; preds = %a.grow, %str_ok460
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.syms.9, i32 0, i32 1
  %a.cur.data522 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len523 = load i64, ptr %var.syms.9, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data522, i64 %a.cur.len523
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len523, 1
  store i64 %a.next.len, ptr %var.syms.9, align 8
  br label %choice.exit
}

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_str_msg(i64 %0) #7 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %0)
  br i1 %tag.valid, label %valid, label %stale

valid:                                            ; preds = %entry
  ret void

stale:                                            ; preds = %entry
  call void @dva_abort_stale_str_msg()
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_stale_str_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable
}

define { i64, i64, i64 } @"lsp::find_local_binding_loc"(ptr %0, ptr %1, i64 %2, i64 %3, ptr %4) #3 {
entry:
  %eq.lhs.len1 = load i64, ptr %0, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, 0
  br i1 %eq.len, label %str.eq.then, label %or.865.else

str.eq.then:                                      ; preds = %entry
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr @str.0, i64 0)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %common.ret, label %or.865.else

or.865.else:                                      ; preds = %entry, %str.eq.then
  %str.len.query6 = load i64, ptr %1, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query7, 0
  br i1 %cmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %str.eq.then, %or.865.else, %loop.exit.868
  %common.ret.op = phi { i64, i64, i64 } [ %ret.pack245, %loop.exit.868 ], [ zeroinitializer, %or.865.else ], [ zeroinitializer, %str.eq.then ]
  ret { i64, i64, i64 } %common.ret.op

choice.exit:                                      ; preds = %or.865.else
  %cmptmp11 = icmp sgt i64 %2, 1
  %. = select i1 %cmptmp11, i64 %2, i64 1
  %call.res = call i64 @"lsp::count_doc_lines"(ptr %0)
  %cmptmp18 = icmp sgt i64 %3, 0
  %cmptmp21 = icmp sle i64 %3, %call.res
  %and.867.phi = select i1 %cmptmp18, i1 %cmptmp21, i1 false
  %choice.res27 = select i1 %and.867.phi, i64 %3, i64 %call.res
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  store i64 0, ptr %rec.alloc, align 8
  %rec.fld29 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld29, align 8
  %rec.fld30 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld30, align 8
  br label %loop.header.868

loop.header.868:                                  ; preds = %choice.exit96, %choice.exit
  %"var.ln'.0" = phi i64 [ %., %choice.exit ], [ %addtmp241, %choice.exit96 ]
  %loop.idx.868.0 = phi i64 [ 0, %choice.exit ], [ %loop.next243, %choice.exit96 ]
  %var.syms.0 = phi ptr [ %4, %choice.exit ], [ %var.syms.1, %choice.exit96 ]
  %cmptmp33 = icmp sgt i64 %"var.ln'.0", %choice.res27
  br i1 %cmptmp33, label %loop.exit.868, label %choice.exit35

loop.exit.868:                                    ; preds = %loop.header.868, %choice.then216
  %"var.res'.0" = phi ptr [ %rec.alloc236, %choice.then216 ], [ %rec.alloc, %loop.header.868 ]
  %ret.pack245 = load { i64, i64, i64 }, ptr %"var.res'.0", align 8
  br label %common.ret

choice.exit35:                                    ; preds = %loop.header.868
  %subtmp = sub i64 %"var.ln'.0", 1
  %call.res38 = call { i64, ptr } @"lsp::get_line_at"(ptr %0, i64 %subtmp)
  %call.res38.fca.0.extract = extractvalue { i64, ptr } %call.res38, 0
  %call.res38.fca.1.extract = extractvalue { i64, ptr } %call.res38, 1
  %str.len.query42 = and i64 %call.res38.fca.0.extract, 281474976710655
  br label %loop.header.874

loop.header.874:                                  ; preds = %choice.then58, %choice.exit35
  %"var.ws'.0" = phi i64 [ 0, %choice.exit35 ], [ %addtmp, %choice.then58 ]
  %loop.idx.874.0 = phi i64 [ 0, %choice.exit35 ], [ %loop.next, %choice.then58 ]
  %cmptmp49 = icmp slt i64 %"var.ws'.0", %str.len.query42
  br i1 %cmptmp49, label %and.875.then, label %choice.else59

and.875.then:                                     ; preds = %loop.header.874
  %idx.oob = icmp uge i64 %"var.ws'.0", %str.len.query42
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %and.875.then
  %s.byte.gep = getelementptr i8, ptr %call.res38.fca.1.extract, i64 %"var.ws'.0"
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  switch i64 %s.byte.val, label %choice.else59 [
    i64 32, label %choice.then58
    i64 9, label %choice.then58
  ]

idx_oob:                                          ; preds = %and.875.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then58:                                    ; preds = %idx_ok, %idx_ok
  %addtmp = add nuw nsw i64 %"var.ws'.0", 1
  %loop.next = add i64 %loop.idx.874.0, 1
  br label %loop.header.874

choice.else59:                                    ; preds = %loop.header.874, %idx_ok
  %str.len.query65 = load i64, ptr %1, align 8
  %str.len.query66 = and i64 %str.len.query65, 281474976710655
  %addtmp67 = add i64 %"var.ws'.0", %str.len.query66
  %cmptmp69 = icmp slt i64 %addtmp67, %str.len.query42
  br i1 %cmptmp69, label %and.876.then, label %choice.exit96

and.876.then:                                     ; preds = %choice.else59
  %start.is_neg = icmp slt i64 %"var.ws'.0", 0
  %rel.start = add i64 %str.len.query42, %"var.ws'.0"
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %"var.ws'.0"
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %str.len.query42
  %final.start = select i1 %start.gt.len, i64 %str.len.query42, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp67, 0
  %rel.end = add nsw i64 %str.len.query42, %addtmp67
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp67
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %str.len.query42
  %final.end = select i1 %end.gt.len, i64 %str.len.query42, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %call.res38.fca.1.extract, i64 %final.start
  %cmp.str86 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %cmp.str87 = load ptr, ptr %cmp.str86, align 8
  %eq.len88 = icmp eq i64 %view.len, %str.len.query66
  br i1 %eq.len88, label %str.eq.then89, label %choice.exit96

str.eq.then89:                                    ; preds = %and.876.then
  %eq.memcmp92 = call i32 @memcmp(ptr %view.data, ptr %cmp.str87, i64 %view.len)
  %eq.cmp.zero93 = icmp eq i32 %eq.memcmp92, 0
  br i1 %eq.cmp.zero93, label %choice.then95, label %choice.exit96

choice.then95:                                    ; preds = %str.eq.then89
  %str.len.query100 = load i64, ptr %1, align 8
  %str.len.query101 = and i64 %str.len.query100, 281474976710655
  %addtmp102 = add i64 %"var.ws'.0", %str.len.query101
  %idx.oob110 = icmp uge i64 %addtmp102, %str.len.query42
  br i1 %idx.oob110, label %idx_oob112, label %idx_ok111

choice.exit96:                                    ; preds = %and.882.exit, %and.876.then, %choice.else59, %str.eq.then89
  %var.syms.1 = phi ptr [ %var.syms.0, %str.eq.then89 ], [ %var.syms.0, %choice.else59 ], [ %var.syms.0, %and.876.then ], [ %var.syms.2, %and.882.exit ]
  %addtmp241 = add i64 %"var.ln'.0", 1
  %loop.next243 = add i64 %loop.idx.868.0, 1
  br label %loop.header.868

idx_ok111:                                        ; preds = %choice.then95
  %s.byte.gep114 = getelementptr i8, ptr %call.res38.fca.1.extract, i64 %addtmp102
  %s.byte115 = load i8, ptr %s.byte.gep114, align 1
  %s.byte.val116 = zext i8 %s.byte115 to i64
  %cmptmp117 = icmp eq i64 %s.byte.val116, 39
  %addtmp123 = add nuw nsw i64 %addtmp102, 1
  %choice.res125 = select i1 %cmptmp117, i64 %addtmp123, i64 %addtmp102
  br label %loop.header.877

idx_oob112:                                       ; preds = %choice.then95
  call void @dva_abort_str_oob_msg()
  unreachable

loop.header.877:                                  ; preds = %choice.then155, %idx_ok111
  %"var.p1'.0" = phi i64 [ %choice.res125, %idx_ok111 ], [ %addtmp159, %choice.then155 ]
  %loop.idx.877.0 = phi i64 [ 0, %idx_ok111 ], [ %loop.next161, %choice.then155 ]
  %cmptmp133 = icmp slt i64 %"var.p1'.0", %str.len.query42
  br i1 %cmptmp133, label %and.878.then, label %and.882.exit

and.878.then:                                     ; preds = %loop.header.877
  %idx.oob141 = icmp uge i64 %"var.p1'.0", %str.len.query42
  br i1 %idx.oob141, label %idx_oob143, label %idx_ok142

idx_ok142:                                        ; preds = %and.878.then
  %s.byte.gep145 = getelementptr i8, ptr %call.res38.fca.1.extract, i64 %"var.p1'.0"
  %s.byte146 = load i8, ptr %s.byte.gep145, align 1
  %s.byte.val147 = zext i8 %s.byte146 to i64
  switch i64 %s.byte.val147, label %and.882.exit [
    i64 32, label %choice.then155
    i64 9, label %choice.then155
    i64 61, label %and.880.then
  ]

idx_oob143:                                       ; preds = %and.878.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then155:                                   ; preds = %idx_ok142, %idx_ok142
  %addtmp159 = add nuw nsw i64 %"var.p1'.0", 1
  %loop.next161 = add i64 %loop.idx.877.0, 1
  br label %loop.header.877

and.880.then:                                     ; preds = %idx_ok142
  %addtmp181 = add nuw nsw i64 %"var.p1'.0", 1
  %cmptmp183 = icmp sge i64 %addtmp181, %str.len.query42
  br i1 %cmptmp183, label %and.882.then, label %or.881.else

or.881.else:                                      ; preds = %and.880.then
  %idx.oob192 = icmp uge i64 %addtmp181, %str.len.query42
  br i1 %idx.oob192, label %idx_oob194, label %idx_ok193

idx_ok193:                                        ; preds = %or.881.else
  %s.byte.gep196 = getelementptr i8, ptr %call.res38.fca.1.extract, i64 %addtmp181
  %s.byte197 = load i8, ptr %s.byte.gep196, align 1
  %s.byte.val198 = zext i8 %s.byte197 to i64
  %5 = sub nsw i64 %s.byte.val198, 61
  %switch.and = and i64 %5, -2
  %switch.selectcmp = icmp eq i64 %switch.and, 0
  %nottmp = xor i1 %switch.selectcmp, true
  br i1 %nottmp, label %and.882.then, label %and.882.exit

idx_oob194:                                       ; preds = %or.881.else
  call void @dva_abort_str_oob_msg()
  unreachable

and.882.then:                                     ; preds = %and.880.then, %idx_ok193
  %a.null = icmp eq ptr %var.syms.0, null
  br i1 %a.null, label %a.create, label %a.after

and.882.exit:                                     ; preds = %idx_ok142, %loop.header.877, %idx_ok193, %a.after
  %var.syms.2 = phi ptr [ %var.syms.3, %a.after ], [ %var.syms.0, %idx_ok193 ], [ %var.syms.0, %loop.header.877 ], [ %var.syms.0, %idx_ok142 ]
  %and.882.phi = phi i1 [ %nottmp215, %a.after ], [ false, %idx_ok193 ], [ false, %loop.header.877 ], [ false, %idx_ok142 ]
  br i1 %and.882.phi, label %choice.then216, label %choice.exit96

a.create:                                         ; preds = %and.882.then
  %arena.cur208 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create209 = call ptr @dva_arena_alloc(ptr %arena.cur208, i64 24)
  %arena.cur210 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur210, i64 128)
  store i64 0, ptr %a.create209, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create209, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create209, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %and.882.then
  %var.syms.3 = phi ptr [ %a.create209, %a.create ], [ %var.syms.0, %and.882.then ]
  %addtmp213 = add i64 %"var.ws'.0", 1
  %call.res214 = call i1 @"lsp::sym_has_loc"(ptr %var.syms.3, i64 %"var.ln'.0", i64 %addtmp213)
  %nottmp215 = xor i1 %call.res214, true
  br label %and.882.exit

choice.then216:                                   ; preds = %and.882.exit
  %addtmp219 = add i64 %"var.ws'.0", 1
  %str.len.query222 = load i64, ptr %1, align 8
  %str.len.query223 = and i64 %str.len.query222, 281474976710655
  %addtmp224 = add i64 %addtmp219, %str.len.query223
  %.282 = select i1 %cmptmp117, i64 1, i64 0
  %addtmp230 = add i64 %addtmp224, %.282
  %arena.cur235 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc236 = call ptr @dva_arena_alloc(ptr %arena.cur235, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  store i64 %"var.ln'.0", ptr %rec.alloc236, align 8
  %rec.fld238 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc236, i32 0, i32 1
  store i64 %addtmp219, ptr %rec.fld238, align 8
  %rec.fld239 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc236, i32 0, i32 2
  store i64 %addtmp230, ptr %rec.fld239, align 8
  br label %loop.exit.868
}

define i64 @"lsp::count_doc_lines"(ptr %0) #3 {
entry:
  %str.len1 = load i64, ptr %0, align 8
  %str.len2 = and i64 %str.len1, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  br label %loop.header.866

loop.header.866:                                  ; preds = %loop.body.866, %entry
  %"var.cnt'.0" = phi i64 [ 1, %entry ], [ %spec.select, %loop.body.866 ]
  %loop.idx.866.0 = phi i64 [ 0, %entry ], [ %loop.next, %loop.body.866 ]
  %loop.cond = icmp slt i64 %loop.idx.866.0, %str.len2
  br i1 %loop.cond, label %loop.body.866, label %loop.exit.866

loop.body.866:                                    ; preds = %loop.header.866
  %s.byte.gep = getelementptr i8, ptr %s.read.data3, i64 %loop.idx.866.0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp = icmp eq i64 %s.byte.val, 10
  %addtmp = add i64 %"var.cnt'.0", 1
  %spec.select = select i1 %cmptmp, i64 %addtmp, i64 %"var.cnt'.0"
  %loop.next = add nsw i64 %loop.idx.866.0, 1
  br label %loop.header.866

loop.exit.866:                                    ; preds = %loop.header.866
  ret i64 %"var.cnt'.0"
}

define { i64, ptr } @"lsp::get_line_at"(ptr %0, i64 %1) #3 {
entry:
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf, ptr align 1 @str.0, i64 0, i1 false)
  store i8 0, ptr %copy.buf, align 1
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.str = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 16)
  store i64 0, ptr %copy.str, align 8
  %str.copy.data.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 1
  store ptr %copy.buf, ptr %str.copy.data.gep, align 8
  br label %loop.header.869

loop.header.869:                                  ; preds = %and.873.exit, %entry
  %"var.cur_line'.0" = phi i64 [ 0, %entry ], [ %addtmp85, %and.873.exit ]
  %"var.pos'.0" = phi i64 [ 0, %entry ], [ %spec.select, %and.873.exit ]
  %loop.idx.869.0 = phi i64 [ 0, %entry ], [ %loop.next87, %and.873.exit ]
  %cmptmp = icmp sge i64 %"var.pos'.0", %str.len.query2
  br i1 %cmptmp, label %loop.exit.869, label %loop.header.870

loop.exit.869:                                    ; preds = %loop.header.869, %choice.exit49
  %"var.res'.0" = phi ptr [ %str.view, %choice.exit49 ], [ %copy.str, %loop.header.869 ]
  %ret.pack = load { i64, ptr }, ptr %"var.res'.0", align 8
  ret { i64, ptr } %ret.pack

loop.header.870:                                  ; preds = %loop.header.869, %choice.exit23
  %"var.pos'.1" = phi i64 [ %addtmp, %choice.exit23 ], [ %"var.pos'.0", %loop.header.869 ]
  %loop.idx.870.0 = phi i64 [ %loop.next, %choice.exit23 ], [ 0, %loop.header.869 ]
  %cmptmp15 = icmp sge i64 %"var.pos'.1", %str.len.query2
  br i1 %cmptmp15, label %choice.then22, label %or.871.else

or.871.else:                                      ; preds = %loop.header.870
  %s.read.len17 = load i64, ptr %0, align 8
  %s.read.len18 = and i64 %s.read.len17, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data19 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %"var.pos'.1", %s.read.len18
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %or.871.else
  %s.byte.gep = getelementptr i8, ptr %s.read.data19, i64 %"var.pos'.1"
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp21 = icmp eq i64 %s.byte.val, 10
  br i1 %cmptmp21, label %choice.then22, label %choice.exit23

idx_oob:                                          ; preds = %or.871.else
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then22:                                    ; preds = %loop.header.870, %idx_ok
  %cmptmp27 = icmp eq i64 %"var.cur_line'.0", %1
  br i1 %cmptmp27, label %choice.then28, label %choice.exit29

choice.exit23:                                    ; preds = %idx_ok
  %addtmp = add nuw nsw i64 %"var.pos'.1", 1
  %loop.next = add i64 %loop.idx.870.0, 1
  br label %loop.header.870

choice.then28:                                    ; preds = %choice.then22
  %cmptmp32 = icmp sgt i64 %"var.pos'.1", %"var.pos'.0"
  br i1 %cmptmp32, label %and.872.then, label %choice.exit49

choice.exit29:                                    ; preds = %choice.then22
  %cmptmp64 = icmp slt i64 %"var.pos'.1", %str.len.query2
  br i1 %cmptmp64, label %and.873.then, label %and.873.exit

and.872.then:                                     ; preds = %choice.then28
  %s.read.len35 = load i64, ptr %0, align 8
  %s.read.len36 = and i64 %s.read.len35, 281474976710655
  %s.read.data37 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data38 = load ptr, ptr %s.read.data37, align 8
  %subtmp = sub i64 %"var.pos'.1", 1
  %idx.oob40 = icmp uge i64 %subtmp, %s.read.len36
  br i1 %idx.oob40, label %idx_oob42, label %idx_ok41

idx_ok41:                                         ; preds = %and.872.then
  %s.byte.gep44 = getelementptr i8, ptr %s.read.data38, i64 %subtmp
  %s.byte45 = load i8, ptr %s.byte.gep44, align 1
  %s.byte.val46 = zext i8 %s.byte45 to i64
  %cmptmp47 = icmp eq i64 %s.byte.val46, 13
  %spec.select104 = select i1 %cmptmp47, i64 %subtmp, i64 %"var.pos'.1"
  br label %choice.exit49

idx_oob42:                                        ; preds = %and.872.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.exit49:                                    ; preds = %idx_ok41, %choice.then28
  %choice.res = phi i64 [ %"var.pos'.1", %choice.then28 ], [ %spec.select104, %idx_ok41 ]
  %s.read.len55 = load i64, ptr %0, align 8
  %s.read.len56 = and i64 %s.read.len55, 281474976710655
  %s.read.data57 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data58 = load ptr, ptr %s.read.data57, align 8
  %start.is_neg = icmp slt i64 %"var.pos'.0", 0
  %rel.start = add i64 %s.read.len56, %"var.pos'.0"
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %"var.pos'.0"
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len56
  %final.start = select i1 %start.gt.len, i64 %s.read.len56, i64 %c.start.0
  %end.is_neg = icmp slt i64 %choice.res, 0
  %rel.end = add i64 %s.read.len56, %choice.res
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %choice.res
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len56
  %final.end = select i1 %end.gt.len, i64 %s.read.len56, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data58, i64 %final.start
  %arena.cur61 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 16)
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %loop.exit.869

and.873.then:                                     ; preds = %choice.exit29
  %s.read.len67 = load i64, ptr %0, align 8
  %s.read.len68 = and i64 %s.read.len67, 281474976710655
  %s.read.data69 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data70 = load ptr, ptr %s.read.data69, align 8
  %idx.oob72 = icmp uge i64 %"var.pos'.1", %s.read.len68
  br i1 %idx.oob72, label %idx_oob74, label %idx_ok73

and.873.exit:                                     ; preds = %choice.exit29, %idx_ok73
  %and.873.phi = phi i1 [ %cmptmp79, %idx_ok73 ], [ false, %choice.exit29 ]
  %addtmp83 = add i64 %"var.pos'.1", 1
  %spec.select = select i1 %and.873.phi, i64 %addtmp83, i64 %"var.pos'.1"
  %addtmp85 = add i64 %"var.cur_line'.0", 1
  %loop.next87 = add i64 %loop.idx.869.0, 1
  br label %loop.header.869

idx_ok73:                                         ; preds = %and.873.then
  %s.byte.gep76 = getelementptr i8, ptr %s.read.data70, i64 %"var.pos'.1"
  %s.byte77 = load i8, ptr %s.byte.gep76, align 1
  %s.byte.val78 = zext i8 %s.byte77 to i64
  %cmptmp79 = icmp eq i64 %s.byte.val78, 10
  br label %and.873.exit

idx_oob74:                                        ; preds = %and.873.then
  call void @dva_abort_str_oob_msg()
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_oob_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable
}

define i1 @"lsp::sym_has_loc"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  store i64 0, ptr %a.create1, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.syms.0 = phi ptr [ %a.create1, %a.create ], [ %0, %entry ]
  %arr.cycle.len3 = load i64, ptr %var.syms.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.syms.0, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.883

loop.header.883:                                  ; preds = %choice.exit, %a.after
  %loop.idx.883.0 = phi i64 [ 0, %a.after ], [ %loop.next, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.883.0, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.883, label %loop.exit.883

loop.body.883:                                    ; preds = %loop.header.883
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %loop.idx.883.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 3
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp eq i64 %fld.load, %1
  br i1 %cmptmp, label %and.884.then, label %choice.exit

loop.exit.883:                                    ; preds = %and.884.then, %loop.header.883
  %"var.found'.0" = phi i1 [ false, %loop.header.883 ], [ true, %and.884.then ]
  ret i1 %"var.found'.0"

and.884.then:                                     ; preds = %loop.body.883
  %fld.gep8 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 4
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %cmptmp11 = icmp eq i64 %fld.load9, %2
  br i1 %cmptmp11, label %loop.exit.883, label %choice.exit

choice.exit:                                      ; preds = %loop.body.883, %and.884.then
  %loop.next = add i64 %loop.idx.883.0, 1
  br label %loop.header.883
}

define i1 @"lsp::line_has_type_annot"(ptr %0, i64 %1, i64 %2, ptr %3) #3 {
entry:
  %str.view = alloca { i64, ptr }, align 8
  br label %loop.header.885

loop.header.885:                                  ; preds = %choice.exit102, %entry
  %"var.ln'.0" = phi i64 [ %1, %entry ], [ %addtmp135, %choice.exit102 ]
  %loop.idx.885.0 = phi i64 [ 0, %entry ], [ %loop.next137, %choice.exit102 ]
  %cmptmp = icmp slt i64 %"var.ln'.0", %2
  br i1 %cmptmp, label %choice.then, label %loop.exit.885

loop.exit.885:                                    ; preds = %idx_ok125, %choice.then101, %loop.header.885
  %"var.found'.0" = phi i1 [ false, %loop.header.885 ], [ true, %choice.then101 ], [ true, %idx_ok125 ]
  ret i1 %"var.found'.0"

choice.then:                                      ; preds = %loop.header.885
  %subtmp = sub i64 %"var.ln'.0", 1
  %call.res = call { i64, ptr } @"lsp::get_line_at"(ptr %0, i64 %subtmp)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %str.len.query7 = and i64 %call.res.fca.0.extract, 281474976710655
  br label %loop.header.886

loop.header.886:                                  ; preds = %choice.then22, %choice.then
  %"var.i'.0" = phi i64 [ 0, %choice.then ], [ %addtmp, %choice.then22 ]
  %loop.idx.886.0 = phi i64 [ 0, %choice.then ], [ %loop.next, %choice.then22 ]
  %cmptmp14 = icmp slt i64 %"var.i'.0", %str.len.query7
  br i1 %cmptmp14, label %and.887.then, label %choice.exit31

and.887.then:                                     ; preds = %loop.header.886
  %idx.oob = icmp uge i64 %"var.i'.0", %str.len.query7
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %and.887.then
  %s.byte.gep = getelementptr i8, ptr %call.res.fca.1.extract, i64 %"var.i'.0"
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  switch i64 %s.byte.val, label %choice.then29 [
    i64 32, label %choice.then22
    i64 9, label %choice.then22
  ]

idx_oob:                                          ; preds = %and.887.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then22:                                    ; preds = %idx_ok, %idx_ok
  %addtmp = add nuw nsw i64 %"var.i'.0", 1
  %loop.next = add i64 %loop.idx.886.0, 1
  br label %loop.header.886

choice.then29:                                    ; preds = %idx_ok
  %rel.start = add nuw i64 %str.len.query7, %"var.i'.0"
  %norm.start = select i1 false, i64 %rel.start, i64 %"var.i'.0"
  %c.start.0 = select i1 false, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %str.len.query7
  %final.start = select i1 %start.gt.len, i64 %str.len.query7, i64 %c.start.0
  %view.empty = icmp sle i64 %str.len.query7, %final.start
  %view.len.sub = sub nsw i64 %str.len.query7, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %call.res.fca.1.extract, i64 %final.start
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit31

choice.exit31:                                    ; preds = %loop.header.886, %choice.then29
  %choice.res40 = phi ptr [ %str.view, %choice.then29 ], [ @str.0.struct, %loop.header.886 ]
  %str.len.query43 = load i64, ptr %choice.res40, align 8
  %str.len.query44 = and i64 %str.len.query43, 281474976710655
  %str.len.query47 = load i64, ptr %3, align 8
  %str.len.query48 = and i64 %str.len.query47, 281474976710655
  %addtmp49 = add nuw nsw i64 %str.len.query48, 1
  %cmptmp50 = icmp sge i64 %str.len.query44, %addtmp49
  br i1 %cmptmp50, label %and.888.then, label %choice.exit102

and.888.then:                                     ; preds = %choice.exit31
  %s.read.data55 = getelementptr inbounds { i64, ptr }, ptr %choice.res40, i32 0, i32 1
  %s.read.data56 = load ptr, ptr %s.read.data55, align 8
  %end.gt.len72 = icmp sgt i64 %str.len.query48, %str.len.query44
  %final.end73 = select i1 %end.gt.len72, i64 %str.len.query44, i64 %str.len.query48
  %view.empty74 = icmp sle i64 %final.end73, 0
  %view.len76 = select i1 %view.empty74, i64 0, i64 %final.end73
  %cmp.str81 = getelementptr inbounds { i64, ptr }, ptr %3, i32 0, i32 1
  %cmp.str82 = load ptr, ptr %cmp.str81, align 8
  %eq.len = icmp eq i64 %view.len76, %str.len.query48
  br i1 %eq.len, label %str.eq.then, label %choice.exit102

str.eq.then:                                      ; preds = %and.888.then
  %eq.memcmp = call i32 @memcmp(ptr %s.read.data56, ptr %cmp.str82, i64 %view.len76)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %and.889.then, label %choice.exit102

and.889.then:                                     ; preds = %str.eq.then
  %s.read.len85 = load i64, ptr %choice.res40, align 8
  %s.read.len86 = and i64 %s.read.len85, 281474976710655
  %s.read.data87 = getelementptr inbounds { i64, ptr }, ptr %choice.res40, i32 0, i32 1
  %s.read.data88 = load ptr, ptr %s.read.data87, align 8
  %str.len.query91 = load i64, ptr %3, align 8
  %str.len.query92 = and i64 %str.len.query91, 281474976710655
  %idx.oob93 = icmp uge i64 %str.len.query92, %s.read.len86
  br i1 %idx.oob93, label %idx_oob95, label %idx_ok94

idx_ok94:                                         ; preds = %and.889.then
  %s.byte.gep97 = getelementptr i8, ptr %s.read.data88, i64 %str.len.query92
  %s.byte98 = load i8, ptr %s.byte.gep97, align 1
  %s.byte.val99 = zext i8 %s.byte98 to i64
  %cmptmp100 = icmp eq i64 %s.byte.val99, 58
  br i1 %cmptmp100, label %choice.then101, label %choice.exit102

idx_oob95:                                        ; preds = %and.889.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then101:                                   ; preds = %idx_ok94
  %str.len.query105 = load i64, ptr %choice.res40, align 8
  %str.len.query106 = and i64 %str.len.query105, 281474976710655
  %str.len.query109 = load i64, ptr %3, align 8
  %str.len.query110 = and i64 %str.len.query109, 281474976710655
  %addtmp111 = add nuw nsw i64 %str.len.query110, 1
  %cmptmp112 = icmp eq i64 %str.len.query106, %addtmp111
  br i1 %cmptmp112, label %loop.exit.885, label %or.890.else

choice.exit102:                                   ; preds = %str.eq.then, %and.888.then, %choice.exit31, %idx_ok125, %idx_ok94
  %addtmp135 = add i64 %"var.ln'.0", 1
  %loop.next137 = add i64 %loop.idx.885.0, 1
  br label %loop.header.885

or.890.else:                                      ; preds = %choice.then101
  %s.read.data117 = getelementptr inbounds { i64, ptr }, ptr %choice.res40, i32 0, i32 1
  %s.read.data118 = load ptr, ptr %s.read.data117, align 8
  %idx.oob124 = icmp uge i64 %addtmp111, %str.len.query106
  br i1 %idx.oob124, label %idx_oob126, label %idx_ok125

idx_ok125:                                        ; preds = %or.890.else
  %s.byte.gep128 = getelementptr i8, ptr %s.read.data118, i64 %addtmp111
  %s.byte129 = load i8, ptr %s.byte.gep128, align 1
  %s.byte.val130 = zext i8 %s.byte129 to i64
  %cmptmp131 = icmp ne i64 %s.byte.val130, 58
  br i1 %cmptmp131, label %loop.exit.885, label %choice.exit102

idx_oob126:                                       ; preds = %or.890.else
  call void @dva_abort_str_oob_msg()
  unreachable
}

define internal void @dva_array_grow(ptr %0) #3 {
entry:
  %a.len1 = load i64, ptr %0, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %a.cap2 = load i64, ptr %a.cap, align 8
  %a.data = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %a.data3 = load ptr, ptr %a.data, align 8
  %a.cap24 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.cap2, i64 2)
  %prod = extractvalue { i64, i1 } %a.cap24, 0
  %ovf = extractvalue { i64, i1 } %a.cap24, 1
  br i1 %ovf, label %arr_overflow_abort, label %a.cap25

a.cap25:                                          ; preds = %entry
  %a.cap.small = icmp slt i64 %prod, 16
  %a.new.cap = select i1 %a.cap.small, i64 16, i64 %prod
  %a.grow.bytes = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.new.cap, i64 8)
  %prod6 = extractvalue { i64, i1 } %a.grow.bytes, 0
  %ovf7 = extractvalue { i64, i1 } %a.grow.bytes, 1
  br i1 %ovf7, label %arr_overflow_abort9, label %a.grow.bytes8

arr_overflow_abort:                               ; preds = %entry
  call void @dva_abort_arr_overflow_msg()
  unreachable

a.grow.bytes8:                                    ; preds = %a.cap25
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %prod6)
  %a.copy.bytes = mul i64 %a.len1, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.new.buf, ptr align 1 %a.data3, i64 %a.copy.bytes, i1 false)
  store ptr %a.new.buf, ptr %a.data, align 8
  store i64 %a.new.cap, ptr %a.cap, align 8
  ret void

arr_overflow_abort9:                              ; preds = %a.cap25
  call void @dva_abort_arr_overflow_msg()
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #0

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_arr_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable
}

define void @"lsp::record_typecheck_errs"(ptr %0, ptr %1) #3 {
entry:
  %cat.ibuf135 = alloca [24 x i8], align 1
  %cat.ibuf = alloca [24 x i8], align 1
  %a.null = icmp eq ptr %1, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  store i64 0, ptr %a.create1, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.errs.0 = phi ptr [ %a.create1, %a.create ], [ %1, %entry ]
  %arr.cycle.len3 = load i64, ptr %var.errs.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.errs.0, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.892

loop.header.892:                                  ; preds = %choice.exit, %a.after
  %loop.idx.892.0 = phi i64 [ 0, %a.after ], [ %loop.next, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.892.0, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.892, label %loop.exit.892

loop.body.892:                                    ; preds = %loop.header.892
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %loop.idx.892.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, ptr, i64, i64 }, ptr %slot.i2p, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len6 = load i64, ptr %fld.load, align 8
  %eq.lhs.len7 = and i64 %eq.lhs.len6, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len7, 0
  br i1 %eq.len, label %str.eq.then, label %or.893.else

loop.exit.892:                                    ; preds = %loop.header.892
  ret void

str.eq.then:                                      ; preds = %loop.body.892
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data9 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data9, ptr @str.0, i64 0)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then, label %or.893.else

or.893.else:                                      ; preds = %loop.body.892, %str.eq.then
  %fld.load12 = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len15 = load i64, ptr %fld.load12, align 8
  %eq.lhs.len16 = and i64 %eq.lhs.len15, 281474976710655
  %eq.rhs.len18 = load i64, ptr %0, align 8
  %eq.rhs.len19 = and i64 %eq.rhs.len18, 281474976710655
  %eq.len20 = icmp eq i64 %eq.lhs.len16, %eq.rhs.len19
  br i1 %eq.len20, label %str.eq.then21, label %choice.else

str.eq.then21:                                    ; preds = %or.893.else
  %eq.lhs.data24 = getelementptr inbounds { i64, ptr }, ptr %fld.load12, i32 0, i32 1
  %eq.lhs.data25 = load ptr, ptr %eq.lhs.data24, align 8
  %eq.rhs.data26 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.rhs.data27 = load ptr, ptr %eq.rhs.data26, align 8
  %eq.memcmp28 = call i32 @memcmp(ptr %eq.lhs.data25, ptr %eq.rhs.data27, i64 %eq.lhs.len16)
  %eq.cmp.zero29 = icmp eq i32 %eq.memcmp28, 0
  br i1 %eq.cmp.zero29, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.then, %str.eq.then21
  %a.load32 = load ptr, ptr @"var.lsp::pending_diags", align 8
  %a.null33 = icmp eq ptr %a.load32, null
  br i1 %a.null33, label %a.create34, label %a.after35

choice.else:                                      ; preds = %or.893.else, %str.eq.then21
  %fld.gep64 = getelementptr inbounds { i64, ptr, ptr, i64, i64, ptr, i64, i64 }, ptr %slot.i2p, i32 0, i32 5
  %fld.load65 = load ptr, ptr %fld.gep64, align 8
  %eq.lhs.len68 = load i64, ptr %fld.load65, align 8
  %eq.lhs.len69 = and i64 %eq.lhs.len68, 281474976710655
  %eq.rhs.len71 = load i64, ptr %0, align 8
  %eq.rhs.len72 = and i64 %eq.rhs.len71, 281474976710655
  %eq.len73 = icmp eq i64 %eq.lhs.len69, %eq.rhs.len72
  br i1 %eq.len73, label %str.eq.then74, label %choice.exit

choice.exit:                                      ; preds = %str.eq.then74, %choice.else, %and.898.then, %concat.tot.len177, %a.after35
  %loop.next = add i64 %loop.idx.892.0, 1
  br label %loop.header.892

a.create34:                                       ; preds = %choice.then
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 24)
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 128)
  store i64 0, ptr %a.create37, align 8
  %a.data.gep41 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 1
  store ptr %a.buf39, ptr %a.data.gep41, align 8
  %a.cap.gep42 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 2
  store i64 16, ptr %a.cap.gep42, align 8
  store ptr %a.create37, ptr @"var.lsp::pending_diags", align 8
  br label %a.after35

a.after35:                                        ; preds = %a.create34, %choice.then
  %a.load243 = load ptr, ptr @"var.lsp::pending_diags", align 8
  %fld.load46 = load i64, ptr %slot.i2p, align 8
  %fld.gep49 = getelementptr inbounds { i64, ptr, ptr, i64, i64, ptr, i64, i64 }, ptr %slot.i2p, i32 0, i32 3
  %fld.load50 = load i64, ptr %fld.gep49, align 8
  %fld.gep52 = getelementptr inbounds { i64, ptr, ptr, i64, i64, ptr, i64, i64 }, ptr %slot.i2p, i32 0, i32 4
  %fld.load53 = load i64, ptr %fld.gep52, align 8
  %fld.gep55 = getelementptr inbounds { i64, ptr, ptr, i64, i64, ptr, i64, i64 }, ptr %slot.i2p, i32 0, i32 1
  %fld.load56 = load ptr, ptr %fld.gep55, align 8
  %arena.cur57 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 ptrtoint (ptr getelementptr ({ i64, ptr, i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  store i64 %fld.load46, ptr %rec.alloc, align 8
  %rec.fld58 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %0, ptr %rec.fld58, align 8
  %rec.fld59 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %fld.load50, ptr %rec.fld59, align 8
  %rec.fld60 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %fld.load53, ptr %rec.fld60, align 8
  %rec.fld61 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 4
  store ptr %fld.load56, ptr %rec.fld61, align 8
  %rec.fld62 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld62, align 1
  call void @"lsp::add_unique_diag"(ptr %a.load243, ptr %rec.alloc)
  br label %choice.exit

str.eq.then74:                                    ; preds = %choice.else
  %eq.lhs.data77 = getelementptr inbounds { i64, ptr }, ptr %fld.load65, i32 0, i32 1
  %eq.lhs.data78 = load ptr, ptr %eq.lhs.data77, align 8
  %eq.rhs.data79 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.rhs.data80 = load ptr, ptr %eq.rhs.data79, align 8
  %eq.memcmp81 = call i32 @memcmp(ptr %eq.lhs.data78, ptr %eq.rhs.data80, i64 %eq.lhs.len69)
  %eq.cmp.zero82 = icmp eq i32 %eq.memcmp81, 0
  br i1 %eq.cmp.zero82, label %and.898.then, label %choice.exit

and.898.then:                                     ; preds = %str.eq.then74
  %fld.gep85 = getelementptr inbounds { i64, ptr, ptr, i64, i64, ptr, i64, i64 }, ptr %slot.i2p, i32 0, i32 6
  %fld.load86 = load i64, ptr %fld.gep85, align 8
  %cmptmp = icmp sgt i64 %fld.load86, 0
  br i1 %cmptmp, label %choice.then87, label %choice.exit

choice.then87:                                    ; preds = %and.898.then
  %a.load90 = load ptr, ptr @"var.lsp::pending_diags", align 8
  %a.null91 = icmp eq ptr %a.load90, null
  br i1 %a.null91, label %a.create92, label %a.after93

a.create92:                                       ; preds = %choice.then87
  %arena.cur94 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create95 = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 24)
  %arena.cur96 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf97 = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 128)
  store i64 0, ptr %a.create95, align 8
  %a.data.gep99 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create95, i32 0, i32 1
  store ptr %a.buf97, ptr %a.data.gep99, align 8
  %a.cap.gep100 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create95, i32 0, i32 2
  store i64 16, ptr %a.cap.gep100, align 8
  store ptr %a.create95, ptr @"var.lsp::pending_diags", align 8
  br label %a.after93

a.after93:                                        ; preds = %a.create92, %choice.then87
  %a.load2101 = load ptr, ptr @"var.lsp::pending_diags", align 8
  %fld.load104 = load i64, ptr %slot.i2p, align 8
  %fld.gep107 = getelementptr inbounds { i64, ptr, ptr, i64, i64, ptr, i64, i64 }, ptr %slot.i2p, i32 0, i32 6
  %fld.load108 = load i64, ptr %fld.gep107, align 8
  %fld.gep110 = getelementptr inbounds { i64, ptr, ptr, i64, i64, ptr, i64, i64 }, ptr %slot.i2p, i32 0, i32 7
  %fld.load111 = load i64, ptr %fld.gep110, align 8
  %fld.gep113 = getelementptr inbounds { i64, ptr, ptr, i64, i64, ptr, i64, i64 }, ptr %slot.i2p, i32 0, i32 1
  %fld.load114 = load ptr, ptr %fld.gep113, align 8
  %cat.seg115 = load i64, ptr %fld.load114, align 8
  %cat.seg116 = and i64 %cat.seg115, 281474976710655
  %cat.seg117 = getelementptr inbounds { i64, ptr }, ptr %fld.load114, i32 0, i32 1
  %cat.seg118 = load ptr, ptr %cat.seg117, align 8
  %fld.load121 = load ptr, ptr %fld.gep, align 8
  %cat.seg123 = load i64, ptr %fld.load121, align 8
  %cat.seg124 = and i64 %cat.seg123, 281474976710655
  %cat.seg125 = getelementptr inbounds { i64, ptr }, ptr %fld.load121, i32 0, i32 1
  %cat.seg126 = load ptr, ptr %cat.seg125, align 8
  %fld.gep129 = getelementptr inbounds { i64, ptr, ptr, i64, i64, ptr, i64, i64 }, ptr %slot.i2p, i32 0, i32 3
  %fld.load130 = load i64, ptr %fld.gep129, align 8
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %fld.load130, i1 false)
  %fld.gep133 = getelementptr inbounds { i64, ptr, ptr, i64, i64, ptr, i64, i64 }, ptr %slot.i2p, i32 0, i32 4
  %fld.load134 = load i64, ptr %fld.gep133, align 8
  %cat.ilen136 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf135, i64 %fld.load134, i1 false)
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg116, i64 10)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %cat.sum.len139 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg124)
  %sum140 = extractvalue { i64, i1 } %cat.sum.len139, 0
  %cat.sum.len145 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum140, i64 1)
  %sum146 = extractvalue { i64, i1 } %cat.sum.len145, 0
  %cat.sum.len151 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum146, i64 %cat.ilen)
  %sum152 = extractvalue { i64, i1 } %cat.sum.len151, 0
  %ovf153 = extractvalue { i64, i1 } %cat.sum.len151, 1
  br i1 %ovf153, label %str_overflow_abort155, label %cat.sum.len154

cat.sum.len154:                                   ; preds = %a.after93
  %cat.sum.len157 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum152, i64 1)
  %sum158 = extractvalue { i64, i1 } %cat.sum.len157, 0
  %ovf159 = extractvalue { i64, i1 } %cat.sum.len157, 1
  br i1 %ovf159, label %str_overflow_abort161, label %cat.sum.len160

str_overflow_abort155:                            ; preds = %a.after93
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len160:                                   ; preds = %cat.sum.len154
  %cat.sum.len163 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum158, i64 %cat.ilen136)
  %sum164 = extractvalue { i64, i1 } %cat.sum.len163, 0
  %ovf165 = extractvalue { i64, i1 } %cat.sum.len163, 1
  br i1 %ovf165, label %str_overflow_abort167, label %cat.sum.len166

str_overflow_abort161:                            ; preds = %cat.sum.len154
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len166:                                   ; preds = %cat.sum.len160
  %cat.sum.len169 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum164, i64 1)
  %sum170 = extractvalue { i64, i1 } %cat.sum.len169, 0
  %ovf171 = extractvalue { i64, i1 } %cat.sum.len169, 1
  br i1 %ovf171, label %str_overflow_abort173, label %cat.sum.len172

str_overflow_abort167:                            ; preds = %cat.sum.len160
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len172:                                   ; preds = %cat.sum.len166
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum170, i64 1)
  %sum175 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf176 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf176, label %str_overflow_abort178, label %concat.tot.len177

str_overflow_abort173:                            ; preds = %cat.sum.len166
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len177:                                ; preds = %cat.sum.len172
  %arena.cur180 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur180, i64 %sum175)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %cat.seg118, i64 %cat.seg116, i1 false)
  %cat.dst181 = getelementptr i8, ptr %concat.buf, i64 %cat.seg116
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst181, ptr align 1 @str.10, i64 10, i1 false)
  %cat.off182 = add nuw nsw i64 %cat.seg116, 10
  %cat.dst183 = getelementptr i8, ptr %concat.buf, i64 %cat.off182
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst183, ptr align 1 %cat.seg126, i64 %cat.seg124, i1 false)
  %cat.off184 = add nuw nsw i64 %cat.off182, %cat.seg124
  %cat.dst185 = getelementptr i8, ptr %concat.buf, i64 %cat.off184
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst185, ptr align 1 @str.11, i64 1, i1 false)
  %cat.off186 = add nuw nsw i64 %cat.off184, 1
  %cat.dst187 = getelementptr i8, ptr %concat.buf, i64 %cat.off186
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst187, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %cat.off188 = add i64 %cat.off186, %cat.ilen
  %cat.dst189 = getelementptr i8, ptr %concat.buf, i64 %cat.off188
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst189, ptr align 1 @str.11, i64 1, i1 false)
  %cat.off190 = add i64 %cat.off188, 1
  %cat.dst191 = getelementptr i8, ptr %concat.buf, i64 %cat.off190
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst191, ptr align 1 %cat.ibuf135, i64 %cat.ilen136, i1 false)
  %cat.off192 = add i64 %cat.off190, %cat.ilen136
  %cat.dst193 = getelementptr i8, ptr %concat.buf, i64 %cat.off192
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst193, ptr align 1 @str.12, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum170
  store i8 0, ptr %concat.nul, align 1
  %arena.cur194 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur194, i64 16)
  store i64 %sum170, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %arena.cur195 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc196 = call ptr @dva_arena_alloc(ptr %arena.cur195, i64 ptrtoint (ptr getelementptr ({ i64, ptr, i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  store i64 %fld.load104, ptr %rec.alloc196, align 8
  %rec.fld198 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc196, i32 0, i32 1
  store ptr %0, ptr %rec.fld198, align 8
  %rec.fld199 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc196, i32 0, i32 2
  store i64 %fld.load108, ptr %rec.fld199, align 8
  %rec.fld200 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc196, i32 0, i32 3
  store i64 %fld.load111, ptr %rec.fld200, align 8
  %rec.fld201 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc196, i32 0, i32 4
  store ptr %concat.str, ptr %rec.fld201, align 8
  %rec.fld202 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc196, i32 0, i32 5
  store i1 false, ptr %rec.fld202, align 1
  call void @"lsp::add_unique_diag"(ptr %a.load2101, ptr %rec.alloc196)
  br label %choice.exit

str_overflow_abort178:                            ; preds = %cat.sum.len172
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define void @"lsp::add_unique_diag"(ptr %0, ptr %1) #3 {
entry:
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  store i64 0, ptr %a.create1, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.list.0 = phi ptr [ %a.create1, %a.create ], [ %0, %entry ]
  %call.res = call i1 @"lsp::has_diag"(ptr %var.list.0, ptr %1)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %a.check, label %choice.exit

choice.exit:                                      ; preds = %a.store, %a.after
  ret void

a.check:                                          ; preds = %a.after
  %a.len17 = load i64, ptr %var.list.0, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.list.0, i32 0, i32 2
  %a.cap18 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len17, %a.cap18
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var.list.0)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.list.0, i32 0, i32 1
  %a.cur.data19 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len20 = load i64, ptr %var.list.0, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data19, i64 %a.cur.len20
  %slot.p2i = ptrtoint ptr %1 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len20, 1
  store i64 %a.next.len, ptr %var.list.0, align 8
  br label %choice.exit
}

define i1 @"lsp::has_diag"(ptr %0, ptr %1) #3 {
entry:
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  store i64 0, ptr %a.create1, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.list.0 = phi ptr [ %a.create1, %a.create ], [ %0, %entry ]
  %arr.cycle.len3 = load i64, ptr %var.list.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.list.0, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.894

loop.header.894:                                  ; preds = %choice.exit, %a.after
  %loop.idx.894.0 = phi i64 [ 0, %a.after ], [ %loop.next, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.894.0, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.894, label %loop.exit.894

loop.body.894:                                    ; preds = %loop.header.894
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %loop.idx.894.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.load = load i64, ptr %slot.i2p, align 8
  %fld.load8 = load i64, ptr %1, align 8
  %cmptmp = icmp eq i64 %fld.load, %fld.load8
  br i1 %cmptmp, label %and.895.then, label %choice.exit

loop.exit.894:                                    ; preds = %str.eq.then, %loop.header.894
  %"var.found'.0" = phi i1 [ false, %loop.header.894 ], [ true, %str.eq.then ]
  ret i1 %"var.found'.0"

and.895.then:                                     ; preds = %loop.body.894
  %fld.gep10 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %slot.i2p, i32 0, i32 2
  %fld.load11 = load i64, ptr %fld.gep10, align 8
  %fld.gep13 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %1, i32 0, i32 2
  %fld.load14 = load i64, ptr %fld.gep13, align 8
  %cmptmp15 = icmp eq i64 %fld.load11, %fld.load14
  br i1 %cmptmp15, label %and.896.then, label %choice.exit

and.896.then:                                     ; preds = %and.895.then
  %fld.gep17 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %slot.i2p, i32 0, i32 3
  %fld.load18 = load i64, ptr %fld.gep17, align 8
  %fld.gep20 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %1, i32 0, i32 3
  %fld.load21 = load i64, ptr %fld.gep20, align 8
  %cmptmp22 = icmp eq i64 %fld.load18, %fld.load21
  br i1 %cmptmp22, label %and.897.then, label %choice.exit

and.897.then:                                     ; preds = %and.896.then
  %fld.gep24 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %slot.i2p, i32 0, i32 4
  %fld.load25 = load ptr, ptr %fld.gep24, align 8
  %fld.gep27 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %1, i32 0, i32 4
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  %eq.lhs.len29 = load i64, ptr %fld.load25, align 8
  %eq.lhs.len30 = and i64 %eq.lhs.len29, 281474976710655
  %eq.rhs.len31 = load i64, ptr %fld.load28, align 8
  %eq.rhs.len32 = and i64 %eq.rhs.len31, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len30, %eq.rhs.len32
  br i1 %eq.len, label %str.eq.then, label %choice.exit

str.eq.then:                                      ; preds = %and.897.then
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load25, i32 0, i32 1
  %eq.lhs.data33 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %eq.rhs.data34 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data33, ptr %eq.rhs.data34, i64 %eq.lhs.len30)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %loop.exit.894, label %choice.exit

choice.exit:                                      ; preds = %and.896.then, %loop.body.894, %and.895.then, %and.897.then, %str.eq.then
  %loop.next = add i64 %loop.idx.894.0, 1
  br label %loop.header.894
}

define internal i64 @dva_fmt_i64_buf(ptr %0, i64 %1, i1 %2) #3 {
entry:
  %fmt.tmp = alloca [24 x i8], align 1
  %fmt.is.zero = icmp eq i64 %1, 0
  br i1 %fmt.is.zero, label %zero, label %nonzero

common.ret:                                       ; preds = %done, %zero
  %common.ret.op = phi i64 [ 1, %zero ], [ %fmt.tot, %done ]
  ret i64 %common.ret.op

zero:                                             ; preds = %entry
  store i8 48, ptr %0, align 1
  %fmt.z.nul = getelementptr i8, ptr %0, i64 1
  store i8 0, ptr %fmt.z.nul, align 1
  br label %common.ret

nonzero:                                          ; preds = %entry
  %fmt.slt = icmp slt i64 %1, 0
  %fmt.is.neg = and i1 true, %fmt.slt
  %fmt.neg = sub i64 0, %1
  %fmt.abs = select i1 %fmt.is.neg, i64 %fmt.neg, i64 %1
  br label %divloop

divloop:                                          ; preds = %divloop, %nonzero
  %fmt.n = phi i64 [ %fmt.abs, %nonzero ], [ %fmt.quot, %divloop ]
  %fmt.k = phi i64 [ 0, %nonzero ], [ %fmt.k.next, %divloop ]
  %fmt.rem = urem i64 %fmt.n, 10
  %fmt.quot = udiv i64 %fmt.n, 10
  %fmt.r8 = trunc i64 %fmt.rem to i8
  %fmt.dig = add nuw nsw i8 %fmt.r8, 48
  %fmt.tslot = getelementptr i8, ptr %fmt.tmp, i64 %fmt.k
  store i8 %fmt.dig, ptr %fmt.tslot, align 1
  %fmt.k.next = add i64 %fmt.k, 1
  %fmt.more = icmp ne i64 %fmt.quot, 0
  br i1 %fmt.more, label %divloop, label %sign

sign:                                             ; preds = %divloop
  br i1 %fmt.is.neg, label %negstore, label %copypre

negstore:                                         ; preds = %sign
  store i8 45, ptr %0, align 1
  br label %copypre

copypre:                                          ; preds = %negstore, %sign
  %fmt.off = phi i64 [ 0, %sign ], [ 1, %negstore ]
  br label %copyloop

copyloop:                                         ; preds = %copyloop, %copypre
  %fmt.i = phi i64 [ 0, %copypre ], [ %fmt.i.next, %copyloop ]
  %fmt.sidx = sub i64 %fmt.k, %fmt.i
  %fmt.sptr = getelementptr i8, ptr %fmt.tmp, i64 %fmt.sidx
  %fmt.ch = load i8, ptr %fmt.sptr, align 1
  %fmt.didx = add i64 %fmt.off, %fmt.i
  %fmt.dptr = getelementptr i8, ptr %0, i64 %fmt.didx
  store i8 %fmt.ch, ptr %fmt.dptr, align 1
  %fmt.i.next = add i64 %fmt.i, 1
  %fmt.cmore = icmp ne i64 %fmt.i.next, %fmt.k.next
  br i1 %fmt.cmore, label %copyloop, label %done

done:                                             ; preds = %copyloop
  %fmt.tot = add i64 %fmt.off, %fmt.k.next
  %fmt.nul = getelementptr i8, ptr %0, i64 %fmt.tot
  store i8 0, ptr %fmt.nul, align 1
  br label %common.ret
}

define i64 @"lsp::read_byte"() #3 {
entry:
  %call.res = call ptr @"mem::zero_buf"(i64 4)
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %call.res, i32 0, i32 1
  %b.ptr1 = load ptr, ptr %b.ptr, align 8
  %0 = icmp eq ptr %b.ptr1, null
  br i1 %0, label %b.detached, label %b.writable

b.detached:                                       ; preds = %entry
  call void @dva_abort_detached_builder()
  unreachable

b.writable:                                       ; preds = %entry
  %addr.tag.int = ptrtoint ptr %b.ptr1 to i64
  %addr.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %addr.tag.shift = shl i64 %addr.tag.gen, 48
  %addr.tagged = or i64 %addr.tag.int, %addr.tag.shift
  %addr.ffi.masked = and i64 %addr.tagged, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res2 = call i64 @read(i32 0, ptr %addr.ffi.clean, i64 1)
  %cmptmp = icmp sle i64 %call.res2, 0
  br i1 %cmptmp, label %choice.exit, label %choice.else

choice.else:                                      ; preds = %b.writable
  %b.read.len5 = load i64, ptr %call.res, align 8
  %b.read.data6 = load ptr, ptr %b.ptr, align 8
  %idx.oob = icmp uge i64 0, %b.read.len5
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.exit:                                      ; preds = %b.writable, %idx_ok
  %choice.res = phi i64 [ %bandtmp, %idx_ok ], [ -1, %b.writable ]
  ret i64 %choice.res

idx_ok:                                           ; preds = %choice.else
  %s.byte = load i8, ptr %b.read.data6, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %bandtmp = and i64 %s.byte.val, 255
  br label %choice.exit

idx_oob:                                          ; preds = %choice.else
  call void @dva_abort_str_oob_msg()
  unreachable
}

declare ptr @"mem::zero_buf"(i64) #3

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_detached_builder() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @detached_builder, i64 92)
  call void @exit(i32 1)
  unreachable
}

define { i64, ptr } @"lsp::read_header_line"() #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 129)
  store i8 0, ptr %b.buf, align 1
  br label %loop.header.899

loop.header.899:                                  ; preds = %choice.exit14, %entry
  %builder.new.salloc.sroa.13.0 = phi i64 [ 128, %entry ], [ %builder.new.salloc.sroa.13.1, %choice.exit14 ]
  %builder.new.salloc.sroa.7.0 = phi ptr [ %b.buf, %entry ], [ %builder.new.salloc.sroa.7.1, %choice.exit14 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 0, %entry ], [ %builder.new.salloc.sroa.0.1, %choice.exit14 ]
  %loop.idx.899.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit14 ]
  %call.res = call i64 @"lsp::read_byte"(), !range !0
  %cmptmp = icmp slt i64 %call.res, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %loop.header.899
  %cmptmp4 = icmp eq i64 %builder.new.salloc.sroa.0.0, 0
  br i1 %cmptmp4, label %choice.exit32, label %choice.else

choice.exit:                                      ; preds = %loop.header.899
  switch i64 %call.res, label %choice.then13 [
    i64 10, label %choice.else
    i64 13, label %choice.exit14
  ]

choice.then13:                                    ; preds = %choice.exit
  %b.b.le255 = icmp sle i64 %call.res, 255
  %b.byte.range = and i1 true, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.exit14:                                    ; preds = %choice.exit, %b.push_done
  %builder.new.salloc.sroa.13.1 = phi i64 [ %builder.new.salloc.sroa.13.2, %b.push_done ], [ %builder.new.salloc.sroa.13.0, %choice.exit ]
  %builder.new.salloc.sroa.7.1 = phi ptr [ %builder.new.salloc.sroa.7.2, %b.push_done ], [ %builder.new.salloc.sroa.7.0, %choice.exit ]
  %builder.new.salloc.sroa.0.1 = phi i64 [ %b.next.len, %b.push_done ], [ %builder.new.salloc.sroa.0.0, %choice.exit ]
  %loop.next = add i64 %loop.idx.899.0, 1
  br label %loop.header.899

b.byte_ok:                                        ; preds = %choice.then13
  %b.byte.i8 = trunc i64 %call.res to i8
  %b.needs.grow = icmp eq i64 %builder.new.salloc.sroa.0.0, %builder.new.salloc.sroa.13.0
  br i1 %b.needs.grow, label %b.grow, label %b.push_done

b.byte_err:                                       ; preds = %choice.then13
  call void @dva_abort_b_byte_msg()
  unreachable

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %builder.new.salloc.sroa.13.0, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum21 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf22 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf22, label %str_overflow_abort24, label %b.new.buf.len23

b.push_done:                                      ; preds = %b.byte_ok, %b.new.buf.len23
  %builder.new.salloc.sroa.13.2 = phi i64 [ %b.new.cap, %b.new.buf.len23 ], [ %builder.new.salloc.sroa.13.0, %b.byte_ok ]
  %builder.new.salloc.sroa.7.2 = phi ptr [ %b.new.buf, %b.new.buf.len23 ], [ %builder.new.salloc.sroa.7.0, %b.byte_ok ]
  %b.byte.gep = getelementptr i8, ptr %builder.new.salloc.sroa.7.2, i64 %builder.new.salloc.sroa.0.0
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %builder.new.salloc.sroa.0.0, 1
  %b.nul = getelementptr i8, ptr %builder.new.salloc.sroa.7.2, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  br label %choice.exit14

b.new.buf.len23:                                  ; preds = %b.grow
  %arena.cur26 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 %sum21)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %builder.new.salloc.sroa.7.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow.nul, align 1
  br label %b.push_done

str_overflow_abort24:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.else:                                      ; preds = %choice.exit, %choice.then
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.exit32:                                    ; preds = %choice.then, %b.freeze.done
  %choice.res = phi ptr [ %builder.freeze, %b.freeze.done ], [ null, %choice.then ]
  %ret.niche.nn = icmp ne ptr %choice.res, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

b.freeze.check:                                   ; preds = %choice.else
  %b.freeze.last.idx = sub nuw nsw i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %builder.new.salloc.sroa.7.0, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %builder.new.salloc.sroa.7.0, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %builder.new.salloc.sroa.7.0, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %builder.new.salloc.sroa.0.0, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %builder.new.salloc.sroa.7.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.else
  %b.freeze.data37 = phi ptr [ %builder.new.salloc.sroa.7.0, %choice.else ], [ %builder.new.salloc.sroa.7.0, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %builder.new.salloc.sroa.0.0, %str.tag.shift
  store i64 %str.tagged.len, ptr %builder.freeze, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data37, ptr %str.build.data.gep, align 8
  br label %choice.exit32

ret.niche.load:                                   ; preds = %choice.exit32
  %ret.niche.val = load { i64, ptr }, ptr %choice.res, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.exit32
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %choice.exit32 ]
  ret { i64, ptr } %ret.niche.pack
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_b_byte_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

define i64 @"lsp::parse_content_length"(ptr %0) #3 {
entry:
  %ret.ub.salloc53 = alloca { i64, ptr }, align 8
  %call.res = call { i64, ptr } @"str::lower"(ptr %0)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %str.len.query3 = and i64 %call.res.fca.0.extract, 281474976710655
  %cmptmp = icmp sge i64 %str.len.query3, 15
  br i1 %cmptmp, label %and.900.then, label %choice.exit

and.900.then:                                     ; preds = %entry
  %eq.memcmp = call i32 @memcmp(ptr %call.res.fca.1.extract, ptr @str.13, i64 15)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.900.then
  %s.read.len23 = load i64, ptr %0, align 8
  %s.read.len24 = and i64 %s.read.len23, 281474976710655
  %s.read.data25 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data26 = load ptr, ptr %s.read.data25, align 8
  %start.gt.len39 = icmp sgt i64 15, %s.read.len24
  %final.start40 = select i1 %start.gt.len39, i64 %s.read.len24, i64 15
  %view.empty48 = icmp sle i64 %s.read.len24, %final.start40
  %view.len.sub49 = sub nsw i64 %s.read.len24, %final.start40
  %view.len50 = select i1 %view.empty48, i64 0, i64 %view.len.sub49
  %view.data51 = getelementptr i8, ptr %s.read.data26, i64 %final.start40
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 %view.len50, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data51, ptr %str.build.data.gep, align 8
  %call.res52 = call { i64, ptr } @"str::trim"(ptr %str.view)
  %call.res52.fca.0.extract = extractvalue { i64, ptr } %call.res52, 0
  store i64 %call.res52.fca.0.extract, ptr %ret.ub.salloc53, align 8
  %call.res52.fca.1.extract = extractvalue { i64, ptr } %call.res52, 1
  %call.res52.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc53, i32 0, i32 1
  store ptr %call.res52.fca.1.extract, ptr %call.res52.fca.1.gep, align 8
  %call.res55 = call ptr @"str::to_int"(ptr %ret.ub.salloc53)
  %niche.ne.null = icmp ne ptr %call.res55, null
  br i1 %niche.ne.null, label %choice.then56, label %choice.exit

choice.exit:                                      ; preds = %choice.then56, %choice.then, %and.900.then, %entry
  %choice.res60 = phi i64 [ -1, %entry ], [ -1, %and.900.then ], [ %fld.load, %choice.then56 ], [ -1, %choice.then ]
  ret i64 %choice.res60

choice.then56:                                    ; preds = %choice.then
  %fld.load = load i64, ptr %call.res55, align 8
  br label %choice.exit
}

declare { i64, ptr } @"str::lower"(ptr) #3

declare { i64, ptr } @"str::trim"(ptr) #3

declare ptr @"str::to_int"(ptr) #3

define { i64, ptr } @"lsp::read_exact_bytes"(i64 %0) #3 {
entry:
  %cmptmp = icmp sle i64 %0, 0
  br i1 %cmptmp, label %common.ret, label %choice.exit

choice.exit:                                      ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 %sum)
  store i8 0, ptr %b.buf, align 1
  store i64 0, ptr %builder.new, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %0, ptr %b.cap.gep, align 8
  br label %loop.header.901

common.ret:                                       ; preds = %choice.exit25, %ret.niche.load33, %entry
  %common.ret.op = phi { i64, ptr } [ { i64 0, ptr @str.0 }, %entry ], [ %ret.niche.val35, %ret.niche.load33 ], [ zeroinitializer, %choice.exit25 ]
  ret { i64, ptr } %common.ret.op

loop.header.901:                                  ; preds = %choice.exit19, %choice.exit
  %"var.rem'.0" = phi i64 [ %0, %choice.exit ], [ %subtmp, %choice.exit19 ]
  %loop.idx.901.0 = phi i64 [ 0, %choice.exit ], [ %loop.next, %choice.exit19 ]
  %cmptmp6 = icmp sle i64 %"var.rem'.0", 0
  br i1 %cmptmp6, label %choice.else24, label %choice.exit8

choice.exit8:                                     ; preds = %loop.header.901
  %cmptmp10 = icmp slt i64 %"var.rem'.0", 4096
  %"var.rem'.0." = select i1 %cmptmp10, i64 %"var.rem'.0", i64 4096
  %call.res = call i64 @"mem::write_tail"(ptr %builder.new, i64 %"var.rem'.0.", ptr @clo.const.20)
  %cmptmp17 = icmp sle i64 %call.res, 0
  br i1 %cmptmp17, label %choice.exit25, label %choice.exit19

choice.exit19:                                    ; preds = %choice.exit8
  %subtmp = sub nsw i64 %"var.rem'.0", %call.res
  %loop.next = add i64 %loop.idx.901.0, 1
  br label %loop.header.901

choice.else24:                                    ; preds = %loop.header.901
  %b.freeze.len27 = load i64, ptr %builder.new, align 8
  %b.freeze.data28 = load ptr, ptr %b.data.gep, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.exit25:                                    ; preds = %choice.exit8, %b.freeze.done
  %choice.res32 = phi ptr [ %builder.freeze, %b.freeze.done ], [ null, %choice.exit8 ]
  %ret.niche.nn = icmp ne ptr %choice.res32, null
  br i1 %ret.niche.nn, label %ret.niche.load33, label %common.ret

b.freeze.check:                                   ; preds = %choice.else24
  %b.freeze.last.idx = sub nuw nsw i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data28, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data28, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data28, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len27, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data28, i64 %b.freeze.len27, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len27
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.else24
  %b.freeze.data30 = phi ptr [ %b.freeze.data28, %choice.else24 ], [ %b.freeze.data28, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur31 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %b.freeze.len27, %str.tag.shift
  store i64 %str.tagged.len, ptr %builder.freeze, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data30, ptr %str.build.data.gep, align 8
  store i64 0, ptr %builder.new, align 8
  store ptr null, ptr %b.data.gep, align 8
  store i64 0, ptr %b.cap.gep, align 8
  br label %choice.exit25

ret.niche.load33:                                 ; preds = %choice.exit25
  %ret.niche.val35 = load { i64, ptr }, ptr %choice.res32, align 8
  br label %common.ret
}

define internal i64 @"$anon_fn.107"(ptr %0, i64 %1) #3 {
entry:
  %addr.ffi.int = ptrtoint ptr %0 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call i64 @read(i32 0, ptr %addr.ffi.clean, i64 %1)
  ret i64 %call.res
}

declare i64 @"mem::write_tail"(ptr, i64, ptr) #3

define { i64, ptr } @"lsp::read_rpc_message"() #3 {
entry:
  br label %loop.header.902

loop.header.902:                                  ; preds = %choice.exit7, %entry
  %loop.idx.902.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit7 ]
  %"var.content_len'.0" = phi i64 [ -1, %entry ], [ %"var.content_len'.1", %choice.exit7 ]
  %call.res = call { i64, ptr } @"lsp::read_header_line"()
  %ret.niche.data = extractvalue { i64, ptr } %call.res, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

loop.exit.902:                                    ; preds = %choice.then5, %ret.niche.done
  %"var.eof'.0" = phi i1 [ true, %ret.niche.done ], [ false, %choice.then5 ]
  %cmptmp21 = icmp slt i64 %"var.content_len'.0", 0
  %or.903.phi = select i1 %"var.eof'.0", i1 %"var.eof'.0", i1 %cmptmp21
  br i1 %or.903.phi, label %choice.exit24, label %choice.else23

ret.niche.alloc:                                  ; preds = %loop.header.902
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %loop.header.902
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %loop.header.902 ]
  %niche.ne.null = icmp ne ptr %ret.niche.ptr, null
  br i1 %niche.ne.null, label %choice.then, label %loop.exit.902

choice.then:                                      ; preds = %ret.niche.done
  %str.len.query3 = load i64, ptr %ret.niche.ptr, align 8
  %str.len.query4 = and i64 %str.len.query3, 281474976710655
  %str.tag = lshr i64 %str.len.query3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %choice.then
  %cmptmp = icmp eq i64 %str.len.query4, 0
  br i1 %cmptmp, label %choice.then5, label %choice.else6

tag.slow_check:                                   ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then5:                                     ; preds = %str_ok
  %cmptmp9 = icmp sge i64 %"var.content_len'.0", 0
  br i1 %cmptmp9, label %loop.exit.902, label %choice.exit7

choice.else6:                                     ; preds = %str_ok
  %call.res13 = call i64 @"lsp::parse_content_length"(ptr %ret.niche.ptr)
  %cmptmp15 = icmp sge i64 %call.res13, 0
  %spec.select = select i1 %cmptmp15, i64 %call.res13, i64 %"var.content_len'.0"
  br label %choice.exit7

choice.exit7:                                     ; preds = %choice.then5, %choice.else6
  %"var.content_len'.1" = phi i64 [ %spec.select, %choice.else6 ], [ %"var.content_len'.0", %choice.then5 ]
  %loop.next = add i64 %loop.idx.902.0, 1
  br label %loop.header.902

choice.else23:                                    ; preds = %loop.exit.902
  %call.res26 = call { i64, ptr } @"lsp::read_exact_bytes"(i64 %"var.content_len'.0")
  %ret.niche.data27 = extractvalue { i64, ptr } %call.res26, 1
  %ret.niche.ok28 = icmp ne ptr %ret.niche.data27, null
  br i1 %ret.niche.ok28, label %ret.niche.alloc29, label %choice.exit24

choice.exit24:                                    ; preds = %choice.else23, %ret.niche.alloc29, %loop.exit.902
  %choice.res = phi ptr [ null, %loop.exit.902 ], [ %ret.niche.buf32, %ret.niche.alloc29 ], [ null, %choice.else23 ]
  %ret.niche.nn = icmp ne ptr %choice.res, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

ret.niche.alloc29:                                ; preds = %choice.else23
  %arena.cur31 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 16)
  store { i64, ptr } %call.res26, ptr %ret.niche.buf32, align 8
  br label %choice.exit24

ret.niche.load:                                   ; preds = %choice.exit24
  %ret.niche.val = load { i64, ptr }, ptr %choice.res, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.exit24
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %choice.exit24 ]
  ret { i64, ptr } %ret.niche.pack
}

define void @"lsp::send_rpc_payload"(ptr %0) #3 {
entry:
  %cat.ibuf = alloca [24 x i8], align 1
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %str.len.query2, i1 false)
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16, i64 %cat.ilen)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len4

cat.sum.len4:                                     ; preds = %entry
  %cat.sum.len5 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 4)
  %sum6 = extractvalue { i64, i1 } %cat.sum.len5, 0
  %ovf7 = extractvalue { i64, i1 } %cat.sum.len5, 1
  br i1 %ovf7, label %str_overflow_abort9, label %cat.sum.len8

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len8:                                     ; preds = %cat.sum.len4
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum6, i64 1)
  %sum11 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf12 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf12, label %str_overflow_abort14, label %concat.tot.len13

str_overflow_abort9:                              ; preds = %cat.sum.len4
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len13:                                 ; preds = %cat.sum.len8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum11)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.14, i64 16, i1 false)
  %cat.dst16 = getelementptr i8, ptr %concat.buf, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst16, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %cat.off = add i64 16, %cat.ilen
  %cat.dst17 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst17, ptr align 1 @str.15, i64 4, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum6
  store i8 0, ptr %concat.nul, align 1
  %concat.lhs21 = and i64 %sum6, 281474976710655
  %concat.rhs24 = load i64, ptr %0, align 8
  %concat.rhs25 = and i64 %concat.rhs24, 281474976710655
  %concat.rhs26 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %concat.rhs27 = load ptr, ptr %concat.rhs26, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs21, i64 %concat.rhs25)
  %sum28 = extractvalue { i64, i1 } %concat.sum.len, 0
  %concat.tot.len33 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum28, i64 1)
  %sum34 = extractvalue { i64, i1 } %concat.tot.len33, 0
  %arena.cur39 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf40 = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 %sum34)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf40, ptr align 1 %concat.buf, i64 %concat.lhs21, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf40, i64 %concat.lhs21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs27, i64 %concat.rhs25, i1 false)
  %concat.nul41 = getelementptr i8, ptr %concat.buf40, i64 %sum28
  store i8 0, ptr %concat.nul41, align 1
  %str.len.query48 = and i64 %sum28, 281474976710655
  br label %loop.header.904

str_overflow_abort14:                             ; preds = %cat.sum.len8
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.904:                                  ; preds = %choice.exit80, %concat.tot.len13
  %"var.off'.0" = phi i64 [ 0, %concat.tot.len13 ], [ %addtmp, %choice.exit80 ]
  %loop.idx.904.0 = phi i64 [ 0, %concat.tot.len13 ], [ %loop.next, %choice.exit80 ]
  %cmptmp = icmp sge i64 %"var.off'.0", %str.len.query48
  br i1 %cmptmp, label %loop.exit.904, label %choice.exit

loop.exit.904:                                    ; preds = %nulmerge, %loop.header.904
  ret void

choice.exit:                                      ; preds = %loop.header.904
  %start.is_neg = icmp slt i64 %"var.off'.0", 0
  %rel.start = add i64 %str.len.query48, %"var.off'.0"
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %"var.off'.0"
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %str.len.query48
  %final.start = select i1 %start.gt.len, i64 %str.len.query48, i64 %c.start.0
  %view.empty = icmp sle i64 %str.len.query48, %final.start
  %view.len.sub = sub i64 %str.len.query48, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %concat.buf40, i64 %final.start
  %arena.cur57 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 16)
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep59 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep59, align 8
  %arg.str.ptr63 = load i64, ptr %str.view, align 8
  %arg.str.ptr64 = and i64 %arg.str.ptr63, 281474976710655
  %nulcheck.gep = getelementptr i8, ptr %view.data, i64 %arg.str.ptr64
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %nulmerge, label %nulcopy

nulcopy:                                          ; preds = %choice.exit
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr64, i64 1)
  %sum66 = extractvalue { i64, i1 } %nulcopy.len, 0
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 %sum66)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %view.data, i64 %arg.str.ptr64, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr64
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

nulmerge:                                         ; preds = %choice.exit, %nulcopy
  %arg.str.ptr72 = phi ptr [ %nulcopy.buf, %nulcopy ], [ %view.data, %choice.exit ]
  %str.len.query75 = load i64, ptr %str.view, align 8
  %str.len.query76 = and i64 %str.len.query75, 281474976710655
  %call.res = call i64 @write(i32 1, ptr %arg.str.ptr72, i64 %str.len.query76)
  %cmptmp78 = icmp sle i64 %call.res, 0
  br i1 %cmptmp78, label %loop.exit.904, label %choice.exit80

choice.exit80:                                    ; preds = %nulmerge
  %addtmp = add i64 %"var.off'.0", %call.res
  %loop.next = add i64 %loop.idx.904.0, 1
  br label %loop.header.904
}

define i64 @"lsp::hex_val"(i64 %0) #3 {
entry:
  %cmptmp15 = icmp sge i64 %0, 65
  %cmptmp16 = icmp sle i64 %0, 70
  %and.907.phi = select i1 %cmptmp15, i1 %cmptmp16, i1 false
  %subtmp18 = sub i64 %0, 65
  %addtmp19 = add i64 %subtmp18, 10
  %choice.res = select i1 %and.907.phi, i64 %addtmp19, i64 -1
  ret i64 %choice.res
}

define { i64, ptr } @"lsp::uri_to_path"(ptr %0) #3 {
entry:
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp sge i64 %str.len.query2, 7
  br i1 %cmptmp, label %and.908.then, label %choice.exit

and.908.then:                                     ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %s.read.data10, ptr @str.16, i64 7)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.908.then
  %s.read.len22 = load i64, ptr %0, align 8
  %s.read.len23 = and i64 %s.read.len22, 281474976710655
  %s.read.data25 = load ptr, ptr %s.read.data, align 8
  %start.gt.len38 = icmp sgt i64 7, %s.read.len23
  %final.start39 = select i1 %start.gt.len38, i64 %s.read.len23, i64 7
  %view.empty47 = icmp sle i64 %s.read.len23, %final.start39
  %view.len.sub48 = sub nsw i64 %s.read.len23, %final.start39
  %view.len49 = select i1 %view.empty47, i64 0, i64 %view.len.sub48
  %view.data50 = getelementptr i8, ptr %s.read.data25, i64 %final.start39
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 %view.len49, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data50, ptr %str.build.data.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %and.908.then, %entry, %choice.then
  %choice.res = phi ptr [ %str.view, %choice.then ], [ %0, %entry ], [ %0, %and.908.then ]
  %str.len.query54 = load i64, ptr %choice.res, align 8
  %str.len.query55 = and i64 %str.len.query54, 281474976710655
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %str.len.query55, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %arena.cur57 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 %sum)
  store i8 0, ptr %b.buf, align 1
  %str.len.query60 = load i64, ptr %choice.res, align 8
  %str.len.query61 = and i64 %str.len.query60, 281474976710655
  br label %loop.header.909

loop.header.909:                                  ; preds = %choice.exit82, %choice.exit
  %builder.new.salloc.sroa.24.0 = phi i64 [ %str.len.query55, %choice.exit ], [ %builder.new.salloc.sroa.24.1, %choice.exit82 ]
  %builder.new.salloc.sroa.12.0 = phi ptr [ %b.buf, %choice.exit ], [ %builder.new.salloc.sroa.12.1, %choice.exit82 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 0, %choice.exit ], [ %builder.new.salloc.sroa.0.1, %choice.exit82 ]
  %"var.i'.0" = phi i64 [ 0, %choice.exit ], [ %"var.i'.1", %choice.exit82 ]
  %loop.idx.909.0 = phi i64 [ 0, %choice.exit ], [ %loop.next, %choice.exit82 ]
  %cmptmp64 = icmp sge i64 %"var.i'.0", %str.len.query61
  br i1 %cmptmp64, label %choice.then65, label %choice.exit66

choice.then65:                                    ; preds = %loop.header.909
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %builder.new.salloc.sroa.0.0, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %builder.new.salloc.sroa.12.0, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

choice.exit66:                                    ; preds = %loop.header.909
  %s.read.len69 = load i64, ptr %choice.res, align 8
  %s.read.len70 = and i64 %s.read.len69, 281474976710655
  %s.read.data71 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %s.read.data72 = load ptr, ptr %s.read.data71, align 8
  %idx.oob = icmp uge i64 %"var.i'.0", %s.read.len70
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.exit66
  %s.byte.gep = getelementptr i8, ptr %s.read.data72, i64 %"var.i'.0"
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp76 = icmp eq i64 %s.byte.val, 37
  %addtmp = add nuw nsw i64 %"var.i'.0", 2
  %cmptmp79 = icmp slt i64 %addtmp, %str.len.query61
  %and.910.phi = select i1 %cmptmp76, i1 %cmptmp79, i1 false
  br i1 %and.910.phi, label %choice.then80, label %b.byte_ok187

idx_oob:                                          ; preds = %choice.exit66
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then80:                                    ; preds = %idx_ok
  %addtmp90 = add nuw nsw i64 %"var.i'.0", 1
  %idx.oob91 = icmp uge i64 %addtmp90, %s.read.len70
  br i1 %idx.oob91, label %idx_oob93, label %idx_ok92

choice.exit82:                                    ; preds = %b.push_done, %b.push_done157, %b.push_done200
  %builder.new.salloc.sroa.24.1 = phi i64 [ %builder.new.salloc.sroa.24.5, %b.push_done200 ], [ %builder.new.salloc.sroa.24.3, %b.push_done ], [ %builder.new.salloc.sroa.24.4, %b.push_done157 ]
  %builder.new.salloc.sroa.12.1 = phi ptr [ %builder.new.salloc.sroa.12.5, %b.push_done200 ], [ %builder.new.salloc.sroa.12.3, %b.push_done ], [ %builder.new.salloc.sroa.12.4, %b.push_done157 ]
  %builder.new.salloc.sroa.0.1 = phi i64 [ %b.next.len220, %b.push_done200 ], [ %b.next.len, %b.push_done ], [ %b.next.len177, %b.push_done157 ]
  %"var.i'.1" = phi i64 [ %addtmp224, %b.push_done200 ], [ %addtmp138, %b.push_done ], [ %addtmp90, %b.push_done157 ]
  %loop.next = add i64 %loop.idx.909.0, 1
  br label %loop.header.909

idx_ok92:                                         ; preds = %choice.then80
  %s.byte.gep95 = getelementptr i8, ptr %s.read.data72, i64 %addtmp90
  %s.byte96 = load i8, ptr %s.byte.gep95, align 1
  %s.byte.val97 = zext i8 %s.byte96 to i64
  %call.res = call i64 @"lsp::hex_val"(i64 %s.byte.val97)
  %s.read.len100 = load i64, ptr %choice.res, align 8
  %s.read.len101 = and i64 %s.read.len100, 281474976710655
  %s.read.data103 = load ptr, ptr %s.read.data71, align 8
  %idx.oob106 = icmp uge i64 %addtmp, %s.read.len101
  br i1 %idx.oob106, label %idx_oob108, label %idx_ok107

idx_oob93:                                        ; preds = %choice.then80
  call void @dva_abort_str_oob_msg()
  unreachable

idx_ok107:                                        ; preds = %idx_ok92
  %s.byte.gep110 = getelementptr i8, ptr %s.read.data103, i64 %addtmp
  %s.byte111 = load i8, ptr %s.byte.gep110, align 1
  %s.byte.val112 = zext i8 %s.byte111 to i64
  %call.res113 = call i64 @"lsp::hex_val"(i64 %s.byte.val112)
  %cmptmp115 = icmp sge i64 %call.res, 0
  %cmptmp117 = icmp sge i64 %call.res113, 0
  %and.911.phi = select i1 %cmptmp115, i1 %cmptmp117, i1 false
  br i1 %and.911.phi, label %choice.then118, label %b.byte_ok144

idx_oob108:                                       ; preds = %idx_ok92
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then118:                                   ; preds = %idx_ok107
  %multmp = mul i64 %call.res, 16
  %addtmp123 = add i64 %multmp, %call.res113
  %b.b.ge0 = icmp sge i64 %addtmp123, 0
  %b.b.le255 = icmp sle i64 %addtmp123, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

b.byte_ok:                                        ; preds = %choice.then118
  %b.byte.i8 = trunc i64 %addtmp123 to i8
  %b.needs.grow = icmp eq i64 %builder.new.salloc.sroa.0.0, %builder.new.salloc.sroa.24.0
  br i1 %b.needs.grow, label %b.grow, label %b.push_done

b.byte_err:                                       ; preds = %choice.then118
  call void @dva_abort_b_byte_msg()
  unreachable

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %builder.new.salloc.sroa.24.0, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum128 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf129 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf129, label %str_overflow_abort131, label %b.new.buf.len130

b.push_done:                                      ; preds = %b.byte_ok, %b.new.buf.len130
  %builder.new.salloc.sroa.24.3 = phi i64 [ %b.new.cap, %b.new.buf.len130 ], [ %builder.new.salloc.sroa.24.0, %b.byte_ok ]
  %builder.new.salloc.sroa.12.3 = phi ptr [ %b.new.buf, %b.new.buf.len130 ], [ %builder.new.salloc.sroa.12.0, %b.byte_ok ]
  %b.byte.gep = getelementptr i8, ptr %builder.new.salloc.sroa.12.3, i64 %builder.new.salloc.sroa.0.0
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %builder.new.salloc.sroa.0.0, 1
  %b.nul = getelementptr i8, ptr %builder.new.salloc.sroa.12.3, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %addtmp138 = add nuw nsw i64 %"var.i'.0", 3
  br label %choice.exit82

b.new.buf.len130:                                 ; preds = %b.grow
  %arena.cur133 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 %sum128)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %builder.new.salloc.sroa.12.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow.nul, align 1
  br label %b.push_done

str_overflow_abort131:                            ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

b.byte_ok144:                                     ; preds = %idx_ok107
  %b.needs.grow154 = icmp eq i64 %builder.new.salloc.sroa.0.0, %builder.new.salloc.sroa.24.0
  br i1 %b.needs.grow154, label %b.grow155, label %b.push_done157

b.grow155:                                        ; preds = %b.byte_ok144
  %b.cap2158 = mul i64 %builder.new.salloc.sroa.24.0, 2
  %b.cap.small159 = icmp slt i64 %b.cap2158, 16
  %b.new.cap160 = select i1 %b.cap.small159, i64 16, i64 %b.cap2158
  %b.new.buf.len161 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap160, i64 1)
  %sum162 = extractvalue { i64, i1 } %b.new.buf.len161, 0
  %ovf163 = extractvalue { i64, i1 } %b.new.buf.len161, 1
  br i1 %ovf163, label %str_overflow_abort165, label %b.new.buf.len164

b.push_done157:                                   ; preds = %b.byte_ok144, %b.new.buf.len164
  %builder.new.salloc.sroa.24.4 = phi i64 [ %b.new.cap160, %b.new.buf.len164 ], [ %builder.new.salloc.sroa.24.0, %b.byte_ok144 ]
  %builder.new.salloc.sroa.12.4 = phi ptr [ %b.new.buf168, %b.new.buf.len164 ], [ %builder.new.salloc.sroa.12.0, %b.byte_ok144 ]
  %b.byte.gep176 = getelementptr i8, ptr %builder.new.salloc.sroa.12.4, i64 %builder.new.salloc.sroa.0.0
  store i8 %s.byte, ptr %b.byte.gep176, align 1
  %b.next.len177 = add i64 %builder.new.salloc.sroa.0.0, 1
  %b.nul178 = getelementptr i8, ptr %builder.new.salloc.sroa.12.4, i64 %b.next.len177
  store i8 0, ptr %b.nul178, align 1
  br label %choice.exit82

b.new.buf.len164:                                 ; preds = %b.grow155
  %arena.cur167 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf168 = call ptr @dva_arena_alloc(ptr %arena.cur167, i64 %sum162)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf168, ptr align 1 %builder.new.salloc.sroa.12.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow.nul169 = getelementptr i8, ptr %b.new.buf168, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow.nul169, align 1
  br label %b.push_done157

str_overflow_abort165:                            ; preds = %b.grow155
  call void @dva_abort_str_overflow_msg()
  unreachable

b.byte_ok187:                                     ; preds = %idx_ok
  %b.needs.grow197 = icmp eq i64 %builder.new.salloc.sroa.0.0, %builder.new.salloc.sroa.24.0
  br i1 %b.needs.grow197, label %b.grow198, label %b.push_done200

b.grow198:                                        ; preds = %b.byte_ok187
  %b.cap2201 = mul i64 %builder.new.salloc.sroa.24.0, 2
  %b.cap.small202 = icmp slt i64 %b.cap2201, 16
  %b.new.cap203 = select i1 %b.cap.small202, i64 16, i64 %b.cap2201
  %b.new.buf.len204 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap203, i64 1)
  %sum205 = extractvalue { i64, i1 } %b.new.buf.len204, 0
  %ovf206 = extractvalue { i64, i1 } %b.new.buf.len204, 1
  br i1 %ovf206, label %str_overflow_abort208, label %b.new.buf.len207

b.push_done200:                                   ; preds = %b.byte_ok187, %b.new.buf.len207
  %builder.new.salloc.sroa.24.5 = phi i64 [ %b.new.cap203, %b.new.buf.len207 ], [ %builder.new.salloc.sroa.24.0, %b.byte_ok187 ]
  %builder.new.salloc.sroa.12.5 = phi ptr [ %b.new.buf211, %b.new.buf.len207 ], [ %builder.new.salloc.sroa.12.0, %b.byte_ok187 ]
  %b.byte.gep219 = getelementptr i8, ptr %builder.new.salloc.sroa.12.5, i64 %builder.new.salloc.sroa.0.0
  store i8 %s.byte, ptr %b.byte.gep219, align 1
  %b.next.len220 = add i64 %builder.new.salloc.sroa.0.0, 1
  %b.nul221 = getelementptr i8, ptr %builder.new.salloc.sroa.12.5, i64 %b.next.len220
  store i8 0, ptr %b.nul221, align 1
  %addtmp224 = add nuw nsw i64 %"var.i'.0", 1
  br label %choice.exit82

b.new.buf.len207:                                 ; preds = %b.grow198
  %arena.cur210 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf211 = call ptr @dva_arena_alloc(ptr %arena.cur210, i64 %sum205)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf211, ptr align 1 %builder.new.salloc.sroa.12.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow.nul212 = getelementptr i8, ptr %b.new.buf211, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow.nul212, align 1
  br label %b.push_done200

str_overflow_abort208:                            ; preds = %b.grow198
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"lsp::path_to_uri"(ptr %0) #3 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp sge i64 %str.len.query2, 7
  br i1 %cmptmp, label %and.912.then, label %choice.else

and.912.then:                                     ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %s.read.data6, ptr @str.16, i64 7)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.exit, label %choice.else

choice.else:                                      ; preds = %entry, %and.912.then
  %concat.rhs13 = load i64, ptr %0, align 8
  %concat.rhs14 = and i64 %concat.rhs13, 281474976710655
  %concat.rhs15 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %concat.rhs16 = load ptr, ptr %concat.rhs15, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 7, i64 %concat.rhs14)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum18 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum18)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.16, i64 7, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs16, i64 %concat.rhs14, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  store i64 %sum, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %and.912.then, %choice.else
  %choice.res = phi ptr [ %concat.str, %choice.else ], [ %0, %and.912.then ]
  %ret.pack.fca.0.load = load i64, ptr %choice.res, align 8
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.pack.fca.0.load, 0
  %ret.pack.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %ret.pack.fca.1.load = load ptr, ptr %ret.pack.fca.1.gep, align 8
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %ret.pack.fca.1.load, 1
  ret { i64, ptr } %ret.pack.fca.1.insert
}

define { i64, ptr } @"lsp::format_value_type"(ptr %0) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  switch i64 %tag.id, label %choice.next87 [
    i64 1, label %choice.exit
    i64 2, label %choice.case1
    i64 3, label %choice.case6
    i64 4, label %choice.case11
    i64 5, label %choice.case16
    i64 6, label %choice.case21
    i64 7, label %choice.case26
    i64 8, label %choice.case31
    i64 9, label %choice.case36
    i64 11, label %choice.case41
    i64 12, label %choice.case46
    i64 13, label %choice.case51
    i64 10, label %choice.case56
    i64 26, label %choice.case61
    i64 16, label %choice.case66
    i64 17, label %choice.case71
    i64 21, label %choice.case76
    i64 24, label %choice.case81
    i64 19, label %choice.case86
  ]

choice.exit:                                      ; preds = %entry, %choice.next87, %choice.case86, %choice.case81, %choice.case76, %choice.case71, %choice.case66, %choice.case61, %choice.case56, %choice.case51, %choice.case46, %choice.case41, %choice.case36, %choice.case31, %choice.case26, %choice.case21, %choice.case16, %choice.case11, %choice.case6, %choice.case1
  %choice.res = phi ptr [ @str.18.struct, %choice.case1 ], [ @str.19.struct, %choice.case6 ], [ @str.20.struct, %choice.case11 ], [ @str.21.struct, %choice.case16 ], [ @str.22.struct, %choice.case21 ], [ @str.23.struct, %choice.case26 ], [ @str.24.struct, %choice.case31 ], [ @str.25.struct, %choice.case36 ], [ @str.26.struct, %choice.case41 ], [ @str.27.struct, %choice.case46 ], [ @str.28.struct, %choice.case51 ], [ @str.29.struct, %choice.case56 ], [ @str.30.struct, %choice.case61 ], [ @str.9.struct, %choice.case66 ], [ @str.31.struct, %choice.case71 ], [ @str.32.struct, %choice.case76 ], [ @str.33.struct, %choice.case81 ], [ @str.34.struct, %choice.case86 ], [ @str.7.struct, %choice.next87 ], [ @str.17.struct, %entry ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

choice.case1:                                     ; preds = %entry
  br label %choice.exit

choice.case6:                                     ; preds = %entry
  br label %choice.exit

choice.case11:                                    ; preds = %entry
  br label %choice.exit

choice.case16:                                    ; preds = %entry
  br label %choice.exit

choice.case21:                                    ; preds = %entry
  br label %choice.exit

choice.case26:                                    ; preds = %entry
  br label %choice.exit

choice.case31:                                    ; preds = %entry
  br label %choice.exit

choice.case36:                                    ; preds = %entry
  br label %choice.exit

choice.case41:                                    ; preds = %entry
  br label %choice.exit

choice.case46:                                    ; preds = %entry
  br label %choice.exit

choice.case51:                                    ; preds = %entry
  br label %choice.exit

choice.case56:                                    ; preds = %entry
  br label %choice.exit

choice.case61:                                    ; preds = %entry
  br label %choice.exit

choice.case66:                                    ; preds = %entry
  br label %choice.exit

choice.case71:                                    ; preds = %entry
  br label %choice.exit

choice.case76:                                    ; preds = %entry
  br label %choice.exit

choice.case81:                                    ; preds = %entry
  br label %choice.exit

choice.case86:                                    ; preds = %entry
  br label %choice.exit

choice.next87:                                    ; preds = %entry
  br label %choice.exit
}

define { i64, ptr } @"lsp::format_type_info"(ptr %0) #3 {
entry:
  %concat.str1840 = alloca { i64, ptr }, align 8
  %cat.ibuf = alloca [24 x i8], align 1
  %builder.freeze1777 = alloca { i64, ptr }, align 8
  %concat.str1185 = alloca { i64, ptr }, align 8
  %ret.ub.salloc1144.sroa.0 = alloca i64, align 8
  %ret.ub.salloc1144.sroa.2 = alloca ptr, align 8
  %concat.str1096 = alloca { i64, ptr }, align 8
  %ret.ub.salloc1033.sroa.0 = alloca i64, align 8
  %ret.ub.salloc1033.sroa.2 = alloca ptr, align 8
  %builder.freeze988 = alloca { i64, ptr }, align 8
  %concat.str552 = alloca { i64, ptr }, align 8
  %ret.ub.salloc493 = alloca { i64, ptr }, align 8
  %ret.ub.salloc453 = alloca { i64, ptr }, align 8
  %concat.str401 = alloca { i64, ptr }, align 8
  %builder.freeze = alloca { i64, ptr }, align 8
  %concat.str = alloca { i64, ptr }, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %tag.id = load i64, ptr %0, align 8
  switch i64 %tag.id, label %choice.exit [
    i64 0, label %choice.case
    i64 1, label %choice.case2
    i64 2, label %choice.case11
    i64 3, label %choice.case361
    i64 4, label %choice.case404
    i64 5, label %choice.case555
    i64 6, label %choice.case994
    i64 7, label %choice.case1099
    i64 8, label %choice.case1188
    i64 10, label %choice.case1783
  ]

choice.exit:                                      ; preds = %entry, %a.rd.ok, %a.after, %b.freeze.done, %concat.tot.len1828, %b.freeze.done1756, %choice.exit1138, %choice.exit1048, %b.freeze.done967, %choice.exit461, %choice.case361, %choice.case2, %choice.case
  %choice.res1843 = phi ptr [ %ret.ub.salloc, %choice.case ], [ %payload.ptr8, %choice.case2 ], [ %concat.str401, %choice.case361 ], [ %concat.str552, %choice.exit461 ], [ %builder.freeze988, %b.freeze.done967 ], [ %concat.str1096, %choice.exit1048 ], [ %concat.str1185, %choice.exit1138 ], [ %builder.freeze1777, %b.freeze.done1756 ], [ %concat.str1840, %concat.tot.len1828 ], [ %builder.freeze, %b.freeze.done ], [ %concat.str, %a.rd.ok ], [ @str.36.struct, %a.after ], [ @str.7.struct, %entry ]
  %ret.pack.fca.0.load = load i64, ptr %choice.res1843, align 8
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.pack.fca.0.load, 0
  %ret.pack.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %choice.res1843, i32 0, i32 1
  %ret.pack.fca.1.load = load ptr, ptr %ret.pack.fca.1.gep, align 8
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %ret.pack.fca.1.load, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %call.res = call { i64, ptr } @"lsp::format_value_type"(ptr %payload.ptr)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  store i64 %call.res.fca.0.extract, ptr %ret.ub.salloc, align 8
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %call.res.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  store ptr %call.res.fca.1.extract, ptr %call.res.fca.1.gep, align 8
  br label %choice.exit

choice.case2:                                     ; preds = %entry
  %pay.gep7 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr8 = load ptr, ptr %pay.gep7, align 8
  br label %choice.exit

choice.case11:                                    ; preds = %entry
  %pay.gep16 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr17 = load ptr, ptr %pay.gep16, align 8
  %fld.load = load ptr, ptr %payload.ptr17, align 8
  %fld.gep21 = getelementptr inbounds { ptr, i1, i1, ptr, i64, i1 }, ptr %payload.ptr17, i32 0, i32 1
  %fld.load22 = load i1, ptr %fld.gep21, align 1
  br i1 %fld.load22, label %choice.then, label %choice.else

choice.then:                                      ; preds = %choice.case11
  %a.null = icmp eq ptr %fld.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else:                                      ; preds = %choice.case11
  %arena.cur88 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %arena.cur94 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 65)
  store i8 0, ptr %b.buf, align 1
  store i64 0, ptr %builder.new, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 64, ptr %b.cap.gep, align 8
  %b.app.cur.len96 = load i64, ptr %builder.new, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len96, i64 1)
  %sum97 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf98 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf98, label %str_overflow_abort100, label %b.app.new.len99

a.create:                                         ; preds = %choice.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create26 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 128)
  store i64 0, ptr %a.create26, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create26, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create26, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %var.fs.0 = phi ptr [ %a.create26, %a.create ], [ %fld.load, %choice.then ]
  %a.len.query28 = load i64, ptr %var.fs.0, align 8
  %cmptmp = icmp sgt i64 %a.len.query28, 0
  br i1 %cmptmp, label %a.rd.ok, label %choice.exit

a.rd.ok:                                          ; preds = %a.after
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.fs.0, i32 0, i32 1
  %a.rd.data46 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem = load i64, ptr %a.rd.data46, align 8
  %pay.ptr = inttoptr i64 %a.rd.elem to ptr
  %fld.gep71 = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %pay.ptr, i32 0, i32 2
  %fld.load72 = load ptr, ptr %fld.gep71, align 8
  %call.res73 = call { i64, ptr } @"lsp::format_type_info"(ptr %fld.load72)
  %call.res73.fca.0.extract = extractvalue { i64, ptr } %call.res73, 0
  %call.res73.fca.1.extract = extractvalue { i64, ptr } %call.res73, 1
  %concat.lhs76 = and i64 %call.res73.fca.0.extract, 281474976710655
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs76, i64 2)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum82 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur87 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 %sum82)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %call.res73.fca.1.extract, i64 %concat.lhs76, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 @str.35, i64 2, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  store i64 %sum, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit

b.app.new.len99:                                  ; preds = %choice.else
  %b.need.grow = icmp slt i64 64, %sum97
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort100:                            ; preds = %choice.else
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len99
  %b.cap.need = icmp slt i64 128, %sum97
  %b.new.cap = select i1 %b.cap.need, i64 %sum97, i64 128
  %b.cur.data2104 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum105 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %arena.cur110 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 %sum105)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2104, i64 %b.app.cur.len96, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.app.cur.len96
  store i8 0, ptr %b.grow2.nul, align 1
  store ptr %b.new.buf2, ptr %b.data.gep, align 8
  store i64 %b.new.cap, ptr %b.cap.gep, align 8
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.app.new.len99, %b.grow2
  %b.app.data111 = load ptr, ptr %b.data.gep, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data111, i64 %b.app.cur.len96
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 @str.37, i64 1, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data111, i64 %sum97
  store i8 0, ptr %b.app.nul, align 1
  store i64 %sum97, ptr %builder.new, align 8
  %a.null115 = icmp eq ptr %fld.load, null
  br i1 %a.null115, label %a.create116, label %a.after117

a.create116:                                      ; preds = %b.grow_done
  %arena.cur118 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create119 = call ptr @dva_arena_alloc(ptr %arena.cur118, i64 24)
  %arena.cur120 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 128)
  store i64 0, ptr %a.create119, align 8
  %a.data.gep123 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create119, i32 0, i32 1
  store ptr %a.buf121, ptr %a.data.gep123, align 8
  %a.cap.gep124 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create119, i32 0, i32 2
  store i64 16, ptr %a.cap.gep124, align 8
  br label %a.after117

a.after117:                                       ; preds = %a.create116, %b.grow_done
  %var.fs.2 = phi ptr [ %a.create119, %a.create116 ], [ %fld.load, %b.grow_done ]
  %arr.cycle.len126 = load i64, ptr %var.fs.2, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.fs.2, i32 0, i32 1
  %arr.cycle.data127 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.914

loop.header.914:                                  ; preds = %b.grow_done284, %a.after117
  %loop.idx.914.0 = phi i64 [ 0, %a.after117 ], [ %loop.next, %b.grow_done284 ]
  %loop.cond = icmp slt i64 %loop.idx.914.0, %arr.cycle.len126
  br i1 %loop.cond, label %loop.body.914, label %loop.exit.914

loop.body.914:                                    ; preds = %loop.header.914
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data127, i64 %loop.idx.914.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %cmptmp130 = icmp sgt i64 %loop.idx.914.0, 0
  br i1 %cmptmp130, label %choice.then131, label %choice.exit132

loop.exit.914:                                    ; preds = %loop.header.914
  %b.app.cur.len315 = load i64, ptr %builder.new, align 8
  %b.app.new.len316 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len315, i64 1)
  %sum317 = extractvalue { i64, i1 } %b.app.new.len316, 0
  %ovf318 = extractvalue { i64, i1 } %b.app.new.len316, 1
  br i1 %ovf318, label %str_overflow_abort320, label %b.app.new.len319

choice.then131:                                   ; preds = %loop.body.914
  %b.app.cur.len138 = load i64, ptr %builder.new, align 8
  %b.app.new.len139 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len138, i64 2)
  %sum140 = extractvalue { i64, i1 } %b.app.new.len139, 0
  %ovf141 = extractvalue { i64, i1 } %b.app.new.len139, 1
  br i1 %ovf141, label %str_overflow_abort143, label %b.app.new.len142

choice.exit132:                                   ; preds = %b.grow_done150, %loop.body.914
  %fld.load178 = load ptr, ptr %slot.i2p, align 8
  %eq.lhs.len179 = load i64, ptr %fld.load178, align 8
  %eq.lhs.len180 = and i64 %eq.lhs.len179, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len180, 0
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

b.app.new.len142:                                 ; preds = %choice.then131
  %b.cap146 = load i64, ptr %b.cap.gep, align 8
  %b.need.grow147 = icmp slt i64 %b.cap146, %sum140
  br i1 %b.need.grow147, label %b.grow2148, label %b.grow_done150

str_overflow_abort143:                            ; preds = %choice.then131
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2148:                                       ; preds = %b.app.new.len142
  %b.cap2151 = mul i64 %b.cap146, 2
  %b.cap.small152 = icmp slt i64 %b.cap2151, 16
  %b.cap.grow153 = select i1 %b.cap.small152, i64 16, i64 %b.cap2151
  %b.cap.need154 = icmp slt i64 %b.cap.grow153, %sum140
  %b.new.cap155 = select i1 %b.cap.need154, i64 %sum140, i64 %b.cap.grow153
  %b.cur.data2159 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len2160 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap155, i64 1)
  %sum161 = extractvalue { i64, i1 } %b.new.buf.len2160, 0
  %ovf162 = extractvalue { i64, i1 } %b.new.buf.len2160, 1
  br i1 %ovf162, label %str_overflow_abort164, label %b.new.buf.len2163

b.grow_done150:                                   ; preds = %b.app.new.len142, %b.new.buf.len2163
  %b.app.data172 = load ptr, ptr %b.data.gep, align 8
  %b.app.dst173 = getelementptr i8, ptr %b.app.data172, i64 %b.app.cur.len138
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst173, ptr align 1 @str.38, i64 2, i1 false)
  %b.app.nul174 = getelementptr i8, ptr %b.app.data172, i64 %sum140
  store i8 0, ptr %b.app.nul174, align 1
  store i64 %sum140, ptr %builder.new, align 8
  br label %choice.exit132

b.new.buf.len2163:                                ; preds = %b.grow2148
  %arena.cur166 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2167 = call ptr @dva_arena_alloc(ptr %arena.cur166, i64 %sum161)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2167, ptr align 1 %b.cur.data2159, i64 %b.app.cur.len138, i1 false)
  %b.grow2.nul168 = getelementptr i8, ptr %b.new.buf2167, i64 %b.app.cur.len138
  store i8 0, ptr %b.grow2.nul168, align 1
  store ptr %b.new.buf2167, ptr %b.data.gep, align 8
  store i64 %b.new.cap155, ptr %b.cap.gep, align 8
  br label %b.grow_done150

str_overflow_abort164:                            ; preds = %b.grow2148
  call void @dva_abort_str_overflow_msg()
  unreachable

str.eq.then:                                      ; preds = %choice.exit132
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load178, i32 0, i32 1
  %eq.lhs.data182 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data182, ptr @str.0, i64 0)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %choice.exit132, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %choice.exit132 ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then183, label %choice.exit184

choice.then183:                                   ; preds = %str.eq.merge
  %fld.load188 = load ptr, ptr %slot.i2p, align 8
  %b.str.len189 = load i64, ptr %fld.load188, align 8
  %b.str.len190 = and i64 %b.str.len189, 281474976710655
  %b.add.len193 = add nuw nsw i64 %b.str.len190, 2
  %b.rec.cur.len194 = load i64, ptr %builder.new, align 8
  %b.rec.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len194, i64 %b.add.len193)
  %sum195 = extractvalue { i64, i1 } %b.rec.new.len, 0
  %ovf196 = extractvalue { i64, i1 } %b.rec.new.len, 1
  br i1 %ovf196, label %str_overflow_abort198, label %b.rec.new.len197

choice.exit184:                                   ; preds = %b.grow_done205, %str.eq.merge
  %fld.gep233 = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %slot.i2p, i32 0, i32 2
  %fld.load234 = load ptr, ptr %fld.gep233, align 8
  %call.res235 = call { i64, ptr } @"lsp::format_type_info"(ptr %fld.load234)
  %arena.cur236 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur236, i64 16)
  store { i64, ptr } %call.res235, ptr %ret.ub.alloc, align 8
  %eq.lhs.len240 = load i64, ptr %ret.ub.alloc, align 8
  %eq.lhs.len241 = and i64 %eq.lhs.len240, 281474976710655
  %eq.len244 = icmp eq i64 %eq.lhs.len241, 1
  br i1 %eq.len244, label %str.eq.then245, label %str.eq.merge247

b.rec.new.len197:                                 ; preds = %choice.then183
  %b.cap201 = load i64, ptr %b.cap.gep, align 8
  %b.need.grow202 = icmp slt i64 %b.cap201, %sum195
  br i1 %b.need.grow202, label %b.grow2203, label %b.grow_done205

str_overflow_abort198:                            ; preds = %choice.then183
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2203:                                       ; preds = %b.rec.new.len197
  %b.cap2206 = mul i64 %b.cap201, 2
  %b.cap.small207 = icmp slt i64 %b.cap2206, 16
  %b.cap.grow208 = select i1 %b.cap.small207, i64 16, i64 %b.cap2206
  %b.cap.need209 = icmp slt i64 %b.cap.grow208, %sum195
  %b.new.cap210 = select i1 %b.cap.need209, i64 %sum195, i64 %b.cap.grow208
  %b.cur.data2214 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len2215 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap210, i64 1)
  %sum216 = extractvalue { i64, i1 } %b.new.buf.len2215, 0
  %ovf217 = extractvalue { i64, i1 } %b.new.buf.len2215, 1
  br i1 %ovf217, label %str_overflow_abort219, label %b.new.buf.len2218

b.grow_done205:                                   ; preds = %b.rec.new.len197, %b.new.buf.len2218
  %b.rec.data226 = load ptr, ptr %b.data.gep, align 8
  %b.rec.dst = getelementptr i8, ptr %b.rec.data226, i64 %b.rec.cur.len194
  %b.str.data = getelementptr inbounds { i64, ptr }, ptr %fld.load188, i32 0, i32 1
  %b.str.data227 = load ptr, ptr %b.str.data, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst, ptr align 1 %b.str.data227, i64 %b.str.len190, i1 false)
  %b.rec.off = add i64 %b.rec.cur.len194, %b.str.len190
  %b.rec.dst228 = getelementptr i8, ptr %b.rec.data226, i64 %b.rec.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst228, ptr align 1 @str.6, i64 2, i1 false)
  %b.rec.nul = getelementptr i8, ptr %b.rec.data226, i64 %sum195
  store i8 0, ptr %b.rec.nul, align 1
  store i64 %sum195, ptr %builder.new, align 8
  br label %choice.exit184

b.new.buf.len2218:                                ; preds = %b.grow2203
  %arena.cur221 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2222 = call ptr @dva_arena_alloc(ptr %arena.cur221, i64 %sum216)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2222, ptr align 1 %b.cur.data2214, i64 %b.rec.cur.len194, i1 false)
  %b.grow2.nul223 = getelementptr i8, ptr %b.new.buf2222, i64 %b.rec.cur.len194
  store i8 0, ptr %b.grow2.nul223, align 1
  store ptr %b.new.buf2222, ptr %b.data.gep, align 8
  store i64 %b.new.cap210, ptr %b.cap.gep, align 8
  br label %b.grow_done205

str_overflow_abort219:                            ; preds = %b.grow2203
  call void @dva_abort_str_overflow_msg()
  unreachable

str.eq.then245:                                   ; preds = %choice.exit184
  %eq.lhs.data248 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data249 = load ptr, ptr %eq.lhs.data248, align 8
  %eq.memcmp251 = call i32 @memcmp(ptr %eq.lhs.data249, ptr @str.7, i64 1)
  %eq.cmp.zero252 = icmp eq i32 %eq.memcmp251, 0
  br label %str.eq.merge247

str.eq.merge247:                                  ; preds = %choice.exit184, %str.eq.then245
  %str.eq.result253 = phi i1 [ %eq.cmp.zero252, %str.eq.then245 ], [ false, %choice.exit184 ]
  %str.neq254 = xor i1 %str.eq.result253, true
  br i1 %str.neq254, label %choice.exit257, label %choice.else256

choice.else256:                                   ; preds = %str.eq.merge247
  %fld.gep260 = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %slot.i2p, i32 0, i32 1
  %fld.load261 = load ptr, ptr %fld.gep260, align 8
  %call.res262 = call { i64, ptr } @"lsp::format_value_type"(ptr %fld.load261)
  %arena.cur263 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc264 = call ptr @dva_arena_alloc(ptr %arena.cur263, i64 16)
  store { i64, ptr } %call.res262, ptr %ret.ub.alloc264, align 8
  br label %choice.exit257

choice.exit257:                                   ; preds = %str.eq.merge247, %choice.else256
  %choice.res265 = phi ptr [ %ret.ub.alloc264, %choice.else256 ], [ %ret.ub.alloc, %str.eq.merge247 ]
  %app.str.len267 = load i64, ptr %choice.res265, align 8
  %app.str.len268 = and i64 %app.str.len267, 281474976710655
  %app.str.data269 = getelementptr inbounds { i64, ptr }, ptr %choice.res265, i32 0, i32 1
  %app.str.data270 = load ptr, ptr %app.str.data269, align 8
  %b.app.cur.len272 = load i64, ptr %builder.new, align 8
  %b.app.new.len273 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len272, i64 %app.str.len268)
  %sum274 = extractvalue { i64, i1 } %b.app.new.len273, 0
  %ovf275 = extractvalue { i64, i1 } %b.app.new.len273, 1
  br i1 %ovf275, label %str_overflow_abort277, label %b.app.new.len276

b.app.new.len276:                                 ; preds = %choice.exit257
  %b.cap280 = load i64, ptr %b.cap.gep, align 8
  %b.need.grow281 = icmp slt i64 %b.cap280, %sum274
  br i1 %b.need.grow281, label %b.grow2282, label %b.grow_done284

str_overflow_abort277:                            ; preds = %choice.exit257
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2282:                                       ; preds = %b.app.new.len276
  %b.cap2285 = mul i64 %b.cap280, 2
  %b.cap.small286 = icmp slt i64 %b.cap2285, 16
  %b.cap.grow287 = select i1 %b.cap.small286, i64 16, i64 %b.cap2285
  %b.cap.need288 = icmp slt i64 %b.cap.grow287, %sum274
  %b.new.cap289 = select i1 %b.cap.need288, i64 %sum274, i64 %b.cap.grow287
  %b.cur.data2293 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len2294 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap289, i64 1)
  %sum295 = extractvalue { i64, i1 } %b.new.buf.len2294, 0
  %ovf296 = extractvalue { i64, i1 } %b.new.buf.len2294, 1
  br i1 %ovf296, label %str_overflow_abort298, label %b.new.buf.len2297

b.grow_done284:                                   ; preds = %b.app.new.len276, %b.new.buf.len2297
  %b.app.data306 = load ptr, ptr %b.data.gep, align 8
  %b.app.dst307 = getelementptr i8, ptr %b.app.data306, i64 %b.app.cur.len272
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst307, ptr align 1 %app.str.data270, i64 %app.str.len268, i1 false)
  %b.app.nul308 = getelementptr i8, ptr %b.app.data306, i64 %sum274
  store i8 0, ptr %b.app.nul308, align 1
  store i64 %sum274, ptr %builder.new, align 8
  %loop.next = add i64 %loop.idx.914.0, 1
  br label %loop.header.914

b.new.buf.len2297:                                ; preds = %b.grow2282
  %arena.cur300 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2301 = call ptr @dva_arena_alloc(ptr %arena.cur300, i64 %sum295)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2301, ptr align 1 %b.cur.data2293, i64 %b.app.cur.len272, i1 false)
  %b.grow2.nul302 = getelementptr i8, ptr %b.new.buf2301, i64 %b.app.cur.len272
  store i8 0, ptr %b.grow2.nul302, align 1
  store ptr %b.new.buf2301, ptr %b.data.gep, align 8
  store i64 %b.new.cap289, ptr %b.cap.gep, align 8
  br label %b.grow_done284

str_overflow_abort298:                            ; preds = %b.grow2282
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len319:                                 ; preds = %loop.exit.914
  %b.cap323 = load i64, ptr %b.cap.gep, align 8
  %b.need.grow324 = icmp slt i64 %b.cap323, %sum317
  br i1 %b.need.grow324, label %b.grow2325, label %b.grow_done327

str_overflow_abort320:                            ; preds = %loop.exit.914
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2325:                                       ; preds = %b.app.new.len319
  %b.cap2328 = mul i64 %b.cap323, 2
  %b.cap.small329 = icmp slt i64 %b.cap2328, 16
  %b.cap.grow330 = select i1 %b.cap.small329, i64 16, i64 %b.cap2328
  %b.cap.need331 = icmp slt i64 %b.cap.grow330, %sum317
  %b.new.cap332 = select i1 %b.cap.need331, i64 %sum317, i64 %b.cap.grow330
  %b.cur.data2336 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len2337 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap332, i64 1)
  %sum338 = extractvalue { i64, i1 } %b.new.buf.len2337, 0
  %ovf339 = extractvalue { i64, i1 } %b.new.buf.len2337, 1
  br i1 %ovf339, label %str_overflow_abort341, label %b.new.buf.len2340

b.grow_done327:                                   ; preds = %b.app.new.len319, %b.new.buf.len2340
  %b.app.data349 = load ptr, ptr %b.data.gep, align 8
  %b.app.dst350 = getelementptr i8, ptr %b.app.data349, i64 %b.app.cur.len315
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst350, ptr align 1 @str.12, i64 1, i1 false)
  %b.app.nul351 = getelementptr i8, ptr %b.app.data349, i64 %sum317
  store i8 0, ptr %b.app.nul351, align 1
  store i64 %sum317, ptr %builder.new, align 8
  %b.freeze.data355 = load ptr, ptr %b.data.gep, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.new.buf.len2340:                                ; preds = %b.grow2325
  %arena.cur343 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2344 = call ptr @dva_arena_alloc(ptr %arena.cur343, i64 %sum338)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2344, ptr align 1 %b.cur.data2336, i64 %b.app.cur.len315, i1 false)
  %b.grow2.nul345 = getelementptr i8, ptr %b.new.buf2344, i64 %b.app.cur.len315
  store i8 0, ptr %b.grow2.nul345, align 1
  store ptr %b.new.buf2344, ptr %b.data.gep, align 8
  store i64 %b.new.cap332, ptr %b.cap.gep, align 8
  br label %b.grow_done327

str_overflow_abort341:                            ; preds = %b.grow2325
  call void @dva_abort_str_overflow_msg()
  unreachable

b.freeze.check:                                   ; preds = %b.grow_done327
  %b.freeze.last.idx = sub nuw nsw i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data355, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data355, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data355, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %sum317, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data355, i64 %sum317, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %sum317
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.grow_done327
  %b.freeze.data357 = phi ptr [ %b.freeze.data355, %b.grow_done327 ], [ %b.freeze.data355, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  store i64 %sum317, ptr %builder.freeze, align 8
  %str.build.data.gep359 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data357, ptr %str.build.data.gep359, align 8
  store i64 0, ptr %builder.new, align 8
  store ptr null, ptr %b.data.gep, align 8
  store i64 0, ptr %b.cap.gep, align 8
  br label %choice.exit

choice.case361:                                   ; preds = %entry
  %pay.gep366 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr367 = load ptr, ptr %pay.gep366, align 8
  %fld.gep370 = getelementptr inbounds { ptr, ptr, i64 }, ptr %payload.ptr367, i32 0, i32 1
  %fld.load371 = load ptr, ptr %fld.gep370, align 8
  %call.res372 = call { i64, ptr } @"lsp::format_value_type"(ptr %fld.load371)
  %call.res372.fca.0.extract = extractvalue { i64, ptr } %call.res372, 0
  %call.res372.fca.1.extract = extractvalue { i64, ptr } %call.res372, 1
  %cat.seg375 = and i64 %call.res372.fca.0.extract, 281474976710655
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 15, i64 %cat.seg375)
  %sum379 = extractvalue { i64, i1 } %cat.sum.len, 0
  %cat.sum.len384 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum379, i64 1)
  %sum385 = extractvalue { i64, i1 } %cat.sum.len384, 0
  %concat.tot.len390 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum385, i64 1)
  %sum391 = extractvalue { i64, i1 } %concat.tot.len390, 0
  %arena.cur396 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf397 = call ptr @dva_arena_alloc(ptr %arena.cur396, i64 %sum391)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf397, ptr align 1 @str.39, i64 15, i1 false)
  %cat.dst398 = getelementptr i8, ptr %concat.buf397, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst398, ptr align 1 %call.res372.fca.1.extract, i64 %cat.seg375, i1 false)
  %cat.off = add nuw nsw i64 15, %cat.seg375
  %cat.dst399 = getelementptr i8, ptr %concat.buf397, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst399, ptr align 1 @str.12, i64 1, i1 false)
  %concat.nul400 = getelementptr i8, ptr %concat.buf397, i64 %sum385
  store i8 0, ptr %concat.nul400, align 1
  store i64 %sum385, ptr %concat.str401, align 8
  %str.build.data.gep403 = getelementptr inbounds { i64, ptr }, ptr %concat.str401, i32 0, i32 1
  store ptr %concat.buf397, ptr %str.build.data.gep403, align 8
  br label %choice.exit

choice.case404:                                   ; preds = %entry
  %pay.gep409 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr410 = load ptr, ptr %pay.gep409, align 8
  %fld.gep415 = getelementptr inbounds { { i1, ptr, ptr }, { i1, ptr, ptr } }, ptr %payload.ptr410, i32 0, i32 1
  %fld.load418 = load i1, ptr %payload.ptr410, align 1
  br i1 %fld.load418, label %choice.then419, label %choice.exit421

choice.then419:                                   ; preds = %choice.case404
  %fld.gep423 = getelementptr inbounds { i1, ptr, ptr }, ptr %payload.ptr410, i32 0, i32 2
  %fld.load424 = load ptr, ptr %fld.gep423, align 8
  %call.res425 = call { i64, ptr } @"lsp::format_type_info"(ptr %fld.load424)
  %arena.cur426 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc427 = call ptr @dva_arena_alloc(ptr %arena.cur426, i64 16)
  store { i64, ptr } %call.res425, ptr %ret.ub.alloc427, align 8
  %eq.lhs.len430 = load i64, ptr %ret.ub.alloc427, align 8
  %eq.lhs.len431 = and i64 %eq.lhs.len430, 281474976710655
  %eq.len434 = icmp eq i64 %eq.lhs.len431, 1
  br i1 %eq.len434, label %str.eq.then435, label %str.eq.merge437

choice.exit421:                                   ; preds = %choice.else446, %str.eq.merge437, %choice.case404
  %choice.res455 = phi ptr [ @str.0.struct, %choice.case404 ], [ %ret.ub.salloc453, %choice.else446 ], [ %ret.ub.alloc427, %str.eq.merge437 ]
  %fld.load458 = load i1, ptr %fld.gep415, align 1
  br i1 %fld.load458, label %choice.then459, label %choice.exit461

str.eq.then435:                                   ; preds = %choice.then419
  %eq.lhs.data438 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc427, i32 0, i32 1
  %eq.lhs.data439 = load ptr, ptr %eq.lhs.data438, align 8
  %eq.memcmp441 = call i32 @memcmp(ptr %eq.lhs.data439, ptr @str.7, i64 1)
  %eq.cmp.zero442 = icmp eq i32 %eq.memcmp441, 0
  br label %str.eq.merge437

str.eq.merge437:                                  ; preds = %choice.then419, %str.eq.then435
  %str.eq.result443 = phi i1 [ %eq.cmp.zero442, %str.eq.then435 ], [ false, %choice.then419 ]
  %str.neq444 = xor i1 %str.eq.result443, true
  br i1 %str.neq444, label %choice.exit421, label %choice.else446

choice.else446:                                   ; preds = %str.eq.merge437
  %fld.gep450 = getelementptr inbounds { i1, ptr, ptr }, ptr %payload.ptr410, i32 0, i32 1
  %fld.load451 = load ptr, ptr %fld.gep450, align 8
  %call.res452 = call { i64, ptr } @"lsp::format_value_type"(ptr %fld.load451)
  %call.res452.fca.0.extract = extractvalue { i64, ptr } %call.res452, 0
  store i64 %call.res452.fca.0.extract, ptr %ret.ub.salloc453, align 8
  %call.res452.fca.1.extract = extractvalue { i64, ptr } %call.res452, 1
  %call.res452.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc453, i32 0, i32 1
  store ptr %call.res452.fca.1.extract, ptr %call.res452.fca.1.gep, align 8
  br label %choice.exit421

choice.then459:                                   ; preds = %choice.exit421
  %fld.gep463 = getelementptr inbounds { i1, ptr, ptr }, ptr %fld.gep415, i32 0, i32 2
  %fld.load464 = load ptr, ptr %fld.gep463, align 8
  %call.res465 = call { i64, ptr } @"lsp::format_type_info"(ptr %fld.load464)
  %arena.cur466 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc467 = call ptr @dva_arena_alloc(ptr %arena.cur466, i64 16)
  store { i64, ptr } %call.res465, ptr %ret.ub.alloc467, align 8
  %eq.lhs.len470 = load i64, ptr %ret.ub.alloc467, align 8
  %eq.lhs.len471 = and i64 %eq.lhs.len470, 281474976710655
  %eq.len474 = icmp eq i64 %eq.lhs.len471, 1
  br i1 %eq.len474, label %str.eq.then475, label %str.eq.merge477

choice.exit461:                                   ; preds = %choice.else486, %str.eq.merge477, %choice.exit421
  %choice.res495 = phi ptr [ @str.0.struct, %choice.exit421 ], [ %ret.ub.salloc493, %choice.else486 ], [ %ret.ub.alloc467, %str.eq.merge477 ]
  %cat.seg499 = load i64, ptr %choice.res455, align 8
  %cat.seg500 = and i64 %cat.seg499, 281474976710655
  %cat.seg501 = getelementptr inbounds { i64, ptr }, ptr %choice.res455, i32 0, i32 1
  %cat.seg502 = load ptr, ptr %cat.seg501, align 8
  %cat.seg506 = load i64, ptr %choice.res495, align 8
  %cat.seg507 = and i64 %cat.seg506, 281474976710655
  %cat.seg508 = getelementptr inbounds { i64, ptr }, ptr %choice.res495, i32 0, i32 1
  %cat.seg509 = load ptr, ptr %cat.seg508, align 8
  %cat.sum.len511 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 2, i64 %cat.seg500)
  %sum512 = extractvalue { i64, i1 } %cat.sum.len511, 0
  %cat.sum.len517 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum512, i64 3)
  %sum518 = extractvalue { i64, i1 } %cat.sum.len517, 0
  %cat.sum.len523 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum518, i64 %cat.seg507)
  %sum524 = extractvalue { i64, i1 } %cat.sum.len523, 0
  %cat.sum.len529 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum524, i64 2)
  %sum530 = extractvalue { i64, i1 } %cat.sum.len529, 0
  %concat.tot.len535 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum530, i64 1)
  %sum536 = extractvalue { i64, i1 } %concat.tot.len535, 0
  %arena.cur541 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf542 = call ptr @dva_arena_alloc(ptr %arena.cur541, i64 %sum536)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf542, ptr align 1 @str.40, i64 2, i1 false)
  %cat.dst544 = getelementptr i8, ptr %concat.buf542, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst544, ptr align 1 %cat.seg502, i64 %cat.seg500, i1 false)
  %cat.off545 = add nuw nsw i64 2, %cat.seg500
  %cat.dst546 = getelementptr i8, ptr %concat.buf542, i64 %cat.off545
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst546, ptr align 1 @str.41, i64 3, i1 false)
  %cat.off547 = add nuw nsw i64 %cat.off545, 3
  %cat.dst548 = getelementptr i8, ptr %concat.buf542, i64 %cat.off547
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst548, ptr align 1 %cat.seg509, i64 %cat.seg507, i1 false)
  %cat.off549 = add nuw nsw i64 %cat.off547, %cat.seg507
  %cat.dst550 = getelementptr i8, ptr %concat.buf542, i64 %cat.off549
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst550, ptr align 1 @str.42, i64 2, i1 false)
  %concat.nul551 = getelementptr i8, ptr %concat.buf542, i64 %sum530
  store i8 0, ptr %concat.nul551, align 1
  store i64 %sum530, ptr %concat.str552, align 8
  %str.build.data.gep554 = getelementptr inbounds { i64, ptr }, ptr %concat.str552, i32 0, i32 1
  store ptr %concat.buf542, ptr %str.build.data.gep554, align 8
  br label %choice.exit

str.eq.then475:                                   ; preds = %choice.then459
  %eq.lhs.data478 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc467, i32 0, i32 1
  %eq.lhs.data479 = load ptr, ptr %eq.lhs.data478, align 8
  %eq.memcmp481 = call i32 @memcmp(ptr %eq.lhs.data479, ptr @str.7, i64 1)
  %eq.cmp.zero482 = icmp eq i32 %eq.memcmp481, 0
  br label %str.eq.merge477

str.eq.merge477:                                  ; preds = %choice.then459, %str.eq.then475
  %str.eq.result483 = phi i1 [ %eq.cmp.zero482, %str.eq.then475 ], [ false, %choice.then459 ]
  %str.neq484 = xor i1 %str.eq.result483, true
  br i1 %str.neq484, label %choice.exit461, label %choice.else486

choice.else486:                                   ; preds = %str.eq.merge477
  %fld.gep490 = getelementptr inbounds { i1, ptr, ptr }, ptr %fld.gep415, i32 0, i32 1
  %fld.load491 = load ptr, ptr %fld.gep490, align 8
  %call.res492 = call { i64, ptr } @"lsp::format_value_type"(ptr %fld.load491)
  %call.res492.fca.0.extract = extractvalue { i64, ptr } %call.res492, 0
  store i64 %call.res492.fca.0.extract, ptr %ret.ub.salloc493, align 8
  %call.res492.fca.1.extract = extractvalue { i64, ptr } %call.res492, 1
  %call.res492.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc493, i32 0, i32 1
  store ptr %call.res492.fca.1.extract, ptr %call.res492.fca.1.gep, align 8
  br label %choice.exit461

choice.case555:                                   ; preds = %entry
  %pay.gep560 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr561 = load ptr, ptr %pay.gep560, align 8
  %arena.cur563 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new564 = call ptr @dva_arena_alloc(ptr %arena.cur563, i64 24)
  %b.data.gep565 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new564, i32 0, i32 1
  %b.cap.gep567 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new564, i32 0, i32 2
  %arena.cur574 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf575 = call ptr @dva_arena_alloc(ptr %arena.cur574, i64 65)
  store i8 0, ptr %b.buf575, align 1
  store i64 0, ptr %builder.new564, align 8
  store ptr %b.buf575, ptr %b.data.gep565, align 8
  store i64 64, ptr %b.cap.gep567, align 8
  %b.app.cur.len583 = load i64, ptr %builder.new564, align 8
  %b.app.new.len584 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len583, i64 2)
  %sum585 = extractvalue { i64, i1 } %b.app.new.len584, 0
  %ovf586 = extractvalue { i64, i1 } %b.app.new.len584, 1
  br i1 %ovf586, label %str_overflow_abort588, label %b.app.new.len587

b.app.new.len587:                                 ; preds = %choice.case555
  %b.need.grow592 = icmp slt i64 64, %sum585
  br i1 %b.need.grow592, label %b.grow2593, label %b.grow_done595

str_overflow_abort588:                            ; preds = %choice.case555
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2593:                                       ; preds = %b.app.new.len587
  %b.cap.need599 = icmp slt i64 128, %sum585
  %b.new.cap600 = select i1 %b.cap.need599, i64 %sum585, i64 128
  %b.cur.data2604 = load ptr, ptr %b.data.gep565, align 8
  %b.new.buf.len2605 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap600, i64 1)
  %sum606 = extractvalue { i64, i1 } %b.new.buf.len2605, 0
  %arena.cur611 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2612 = call ptr @dva_arena_alloc(ptr %arena.cur611, i64 %sum606)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2612, ptr align 1 %b.cur.data2604, i64 %b.app.cur.len583, i1 false)
  %b.grow2.nul613 = getelementptr i8, ptr %b.new.buf2612, i64 %b.app.cur.len583
  store i8 0, ptr %b.grow2.nul613, align 1
  store ptr %b.new.buf2612, ptr %b.data.gep565, align 8
  store i64 %b.new.cap600, ptr %b.cap.gep567, align 8
  br label %b.grow_done595

b.grow_done595:                                   ; preds = %b.app.new.len587, %b.grow2593
  %b.app.data617 = load ptr, ptr %b.data.gep565, align 8
  %b.app.dst618 = getelementptr i8, ptr %b.app.data617, i64 %b.app.cur.len583
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst618, ptr align 1 @str.40, i64 2, i1 false)
  %b.app.nul619 = getelementptr i8, ptr %b.app.data617, i64 %sum585
  store i8 0, ptr %b.app.nul619, align 1
  store i64 %sum585, ptr %builder.new564, align 8
  %a.null623 = icmp eq ptr %payload.ptr561, null
  br i1 %a.null623, label %a.create624, label %a.after625

a.create624:                                      ; preds = %b.grow_done595
  %arena.cur626 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create627 = call ptr @dva_arena_alloc(ptr %arena.cur626, i64 24)
  %arena.cur628 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf629 = call ptr @dva_arena_alloc(ptr %arena.cur628, i64 128)
  store i64 0, ptr %a.create627, align 8
  %a.data.gep631 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create627, i32 0, i32 1
  store ptr %a.buf629, ptr %a.data.gep631, align 8
  %a.cap.gep632 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create627, i32 0, i32 2
  store i64 16, ptr %a.cap.gep632, align 8
  br label %a.after625

a.after625:                                       ; preds = %a.create624, %b.grow_done595
  %var.slots.0 = phi ptr [ %a.create627, %a.create624 ], [ %payload.ptr561, %b.grow_done595 ]
  %arr.cycle.len635 = load i64, ptr %var.slots.0, align 8
  %arr.cycle.data636 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.slots.0, i32 0, i32 1
  %arr.cycle.data637 = load ptr, ptr %arr.cycle.data636, align 8
  br label %loop.header.915

loop.header.915:                                  ; preds = %choice.exit746, %a.after625
  %loop.idx.915.0 = phi i64 [ 0, %a.after625 ], [ %loop.next912, %choice.exit746 ]
  %loop.cond639 = icmp slt i64 %loop.idx.915.0, %arr.cycle.len635
  br i1 %loop.cond639, label %loop.body.915, label %loop.exit.915

loop.body.915:                                    ; preds = %loop.header.915
  %arr.elem.gep641 = getelementptr i64, ptr %arr.cycle.data637, i64 %loop.idx.915.0
  %arr.elem.raw642 = load i64, ptr %arr.elem.gep641, align 8
  %slot.i2p643 = inttoptr i64 %arr.elem.raw642 to ptr
  %cmptmp648 = icmp sgt i64 %loop.idx.915.0, 0
  br i1 %cmptmp648, label %choice.then649, label %choice.exit650

loop.exit.915:                                    ; preds = %loop.header.915
  %b.app.cur.len918 = load i64, ptr %builder.new564, align 8
  %b.app.new.len919 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len918, i64 2)
  %sum920 = extractvalue { i64, i1 } %b.app.new.len919, 0
  %ovf921 = extractvalue { i64, i1 } %b.app.new.len919, 1
  br i1 %ovf921, label %str_overflow_abort923, label %b.app.new.len922

choice.then649:                                   ; preds = %loop.body.915
  %b.app.cur.len656 = load i64, ptr %builder.new564, align 8
  %b.app.new.len657 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len656, i64 2)
  %sum658 = extractvalue { i64, i1 } %b.app.new.len657, 0
  %ovf659 = extractvalue { i64, i1 } %b.app.new.len657, 1
  br i1 %ovf659, label %str_overflow_abort661, label %b.app.new.len660

choice.exit650:                                   ; preds = %b.grow_done668, %loop.body.915
  %fld.load697 = load ptr, ptr %slot.i2p643, align 8
  %app.str.len699 = load i64, ptr %fld.load697, align 8
  %app.str.len700 = and i64 %app.str.len699, 281474976710655
  %app.str.data701 = getelementptr inbounds { i64, ptr }, ptr %fld.load697, i32 0, i32 1
  %app.str.data702 = load ptr, ptr %app.str.data701, align 8
  %b.app.cur.len704 = load i64, ptr %builder.new564, align 8
  %b.app.new.len705 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len704, i64 %app.str.len700)
  %sum706 = extractvalue { i64, i1 } %b.app.new.len705, 0
  %ovf707 = extractvalue { i64, i1 } %b.app.new.len705, 1
  br i1 %ovf707, label %str_overflow_abort709, label %b.app.new.len708

b.app.new.len660:                                 ; preds = %choice.then649
  %b.cap664 = load i64, ptr %b.cap.gep567, align 8
  %b.need.grow665 = icmp slt i64 %b.cap664, %sum658
  br i1 %b.need.grow665, label %b.grow2666, label %b.grow_done668

str_overflow_abort661:                            ; preds = %choice.then649
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2666:                                       ; preds = %b.app.new.len660
  %b.cap2669 = mul i64 %b.cap664, 2
  %b.cap.small670 = icmp slt i64 %b.cap2669, 16
  %b.cap.grow671 = select i1 %b.cap.small670, i64 16, i64 %b.cap2669
  %b.cap.need672 = icmp slt i64 %b.cap.grow671, %sum658
  %b.new.cap673 = select i1 %b.cap.need672, i64 %sum658, i64 %b.cap.grow671
  %b.cur.data2677 = load ptr, ptr %b.data.gep565, align 8
  %b.new.buf.len2678 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap673, i64 1)
  %sum679 = extractvalue { i64, i1 } %b.new.buf.len2678, 0
  %ovf680 = extractvalue { i64, i1 } %b.new.buf.len2678, 1
  br i1 %ovf680, label %str_overflow_abort682, label %b.new.buf.len2681

b.grow_done668:                                   ; preds = %b.app.new.len660, %b.new.buf.len2681
  %b.app.data690 = load ptr, ptr %b.data.gep565, align 8
  %b.app.dst691 = getelementptr i8, ptr %b.app.data690, i64 %b.app.cur.len656
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst691, ptr align 1 @str.38, i64 2, i1 false)
  %b.app.nul692 = getelementptr i8, ptr %b.app.data690, i64 %sum658
  store i8 0, ptr %b.app.nul692, align 1
  store i64 %sum658, ptr %builder.new564, align 8
  br label %choice.exit650

b.new.buf.len2681:                                ; preds = %b.grow2666
  %arena.cur684 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2685 = call ptr @dva_arena_alloc(ptr %arena.cur684, i64 %sum679)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2685, ptr align 1 %b.cur.data2677, i64 %b.app.cur.len656, i1 false)
  %b.grow2.nul686 = getelementptr i8, ptr %b.new.buf2685, i64 %b.app.cur.len656
  store i8 0, ptr %b.grow2.nul686, align 1
  store ptr %b.new.buf2685, ptr %b.data.gep565, align 8
  store i64 %b.new.cap673, ptr %b.cap.gep567, align 8
  br label %b.grow_done668

str_overflow_abort682:                            ; preds = %b.grow2666
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len708:                                 ; preds = %choice.exit650
  %b.cap712 = load i64, ptr %b.cap.gep567, align 8
  %b.need.grow713 = icmp slt i64 %b.cap712, %sum706
  br i1 %b.need.grow713, label %b.grow2714, label %b.grow_done716

str_overflow_abort709:                            ; preds = %choice.exit650
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2714:                                       ; preds = %b.app.new.len708
  %b.cap2717 = mul i64 %b.cap712, 2
  %b.cap.small718 = icmp slt i64 %b.cap2717, 16
  %b.cap.grow719 = select i1 %b.cap.small718, i64 16, i64 %b.cap2717
  %b.cap.need720 = icmp slt i64 %b.cap.grow719, %sum706
  %b.new.cap721 = select i1 %b.cap.need720, i64 %sum706, i64 %b.cap.grow719
  %b.cur.data2725 = load ptr, ptr %b.data.gep565, align 8
  %b.new.buf.len2726 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap721, i64 1)
  %sum727 = extractvalue { i64, i1 } %b.new.buf.len2726, 0
  %ovf728 = extractvalue { i64, i1 } %b.new.buf.len2726, 1
  br i1 %ovf728, label %str_overflow_abort730, label %b.new.buf.len2729

b.grow_done716:                                   ; preds = %b.app.new.len708, %b.new.buf.len2729
  %b.app.data738 = load ptr, ptr %b.data.gep565, align 8
  %b.app.dst739 = getelementptr i8, ptr %b.app.data738, i64 %b.app.cur.len704
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst739, ptr align 1 %app.str.data702, i64 %app.str.len700, i1 false)
  %b.app.nul740 = getelementptr i8, ptr %b.app.data738, i64 %sum706
  store i8 0, ptr %b.app.nul740, align 1
  store i64 %sum706, ptr %builder.new564, align 8
  %fld.gep743 = getelementptr inbounds { ptr, i1, ptr, ptr }, ptr %slot.i2p643, i32 0, i32 1
  %fld.load744 = load i1, ptr %fld.gep743, align 1
  br i1 %fld.load744, label %choice.then745, label %choice.exit746

b.new.buf.len2729:                                ; preds = %b.grow2714
  %arena.cur732 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2733 = call ptr @dva_arena_alloc(ptr %arena.cur732, i64 %sum727)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2733, ptr align 1 %b.cur.data2725, i64 %b.app.cur.len704, i1 false)
  %b.grow2.nul734 = getelementptr i8, ptr %b.new.buf2733, i64 %b.app.cur.len704
  store i8 0, ptr %b.grow2.nul734, align 1
  store ptr %b.new.buf2733, ptr %b.data.gep565, align 8
  store i64 %b.new.cap721, ptr %b.cap.gep567, align 8
  br label %b.grow_done716

str_overflow_abort730:                            ; preds = %b.grow2714
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then745:                                   ; preds = %b.grow_done716
  %fld.gep748 = getelementptr inbounds { ptr, i1, ptr, ptr }, ptr %slot.i2p643, i32 0, i32 3
  %fld.load749 = load ptr, ptr %fld.gep748, align 8
  %call.res750 = call { i64, ptr } @"lsp::format_type_info"(ptr %fld.load749)
  %arena.cur751 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc752 = call ptr @dva_arena_alloc(ptr %arena.cur751, i64 16)
  store { i64, ptr } %call.res750, ptr %ret.ub.alloc752, align 8
  %b.app.cur.len759 = load i64, ptr %builder.new564, align 8
  %b.app.new.len760 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len759, i64 1)
  %sum761 = extractvalue { i64, i1 } %b.app.new.len760, 0
  %ovf762 = extractvalue { i64, i1 } %b.app.new.len760, 1
  br i1 %ovf762, label %str_overflow_abort764, label %b.app.new.len763

choice.exit746:                                   ; preds = %b.grow_done885, %b.grow_done716
  %loop.next912 = add i64 %loop.idx.915.0, 1
  br label %loop.header.915

b.app.new.len763:                                 ; preds = %choice.then745
  %b.cap767 = load i64, ptr %b.cap.gep567, align 8
  %b.need.grow768 = icmp slt i64 %b.cap767, %sum761
  br i1 %b.need.grow768, label %b.grow2769, label %b.grow_done771

str_overflow_abort764:                            ; preds = %choice.then745
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2769:                                       ; preds = %b.app.new.len763
  %b.cap2772 = mul i64 %b.cap767, 2
  %b.cap.small773 = icmp slt i64 %b.cap2772, 16
  %b.cap.grow774 = select i1 %b.cap.small773, i64 16, i64 %b.cap2772
  %b.cap.need775 = icmp slt i64 %b.cap.grow774, %sum761
  %b.new.cap776 = select i1 %b.cap.need775, i64 %sum761, i64 %b.cap.grow774
  %b.cur.data2780 = load ptr, ptr %b.data.gep565, align 8
  %b.new.buf.len2781 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap776, i64 1)
  %sum782 = extractvalue { i64, i1 } %b.new.buf.len2781, 0
  %ovf783 = extractvalue { i64, i1 } %b.new.buf.len2781, 1
  br i1 %ovf783, label %str_overflow_abort785, label %b.new.buf.len2784

b.grow_done771:                                   ; preds = %b.app.new.len763, %b.new.buf.len2784
  %b.app.data793 = load ptr, ptr %b.data.gep565, align 8
  %b.app.dst794 = getelementptr i8, ptr %b.app.data793, i64 %b.app.cur.len759
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst794, ptr align 1 @str.37, i64 1, i1 false)
  %b.app.nul795 = getelementptr i8, ptr %b.app.data793, i64 %sum761
  store i8 0, ptr %b.app.nul795, align 1
  store i64 %sum761, ptr %builder.new564, align 8
  %eq.lhs.len799 = load i64, ptr %ret.ub.alloc752, align 8
  %eq.lhs.len800 = and i64 %eq.lhs.len799, 281474976710655
  %eq.len803 = icmp eq i64 %eq.lhs.len800, 1
  br i1 %eq.len803, label %str.eq.then804, label %str.eq.merge806

b.new.buf.len2784:                                ; preds = %b.grow2769
  %arena.cur787 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2788 = call ptr @dva_arena_alloc(ptr %arena.cur787, i64 %sum782)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2788, ptr align 1 %b.cur.data2780, i64 %b.app.cur.len759, i1 false)
  %b.grow2.nul789 = getelementptr i8, ptr %b.new.buf2788, i64 %b.app.cur.len759
  store i8 0, ptr %b.grow2.nul789, align 1
  store ptr %b.new.buf2788, ptr %b.data.gep565, align 8
  store i64 %b.new.cap776, ptr %b.cap.gep567, align 8
  br label %b.grow_done771

str_overflow_abort785:                            ; preds = %b.grow2769
  call void @dva_abort_str_overflow_msg()
  unreachable

str.eq.then804:                                   ; preds = %b.grow_done771
  %eq.lhs.data807 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc752, i32 0, i32 1
  %eq.lhs.data808 = load ptr, ptr %eq.lhs.data807, align 8
  %eq.memcmp810 = call i32 @memcmp(ptr %eq.lhs.data808, ptr @str.7, i64 1)
  %eq.cmp.zero811 = icmp eq i32 %eq.memcmp810, 0
  br label %str.eq.merge806

str.eq.merge806:                                  ; preds = %b.grow_done771, %str.eq.then804
  %str.eq.result812 = phi i1 [ %eq.cmp.zero811, %str.eq.then804 ], [ false, %b.grow_done771 ]
  %str.neq813 = xor i1 %str.eq.result812, true
  br i1 %str.neq813, label %choice.exit816, label %choice.else815

choice.else815:                                   ; preds = %str.eq.merge806
  %fld.gep819 = getelementptr inbounds { ptr, i1, ptr, ptr }, ptr %slot.i2p643, i32 0, i32 2
  %fld.load820 = load ptr, ptr %fld.gep819, align 8
  %call.res821 = call { i64, ptr } @"lsp::format_value_type"(ptr %fld.load820)
  %arena.cur822 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc823 = call ptr @dva_arena_alloc(ptr %arena.cur822, i64 16)
  store { i64, ptr } %call.res821, ptr %ret.ub.alloc823, align 8
  br label %choice.exit816

choice.exit816:                                   ; preds = %str.eq.merge806, %choice.else815
  %choice.res824 = phi ptr [ %ret.ub.alloc823, %choice.else815 ], [ %ret.ub.alloc752, %str.eq.merge806 ]
  %app.str.len826 = load i64, ptr %choice.res824, align 8
  %app.str.len827 = and i64 %app.str.len826, 281474976710655
  %app.str.data828 = getelementptr inbounds { i64, ptr }, ptr %choice.res824, i32 0, i32 1
  %app.str.data829 = load ptr, ptr %app.str.data828, align 8
  %b.app.cur.len831 = load i64, ptr %builder.new564, align 8
  %b.app.new.len832 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len831, i64 %app.str.len827)
  %sum833 = extractvalue { i64, i1 } %b.app.new.len832, 0
  %ovf834 = extractvalue { i64, i1 } %b.app.new.len832, 1
  br i1 %ovf834, label %str_overflow_abort836, label %b.app.new.len835

b.app.new.len835:                                 ; preds = %choice.exit816
  %b.cap839 = load i64, ptr %b.cap.gep567, align 8
  %b.need.grow840 = icmp slt i64 %b.cap839, %sum833
  br i1 %b.need.grow840, label %b.grow2841, label %b.grow_done843

str_overflow_abort836:                            ; preds = %choice.exit816
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2841:                                       ; preds = %b.app.new.len835
  %b.cap2844 = mul i64 %b.cap839, 2
  %b.cap.small845 = icmp slt i64 %b.cap2844, 16
  %b.cap.grow846 = select i1 %b.cap.small845, i64 16, i64 %b.cap2844
  %b.cap.need847 = icmp slt i64 %b.cap.grow846, %sum833
  %b.new.cap848 = select i1 %b.cap.need847, i64 %sum833, i64 %b.cap.grow846
  %b.cur.data2852 = load ptr, ptr %b.data.gep565, align 8
  %b.new.buf.len2853 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap848, i64 1)
  %sum854 = extractvalue { i64, i1 } %b.new.buf.len2853, 0
  %ovf855 = extractvalue { i64, i1 } %b.new.buf.len2853, 1
  br i1 %ovf855, label %str_overflow_abort857, label %b.new.buf.len2856

b.grow_done843:                                   ; preds = %b.app.new.len835, %b.new.buf.len2856
  %b.app.data865 = load ptr, ptr %b.data.gep565, align 8
  %b.app.dst866 = getelementptr i8, ptr %b.app.data865, i64 %b.app.cur.len831
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst866, ptr align 1 %app.str.data829, i64 %app.str.len827, i1 false)
  %b.app.nul867 = getelementptr i8, ptr %b.app.data865, i64 %sum833
  store i8 0, ptr %b.app.nul867, align 1
  store i64 %sum833, ptr %builder.new564, align 8
  %b.app.new.len874 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum833, i64 1)
  %sum875 = extractvalue { i64, i1 } %b.app.new.len874, 0
  %ovf876 = extractvalue { i64, i1 } %b.app.new.len874, 1
  br i1 %ovf876, label %str_overflow_abort878, label %b.app.new.len877

b.new.buf.len2856:                                ; preds = %b.grow2841
  %arena.cur859 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2860 = call ptr @dva_arena_alloc(ptr %arena.cur859, i64 %sum854)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2860, ptr align 1 %b.cur.data2852, i64 %b.app.cur.len831, i1 false)
  %b.grow2.nul861 = getelementptr i8, ptr %b.new.buf2860, i64 %b.app.cur.len831
  store i8 0, ptr %b.grow2.nul861, align 1
  store ptr %b.new.buf2860, ptr %b.data.gep565, align 8
  store i64 %b.new.cap848, ptr %b.cap.gep567, align 8
  br label %b.grow_done843

str_overflow_abort857:                            ; preds = %b.grow2841
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len877:                                 ; preds = %b.grow_done843
  %b.cap881 = load i64, ptr %b.cap.gep567, align 8
  %b.need.grow882 = icmp slt i64 %b.cap881, %sum875
  br i1 %b.need.grow882, label %b.grow2883, label %b.grow_done885

str_overflow_abort878:                            ; preds = %b.grow_done843
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2883:                                       ; preds = %b.app.new.len877
  %b.cap2886 = mul i64 %b.cap881, 2
  %b.cap.small887 = icmp slt i64 %b.cap2886, 16
  %b.cap.grow888 = select i1 %b.cap.small887, i64 16, i64 %b.cap2886
  %b.cap.need889 = icmp slt i64 %b.cap.grow888, %sum875
  %b.new.cap890 = select i1 %b.cap.need889, i64 %sum875, i64 %b.cap.grow888
  %b.cur.data2894 = load ptr, ptr %b.data.gep565, align 8
  %b.new.buf.len2895 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap890, i64 1)
  %sum896 = extractvalue { i64, i1 } %b.new.buf.len2895, 0
  %ovf897 = extractvalue { i64, i1 } %b.new.buf.len2895, 1
  br i1 %ovf897, label %str_overflow_abort899, label %b.new.buf.len2898

b.grow_done885:                                   ; preds = %b.app.new.len877, %b.new.buf.len2898
  %b.app.data907 = load ptr, ptr %b.data.gep565, align 8
  %b.app.dst908 = getelementptr i8, ptr %b.app.data907, i64 %sum833
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst908, ptr align 1 @str.12, i64 1, i1 false)
  %b.app.nul909 = getelementptr i8, ptr %b.app.data907, i64 %sum875
  store i8 0, ptr %b.app.nul909, align 1
  store i64 %sum875, ptr %builder.new564, align 8
  br label %choice.exit746

b.new.buf.len2898:                                ; preds = %b.grow2883
  %arena.cur901 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2902 = call ptr @dva_arena_alloc(ptr %arena.cur901, i64 %sum896)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2902, ptr align 1 %b.cur.data2894, i64 %sum833, i1 false)
  %b.grow2.nul903 = getelementptr i8, ptr %b.new.buf2902, i64 %sum833
  store i8 0, ptr %b.grow2.nul903, align 1
  store ptr %b.new.buf2902, ptr %b.data.gep565, align 8
  store i64 %b.new.cap890, ptr %b.cap.gep567, align 8
  br label %b.grow_done885

str_overflow_abort899:                            ; preds = %b.grow2883
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len922:                                 ; preds = %loop.exit.915
  %b.cap926 = load i64, ptr %b.cap.gep567, align 8
  %b.need.grow927 = icmp slt i64 %b.cap926, %sum920
  br i1 %b.need.grow927, label %b.grow2928, label %b.grow_done930

str_overflow_abort923:                            ; preds = %loop.exit.915
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2928:                                       ; preds = %b.app.new.len922
  %b.cap2931 = mul i64 %b.cap926, 2
  %b.cap.small932 = icmp slt i64 %b.cap2931, 16
  %b.cap.grow933 = select i1 %b.cap.small932, i64 16, i64 %b.cap2931
  %b.cap.need934 = icmp slt i64 %b.cap.grow933, %sum920
  %b.new.cap935 = select i1 %b.cap.need934, i64 %sum920, i64 %b.cap.grow933
  %b.cur.data2939 = load ptr, ptr %b.data.gep565, align 8
  %b.new.buf.len2940 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap935, i64 1)
  %sum941 = extractvalue { i64, i1 } %b.new.buf.len2940, 0
  %ovf942 = extractvalue { i64, i1 } %b.new.buf.len2940, 1
  br i1 %ovf942, label %str_overflow_abort944, label %b.new.buf.len2943

b.grow_done930:                                   ; preds = %b.app.new.len922, %b.new.buf.len2943
  %b.app.data952 = load ptr, ptr %b.data.gep565, align 8
  %b.app.dst953 = getelementptr i8, ptr %b.app.data952, i64 %b.app.cur.len918
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst953, ptr align 1 @str.42, i64 2, i1 false)
  %b.app.nul954 = getelementptr i8, ptr %b.app.data952, i64 %sum920
  store i8 0, ptr %b.app.nul954, align 1
  store i64 %sum920, ptr %builder.new564, align 8
  %b.freeze.data960 = load ptr, ptr %b.data.gep565, align 8
  %b.freeze.arena961 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep962 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena961, i32 0, i32 1
  %b.freeze.nc963 = load i64, ptr %b.freeze.nc.gep962, align 8
  %b.freeze.has.chunk964 = icmp sgt i64 %b.freeze.nc963, 0
  br i1 %b.freeze.has.chunk964, label %b.freeze.check965, label %b.freeze.done967

b.new.buf.len2943:                                ; preds = %b.grow2928
  %arena.cur946 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2947 = call ptr @dva_arena_alloc(ptr %arena.cur946, i64 %sum941)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2947, ptr align 1 %b.cur.data2939, i64 %b.app.cur.len918, i1 false)
  %b.grow2.nul948 = getelementptr i8, ptr %b.new.buf2947, i64 %b.app.cur.len918
  store i8 0, ptr %b.grow2.nul948, align 1
  store ptr %b.new.buf2947, ptr %b.data.gep565, align 8
  store i64 %b.new.cap935, ptr %b.cap.gep567, align 8
  br label %b.grow_done930

str_overflow_abort944:                            ; preds = %b.grow2928
  call void @dva_abort_str_overflow_msg()
  unreachable

b.freeze.check965:                                ; preds = %b.grow_done930
  %b.freeze.last.idx968 = sub nuw nsw i64 %b.freeze.nc963, 1
  %b.freeze.chunks.gep969 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena961, i32 0, i32 3
  %b.freeze.chunk.slot970 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep969, i64 0, i64 %b.freeze.last.idx968
  %b.freeze.last.chunk971 = load ptr, ptr %b.freeze.chunk.slot970, align 8
  %b.freeze.off.gep972 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena961, i32 0, i32 2
  %b.freeze.off973 = load i64, ptr %b.freeze.off.gep972, align 8
  %b.freeze.bump974 = getelementptr i8, ptr %b.freeze.last.chunk971, i64 %b.freeze.off973
  %b.freeze.cap976 = load i64, ptr %b.freeze.arena961, align 8
  %b.freeze.chunk.end977 = getelementptr i8, ptr %b.freeze.last.chunk971, i64 %b.freeze.cap976
  %b.freeze.ge.chunk978 = icmp uge ptr %b.freeze.data960, %b.freeze.last.chunk971
  %b.freeze.lt.end979 = icmp ult ptr %b.freeze.data960, %b.freeze.chunk.end977
  %b.freeze.in.chunk980 = and i1 %b.freeze.ge.chunk978, %b.freeze.lt.end979
  %b.freeze.ge.bump981 = icmp uge ptr %b.freeze.data960, %b.freeze.bump974
  %b.freeze.reaped982 = and i1 %b.freeze.in.chunk980, %b.freeze.ge.bump981
  br i1 %b.freeze.reaped982, label %b.freeze.copy966, label %b.freeze.done967

b.freeze.copy966:                                 ; preds = %b.freeze.check965
  %b.freeze.alen983 = add i64 %sum920, 1
  %b.freeze.fresh985 = call ptr @dva_arena_alloc(ptr %b.freeze.arena961, i64 %b.freeze.alen983)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh985, ptr align 1 %b.freeze.data960, i64 %sum920, i1 false)
  %b.freeze.nul986 = getelementptr i8, ptr %b.freeze.fresh985, i64 %sum920
  store i8 0, ptr %b.freeze.nul986, align 1
  br label %b.freeze.done967

b.freeze.done967:                                 ; preds = %b.freeze.copy966, %b.freeze.check965, %b.grow_done930
  %b.freeze.data987 = phi ptr [ %b.freeze.data960, %b.grow_done930 ], [ %b.freeze.data960, %b.freeze.check965 ], [ %b.freeze.fresh985, %b.freeze.copy966 ]
  store i64 %sum920, ptr %builder.freeze988, align 8
  %str.build.data.gep990 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze988, i32 0, i32 1
  store ptr %b.freeze.data987, ptr %str.build.data.gep990, align 8
  store i64 0, ptr %builder.new564, align 8
  store ptr null, ptr %b.data.gep565, align 8
  store i64 0, ptr %b.cap.gep567, align 8
  br label %choice.exit

choice.case994:                                   ; preds = %entry
  %pay.gep999 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr1000 = load ptr, ptr %pay.gep999, align 8
  %fld.gep1003 = getelementptr inbounds { ptr, ptr, i64 }, ptr %payload.ptr1000, i32 0, i32 1
  %fld.load1004 = load ptr, ptr %fld.gep1003, align 8
  %call.res1005 = call { i64, ptr } @"lsp::format_type_info"(ptr %fld.load1004)
  %arena.cur1006 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1007 = call ptr @dva_arena_alloc(ptr %arena.cur1006, i64 16)
  %ret.ub.alloc1007.sroa.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1007, i32 0, i32 1
  store { i64, ptr } %call.res1005, ptr %ret.ub.alloc1007, align 8
  %eq.lhs.len1010 = load i64, ptr %ret.ub.alloc1007, align 8
  %eq.lhs.len1011 = and i64 %eq.lhs.len1010, 281474976710655
  %eq.len1014 = icmp eq i64 %eq.lhs.len1011, 1
  br i1 %eq.len1014, label %str.eq.then1015, label %str.eq.merge1017

str.eq.then1015:                                  ; preds = %choice.case994
  %eq.lhs.data1019 = load ptr, ptr %ret.ub.alloc1007.sroa.gep, align 8
  %eq.memcmp1021 = call i32 @memcmp(ptr %eq.lhs.data1019, ptr @str.7, i64 1)
  %eq.cmp.zero1022 = icmp eq i32 %eq.memcmp1021, 0
  br label %str.eq.merge1017

str.eq.merge1017:                                 ; preds = %choice.case994, %str.eq.then1015
  %str.eq.result1023 = phi i1 [ %eq.cmp.zero1022, %str.eq.then1015 ], [ false, %choice.case994 ]
  %str.neq1024 = xor i1 %str.eq.result1023, true
  br i1 %str.neq1024, label %choice.exit1027, label %choice.else1026

choice.else1026:                                  ; preds = %str.eq.merge1017
  %fld.load1031 = load ptr, ptr %payload.ptr1000, align 8
  %call.res1032 = call { i64, ptr } @"lsp::format_value_type"(ptr %fld.load1031)
  %call.res1032.fca.0.extract = extractvalue { i64, ptr } %call.res1032, 0
  store i64 %call.res1032.fca.0.extract, ptr %ret.ub.salloc1033.sroa.0, align 8
  %call.res1032.fca.1.extract = extractvalue { i64, ptr } %call.res1032, 1
  store ptr %call.res1032.fca.1.extract, ptr %ret.ub.salloc1033.sroa.2, align 8
  br label %choice.exit1027

choice.exit1027:                                  ; preds = %str.eq.merge1017, %choice.else1026
  %choice.res1034 = phi ptr [ %ret.ub.salloc1033.sroa.0, %choice.else1026 ], [ %ret.ub.alloc1007, %str.eq.merge1017 ]
  %choice.res1034.sroa.phi = phi ptr [ %ret.ub.salloc1033.sroa.2, %choice.else1026 ], [ %ret.ub.alloc1007.sroa.gep, %str.eq.merge1017 ]
  %cat.seg1037 = load i64, ptr %choice.res1034, align 8
  %cat.seg1038 = and i64 %cat.seg1037, 281474976710655
  %cat.seg1040 = load ptr, ptr %choice.res1034.sroa.phi, align 8
  %fld.gep1043 = getelementptr inbounds { ptr, ptr, i64 }, ptr %payload.ptr1000, i32 0, i32 2
  %fld.load1044 = load i64, ptr %fld.gep1043, align 8
  %cmptmp1045 = icmp sgt i64 %fld.load1044, 0
  br i1 %cmptmp1045, label %choice.then1046, label %choice.exit1048

choice.then1046:                                  ; preds = %choice.exit1027
  %call.res1052 = call { i64, ptr } @"str::from_int"(i64 %fld.load1044)
  %arena.cur1053 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1054 = call ptr @dva_arena_alloc(ptr %arena.cur1053, i64 16)
  store { i64, ptr } %call.res1052, ptr %ret.ub.alloc1054, align 8
  br label %choice.exit1048

choice.exit1048:                                  ; preds = %choice.exit1027, %choice.then1046
  %choice.res1055 = phi ptr [ %ret.ub.alloc1054, %choice.then1046 ], [ @str.0.struct, %choice.exit1027 ]
  %cat.seg1057 = load i64, ptr %choice.res1055, align 8
  %cat.seg1058 = and i64 %cat.seg1057, 281474976710655
  %cat.seg1059 = getelementptr inbounds { i64, ptr }, ptr %choice.res1055, i32 0, i32 1
  %cat.seg1060 = load ptr, ptr %cat.seg1059, align 8
  %cat.sum.len1062 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg1038, i64 1)
  %sum1063 = extractvalue { i64, i1 } %cat.sum.len1062, 0
  %cat.sum.len1068 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1063, i64 %cat.seg1058)
  %sum1069 = extractvalue { i64, i1 } %cat.sum.len1068, 0
  %cat.sum.len1074 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1069, i64 1)
  %sum1075 = extractvalue { i64, i1 } %cat.sum.len1074, 0
  %concat.tot.len1080 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1075, i64 1)
  %sum1081 = extractvalue { i64, i1 } %concat.tot.len1080, 0
  %arena.cur1086 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1087 = call ptr @dva_arena_alloc(ptr %arena.cur1086, i64 %sum1081)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1087, ptr align 1 %cat.seg1040, i64 %cat.seg1038, i1 false)
  %cat.dst1090 = getelementptr i8, ptr %concat.buf1087, i64 %cat.seg1038
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1090, ptr align 1 @str.43, i64 1, i1 false)
  %cat.off1091 = add nuw nsw i64 %cat.seg1038, 1
  %cat.dst1092 = getelementptr i8, ptr %concat.buf1087, i64 %cat.off1091
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1092, ptr align 1 %cat.seg1060, i64 %cat.seg1058, i1 false)
  %cat.off1093 = add nuw nsw i64 %cat.off1091, %cat.seg1058
  %cat.dst1094 = getelementptr i8, ptr %concat.buf1087, i64 %cat.off1093
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1094, ptr align 1 @str.44, i64 1, i1 false)
  %concat.nul1095 = getelementptr i8, ptr %concat.buf1087, i64 %sum1075
  store i8 0, ptr %concat.nul1095, align 1
  store i64 %sum1075, ptr %concat.str1096, align 8
  %str.build.data.gep1098 = getelementptr inbounds { i64, ptr }, ptr %concat.str1096, i32 0, i32 1
  store ptr %concat.buf1087, ptr %str.build.data.gep1098, align 8
  br label %choice.exit

choice.case1099:                                  ; preds = %entry
  %pay.gep1104 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr1105 = load ptr, ptr %pay.gep1104, align 8
  %fld.load1109 = load ptr, ptr %payload.ptr1105, align 8
  %call.res1110 = call { i64, ptr } @"lsp::format_value_type"(ptr %fld.load1109)
  %call.res1110.fca.0.extract = extractvalue { i64, ptr } %call.res1110, 0
  %call.res1110.fca.1.extract = extractvalue { i64, ptr } %call.res1110, 1
  %fld.gep1113 = getelementptr inbounds { ptr, ptr, ptr }, ptr %payload.ptr1105, i32 0, i32 2
  %fld.load1114 = load ptr, ptr %fld.gep1113, align 8
  %call.res1115 = call { i64, ptr } @"lsp::format_type_info"(ptr %fld.load1114)
  %arena.cur1116 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1117 = call ptr @dva_arena_alloc(ptr %arena.cur1116, i64 16)
  %ret.ub.alloc1117.sroa.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1117, i32 0, i32 1
  store { i64, ptr } %call.res1115, ptr %ret.ub.alloc1117, align 8
  %eq.lhs.len1121 = load i64, ptr %ret.ub.alloc1117, align 8
  %eq.lhs.len1122 = and i64 %eq.lhs.len1121, 281474976710655
  %eq.len1125 = icmp eq i64 %eq.lhs.len1122, 1
  br i1 %eq.len1125, label %str.eq.then1126, label %str.eq.merge1128

str.eq.then1126:                                  ; preds = %choice.case1099
  %eq.lhs.data1130 = load ptr, ptr %ret.ub.alloc1117.sroa.gep, align 8
  %eq.memcmp1132 = call i32 @memcmp(ptr %eq.lhs.data1130, ptr @str.7, i64 1)
  %eq.cmp.zero1133 = icmp eq i32 %eq.memcmp1132, 0
  br label %str.eq.merge1128

str.eq.merge1128:                                 ; preds = %choice.case1099, %str.eq.then1126
  %str.eq.result1134 = phi i1 [ %eq.cmp.zero1133, %str.eq.then1126 ], [ false, %choice.case1099 ]
  %str.neq1135 = xor i1 %str.eq.result1134, true
  br i1 %str.neq1135, label %choice.exit1138, label %choice.else1137

choice.else1137:                                  ; preds = %str.eq.merge1128
  %fld.gep1141 = getelementptr inbounds { ptr, ptr, ptr }, ptr %payload.ptr1105, i32 0, i32 1
  %fld.load1142 = load ptr, ptr %fld.gep1141, align 8
  %call.res1143 = call { i64, ptr } @"lsp::format_value_type"(ptr %fld.load1142)
  %call.res1143.fca.0.extract = extractvalue { i64, ptr } %call.res1143, 0
  store i64 %call.res1143.fca.0.extract, ptr %ret.ub.salloc1144.sroa.0, align 8
  %call.res1143.fca.1.extract = extractvalue { i64, ptr } %call.res1143, 1
  store ptr %call.res1143.fca.1.extract, ptr %ret.ub.salloc1144.sroa.2, align 8
  br label %choice.exit1138

choice.exit1138:                                  ; preds = %str.eq.merge1128, %choice.else1137
  %choice.res1145 = phi ptr [ %ret.ub.salloc1144.sroa.0, %choice.else1137 ], [ %ret.ub.alloc1117, %str.eq.merge1128 ]
  %choice.res1145.sroa.phi = phi ptr [ %ret.ub.salloc1144.sroa.2, %choice.else1137 ], [ %ret.ub.alloc1117.sroa.gep, %str.eq.merge1128 ]
  %cat.seg1149 = and i64 %call.res1110.fca.0.extract, 281474976710655
  %cat.seg1155 = load i64, ptr %choice.res1145, align 8
  %cat.seg1156 = and i64 %cat.seg1155, 281474976710655
  %cat.seg1158 = load ptr, ptr %choice.res1145.sroa.phi, align 8
  %cat.sum.len1159 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg1149, i64 3)
  %sum1160 = extractvalue { i64, i1 } %cat.sum.len1159, 0
  %cat.sum.len1165 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1160, i64 %cat.seg1156)
  %sum1166 = extractvalue { i64, i1 } %cat.sum.len1165, 0
  %concat.tot.len1171 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1166, i64 1)
  %sum1172 = extractvalue { i64, i1 } %concat.tot.len1171, 0
  %arena.cur1177 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1178 = call ptr @dva_arena_alloc(ptr %arena.cur1177, i64 %sum1172)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1178, ptr align 1 %call.res1110.fca.1.extract, i64 %cat.seg1149, i1 false)
  %cat.dst1181 = getelementptr i8, ptr %concat.buf1178, i64 %cat.seg1149
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1181, ptr align 1 @str.45, i64 3, i1 false)
  %cat.off1182 = add nuw nsw i64 %cat.seg1149, 3
  %cat.dst1183 = getelementptr i8, ptr %concat.buf1178, i64 %cat.off1182
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1183, ptr align 1 %cat.seg1158, i64 %cat.seg1156, i1 false)
  %concat.nul1184 = getelementptr i8, ptr %concat.buf1178, i64 %sum1166
  store i8 0, ptr %concat.nul1184, align 1
  store i64 %sum1166, ptr %concat.str1185, align 8
  %str.build.data.gep1187 = getelementptr inbounds { i64, ptr }, ptr %concat.str1185, i32 0, i32 1
  store ptr %concat.buf1178, ptr %str.build.data.gep1187, align 8
  br label %choice.exit

choice.case1188:                                  ; preds = %entry
  %pay.gep1193 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr1194 = load ptr, ptr %pay.gep1193, align 8
  %fld.load1199 = load ptr, ptr %payload.ptr1194, align 8
  %fld.gep1201 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %payload.ptr1194, i32 0, i32 1
  %fld.load1202 = load ptr, ptr %fld.gep1201, align 8
  %fld.gep1204 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %payload.ptr1194, i32 0, i32 2
  %fld.load1205 = load ptr, ptr %fld.gep1204, align 8
  %fld.gep1207 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %payload.ptr1194, i32 0, i32 3
  %fld.load1208 = load ptr, ptr %fld.gep1207, align 8
  %arena.cur1209 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new1210 = call ptr @dva_arena_alloc(ptr %arena.cur1209, i64 24)
  %b.data.gep1211 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new1210, i32 0, i32 1
  %b.cap.gep1213 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new1210, i32 0, i32 2
  %arena.cur1220 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf1221 = call ptr @dva_arena_alloc(ptr %arena.cur1220, i64 65)
  store i8 0, ptr %b.buf1221, align 1
  store i64 0, ptr %builder.new1210, align 8
  store ptr %b.buf1221, ptr %b.data.gep1211, align 8
  store i64 64, ptr %b.cap.gep1213, align 8
  %a.null1226 = icmp eq ptr %fld.load1199, null
  br i1 %a.null1226, label %a.create1227, label %a.after1228

a.create1227:                                     ; preds = %choice.case1188
  %arena.cur1229 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1230 = call ptr @dva_arena_alloc(ptr %arena.cur1229, i64 24)
  %arena.cur1231 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1232 = call ptr @dva_arena_alloc(ptr %arena.cur1231, i64 128)
  store i64 0, ptr %a.create1230, align 8
  %a.data.gep1234 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1230, i32 0, i32 1
  store ptr %a.buf1232, ptr %a.data.gep1234, align 8
  %a.cap.gep1235 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1230, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1235, align 8
  br label %a.after1228

a.after1228:                                      ; preds = %a.create1227, %choice.case1188
  %var.p_vts.0 = phi ptr [ %a.create1230, %a.create1227 ], [ %fld.load1199, %choice.case1188 ]
  %a.len.query1238 = load i64, ptr %var.p_vts.0, align 8
  %cmptmp1239 = icmp eq i64 %a.len.query1238, 0
  br i1 %cmptmp1239, label %choice.then1240, label %loop.header.916

choice.then1240:                                  ; preds = %a.after1228
  %b.app.cur.len1248 = load i64, ptr %builder.new1210, align 8
  %b.app.new.len1249 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len1248, i64 2)
  %sum1250 = extractvalue { i64, i1 } %b.app.new.len1249, 0
  %ovf1251 = extractvalue { i64, i1 } %b.app.new.len1249, 1
  br i1 %ovf1251, label %str_overflow_abort1253, label %b.app.new.len1252

choice.exit1242:                                  ; preds = %loop.header.916, %b.grow_done1260
  %b.app.cur.len1632 = load i64, ptr %builder.new1210, align 8
  %b.app.new.len1633 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len1632, i64 4)
  %sum1634 = extractvalue { i64, i1 } %b.app.new.len1633, 0
  %ovf1635 = extractvalue { i64, i1 } %b.app.new.len1633, 1
  br i1 %ovf1635, label %str_overflow_abort1637, label %b.app.new.len1636

b.app.new.len1252:                                ; preds = %choice.then1240
  %b.cap1256 = load i64, ptr %b.cap.gep1213, align 8
  %b.need.grow1257 = icmp slt i64 %b.cap1256, %sum1250
  br i1 %b.need.grow1257, label %b.grow21258, label %b.grow_done1260

str_overflow_abort1253:                           ; preds = %choice.then1240
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow21258:                                      ; preds = %b.app.new.len1252
  %b.cap21261 = mul i64 %b.cap1256, 2
  %b.cap.small1262 = icmp slt i64 %b.cap21261, 16
  %b.cap.grow1263 = select i1 %b.cap.small1262, i64 16, i64 %b.cap21261
  %b.cap.need1264 = icmp slt i64 %b.cap.grow1263, %sum1250
  %b.new.cap1265 = select i1 %b.cap.need1264, i64 %sum1250, i64 %b.cap.grow1263
  %b.cur.data21269 = load ptr, ptr %b.data.gep1211, align 8
  %b.new.buf.len21270 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1265, i64 1)
  %sum1271 = extractvalue { i64, i1 } %b.new.buf.len21270, 0
  %ovf1272 = extractvalue { i64, i1 } %b.new.buf.len21270, 1
  br i1 %ovf1272, label %str_overflow_abort1274, label %b.new.buf.len21273

b.grow_done1260:                                  ; preds = %b.app.new.len1252, %b.new.buf.len21273
  %b.app.data1282 = load ptr, ptr %b.data.gep1211, align 8
  %b.app.dst1283 = getelementptr i8, ptr %b.app.data1282, i64 %b.app.cur.len1248
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst1283, ptr align 1 @str.9, i64 2, i1 false)
  %b.app.nul1284 = getelementptr i8, ptr %b.app.data1282, i64 %sum1250
  store i8 0, ptr %b.app.nul1284, align 1
  store i64 %sum1250, ptr %builder.new1210, align 8
  br label %choice.exit1242

b.new.buf.len21273:                               ; preds = %b.grow21258
  %arena.cur1276 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf21277 = call ptr @dva_arena_alloc(ptr %arena.cur1276, i64 %sum1271)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf21277, ptr align 1 %b.cur.data21269, i64 %b.app.cur.len1248, i1 false)
  %b.grow2.nul1278 = getelementptr i8, ptr %b.new.buf21277, i64 %b.app.cur.len1248
  store i8 0, ptr %b.grow2.nul1278, align 1
  store ptr %b.new.buf21277, ptr %b.data.gep1211, align 8
  store i64 %b.new.cap1265, ptr %b.cap.gep1213, align 8
  br label %b.grow_done1260

str_overflow_abort1274:                           ; preds = %b.grow21258
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.916:                                  ; preds = %a.after1228, %b.grow_done1599
  %var.p_vts.2 = phi ptr [ %var.p_vts.3, %b.grow_done1599 ], [ %var.p_vts.0, %a.after1228 ]
  %var.p_tis.0 = phi ptr [ %var.p_tis.1, %b.grow_done1599 ], [ %fld.load1202, %a.after1228 ]
  %loop.idx.916.0 = phi i64 [ %loop.next1626, %b.grow_done1599 ], [ 0, %a.after1228 ]
  %loop.cond1302 = icmp slt i64 %loop.idx.916.0, %a.len.query1238
  br i1 %loop.cond1302, label %loop.body.916, label %choice.exit1242

loop.body.916:                                    ; preds = %loop.header.916
  %cmptmp1308 = icmp sgt i64 %loop.idx.916.0, 0
  br i1 %cmptmp1308, label %choice.then1309, label %choice.exit1310

choice.then1309:                                  ; preds = %loop.body.916
  %b.app.cur.len1316 = load i64, ptr %builder.new1210, align 8
  %b.app.new.len1317 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len1316, i64 2)
  %sum1318 = extractvalue { i64, i1 } %b.app.new.len1317, 0
  %ovf1319 = extractvalue { i64, i1 } %b.app.new.len1317, 1
  br i1 %ovf1319, label %str_overflow_abort1321, label %b.app.new.len1320

choice.exit1310:                                  ; preds = %b.grow_done1328, %loop.body.916
  %a.null1357 = icmp eq ptr %var.p_tis.0, null
  br i1 %a.null1357, label %a.create1358, label %a.after1359

b.app.new.len1320:                                ; preds = %choice.then1309
  %b.cap1324 = load i64, ptr %b.cap.gep1213, align 8
  %b.need.grow1325 = icmp slt i64 %b.cap1324, %sum1318
  br i1 %b.need.grow1325, label %b.grow21326, label %b.grow_done1328

str_overflow_abort1321:                           ; preds = %choice.then1309
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow21326:                                      ; preds = %b.app.new.len1320
  %b.cap21329 = mul i64 %b.cap1324, 2
  %b.cap.small1330 = icmp slt i64 %b.cap21329, 16
  %b.cap.grow1331 = select i1 %b.cap.small1330, i64 16, i64 %b.cap21329
  %b.cap.need1332 = icmp slt i64 %b.cap.grow1331, %sum1318
  %b.new.cap1333 = select i1 %b.cap.need1332, i64 %sum1318, i64 %b.cap.grow1331
  %b.cur.data21337 = load ptr, ptr %b.data.gep1211, align 8
  %b.new.buf.len21338 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1333, i64 1)
  %sum1339 = extractvalue { i64, i1 } %b.new.buf.len21338, 0
  %ovf1340 = extractvalue { i64, i1 } %b.new.buf.len21338, 1
  br i1 %ovf1340, label %str_overflow_abort1342, label %b.new.buf.len21341

b.grow_done1328:                                  ; preds = %b.app.new.len1320, %b.new.buf.len21341
  %b.app.data1350 = load ptr, ptr %b.data.gep1211, align 8
  %b.app.dst1351 = getelementptr i8, ptr %b.app.data1350, i64 %b.app.cur.len1316
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst1351, ptr align 1 @str.38, i64 2, i1 false)
  %b.app.nul1352 = getelementptr i8, ptr %b.app.data1350, i64 %sum1318
  store i8 0, ptr %b.app.nul1352, align 1
  store i64 %sum1318, ptr %builder.new1210, align 8
  br label %choice.exit1310

b.new.buf.len21341:                               ; preds = %b.grow21326
  %arena.cur1344 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf21345 = call ptr @dva_arena_alloc(ptr %arena.cur1344, i64 %sum1339)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf21345, ptr align 1 %b.cur.data21337, i64 %b.app.cur.len1316, i1 false)
  %b.grow2.nul1346 = getelementptr i8, ptr %b.new.buf21345, i64 %b.app.cur.len1316
  store i8 0, ptr %b.grow2.nul1346, align 1
  store ptr %b.new.buf21345, ptr %b.data.gep1211, align 8
  store i64 %b.new.cap1333, ptr %b.cap.gep1213, align 8
  br label %b.grow_done1328

str_overflow_abort1342:                           ; preds = %b.grow21326
  call void @dva_abort_str_overflow_msg()
  unreachable

a.create1358:                                     ; preds = %choice.exit1310
  %arena.cur1360 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1361 = call ptr @dva_arena_alloc(ptr %arena.cur1360, i64 24)
  %arena.cur1362 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1363 = call ptr @dva_arena_alloc(ptr %arena.cur1362, i64 128)
  store i64 0, ptr %a.create1361, align 8
  %a.data.gep1365 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1361, i32 0, i32 1
  store ptr %a.buf1363, ptr %a.data.gep1365, align 8
  %a.cap.gep1366 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1361, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1366, align 8
  br label %a.after1359

a.after1359:                                      ; preds = %a.create1358, %choice.exit1310
  %var.p_tis.1 = phi ptr [ %a.create1361, %a.create1358 ], [ %var.p_tis.0, %choice.exit1310 ]
  %a.len.query1369 = load i64, ptr %var.p_tis.1, align 8
  %cmptmp1370 = icmp slt i64 %loop.idx.916.0, %a.len.query1369
  br i1 %cmptmp1370, label %a.rd.check1389, label %choice.exit1373

choice.exit1373:                                  ; preds = %a.after1359, %unwrap.pos.917
  %choice.res1465 = phi ptr [ %ret.ub.alloc1464, %unwrap.pos.917 ], [ @str.7.struct, %a.after1359 ]
  %eq.lhs.len1469 = load i64, ptr %choice.res1465, align 8
  %eq.lhs.len1470 = and i64 %eq.lhs.len1469, 281474976710655
  %eq.len1473 = icmp eq i64 %eq.lhs.len1470, 1
  br i1 %eq.len1473, label %str.eq.then1474, label %str.eq.merge1476

a.rd.check1389:                                   ; preds = %a.after1359
  %a.rd.ge0 = icmp sge i64 %loop.idx.916.0, 0
  br i1 %a.rd.ge0, label %a.rd.ok1390, label %a.rd.err.oob1392

a.rd.ok1390:                                      ; preds = %a.rd.check1389
  %a.rd.data1398 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.p_tis.1, i32 0, i32 1
  %a.rd.data1399 = load ptr, ptr %a.rd.data1398, align 8
  %a.rd.elem.gep1400 = getelementptr i64, ptr %a.rd.data1399, i64 %loop.idx.916.0
  %a.rd.elem1401 = load i64, ptr %a.rd.elem.gep1400, align 8
  br label %a.rd.done1393

a.rd.err.oob1392:                                 ; preds = %a.rd.check1389
  %arena.cur1413 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1414 = call ptr @dva_arena_alloc(ptr %arena.cur1413, i64 56)
  store i64 4011, ptr %err.alloc1414, align 8
  %err.msg.gep1416 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1414, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep1416, align 8
  %err.file.gep1417 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1414, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep1417, align 8
  %err.line.gep1418 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1414, i32 0, i32 3
  store i64 333, ptr %err.line.gep1418, align 8
  %err.col.gep1419 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1414, i32 0, i32 4
  store i64 67, ptr %err.col.gep1419, align 8
  %err.ctx.gep1420 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1414, i32 0, i32 5
  store i64 %loop.idx.916.0, ptr %err.ctx.gep1420, align 8
  %err.ctx1.gep1422 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1420, i32 0, i32 1
  store i64 %a.len.query1369, ptr %err.ctx1.gep1422, align 8
  %err.p2i1423 = ptrtoint ptr %err.alloc1414 to i64
  br label %a.rd.done1393

a.rd.done1393:                                    ; preds = %a.rd.err.oob1392, %a.rd.ok1390
  %a.rd.tag1424 = phi i1 [ true, %a.rd.ok1390 ], [ false, %a.rd.err.oob1392 ]
  %a.rd.pay1425 = phi i64 [ %a.rd.elem1401, %a.rd.ok1390 ], [ %err.p2i1423, %a.rd.err.oob1392 ]
  br i1 %a.rd.tag1424, label %unwrap.pos.917, label %unwrap.abort.917

unwrap.pos.917:                                   ; preds = %a.rd.done1393
  %pay.ptr1461 = inttoptr i64 %a.rd.pay1425 to ptr
  %call.res1462 = call { i64, ptr } @"lsp::format_type_info"(ptr %pay.ptr1461)
  %arena.cur1463 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1464 = call ptr @dva_arena_alloc(ptr %arena.cur1463, i64 16)
  store { i64, ptr } %call.res1462, ptr %ret.ub.alloc1464, align 8
  br label %choice.exit1373

unwrap.abort.917:                                 ; preds = %a.rd.done1393
  %err.ptr1430 = inttoptr i64 %a.rd.pay1425 to ptr
  %err.code1432 = load i64, ptr %err.ptr1430, align 8
  %err.msg.gep1433 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1430, i32 0, i32 1
  %err.msg.struct1434 = load ptr, ptr %err.msg.gep1433, align 8
  %err.file.gep1435 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1430, i32 0, i32 2
  %err.file.struct1436 = load ptr, ptr %err.file.gep1435, align 8
  %err.line.gep1437 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1430, i32 0, i32 3
  %err.line1438 = load i64, ptr %err.line.gep1437, align 8
  %err.col.gep1439 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1430, i32 0, i32 4
  %err.col1440 = load i64, ptr %err.col.gep1439, align 8
  %err.msg.len1442 = load i64, ptr %err.msg.struct1434, align 8
  %err.msg.len1443 = and i64 %err.msg.len1442, 281474976710655
  %err.msg.len321444 = trunc i64 %err.msg.len1443 to i32
  %err.msg.data1445 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1434, i32 0, i32 1
  %err.msg.data1446 = load ptr, ptr %err.msg.data1445, align 8
  %err.file.len1448 = load i64, ptr %err.file.struct1436, align 8
  %err.file.len1449 = and i64 %err.file.len1448, 281474976710655
  %err.file.len321450 = trunc i64 %err.file.len1449 to i32
  %err.file.data1451 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1436, i32 0, i32 1
  %err.file.data1452 = load ptr, ptr %err.file.data1451, align 8
  %err.thread.rec1453 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1454 = icmp ne ptr %err.thread.rec1453, null
  br i1 %err.is.thread1454, label %err.thread1455, label %err.normal1456

err.thread1455:                                   ; preds = %unwrap.abort.917
  %err.haserr.gep1457 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1453, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1457, align 8
  %err.err.gep1458 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1453, i32 0, i32 7
  store ptr %err.ptr1430, ptr %err.err.gep1458, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1456:                                   ; preds = %unwrap.abort.917
  %err.panic.printf1459 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1432, i32 %err.msg.len321444, ptr %err.msg.data1446, i32 %err.file.len321450, ptr %err.file.data1452, i64 %err.line1438, i64 %err.col1440)
  call void @exit(i32 1)
  unreachable

str.eq.then1474:                                  ; preds = %choice.exit1373
  %eq.lhs.data1477 = getelementptr inbounds { i64, ptr }, ptr %choice.res1465, i32 0, i32 1
  %eq.lhs.data1478 = load ptr, ptr %eq.lhs.data1477, align 8
  %eq.memcmp1480 = call i32 @memcmp(ptr %eq.lhs.data1478, ptr @str.7, i64 1)
  %eq.cmp.zero1481 = icmp eq i32 %eq.memcmp1480, 0
  br label %str.eq.merge1476

str.eq.merge1476:                                 ; preds = %choice.exit1373, %str.eq.then1474
  %str.eq.result1482 = phi i1 [ %eq.cmp.zero1481, %str.eq.then1474 ], [ false, %choice.exit1373 ]
  %str.neq1483 = xor i1 %str.eq.result1482, true
  br i1 %str.neq1483, label %choice.exit1486, label %choice.else1485

choice.else1485:                                  ; preds = %str.eq.merge1476
  %a.null1490 = icmp eq ptr %var.p_vts.2, null
  br i1 %a.null1490, label %a.create1491, label %a.rd.check1503

choice.exit1486:                                  ; preds = %str.eq.merge1476, %unwrap.pos.918
  %var.p_vts.3 = phi ptr [ %var.p_vts.4, %unwrap.pos.918 ], [ %var.p_vts.2, %str.eq.merge1476 ]
  %choice.res1580 = phi ptr [ %ret.ub.alloc1579, %unwrap.pos.918 ], [ %choice.res1465, %str.eq.merge1476 ]
  %app.str.len1582 = load i64, ptr %choice.res1580, align 8
  %app.str.len1583 = and i64 %app.str.len1582, 281474976710655
  %app.str.data1584 = getelementptr inbounds { i64, ptr }, ptr %choice.res1580, i32 0, i32 1
  %app.str.data1585 = load ptr, ptr %app.str.data1584, align 8
  %b.app.cur.len1587 = load i64, ptr %builder.new1210, align 8
  %b.app.new.len1588 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len1587, i64 %app.str.len1583)
  %sum1589 = extractvalue { i64, i1 } %b.app.new.len1588, 0
  %ovf1590 = extractvalue { i64, i1 } %b.app.new.len1588, 1
  br i1 %ovf1590, label %str_overflow_abort1592, label %b.app.new.len1591

a.create1491:                                     ; preds = %choice.else1485
  %arena.cur1493 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1494 = call ptr @dva_arena_alloc(ptr %arena.cur1493, i64 24)
  %arena.cur1495 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1496 = call ptr @dva_arena_alloc(ptr %arena.cur1495, i64 128)
  store i64 0, ptr %a.create1494, align 8
  %a.data.gep1498 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1494, i32 0, i32 1
  store ptr %a.buf1496, ptr %a.data.gep1498, align 8
  %a.cap.gep1499 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1494, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1499, align 8
  br label %a.rd.check1503

a.rd.check1503:                                   ; preds = %choice.else1485, %a.create1491
  %var.p_vts.4 = phi ptr [ %a.create1494, %a.create1491 ], [ %var.p_vts.2, %choice.else1485 ]
  %a.rd.len1509 = load i64, ptr %var.p_vts.4, align 8
  %a.rd.ge01510 = icmp sge i64 %loop.idx.916.0, 0
  %a.rd.lt1511 = icmp slt i64 %loop.idx.916.0, %a.rd.len1509
  %a.rd.bounds1512 = and i1 %a.rd.ge01510, %a.rd.lt1511
  br i1 %a.rd.bounds1512, label %a.rd.ok1504, label %a.rd.err.oob1506

a.rd.ok1504:                                      ; preds = %a.rd.check1503
  %a.rd.data1513 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.p_vts.4, i32 0, i32 1
  %a.rd.data1514 = load ptr, ptr %a.rd.data1513, align 8
  %a.rd.elem.gep1515 = getelementptr i64, ptr %a.rd.data1514, i64 %loop.idx.916.0
  %a.rd.elem1516 = load i64, ptr %a.rd.elem.gep1515, align 8
  br label %a.rd.done1507

a.rd.err.oob1506:                                 ; preds = %a.rd.check1503
  %arena.cur1528 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1529 = call ptr @dva_arena_alloc(ptr %arena.cur1528, i64 56)
  store i64 4011, ptr %err.alloc1529, align 8
  %err.msg.gep1531 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1529, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep1531, align 8
  %err.file.gep1532 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1529, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep1532, align 8
  %err.line.gep1533 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1529, i32 0, i32 3
  store i64 334, ptr %err.line.gep1533, align 8
  %err.col.gep1534 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1529, i32 0, i32 4
  store i64 72, ptr %err.col.gep1534, align 8
  %err.ctx.gep1535 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1529, i32 0, i32 5
  store i64 %loop.idx.916.0, ptr %err.ctx.gep1535, align 8
  %err.ctx1.gep1537 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1535, i32 0, i32 1
  store i64 %a.rd.len1509, ptr %err.ctx1.gep1537, align 8
  %err.p2i1538 = ptrtoint ptr %err.alloc1529 to i64
  br label %a.rd.done1507

a.rd.done1507:                                    ; preds = %a.rd.err.oob1506, %a.rd.ok1504
  %a.rd.tag1539 = phi i1 [ true, %a.rd.ok1504 ], [ false, %a.rd.err.oob1506 ]
  %a.rd.pay1540 = phi i64 [ %a.rd.elem1516, %a.rd.ok1504 ], [ %err.p2i1538, %a.rd.err.oob1506 ]
  br i1 %a.rd.tag1539, label %unwrap.pos.918, label %unwrap.abort.918

unwrap.pos.918:                                   ; preds = %a.rd.done1507
  %pay.ptr1576 = inttoptr i64 %a.rd.pay1540 to ptr
  %call.res1577 = call { i64, ptr } @"lsp::format_value_type"(ptr %pay.ptr1576)
  %arena.cur1578 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1579 = call ptr @dva_arena_alloc(ptr %arena.cur1578, i64 16)
  store { i64, ptr } %call.res1577, ptr %ret.ub.alloc1579, align 8
  br label %choice.exit1486

unwrap.abort.918:                                 ; preds = %a.rd.done1507
  %err.ptr1545 = inttoptr i64 %a.rd.pay1540 to ptr
  %err.code1547 = load i64, ptr %err.ptr1545, align 8
  %err.msg.gep1548 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1545, i32 0, i32 1
  %err.msg.struct1549 = load ptr, ptr %err.msg.gep1548, align 8
  %err.file.gep1550 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1545, i32 0, i32 2
  %err.file.struct1551 = load ptr, ptr %err.file.gep1550, align 8
  %err.line.gep1552 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1545, i32 0, i32 3
  %err.line1553 = load i64, ptr %err.line.gep1552, align 8
  %err.col.gep1554 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1545, i32 0, i32 4
  %err.col1555 = load i64, ptr %err.col.gep1554, align 8
  %err.msg.len1557 = load i64, ptr %err.msg.struct1549, align 8
  %err.msg.len1558 = and i64 %err.msg.len1557, 281474976710655
  %err.msg.len321559 = trunc i64 %err.msg.len1558 to i32
  %err.msg.data1560 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1549, i32 0, i32 1
  %err.msg.data1561 = load ptr, ptr %err.msg.data1560, align 8
  %err.file.len1563 = load i64, ptr %err.file.struct1551, align 8
  %err.file.len1564 = and i64 %err.file.len1563, 281474976710655
  %err.file.len321565 = trunc i64 %err.file.len1564 to i32
  %err.file.data1566 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1551, i32 0, i32 1
  %err.file.data1567 = load ptr, ptr %err.file.data1566, align 8
  %err.thread.rec1568 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1569 = icmp ne ptr %err.thread.rec1568, null
  br i1 %err.is.thread1569, label %err.thread1570, label %err.normal1571

err.thread1570:                                   ; preds = %unwrap.abort.918
  %err.haserr.gep1572 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1568, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1572, align 8
  %err.err.gep1573 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1568, i32 0, i32 7
  store ptr %err.ptr1545, ptr %err.err.gep1573, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1571:                                   ; preds = %unwrap.abort.918
  %err.panic.printf1574 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1547, i32 %err.msg.len321559, ptr %err.msg.data1561, i32 %err.file.len321565, ptr %err.file.data1567, i64 %err.line1553, i64 %err.col1555)
  call void @exit(i32 1)
  unreachable

b.app.new.len1591:                                ; preds = %choice.exit1486
  %b.cap1595 = load i64, ptr %b.cap.gep1213, align 8
  %b.need.grow1596 = icmp slt i64 %b.cap1595, %sum1589
  br i1 %b.need.grow1596, label %b.grow21597, label %b.grow_done1599

str_overflow_abort1592:                           ; preds = %choice.exit1486
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow21597:                                      ; preds = %b.app.new.len1591
  %b.cap21600 = mul i64 %b.cap1595, 2
  %b.cap.small1601 = icmp slt i64 %b.cap21600, 16
  %b.cap.grow1602 = select i1 %b.cap.small1601, i64 16, i64 %b.cap21600
  %b.cap.need1603 = icmp slt i64 %b.cap.grow1602, %sum1589
  %b.new.cap1604 = select i1 %b.cap.need1603, i64 %sum1589, i64 %b.cap.grow1602
  %b.cur.data21608 = load ptr, ptr %b.data.gep1211, align 8
  %b.new.buf.len21609 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1604, i64 1)
  %sum1610 = extractvalue { i64, i1 } %b.new.buf.len21609, 0
  %ovf1611 = extractvalue { i64, i1 } %b.new.buf.len21609, 1
  br i1 %ovf1611, label %str_overflow_abort1613, label %b.new.buf.len21612

b.grow_done1599:                                  ; preds = %b.app.new.len1591, %b.new.buf.len21612
  %b.app.data1621 = load ptr, ptr %b.data.gep1211, align 8
  %b.app.dst1622 = getelementptr i8, ptr %b.app.data1621, i64 %b.app.cur.len1587
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst1622, ptr align 1 %app.str.data1585, i64 %app.str.len1583, i1 false)
  %b.app.nul1623 = getelementptr i8, ptr %b.app.data1621, i64 %sum1589
  store i8 0, ptr %b.app.nul1623, align 1
  store i64 %sum1589, ptr %builder.new1210, align 8
  %loop.next1626 = add nsw i64 %loop.idx.916.0, 1
  br label %loop.header.916

b.new.buf.len21612:                               ; preds = %b.grow21597
  %arena.cur1615 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf21616 = call ptr @dva_arena_alloc(ptr %arena.cur1615, i64 %sum1610)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf21616, ptr align 1 %b.cur.data21608, i64 %b.app.cur.len1587, i1 false)
  %b.grow2.nul1617 = getelementptr i8, ptr %b.new.buf21616, i64 %b.app.cur.len1587
  store i8 0, ptr %b.grow2.nul1617, align 1
  store ptr %b.new.buf21616, ptr %b.data.gep1211, align 8
  store i64 %b.new.cap1604, ptr %b.cap.gep1213, align 8
  br label %b.grow_done1599

str_overflow_abort1613:                           ; preds = %b.grow21597
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len1636:                                ; preds = %choice.exit1242
  %b.cap1640 = load i64, ptr %b.cap.gep1213, align 8
  %b.need.grow1641 = icmp slt i64 %b.cap1640, %sum1634
  br i1 %b.need.grow1641, label %b.grow21642, label %b.grow_done1644

str_overflow_abort1637:                           ; preds = %choice.exit1242
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow21642:                                      ; preds = %b.app.new.len1636
  %b.cap21645 = mul i64 %b.cap1640, 2
  %b.cap.small1646 = icmp slt i64 %b.cap21645, 16
  %b.cap.grow1647 = select i1 %b.cap.small1646, i64 16, i64 %b.cap21645
  %b.cap.need1648 = icmp slt i64 %b.cap.grow1647, %sum1634
  %b.new.cap1649 = select i1 %b.cap.need1648, i64 %sum1634, i64 %b.cap.grow1647
  %b.cur.data21653 = load ptr, ptr %b.data.gep1211, align 8
  %b.new.buf.len21654 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1649, i64 1)
  %sum1655 = extractvalue { i64, i1 } %b.new.buf.len21654, 0
  %ovf1656 = extractvalue { i64, i1 } %b.new.buf.len21654, 1
  br i1 %ovf1656, label %str_overflow_abort1658, label %b.new.buf.len21657

b.grow_done1644:                                  ; preds = %b.app.new.len1636, %b.new.buf.len21657
  %b.app.data1666 = load ptr, ptr %b.data.gep1211, align 8
  %b.app.dst1667 = getelementptr i8, ptr %b.app.data1666, i64 %b.app.cur.len1632
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst1667, ptr align 1 @str.46, i64 4, i1 false)
  %b.app.nul1668 = getelementptr i8, ptr %b.app.data1666, i64 %sum1634
  store i8 0, ptr %b.app.nul1668, align 1
  store i64 %sum1634, ptr %builder.new1210, align 8
  %call.res1671 = call { i64, ptr } @"lsp::format_type_info"(ptr %fld.load1208)
  %arena.cur1672 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1673 = call ptr @dva_arena_alloc(ptr %arena.cur1672, i64 16)
  store { i64, ptr } %call.res1671, ptr %ret.ub.alloc1673, align 8
  %eq.lhs.len1677 = load i64, ptr %ret.ub.alloc1673, align 8
  %eq.lhs.len1678 = and i64 %eq.lhs.len1677, 281474976710655
  %eq.len1681 = icmp eq i64 %eq.lhs.len1678, 1
  br i1 %eq.len1681, label %str.eq.then1682, label %str.eq.merge1684

b.new.buf.len21657:                               ; preds = %b.grow21642
  %arena.cur1660 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf21661 = call ptr @dva_arena_alloc(ptr %arena.cur1660, i64 %sum1655)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf21661, ptr align 1 %b.cur.data21653, i64 %b.app.cur.len1632, i1 false)
  %b.grow2.nul1662 = getelementptr i8, ptr %b.new.buf21661, i64 %b.app.cur.len1632
  store i8 0, ptr %b.grow2.nul1662, align 1
  store ptr %b.new.buf21661, ptr %b.data.gep1211, align 8
  store i64 %b.new.cap1649, ptr %b.cap.gep1213, align 8
  br label %b.grow_done1644

str_overflow_abort1658:                           ; preds = %b.grow21642
  call void @dva_abort_str_overflow_msg()
  unreachable

str.eq.then1682:                                  ; preds = %b.grow_done1644
  %eq.lhs.data1685 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1673, i32 0, i32 1
  %eq.lhs.data1686 = load ptr, ptr %eq.lhs.data1685, align 8
  %eq.memcmp1688 = call i32 @memcmp(ptr %eq.lhs.data1686, ptr @str.7, i64 1)
  %eq.cmp.zero1689 = icmp eq i32 %eq.memcmp1688, 0
  br label %str.eq.merge1684

str.eq.merge1684:                                 ; preds = %b.grow_done1644, %str.eq.then1682
  %str.eq.result1690 = phi i1 [ %eq.cmp.zero1689, %str.eq.then1682 ], [ false, %b.grow_done1644 ]
  %str.neq1691 = xor i1 %str.eq.result1690, true
  br i1 %str.neq1691, label %choice.exit1694, label %choice.else1693

choice.else1693:                                  ; preds = %str.eq.merge1684
  %call.res1697 = call { i64, ptr } @"lsp::format_value_type"(ptr %fld.load1205)
  %arena.cur1698 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1699 = call ptr @dva_arena_alloc(ptr %arena.cur1698, i64 16)
  store { i64, ptr } %call.res1697, ptr %ret.ub.alloc1699, align 8
  br label %choice.exit1694

choice.exit1694:                                  ; preds = %str.eq.merge1684, %choice.else1693
  %choice.res1700 = phi ptr [ %ret.ub.alloc1699, %choice.else1693 ], [ %ret.ub.alloc1673, %str.eq.merge1684 ]
  %app.str.len1702 = load i64, ptr %choice.res1700, align 8
  %app.str.len1703 = and i64 %app.str.len1702, 281474976710655
  %app.str.data1704 = getelementptr inbounds { i64, ptr }, ptr %choice.res1700, i32 0, i32 1
  %app.str.data1705 = load ptr, ptr %app.str.data1704, align 8
  %b.app.cur.len1707 = load i64, ptr %builder.new1210, align 8
  %b.app.new.len1708 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len1707, i64 %app.str.len1703)
  %sum1709 = extractvalue { i64, i1 } %b.app.new.len1708, 0
  %ovf1710 = extractvalue { i64, i1 } %b.app.new.len1708, 1
  br i1 %ovf1710, label %str_overflow_abort1712, label %b.app.new.len1711

b.app.new.len1711:                                ; preds = %choice.exit1694
  %b.cap1715 = load i64, ptr %b.cap.gep1213, align 8
  %b.need.grow1716 = icmp slt i64 %b.cap1715, %sum1709
  br i1 %b.need.grow1716, label %b.grow21717, label %b.grow_done1719

str_overflow_abort1712:                           ; preds = %choice.exit1694
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow21717:                                      ; preds = %b.app.new.len1711
  %b.cap21720 = mul i64 %b.cap1715, 2
  %b.cap.small1721 = icmp slt i64 %b.cap21720, 16
  %b.cap.grow1722 = select i1 %b.cap.small1721, i64 16, i64 %b.cap21720
  %b.cap.need1723 = icmp slt i64 %b.cap.grow1722, %sum1709
  %b.new.cap1724 = select i1 %b.cap.need1723, i64 %sum1709, i64 %b.cap.grow1722
  %b.cur.data21728 = load ptr, ptr %b.data.gep1211, align 8
  %b.new.buf.len21729 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1724, i64 1)
  %sum1730 = extractvalue { i64, i1 } %b.new.buf.len21729, 0
  %ovf1731 = extractvalue { i64, i1 } %b.new.buf.len21729, 1
  br i1 %ovf1731, label %str_overflow_abort1733, label %b.new.buf.len21732

b.grow_done1719:                                  ; preds = %b.app.new.len1711, %b.new.buf.len21732
  %b.app.data1741 = load ptr, ptr %b.data.gep1211, align 8
  %b.app.dst1742 = getelementptr i8, ptr %b.app.data1741, i64 %b.app.cur.len1707
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst1742, ptr align 1 %app.str.data1705, i64 %app.str.len1703, i1 false)
  %b.app.nul1743 = getelementptr i8, ptr %b.app.data1741, i64 %sum1709
  store i8 0, ptr %b.app.nul1743, align 1
  store i64 %sum1709, ptr %builder.new1210, align 8
  %b.freeze.data1749 = load ptr, ptr %b.data.gep1211, align 8
  %b.freeze.arena1750 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep1751 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena1750, i32 0, i32 1
  %b.freeze.nc1752 = load i64, ptr %b.freeze.nc.gep1751, align 8
  %b.freeze.has.chunk1753 = icmp sgt i64 %b.freeze.nc1752, 0
  br i1 %b.freeze.has.chunk1753, label %b.freeze.check1754, label %b.freeze.done1756

b.new.buf.len21732:                               ; preds = %b.grow21717
  %arena.cur1735 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf21736 = call ptr @dva_arena_alloc(ptr %arena.cur1735, i64 %sum1730)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf21736, ptr align 1 %b.cur.data21728, i64 %b.app.cur.len1707, i1 false)
  %b.grow2.nul1737 = getelementptr i8, ptr %b.new.buf21736, i64 %b.app.cur.len1707
  store i8 0, ptr %b.grow2.nul1737, align 1
  store ptr %b.new.buf21736, ptr %b.data.gep1211, align 8
  store i64 %b.new.cap1724, ptr %b.cap.gep1213, align 8
  br label %b.grow_done1719

str_overflow_abort1733:                           ; preds = %b.grow21717
  call void @dva_abort_str_overflow_msg()
  unreachable

b.freeze.check1754:                               ; preds = %b.grow_done1719
  %b.freeze.last.idx1757 = sub nuw nsw i64 %b.freeze.nc1752, 1
  %b.freeze.chunks.gep1758 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena1750, i32 0, i32 3
  %b.freeze.chunk.slot1759 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep1758, i64 0, i64 %b.freeze.last.idx1757
  %b.freeze.last.chunk1760 = load ptr, ptr %b.freeze.chunk.slot1759, align 8
  %b.freeze.off.gep1761 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena1750, i32 0, i32 2
  %b.freeze.off1762 = load i64, ptr %b.freeze.off.gep1761, align 8
  %b.freeze.bump1763 = getelementptr i8, ptr %b.freeze.last.chunk1760, i64 %b.freeze.off1762
  %b.freeze.cap1765 = load i64, ptr %b.freeze.arena1750, align 8
  %b.freeze.chunk.end1766 = getelementptr i8, ptr %b.freeze.last.chunk1760, i64 %b.freeze.cap1765
  %b.freeze.ge.chunk1767 = icmp uge ptr %b.freeze.data1749, %b.freeze.last.chunk1760
  %b.freeze.lt.end1768 = icmp ult ptr %b.freeze.data1749, %b.freeze.chunk.end1766
  %b.freeze.in.chunk1769 = and i1 %b.freeze.ge.chunk1767, %b.freeze.lt.end1768
  %b.freeze.ge.bump1770 = icmp uge ptr %b.freeze.data1749, %b.freeze.bump1763
  %b.freeze.reaped1771 = and i1 %b.freeze.in.chunk1769, %b.freeze.ge.bump1770
  br i1 %b.freeze.reaped1771, label %b.freeze.copy1755, label %b.freeze.done1756

b.freeze.copy1755:                                ; preds = %b.freeze.check1754
  %b.freeze.alen1772 = add i64 %sum1709, 1
  %b.freeze.fresh1774 = call ptr @dva_arena_alloc(ptr %b.freeze.arena1750, i64 %b.freeze.alen1772)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh1774, ptr align 1 %b.freeze.data1749, i64 %sum1709, i1 false)
  %b.freeze.nul1775 = getelementptr i8, ptr %b.freeze.fresh1774, i64 %sum1709
  store i8 0, ptr %b.freeze.nul1775, align 1
  br label %b.freeze.done1756

b.freeze.done1756:                                ; preds = %b.freeze.copy1755, %b.freeze.check1754, %b.grow_done1719
  %b.freeze.data1776 = phi ptr [ %b.freeze.data1749, %b.grow_done1719 ], [ %b.freeze.data1749, %b.freeze.check1754 ], [ %b.freeze.fresh1774, %b.freeze.copy1755 ]
  store i64 %sum1709, ptr %builder.freeze1777, align 8
  %str.build.data.gep1779 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze1777, i32 0, i32 1
  store ptr %b.freeze.data1776, ptr %str.build.data.gep1779, align 8
  store i64 0, ptr %builder.new1210, align 8
  store ptr null, ptr %b.data.gep1211, align 8
  store i64 0, ptr %b.cap.gep1213, align 8
  br label %choice.exit

choice.case1783:                                  ; preds = %entry
  %pay.gep1788 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr1789 = load ptr, ptr %pay.gep1788, align 8
  %fld.load1795 = load i64, ptr %payload.ptr1789, align 8
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %fld.load1795, i1 false)
  %fld.gep1798 = getelementptr inbounds { i64, ptr }, ptr %payload.ptr1789, i32 0, i32 1
  %fld.load1799 = load ptr, ptr %fld.gep1798, align 8
  %call.res1800 = call { i64, ptr } @"lsp::format_type_info"(ptr %fld.load1799)
  %call.res1800.fca.0.extract = extractvalue { i64, ptr } %call.res1800, 0
  %call.res1800.fca.1.extract = extractvalue { i64, ptr } %call.res1800, 1
  %cat.seg1804 = and i64 %call.res1800.fca.0.extract, 281474976710655
  %cat.sum.len1807 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 14, i64 %cat.ilen)
  %sum1808 = extractvalue { i64, i1 } %cat.sum.len1807, 0
  %ovf1809 = extractvalue { i64, i1 } %cat.sum.len1807, 1
  br i1 %ovf1809, label %str_overflow_abort1811, label %cat.sum.len1810

cat.sum.len1810:                                  ; preds = %choice.case1783
  %cat.sum.len1813 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1808, i64 2)
  %sum1814 = extractvalue { i64, i1 } %cat.sum.len1813, 0
  %ovf1815 = extractvalue { i64, i1 } %cat.sum.len1813, 1
  br i1 %ovf1815, label %str_overflow_abort1817, label %cat.sum.len1816

str_overflow_abort1811:                           ; preds = %choice.case1783
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1816:                                  ; preds = %cat.sum.len1810
  %cat.sum.len1819 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1814, i64 %cat.seg1804)
  %sum1820 = extractvalue { i64, i1 } %cat.sum.len1819, 0
  %ovf1821 = extractvalue { i64, i1 } %cat.sum.len1819, 1
  br i1 %ovf1821, label %str_overflow_abort1823, label %cat.sum.len1822

str_overflow_abort1817:                           ; preds = %cat.sum.len1810
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1822:                                  ; preds = %cat.sum.len1816
  %concat.tot.len1825 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1820, i64 1)
  %sum1826 = extractvalue { i64, i1 } %concat.tot.len1825, 0
  %ovf1827 = extractvalue { i64, i1 } %concat.tot.len1825, 1
  br i1 %ovf1827, label %str_overflow_abort1829, label %concat.tot.len1828

str_overflow_abort1823:                           ; preds = %cat.sum.len1816
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1828:                               ; preds = %cat.sum.len1822
  %arena.cur1831 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1832 = call ptr @dva_arena_alloc(ptr %arena.cur1831, i64 %sum1826)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1832, ptr align 1 @str.47, i64 14, i1 false)
  %cat.dst1834 = getelementptr i8, ptr %concat.buf1832, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1834, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %cat.off1835 = add i64 14, %cat.ilen
  %cat.dst1836 = getelementptr i8, ptr %concat.buf1832, i64 %cat.off1835
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1836, ptr align 1 @str.48, i64 2, i1 false)
  %cat.off1837 = add i64 %cat.off1835, 2
  %cat.dst1838 = getelementptr i8, ptr %concat.buf1832, i64 %cat.off1837
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1838, ptr align 1 %call.res1800.fca.1.extract, i64 %cat.seg1804, i1 false)
  %concat.nul1839 = getelementptr i8, ptr %concat.buf1832, i64 %sum1820
  store i8 0, ptr %concat.nul1839, align 1
  store i64 %sum1820, ptr %concat.str1840, align 8
  %str.build.data.gep1842 = getelementptr inbounds { i64, ptr }, ptr %concat.str1840, i32 0, i32 1
  store ptr %concat.buf1832, ptr %str.build.data.gep1842, align 8
  br label %choice.exit

str_overflow_abort1829:                           ; preds = %cat.sum.len1822
  call void @dva_abort_str_overflow_msg()
  unreachable
}

declare { i64, ptr } @"str::from_int"(i64) #3

define i1 @"lsp::is_fwd_marker"(ptr %0) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  %tag.match = icmp eq i64 %tag.id, 3
  br i1 %tag.match, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %and.919.then, %choice.case, %entry
  %choice.res = phi i1 [ false, %entry ], [ %eq.cmp.zero, %and.919.then ], [ false, %choice.case ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %str.len.query2 = load i64, ptr %payload.ptr, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %cmptmp = icmp sge i64 %str.len.query3, 5
  br i1 %cmptmp, label %and.919.then, label %choice.exit

and.919.then:                                     ; preds = %choice.case
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %payload.ptr, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %s.read.data7, ptr @str.49, i64 5)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %choice.exit
}

define ptr @"lsp::extract_symbols"(ptr %0, ptr %1, ptr %2) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.create3, align 8
  %a.data.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf5, ptr %a.data.gep7, align 8
  %a.cap.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep8, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.stmts.0 = phi ptr [ %a.create3, %a.create ], [ %0, %entry ]
  %arr.cycle.len9 = load i64, ptr %var.stmts.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.stmts.0, i32 0, i32 1
  %arr.cycle.data10 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.921

loop.header.921:                                  ; preds = %choice.exit150, %a.after
  %loop.idx.921.0 = phi i64 [ 0, %a.after ], [ %loop.next1374, %choice.exit150 ]
  %var.syms.0 = phi ptr [ %a.new, %a.after ], [ %var.syms.1, %choice.exit150 ]
  %var.cols.0 = phi ptr [ %2, %a.after ], [ %var.cols.1, %choice.exit150 ]
  %var.lines.0 = phi ptr [ %1, %a.after ], [ %var.lines.1, %choice.exit150 ]
  %loop.cond = icmp slt i64 %loop.idx.921.0, %arr.cycle.len9
  br i1 %loop.cond, label %loop.body.921, label %loop.exit.921

loop.body.921:                                    ; preds = %loop.header.921
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data10, i64 %loop.idx.921.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %a.null14 = icmp eq ptr %var.lines.0, null
  br i1 %a.null14, label %a.create15, label %a.after16

loop.exit.921:                                    ; preds = %loop.header.921
  %a.null1377 = icmp eq ptr %var.syms.0, null
  br i1 %a.null1377, label %a.create1378, label %a.after1379

a.create15:                                       ; preds = %loop.body.921
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 128)
  store i64 0, ptr %a.create18, align 8
  %a.data.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 1
  store ptr %a.buf20, ptr %a.data.gep22, align 8
  %a.cap.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 2
  store i64 16, ptr %a.cap.gep23, align 8
  br label %a.after16

a.after16:                                        ; preds = %a.create15, %loop.body.921
  %var.lines.1 = phi ptr [ %a.create18, %a.create15 ], [ %var.lines.0, %loop.body.921 ]
  %a.len.query25 = load i64, ptr %var.lines.1, align 8
  %cmptmp = icmp slt i64 %loop.idx.921.0, %a.len.query25
  br i1 %cmptmp, label %a.rd.check, label %choice.exit

choice.exit:                                      ; preds = %a.after16, %a.rd.done
  %choice.res62 = phi i64 [ %a.rd.pay., %a.rd.done ], [ 1, %a.after16 ]
  %a.null66 = icmp eq ptr %var.cols.0, null
  br i1 %a.null66, label %a.create67, label %a.after68

a.rd.check:                                       ; preds = %a.after16
  %a.rd.ge0 = icmp sge i64 %loop.idx.921.0, 0
  br i1 %a.rd.ge0, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.lines.1, i32 0, i32 1
  %a.rd.data41 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data41, i64 %loop.idx.921.0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur43 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc44 = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 56)
  store i64 4011, ptr %err.alloc44, align 8
  %err.msg.gep46 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc44, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep46, align 8
  %err.file.gep47 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc44, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep47, align 8
  %err.line.gep48 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc44, i32 0, i32 3
  store i64 354, ptr %err.line.gep48, align 8
  %err.col.gep49 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc44, i32 0, i32 4
  store i64 39, ptr %err.col.gep49, align 8
  %err.ctx.gep50 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc44, i32 0, i32 5
  store i64 %loop.idx.921.0, ptr %err.ctx.gep50, align 8
  %err.ctx1.gep52 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep50, i32 0, i32 1
  store i64 %a.len.query25, ptr %err.ctx1.gep52, align 8
  %err.p2i53 = ptrtoint ptr %err.alloc44 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i53, %a.rd.err.oob ]
  %a.rd.pay. = select i1 %a.rd.tag, i64 %a.rd.pay, i64 1
  br label %choice.exit

a.create67:                                       ; preds = %choice.exit
  %arena.cur69 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create70 = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 24)
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 128)
  store i64 0, ptr %a.create70, align 8
  %a.data.gep74 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create70, i32 0, i32 1
  store ptr %a.buf72, ptr %a.data.gep74, align 8
  %a.cap.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create70, i32 0, i32 2
  store i64 16, ptr %a.cap.gep75, align 8
  br label %a.after68

a.after68:                                        ; preds = %a.create67, %choice.exit
  %var.cols.1 = phi ptr [ %a.create70, %a.create67 ], [ %var.cols.0, %choice.exit ]
  %a.len.query78 = load i64, ptr %var.cols.1, align 8
  %cmptmp79 = icmp slt i64 %loop.idx.921.0, %a.len.query78
  br i1 %cmptmp79, label %a.rd.check98, label %choice.exit82

choice.exit82:                                    ; preds = %a.after68, %a.rd.done102
  %choice.res148 = phi i64 [ %a.rd.pay135., %a.rd.done102 ], [ 1, %a.after68 ]
  %tag.id = load i64, ptr %slot.i2p, align 8
  switch i64 %tag.id, label %choice.exit150 [
    i64 23, label %choice.case
    i64 21, label %choice.case244
    i64 6, label %choice.case652
  ]

a.rd.check98:                                     ; preds = %a.after68
  %a.rd.ge0105 = icmp sge i64 %loop.idx.921.0, 0
  br i1 %a.rd.ge0105, label %a.rd.ok99, label %a.rd.err.oob101

a.rd.ok99:                                        ; preds = %a.rd.check98
  %a.rd.data108 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.cols.1, i32 0, i32 1
  %a.rd.data109 = load ptr, ptr %a.rd.data108, align 8
  %a.rd.elem.gep110 = getelementptr i64, ptr %a.rd.data109, i64 %loop.idx.921.0
  %a.rd.elem111 = load i64, ptr %a.rd.elem.gep110, align 8
  br label %a.rd.done102

a.rd.err.oob101:                                  ; preds = %a.rd.check98
  %arena.cur123 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc124 = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 56)
  store i64 4011, ptr %err.alloc124, align 8
  %err.msg.gep126 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc124, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep126, align 8
  %err.file.gep127 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc124, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep127, align 8
  %err.line.gep128 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc124, i32 0, i32 3
  store i64 355, ptr %err.line.gep128, align 8
  %err.col.gep129 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc124, i32 0, i32 4
  store i64 37, ptr %err.col.gep129, align 8
  %err.ctx.gep130 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc124, i32 0, i32 5
  store i64 %loop.idx.921.0, ptr %err.ctx.gep130, align 8
  %err.ctx1.gep132 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep130, i32 0, i32 1
  store i64 %a.len.query78, ptr %err.ctx1.gep132, align 8
  %err.p2i133 = ptrtoint ptr %err.alloc124 to i64
  br label %a.rd.done102

a.rd.done102:                                     ; preds = %a.rd.err.oob101, %a.rd.ok99
  %a.rd.tag134 = phi i1 [ true, %a.rd.ok99 ], [ false, %a.rd.err.oob101 ]
  %a.rd.pay135 = phi i64 [ %a.rd.elem111, %a.rd.ok99 ], [ %err.p2i133, %a.rd.err.oob101 ]
  %a.rd.pay135. = select i1 %a.rd.tag134, i64 %a.rd.pay135, i64 1
  br label %choice.exit82

choice.exit150:                                   ; preds = %choice.exit1058, %a.store1359, %choice.exit82, %a.store638, %a.store
  %var.syms.1 = phi ptr [ %var.syms.2, %a.store ], [ %var.syms.3, %a.store638 ], [ %var.syms.0, %choice.exit82 ], [ %var.syms.11, %a.store1359 ], [ %var.syms.4, %choice.exit1058 ]
  %loop.next1374 = add i64 %loop.idx.921.0, 1
  br label %loop.header.921

choice.case:                                      ; preds = %choice.exit82
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %slot.i2p, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %payload.ptr, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.id157 = load i64, ptr %fld.load, align 8
  %tag.match158 = icmp eq i64 %tag.id157, 5
  %var.load162 = load i64, ptr @"var.lsp::SYM_ENUM", align 8
  %var.load163 = load i64, ptr @"var.lsp::SYM_STRUCT", align 8
  %choice.res164 = select i1 %tag.match158, i64 %var.load162, i64 %var.load163
  %fld.load167 = load ptr, ptr %payload.ptr, align 8
  %cat.seg168 = load i64, ptr %fld.load167, align 8
  %cat.seg169 = and i64 %cat.seg168, 281474976710655
  %cat.seg170 = getelementptr inbounds { i64, ptr }, ptr %fld.load167, i32 0, i32 1
  %cat.seg171 = load ptr, ptr %cat.seg170, align 8
  %fld.load175 = load ptr, ptr %fld.gep, align 8
  %call.res = call { i64, ptr } @"lsp::format_type_info"(ptr %fld.load175)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %cat.seg178 = and i64 %call.res.fca.0.extract, 281474976710655
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 6, i64 %cat.seg169)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %cat.sum.len182 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum183 = extractvalue { i64, i1 } %cat.sum.len182, 0
  %cat.sum.len188 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum183, i64 %cat.seg178)
  %sum189 = extractvalue { i64, i1 } %cat.sum.len188, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum189, i64 1)
  %sum194 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur199 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur199, i64 %sum194)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.50, i64 6, i1 false)
  %cat.dst200 = getelementptr i8, ptr %concat.buf, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst200, ptr align 1 %cat.seg171, i64 %cat.seg169, i1 false)
  %cat.off = add nuw nsw i64 6, %cat.seg169
  %cat.dst201 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst201, ptr align 1 @str.51, i64 1, i1 false)
  %cat.off202 = add nuw nsw i64 %cat.off, 1
  %cat.dst203 = getelementptr i8, ptr %concat.buf, i64 %cat.off202
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst203, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg178, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum189
  store i8 0, ptr %concat.nul, align 1
  %arena.cur204 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur204, i64 16)
  store i64 %sum189, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %fld.load207 = load ptr, ptr %payload.ptr, align 8
  %str.len.query217 = load i64, ptr %fld.load207, align 8
  %str.len.query218 = and i64 %str.len.query217, 281474976710655
  %addtmp = add i64 %choice.res148, %str.len.query218
  %arena.cur219 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur219, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr null, i32 1) to i64))
  store ptr %fld.load207, ptr %rec.alloc, align 8
  %rec.fld220 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %concat.str, ptr %rec.fld220, align 8
  %rec.fld221 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %choice.res164, ptr %rec.fld221, align 8
  %rec.fld222 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %choice.res62, ptr %rec.fld222, align 8
  %rec.fld223 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %choice.res148, ptr %rec.fld223, align 8
  %rec.fld224 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %choice.res62, ptr %rec.fld224, align 8
  %rec.fld225 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 6
  store i64 %addtmp, ptr %rec.fld225, align 8
  %rec.fld226 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 7
  store i1 true, ptr %rec.fld226, align 1
  %rec.fld227 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 8
  store i1 false, ptr %rec.fld227, align 1
  %a.null229 = icmp eq ptr %var.syms.0, null
  br i1 %a.null229, label %a.create230, label %a.check

a.create230:                                      ; preds = %choice.case
  %arena.cur232 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create233 = call ptr @dva_arena_alloc(ptr %arena.cur232, i64 24)
  %arena.cur234 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf235 = call ptr @dva_arena_alloc(ptr %arena.cur234, i64 128)
  store i64 0, ptr %a.create233, align 8
  %a.data.gep237 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create233, i32 0, i32 1
  store ptr %a.buf235, ptr %a.data.gep237, align 8
  %a.cap.gep238 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create233, i32 0, i32 2
  store i64 16, ptr %a.cap.gep238, align 8
  br label %a.check

a.check:                                          ; preds = %choice.case, %a.create230
  %var.syms.2 = phi ptr [ %a.create233, %a.create230 ], [ %var.syms.0, %choice.case ]
  %a.len240 = load i64, ptr %var.syms.2, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.syms.2, i32 0, i32 2
  %a.cap241 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len240, %a.cap241
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var.syms.2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.syms.2, i32 0, i32 1
  %a.cur.data242 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len243 = load i64, ptr %var.syms.2, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data242, i64 %a.cur.len243
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len243, 1
  store i64 %a.next.len, ptr %var.syms.2, align 8
  br label %choice.exit150

choice.case244:                                   ; preds = %choice.exit82
  %pay.gep249 = getelementptr inbounds { i64, ptr }, ptr %slot.i2p, i32 0, i32 1
  %payload.ptr250 = load ptr, ptr %pay.gep249, align 8
  %arena.cur252 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur252, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %arena.cur259 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur259, i64 65)
  store i8 0, ptr %b.buf, align 1
  store i64 0, ptr %builder.new, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 64, ptr %b.cap.gep, align 8
  %fld.gep262 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %payload.ptr250, i32 0, i32 1
  %fld.load263 = load ptr, ptr %fld.gep262, align 8
  %b.str.len265 = load i64, ptr %fld.load263, align 8
  %b.str.len266 = and i64 %b.str.len265, 281474976710655
  %b.add.len267 = add nuw nsw i64 9, %b.str.len266
  %b.add.len270 = add nuw nsw i64 %b.add.len267, 2
  %b.rec.cur.len271 = load i64, ptr %builder.new, align 8
  %b.rec.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len271, i64 %b.add.len270)
  %sum272 = extractvalue { i64, i1 } %b.rec.new.len, 0
  %ovf273 = extractvalue { i64, i1 } %b.rec.new.len, 1
  br i1 %ovf273, label %str_overflow_abort275, label %b.rec.new.len274

b.rec.new.len274:                                 ; preds = %choice.case244
  %b.need.grow = icmp slt i64 64, %sum272
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort275:                            ; preds = %choice.case244
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.rec.new.len274
  %b.cap.need = icmp slt i64 128, %sum272
  %b.new.cap = select i1 %b.cap.need, i64 %sum272, i64 128
  %b.cur.data2279 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum280 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %arena.cur285 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur285, i64 %sum280)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2279, i64 %b.rec.cur.len271, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.rec.cur.len271
  store i8 0, ptr %b.grow2.nul, align 1
  store ptr %b.new.buf2, ptr %b.data.gep, align 8
  store i64 %b.new.cap, ptr %b.cap.gep, align 8
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.rec.new.len274, %b.grow2
  %b.rec.data286 = load ptr, ptr %b.data.gep, align 8
  %b.rec.dst = getelementptr i8, ptr %b.rec.data286, i64 %b.rec.cur.len271
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst, ptr align 1 @str.52, i64 9, i1 false)
  %b.rec.off = add i64 %b.rec.cur.len271, 9
  %b.rec.dst287 = getelementptr i8, ptr %b.rec.data286, i64 %b.rec.off
  %b.str.data288 = getelementptr inbounds { i64, ptr }, ptr %fld.load263, i32 0, i32 1
  %b.str.data289 = load ptr, ptr %b.str.data288, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst287, ptr align 1 %b.str.data289, i64 %b.str.len266, i1 false)
  %b.rec.off290 = add i64 %b.rec.off, %b.str.len266
  %b.rec.dst291 = getelementptr i8, ptr %b.rec.data286, i64 %b.rec.off290
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst291, ptr align 1 @str.6, i64 2, i1 false)
  %b.rec.nul = getelementptr i8, ptr %b.rec.data286, i64 %sum272
  store i8 0, ptr %b.rec.nul, align 1
  store i64 %sum272, ptr %builder.new, align 8
  %fld.gep296 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %payload.ptr250, i32 0, i32 3
  %fld.load297 = load ptr, ptr %fld.gep296, align 8
  %a.len.query299 = load i64, ptr %fld.load297, align 8
  %cmptmp300 = icmp eq i64 %a.len.query299, 0
  br i1 %cmptmp300, label %choice.then301, label %choice.else302

choice.then301:                                   ; preds = %b.grow_done
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum272, i64 2)
  %sum307 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf308 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf308, label %str_overflow_abort310, label %b.app.new.len309

choice.else302:                                   ; preds = %b.grow_done
  %arr.cycle.data345 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load297, i32 0, i32 1
  %arr.cycle.data346 = load ptr, ptr %arr.cycle.data345, align 8
  br label %loop.header.922

choice.exit303:                                   ; preds = %loop.header.922, %b.grow_done317
  %b.app.cur.len473 = load i64, ptr %builder.new, align 8
  %b.app.new.len474 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len473, i64 4)
  %sum475 = extractvalue { i64, i1 } %b.app.new.len474, 0
  %ovf476 = extractvalue { i64, i1 } %b.app.new.len474, 1
  br i1 %ovf476, label %str_overflow_abort478, label %b.app.new.len477

b.app.new.len309:                                 ; preds = %choice.then301
  %b.cap313 = load i64, ptr %b.cap.gep, align 8
  %b.need.grow314 = icmp slt i64 %b.cap313, %sum307
  br i1 %b.need.grow314, label %b.grow2315, label %b.grow_done317

str_overflow_abort310:                            ; preds = %choice.then301
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2315:                                       ; preds = %b.app.new.len309
  %b.cap2318 = mul i64 %b.cap313, 2
  %b.cap.small319 = icmp slt i64 %b.cap2318, 16
  %b.cap.grow320 = select i1 %b.cap.small319, i64 16, i64 %b.cap2318
  %b.cap.need321 = icmp slt i64 %b.cap.grow320, %sum307
  %b.new.cap322 = select i1 %b.cap.need321, i64 %sum307, i64 %b.cap.grow320
  %b.cur.data2326 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len2327 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap322, i64 1)
  %sum328 = extractvalue { i64, i1 } %b.new.buf.len2327, 0
  %ovf329 = extractvalue { i64, i1 } %b.new.buf.len2327, 1
  br i1 %ovf329, label %str_overflow_abort331, label %b.new.buf.len2330

b.grow_done317:                                   ; preds = %b.app.new.len309, %b.new.buf.len2330
  %b.app.data338 = load ptr, ptr %b.data.gep, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data338, i64 %sum272
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 @str.9, i64 2, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data338, i64 %sum307
  store i8 0, ptr %b.app.nul, align 1
  store i64 %sum307, ptr %builder.new, align 8
  br label %choice.exit303

b.new.buf.len2330:                                ; preds = %b.grow2315
  %arena.cur333 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2334 = call ptr @dva_arena_alloc(ptr %arena.cur333, i64 %sum328)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2334, ptr align 1 %b.cur.data2326, i64 %sum272, i1 false)
  %b.grow2.nul335 = getelementptr i8, ptr %b.new.buf2334, i64 %sum272
  store i8 0, ptr %b.grow2.nul335, align 1
  store ptr %b.new.buf2334, ptr %b.data.gep, align 8
  store i64 %b.new.cap322, ptr %b.cap.gep, align 8
  br label %b.grow_done317

str_overflow_abort331:                            ; preds = %b.grow2315
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.922:                                  ; preds = %b.grow_done442, %choice.else302
  %loop.idx.922.0 = phi i64 [ 0, %choice.else302 ], [ %loop.next, %b.grow_done442 ]
  %loop.cond348 = icmp slt i64 %loop.idx.922.0, %a.len.query299
  br i1 %loop.cond348, label %loop.body.922, label %choice.exit303

loop.body.922:                                    ; preds = %loop.header.922
  %arr.elem.gep350 = getelementptr i64, ptr %arr.cycle.data346, i64 %loop.idx.922.0
  %arr.elem.raw351 = load i64, ptr %arr.elem.gep350, align 8
  %slot.i2p352 = inttoptr i64 %arr.elem.raw351 to ptr
  %cmptmp356 = icmp sgt i64 %loop.idx.922.0, 0
  br i1 %cmptmp356, label %choice.then357, label %choice.exit358

choice.then357:                                   ; preds = %loop.body.922
  %b.app.cur.len364 = load i64, ptr %builder.new, align 8
  %b.app.new.len365 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len364, i64 2)
  %sum366 = extractvalue { i64, i1 } %b.app.new.len365, 0
  %ovf367 = extractvalue { i64, i1 } %b.app.new.len365, 1
  br i1 %ovf367, label %str_overflow_abort369, label %b.app.new.len368

choice.exit358:                                   ; preds = %b.grow_done376, %loop.body.922
  %fld.gep403 = getelementptr inbounds { ptr, ptr, ptr }, ptr %slot.i2p352, i32 0, i32 2
  %fld.load404 = load ptr, ptr %fld.gep403, align 8
  %call.res405 = call { i64, ptr } @"lsp::format_type_info"(ptr %fld.load404)
  %arena.cur406 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur406, i64 16)
  store { i64, ptr } %call.res405, ptr %ret.ub.alloc, align 8
  %eq.lhs.len409 = load i64, ptr %ret.ub.alloc, align 8
  %eq.lhs.len410 = and i64 %eq.lhs.len409, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len410, 1
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

b.app.new.len368:                                 ; preds = %choice.then357
  %b.cap372 = load i64, ptr %b.cap.gep, align 8
  %b.need.grow373 = icmp slt i64 %b.cap372, %sum366
  br i1 %b.need.grow373, label %b.grow2374, label %b.grow_done376

str_overflow_abort369:                            ; preds = %choice.then357
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2374:                                       ; preds = %b.app.new.len368
  %b.cap2377 = mul i64 %b.cap372, 2
  %b.cap.small378 = icmp slt i64 %b.cap2377, 16
  %b.cap.grow379 = select i1 %b.cap.small378, i64 16, i64 %b.cap2377
  %b.cap.need380 = icmp slt i64 %b.cap.grow379, %sum366
  %b.new.cap381 = select i1 %b.cap.need380, i64 %sum366, i64 %b.cap.grow379
  %b.cur.data2385 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len2386 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap381, i64 1)
  %sum387 = extractvalue { i64, i1 } %b.new.buf.len2386, 0
  %ovf388 = extractvalue { i64, i1 } %b.new.buf.len2386, 1
  br i1 %ovf388, label %str_overflow_abort390, label %b.new.buf.len2389

b.grow_done376:                                   ; preds = %b.app.new.len368, %b.new.buf.len2389
  %b.app.data398 = load ptr, ptr %b.data.gep, align 8
  %b.app.dst399 = getelementptr i8, ptr %b.app.data398, i64 %b.app.cur.len364
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst399, ptr align 1 @str.38, i64 2, i1 false)
  %b.app.nul400 = getelementptr i8, ptr %b.app.data398, i64 %sum366
  store i8 0, ptr %b.app.nul400, align 1
  store i64 %sum366, ptr %builder.new, align 8
  br label %choice.exit358

b.new.buf.len2389:                                ; preds = %b.grow2374
  %arena.cur392 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2393 = call ptr @dva_arena_alloc(ptr %arena.cur392, i64 %sum387)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2393, ptr align 1 %b.cur.data2385, i64 %b.app.cur.len364, i1 false)
  %b.grow2.nul394 = getelementptr i8, ptr %b.new.buf2393, i64 %b.app.cur.len364
  store i8 0, ptr %b.grow2.nul394, align 1
  store ptr %b.new.buf2393, ptr %b.data.gep, align 8
  store i64 %b.new.cap381, ptr %b.cap.gep, align 8
  br label %b.grow_done376

str_overflow_abort390:                            ; preds = %b.grow2374
  call void @dva_abort_str_overflow_msg()
  unreachable

str.eq.then:                                      ; preds = %choice.exit358
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data412 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data412, ptr @str.7, i64 1)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %choice.exit358, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %choice.exit358 ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.exit415, label %choice.else414

choice.else414:                                   ; preds = %str.eq.merge
  %fld.gep418 = getelementptr inbounds { ptr, ptr, ptr }, ptr %slot.i2p352, i32 0, i32 1
  %fld.load419 = load ptr, ptr %fld.gep418, align 8
  %call.res420 = call { i64, ptr } @"lsp::format_value_type"(ptr %fld.load419)
  %arena.cur421 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc422 = call ptr @dva_arena_alloc(ptr %arena.cur421, i64 16)
  store { i64, ptr } %call.res420, ptr %ret.ub.alloc422, align 8
  br label %choice.exit415

choice.exit415:                                   ; preds = %str.eq.merge, %choice.else414
  %choice.res423 = phi ptr [ %ret.ub.alloc422, %choice.else414 ], [ %ret.ub.alloc, %str.eq.merge ]
  %app.str.len425 = load i64, ptr %choice.res423, align 8
  %app.str.len426 = and i64 %app.str.len425, 281474976710655
  %app.str.data427 = getelementptr inbounds { i64, ptr }, ptr %choice.res423, i32 0, i32 1
  %app.str.data428 = load ptr, ptr %app.str.data427, align 8
  %b.app.cur.len430 = load i64, ptr %builder.new, align 8
  %b.app.new.len431 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len430, i64 %app.str.len426)
  %sum432 = extractvalue { i64, i1 } %b.app.new.len431, 0
  %ovf433 = extractvalue { i64, i1 } %b.app.new.len431, 1
  br i1 %ovf433, label %str_overflow_abort435, label %b.app.new.len434

b.app.new.len434:                                 ; preds = %choice.exit415
  %b.cap438 = load i64, ptr %b.cap.gep, align 8
  %b.need.grow439 = icmp slt i64 %b.cap438, %sum432
  br i1 %b.need.grow439, label %b.grow2440, label %b.grow_done442

str_overflow_abort435:                            ; preds = %choice.exit415
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2440:                                       ; preds = %b.app.new.len434
  %b.cap2443 = mul i64 %b.cap438, 2
  %b.cap.small444 = icmp slt i64 %b.cap2443, 16
  %b.cap.grow445 = select i1 %b.cap.small444, i64 16, i64 %b.cap2443
  %b.cap.need446 = icmp slt i64 %b.cap.grow445, %sum432
  %b.new.cap447 = select i1 %b.cap.need446, i64 %sum432, i64 %b.cap.grow445
  %b.cur.data2451 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len2452 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap447, i64 1)
  %sum453 = extractvalue { i64, i1 } %b.new.buf.len2452, 0
  %ovf454 = extractvalue { i64, i1 } %b.new.buf.len2452, 1
  br i1 %ovf454, label %str_overflow_abort456, label %b.new.buf.len2455

b.grow_done442:                                   ; preds = %b.app.new.len434, %b.new.buf.len2455
  %b.app.data464 = load ptr, ptr %b.data.gep, align 8
  %b.app.dst465 = getelementptr i8, ptr %b.app.data464, i64 %b.app.cur.len430
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst465, ptr align 1 %app.str.data428, i64 %app.str.len426, i1 false)
  %b.app.nul466 = getelementptr i8, ptr %b.app.data464, i64 %sum432
  store i8 0, ptr %b.app.nul466, align 1
  store i64 %sum432, ptr %builder.new, align 8
  %loop.next = add nsw i64 %loop.idx.922.0, 1
  br label %loop.header.922

b.new.buf.len2455:                                ; preds = %b.grow2440
  %arena.cur458 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2459 = call ptr @dva_arena_alloc(ptr %arena.cur458, i64 %sum453)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2459, ptr align 1 %b.cur.data2451, i64 %b.app.cur.len430, i1 false)
  %b.grow2.nul460 = getelementptr i8, ptr %b.new.buf2459, i64 %b.app.cur.len430
  store i8 0, ptr %b.grow2.nul460, align 1
  store ptr %b.new.buf2459, ptr %b.data.gep, align 8
  store i64 %b.new.cap447, ptr %b.cap.gep, align 8
  br label %b.grow_done442

str_overflow_abort456:                            ; preds = %b.grow2440
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len477:                                 ; preds = %choice.exit303
  %b.cap481 = load i64, ptr %b.cap.gep, align 8
  %b.need.grow482 = icmp slt i64 %b.cap481, %sum475
  br i1 %b.need.grow482, label %b.grow2483, label %b.grow_done485

str_overflow_abort478:                            ; preds = %choice.exit303
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2483:                                       ; preds = %b.app.new.len477
  %b.cap2486 = mul i64 %b.cap481, 2
  %b.cap.small487 = icmp slt i64 %b.cap2486, 16
  %b.cap.grow488 = select i1 %b.cap.small487, i64 16, i64 %b.cap2486
  %b.cap.need489 = icmp slt i64 %b.cap.grow488, %sum475
  %b.new.cap490 = select i1 %b.cap.need489, i64 %sum475, i64 %b.cap.grow488
  %b.cur.data2494 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len2495 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap490, i64 1)
  %sum496 = extractvalue { i64, i1 } %b.new.buf.len2495, 0
  %ovf497 = extractvalue { i64, i1 } %b.new.buf.len2495, 1
  br i1 %ovf497, label %str_overflow_abort499, label %b.new.buf.len2498

b.grow_done485:                                   ; preds = %b.app.new.len477, %b.new.buf.len2498
  %b.app.data507 = load ptr, ptr %b.data.gep, align 8
  %b.app.dst508 = getelementptr i8, ptr %b.app.data507, i64 %b.app.cur.len473
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst508, ptr align 1 @str.46, i64 4, i1 false)
  %b.app.nul509 = getelementptr i8, ptr %b.app.data507, i64 %sum475
  store i8 0, ptr %b.app.nul509, align 1
  store i64 %sum475, ptr %builder.new, align 8
  %fld.gep512 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %payload.ptr250, i32 0, i32 5
  %fld.load513 = load ptr, ptr %fld.gep512, align 8
  %call.res514 = call { i64, ptr } @"lsp::format_type_info"(ptr %fld.load513)
  %arena.cur515 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc516 = call ptr @dva_arena_alloc(ptr %arena.cur515, i64 16)
  store { i64, ptr } %call.res514, ptr %ret.ub.alloc516, align 8
  %eq.lhs.len520 = load i64, ptr %ret.ub.alloc516, align 8
  %eq.lhs.len521 = and i64 %eq.lhs.len520, 281474976710655
  %eq.len524 = icmp eq i64 %eq.lhs.len521, 1
  br i1 %eq.len524, label %str.eq.then525, label %str.eq.merge527

b.new.buf.len2498:                                ; preds = %b.grow2483
  %arena.cur501 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2502 = call ptr @dva_arena_alloc(ptr %arena.cur501, i64 %sum496)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2502, ptr align 1 %b.cur.data2494, i64 %b.app.cur.len473, i1 false)
  %b.grow2.nul503 = getelementptr i8, ptr %b.new.buf2502, i64 %b.app.cur.len473
  store i8 0, ptr %b.grow2.nul503, align 1
  store ptr %b.new.buf2502, ptr %b.data.gep, align 8
  store i64 %b.new.cap490, ptr %b.cap.gep, align 8
  br label %b.grow_done485

str_overflow_abort499:                            ; preds = %b.grow2483
  call void @dva_abort_str_overflow_msg()
  unreachable

str.eq.then525:                                   ; preds = %b.grow_done485
  %eq.lhs.data528 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc516, i32 0, i32 1
  %eq.lhs.data529 = load ptr, ptr %eq.lhs.data528, align 8
  %eq.memcmp531 = call i32 @memcmp(ptr %eq.lhs.data529, ptr @str.7, i64 1)
  %eq.cmp.zero532 = icmp eq i32 %eq.memcmp531, 0
  br label %str.eq.merge527

str.eq.merge527:                                  ; preds = %b.grow_done485, %str.eq.then525
  %str.eq.result533 = phi i1 [ %eq.cmp.zero532, %str.eq.then525 ], [ false, %b.grow_done485 ]
  %str.neq534 = xor i1 %str.eq.result533, true
  br i1 %str.neq534, label %choice.exit537, label %choice.else536

choice.else536:                                   ; preds = %str.eq.merge527
  %fld.gep540 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %payload.ptr250, i32 0, i32 4
  %fld.load541 = load ptr, ptr %fld.gep540, align 8
  %call.res542 = call { i64, ptr } @"lsp::format_value_type"(ptr %fld.load541)
  %arena.cur543 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc544 = call ptr @dva_arena_alloc(ptr %arena.cur543, i64 16)
  store { i64, ptr } %call.res542, ptr %ret.ub.alloc544, align 8
  br label %choice.exit537

choice.exit537:                                   ; preds = %str.eq.merge527, %choice.else536
  %choice.res545 = phi ptr [ %ret.ub.alloc544, %choice.else536 ], [ %ret.ub.alloc516, %str.eq.merge527 ]
  %app.str.len547 = load i64, ptr %choice.res545, align 8
  %app.str.len548 = and i64 %app.str.len547, 281474976710655
  %app.str.data549 = getelementptr inbounds { i64, ptr }, ptr %choice.res545, i32 0, i32 1
  %app.str.data550 = load ptr, ptr %app.str.data549, align 8
  %b.app.cur.len552 = load i64, ptr %builder.new, align 8
  %b.app.new.len553 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len552, i64 %app.str.len548)
  %sum554 = extractvalue { i64, i1 } %b.app.new.len553, 0
  %ovf555 = extractvalue { i64, i1 } %b.app.new.len553, 1
  br i1 %ovf555, label %str_overflow_abort557, label %b.app.new.len556

b.app.new.len556:                                 ; preds = %choice.exit537
  %b.cap560 = load i64, ptr %b.cap.gep, align 8
  %b.need.grow561 = icmp slt i64 %b.cap560, %sum554
  br i1 %b.need.grow561, label %b.grow2562, label %b.grow_done564

str_overflow_abort557:                            ; preds = %choice.exit537
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2562:                                       ; preds = %b.app.new.len556
  %b.cap2565 = mul i64 %b.cap560, 2
  %b.cap.small566 = icmp slt i64 %b.cap2565, 16
  %b.cap.grow567 = select i1 %b.cap.small566, i64 16, i64 %b.cap2565
  %b.cap.need568 = icmp slt i64 %b.cap.grow567, %sum554
  %b.new.cap569 = select i1 %b.cap.need568, i64 %sum554, i64 %b.cap.grow567
  %b.cur.data2573 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len2574 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap569, i64 1)
  %sum575 = extractvalue { i64, i1 } %b.new.buf.len2574, 0
  %ovf576 = extractvalue { i64, i1 } %b.new.buf.len2574, 1
  br i1 %ovf576, label %str_overflow_abort578, label %b.new.buf.len2577

b.grow_done564:                                   ; preds = %b.app.new.len556, %b.new.buf.len2577
  %b.app.data586 = load ptr, ptr %b.data.gep, align 8
  %b.app.dst587 = getelementptr i8, ptr %b.app.data586, i64 %b.app.cur.len552
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst587, ptr align 1 %app.str.data550, i64 %app.str.len548, i1 false)
  %b.app.nul588 = getelementptr i8, ptr %b.app.data586, i64 %sum554
  store i8 0, ptr %b.app.nul588, align 1
  store i64 %sum554, ptr %builder.new, align 8
  %fld.load592 = load ptr, ptr %fld.gep262, align 8
  %b.freeze.data595 = load ptr, ptr %b.data.gep, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.new.buf.len2577:                                ; preds = %b.grow2562
  %arena.cur580 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2581 = call ptr @dva_arena_alloc(ptr %arena.cur580, i64 %sum575)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2581, ptr align 1 %b.cur.data2573, i64 %b.app.cur.len552, i1 false)
  %b.grow2.nul582 = getelementptr i8, ptr %b.new.buf2581, i64 %b.app.cur.len552
  store i8 0, ptr %b.grow2.nul582, align 1
  store ptr %b.new.buf2581, ptr %b.data.gep, align 8
  store i64 %b.new.cap569, ptr %b.cap.gep, align 8
  br label %b.grow_done564

str_overflow_abort578:                            ; preds = %b.grow2562
  call void @dva_abort_str_overflow_msg()
  unreachable

b.freeze.check:                                   ; preds = %b.grow_done564
  %b.freeze.last.idx = sub nuw nsw i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data595, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data595, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data595, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %sum554, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data595, i64 %sum554, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %sum554
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.grow_done564
  %b.freeze.data597 = phi ptr [ %b.freeze.data595, %b.grow_done564 ], [ %b.freeze.data595, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur598 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur598, i64 16)
  store i64 %sum554, ptr %builder.freeze, align 8
  %str.build.data.gep600 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data597, ptr %str.build.data.gep600, align 8
  store i64 0, ptr %builder.new, align 8
  store ptr null, ptr %b.data.gep, align 8
  store i64 0, ptr %b.cap.gep, align 8
  %var.load601 = load i64, ptr @"var.lsp::SYM_FUNCTION", align 8
  %fld.load608 = load ptr, ptr %fld.gep262, align 8
  %str.len.query610 = load i64, ptr %fld.load608, align 8
  %str.len.query611 = and i64 %str.len.query610, 281474976710655
  %addtmp612 = add i64 %choice.res148, %str.len.query611
  %arena.cur613 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc614 = call ptr @dva_arena_alloc(ptr %arena.cur613, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr null, i32 1) to i64))
  store ptr %fld.load592, ptr %rec.alloc614, align 8
  %rec.fld616 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc614, i32 0, i32 1
  store ptr %builder.freeze, ptr %rec.fld616, align 8
  %rec.fld617 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc614, i32 0, i32 2
  store i64 %var.load601, ptr %rec.fld617, align 8
  %rec.fld618 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc614, i32 0, i32 3
  store i64 %choice.res62, ptr %rec.fld618, align 8
  %rec.fld619 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc614, i32 0, i32 4
  store i64 %choice.res148, ptr %rec.fld619, align 8
  %rec.fld620 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc614, i32 0, i32 5
  store i64 %choice.res62, ptr %rec.fld620, align 8
  %rec.fld621 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc614, i32 0, i32 6
  store i64 %addtmp612, ptr %rec.fld621, align 8
  %rec.fld622 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc614, i32 0, i32 7
  store i1 true, ptr %rec.fld622, align 1
  %rec.fld623 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc614, i32 0, i32 8
  store i1 false, ptr %rec.fld623, align 1
  %a.null625 = icmp eq ptr %var.syms.0, null
  br i1 %a.null625, label %a.create626, label %a.check636

a.create626:                                      ; preds = %b.freeze.done
  %arena.cur628 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create629 = call ptr @dva_arena_alloc(ptr %arena.cur628, i64 24)
  %arena.cur630 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf631 = call ptr @dva_arena_alloc(ptr %arena.cur630, i64 128)
  store i64 0, ptr %a.create629, align 8
  %a.data.gep633 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create629, i32 0, i32 1
  store ptr %a.buf631, ptr %a.data.gep633, align 8
  %a.cap.gep634 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create629, i32 0, i32 2
  store i64 16, ptr %a.cap.gep634, align 8
  br label %a.check636

a.check636:                                       ; preds = %b.freeze.done, %a.create626
  %var.syms.3 = phi ptr [ %a.create629, %a.create626 ], [ %var.syms.0, %b.freeze.done ]
  %a.len640 = load i64, ptr %var.syms.3, align 8
  %a.cap641 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.syms.3, i32 0, i32 2
  %a.cap642 = load i64, ptr %a.cap641, align 8
  %a.needs.grow643 = icmp eq i64 %a.len640, %a.cap642
  br i1 %a.needs.grow643, label %a.grow637, label %a.store638

a.grow637:                                        ; preds = %a.check636
  call void @dva_array_grow(ptr %var.syms.3)
  br label %a.store638

a.store638:                                       ; preds = %a.grow637, %a.check636
  %a.cur.data644 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.syms.3, i32 0, i32 1
  %a.cur.data645 = load ptr, ptr %a.cur.data644, align 8
  %a.cur.len647 = load i64, ptr %var.syms.3, align 8
  %a.elem.gep648 = getelementptr i64, ptr %a.cur.data645, i64 %a.cur.len647
  %slot.p2i649 = ptrtoint ptr %rec.alloc614 to i64
  store i64 %slot.p2i649, ptr %a.elem.gep648, align 8
  %a.next.len650 = add i64 %a.cur.len647, 1
  store i64 %a.next.len650, ptr %var.syms.3, align 8
  br label %choice.exit150

choice.case652:                                   ; preds = %choice.exit82
  %pay.gep657 = getelementptr inbounds { i64, ptr }, ptr %slot.i2p, i32 0, i32 1
  %payload.ptr658 = load ptr, ptr %pay.gep657, align 8
  %fld.load662 = load ptr, ptr %payload.ptr658, align 8
  %fld.gep664 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %payload.ptr658, i32 0, i32 5
  %fld.load665 = load ptr, ptr %fld.gep664, align 8
  %fld.gep667 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %payload.ptr658, i32 0, i32 8
  %fld.load668 = load ptr, ptr %fld.gep667, align 8
  %call.res670 = call i1 @"lsp::is_fwd_marker"(ptr %fld.load665)
  %tag.id676 = load i64, ptr %fld.load665, align 8
  %tag.match677 = icmp eq i64 %tag.id676, 14
  br i1 %tag.match677, label %or.923.exit, label %or.923.else

or.923.else:                                      ; preds = %choice.case652
  %tag.id687 = load i64, ptr %fld.load668, align 8
  %tag.match688 = icmp eq i64 %tag.id687, 8
  br label %or.923.exit

or.923.exit:                                      ; preds = %or.923.else, %choice.case652
  %or.923.phi = phi i1 [ true, %choice.case652 ], [ %tag.match688, %or.923.else ]
  br i1 %or.923.phi, label %choice.then694, label %choice.else695

choice.then694:                                   ; preds = %or.923.exit
  %var.load697 = load i64, ptr @"var.lsp::SYM_FUNCTION", align 8
  br label %choice.exit696

choice.else695:                                   ; preds = %or.923.exit
  %fld.gep699 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %payload.ptr658, i32 0, i32 1
  %fld.load700 = load i1, ptr %fld.gep699, align 1
  %var.load704 = load i64, ptr @"var.lsp::SYM_VARIABLE", align 8
  %var.load705 = load i64, ptr @"var.lsp::SYM_CONSTANT", align 8
  %choice.res706 = select i1 %fld.load700, i64 %var.load704, i64 %var.load705
  br label %choice.exit696

choice.exit696:                                   ; preds = %choice.else695, %choice.then694
  %choice.res707 = phi i64 [ %var.load697, %choice.then694 ], [ %choice.res706, %choice.else695 ]
  %call.res709 = call { i64, ptr } @"lsp::format_type_info"(ptr %fld.load668)
  %call.res709.fca.0.extract = extractvalue { i64, ptr } %call.res709, 0
  %call.res709.fca.1.extract = extractvalue { i64, ptr } %call.res709, 1
  %eq.lhs.len714 = and i64 %call.res709.fca.0.extract, 281474976710655
  %eq.len717 = icmp eq i64 %eq.lhs.len714, 1
  br i1 %eq.len717, label %str.eq.then718, label %str.eq.merge720

str.eq.then718:                                   ; preds = %choice.exit696
  %eq.memcmp724 = call i32 @memcmp(ptr %call.res709.fca.1.extract, ptr @str.7, i64 1)
  %eq.cmp.zero725 = icmp eq i32 %eq.memcmp724, 0
  br label %str.eq.merge720

str.eq.merge720:                                  ; preds = %choice.exit696, %str.eq.then718
  %str.eq.result726 = phi i1 [ %eq.cmp.zero725, %str.eq.then718 ], [ false, %choice.exit696 ]
  %str.neq727 = xor i1 %str.eq.result726, true
  br i1 %str.neq727, label %choice.then729, label %choice.else730

choice.then729:                                   ; preds = %str.eq.merge720
  %cat.seg734 = load i64, ptr %fld.load662, align 8
  %cat.seg735 = and i64 %cat.seg734, 281474976710655
  %cat.seg736 = getelementptr inbounds { i64, ptr }, ptr %fld.load662, i32 0, i32 1
  %cat.seg737 = load ptr, ptr %cat.seg736, align 8
  %cat.sum.len745 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg735, i64 2)
  %sum746 = extractvalue { i64, i1 } %cat.sum.len745, 0
  %cat.sum.len751 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum746, i64 %eq.lhs.len714)
  %sum752 = extractvalue { i64, i1 } %cat.sum.len751, 0
  %concat.tot.len757 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum752, i64 1)
  %sum758 = extractvalue { i64, i1 } %concat.tot.len757, 0
  %arena.cur763 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf764 = call ptr @dva_arena_alloc(ptr %arena.cur763, i64 %sum758)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf764, ptr align 1 %cat.seg737, i64 %cat.seg735, i1 false)
  %cat.dst767 = getelementptr i8, ptr %concat.buf764, i64 %cat.seg735
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst767, ptr align 1 @str.6, i64 2, i1 false)
  %cat.off768 = add nuw nsw i64 %cat.seg735, 2
  %cat.dst769 = getelementptr i8, ptr %concat.buf764, i64 %cat.off768
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst769, ptr align 1 %call.res709.fca.1.extract, i64 %eq.lhs.len714, i1 false)
  %concat.nul770 = getelementptr i8, ptr %concat.buf764, i64 %sum752
  store i8 0, ptr %concat.nul770, align 1
  %arena.cur771 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str772 = call ptr @dva_arena_alloc(ptr %arena.cur771, i64 16)
  store i64 %sum752, ptr %concat.str772, align 8
  %str.build.data.gep774 = getelementptr inbounds { i64, ptr }, ptr %concat.str772, i32 0, i32 1
  store ptr %concat.buf764, ptr %str.build.data.gep774, align 8
  br label %choice.exit731

choice.else730:                                   ; preds = %str.eq.merge720
  %tag.id780 = load i64, ptr %fld.load665, align 8
  %tag.match781 = icmp eq i64 %tag.id780, 14
  br i1 %tag.match781, label %choice.case777, label %choice.exit731

choice.exit731:                                   ; preds = %choice.else730, %b.freeze.done980, %choice.then729
  %choice.res1054 = phi ptr [ %concat.str772, %choice.then729 ], [ %concat.str1049, %b.freeze.done980 ], [ %fld.load662, %choice.else730 ]
  %nottmp = xor i1 %call.res670, true
  br i1 %nottmp, label %choice.then1057, label %choice.exit1058

choice.case777:                                   ; preds = %choice.else730
  %pay.gep782 = getelementptr inbounds { i64, ptr }, ptr %fld.load665, i32 0, i32 1
  %payload.ptr783 = load ptr, ptr %pay.gep782, align 8
  %arena.cur785 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new786 = call ptr @dva_arena_alloc(ptr %arena.cur785, i64 24)
  %b.data.gep787 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new786, i32 0, i32 1
  %b.cap.gep789 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new786, i32 0, i32 2
  %arena.cur796 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf797 = call ptr @dva_arena_alloc(ptr %arena.cur796, i64 33)
  store i8 0, ptr %b.buf797, align 1
  store i64 0, ptr %builder.new786, align 8
  store ptr %b.buf797, ptr %b.data.gep787, align 8
  store i64 32, ptr %b.cap.gep789, align 8
  %fld.load801 = load ptr, ptr %payload.ptr783, align 8
  %a.len.query803 = load i64, ptr %fld.load801, align 8
  %cmptmp804 = icmp eq i64 %a.len.query803, 0
  br i1 %cmptmp804, label %choice.then805, label %choice.else806

choice.then805:                                   ; preds = %choice.case777
  %b.app.cur.len813 = load i64, ptr %builder.new786, align 8
  %b.app.new.len814 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len813, i64 2)
  %sum815 = extractvalue { i64, i1 } %b.app.new.len814, 0
  %ovf816 = extractvalue { i64, i1 } %b.app.new.len814, 1
  br i1 %ovf816, label %str_overflow_abort818, label %b.app.new.len817

choice.else806:                                   ; preds = %choice.case777
  %arr.cycle.data856 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load801, i32 0, i32 1
  %arr.cycle.data857 = load ptr, ptr %arr.cycle.data856, align 8
  br label %loop.header.924

choice.exit807:                                   ; preds = %loop.header.924, %b.grow_done825
  %cat.seg964 = load i64, ptr %fld.load662, align 8
  %cat.seg965 = and i64 %cat.seg964, 281474976710655
  %cat.seg966 = getelementptr inbounds { i64, ptr }, ptr %fld.load662, i32 0, i32 1
  %cat.seg967 = load ptr, ptr %cat.seg966, align 8
  %b.freeze.len971 = load i64, ptr %builder.new786, align 8
  %b.freeze.data973 = load ptr, ptr %b.data.gep787, align 8
  %b.freeze.arena974 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep975 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena974, i32 0, i32 1
  %b.freeze.nc976 = load i64, ptr %b.freeze.nc.gep975, align 8
  %b.freeze.has.chunk977 = icmp sgt i64 %b.freeze.nc976, 0
  br i1 %b.freeze.has.chunk977, label %b.freeze.check978, label %b.freeze.done980

b.app.new.len817:                                 ; preds = %choice.then805
  %b.need.grow822 = icmp slt i64 32, %sum815
  br i1 %b.need.grow822, label %b.grow2823, label %b.grow_done825

str_overflow_abort818:                            ; preds = %choice.then805
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2823:                                       ; preds = %b.app.new.len817
  %b.cap.need829 = icmp slt i64 64, %sum815
  %b.new.cap830 = select i1 %b.cap.need829, i64 %sum815, i64 64
  %b.cur.data2834 = load ptr, ptr %b.data.gep787, align 8
  %b.new.buf.len2835 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap830, i64 1)
  %sum836 = extractvalue { i64, i1 } %b.new.buf.len2835, 0
  %arena.cur841 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2842 = call ptr @dva_arena_alloc(ptr %arena.cur841, i64 %sum836)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2842, ptr align 1 %b.cur.data2834, i64 %b.app.cur.len813, i1 false)
  %b.grow2.nul843 = getelementptr i8, ptr %b.new.buf2842, i64 %b.app.cur.len813
  store i8 0, ptr %b.grow2.nul843, align 1
  store ptr %b.new.buf2842, ptr %b.data.gep787, align 8
  store i64 %b.new.cap830, ptr %b.cap.gep789, align 8
  br label %b.grow_done825

b.grow_done825:                                   ; preds = %b.app.new.len817, %b.grow2823
  %b.app.data847 = load ptr, ptr %b.data.gep787, align 8
  %b.app.dst848 = getelementptr i8, ptr %b.app.data847, i64 %b.app.cur.len813
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst848, ptr align 1 @str.9, i64 2, i1 false)
  %b.app.nul849 = getelementptr i8, ptr %b.app.data847, i64 %sum815
  store i8 0, ptr %b.app.nul849, align 1
  store i64 %sum815, ptr %builder.new786, align 8
  br label %choice.exit807

loop.header.924:                                  ; preds = %b.grow_done934, %choice.else806
  %loop.idx.924.0 = phi i64 [ 0, %choice.else806 ], [ %loop.next961, %b.grow_done934 ]
  %loop.cond859 = icmp slt i64 %loop.idx.924.0, %a.len.query803
  br i1 %loop.cond859, label %loop.body.924, label %choice.exit807

loop.body.924:                                    ; preds = %loop.header.924
  %arr.elem.gep861 = getelementptr i64, ptr %arr.cycle.data857, i64 %loop.idx.924.0
  %arr.elem.raw862 = load i64, ptr %arr.elem.gep861, align 8
  %slot.i2p863 = inttoptr i64 %arr.elem.raw862 to ptr
  %cmptmp868 = icmp sgt i64 %loop.idx.924.0, 0
  br i1 %cmptmp868, label %choice.then869, label %choice.exit870

choice.then869:                                   ; preds = %loop.body.924
  %b.app.cur.len876 = load i64, ptr %builder.new786, align 8
  %b.app.new.len877 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len876, i64 2)
  %sum878 = extractvalue { i64, i1 } %b.app.new.len877, 0
  %ovf879 = extractvalue { i64, i1 } %b.app.new.len877, 1
  br i1 %ovf879, label %str_overflow_abort881, label %b.app.new.len880

choice.exit870:                                   ; preds = %b.grow_done888, %loop.body.924
  %app.str.len917 = load i64, ptr %slot.i2p863, align 8
  %app.str.len918 = and i64 %app.str.len917, 281474976710655
  %app.str.data919 = getelementptr inbounds { i64, ptr }, ptr %slot.i2p863, i32 0, i32 1
  %app.str.data920 = load ptr, ptr %app.str.data919, align 8
  %b.app.cur.len922 = load i64, ptr %builder.new786, align 8
  %b.app.new.len923 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len922, i64 %app.str.len918)
  %sum924 = extractvalue { i64, i1 } %b.app.new.len923, 0
  %ovf925 = extractvalue { i64, i1 } %b.app.new.len923, 1
  br i1 %ovf925, label %str_overflow_abort927, label %b.app.new.len926

b.app.new.len880:                                 ; preds = %choice.then869
  %b.cap884 = load i64, ptr %b.cap.gep789, align 8
  %b.need.grow885 = icmp slt i64 %b.cap884, %sum878
  br i1 %b.need.grow885, label %b.grow2886, label %b.grow_done888

str_overflow_abort881:                            ; preds = %choice.then869
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2886:                                       ; preds = %b.app.new.len880
  %b.cap2889 = mul i64 %b.cap884, 2
  %b.cap.small890 = icmp slt i64 %b.cap2889, 16
  %b.cap.grow891 = select i1 %b.cap.small890, i64 16, i64 %b.cap2889
  %b.cap.need892 = icmp slt i64 %b.cap.grow891, %sum878
  %b.new.cap893 = select i1 %b.cap.need892, i64 %sum878, i64 %b.cap.grow891
  %b.cur.data2897 = load ptr, ptr %b.data.gep787, align 8
  %b.new.buf.len2898 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap893, i64 1)
  %sum899 = extractvalue { i64, i1 } %b.new.buf.len2898, 0
  %ovf900 = extractvalue { i64, i1 } %b.new.buf.len2898, 1
  br i1 %ovf900, label %str_overflow_abort902, label %b.new.buf.len2901

b.grow_done888:                                   ; preds = %b.app.new.len880, %b.new.buf.len2901
  %b.app.data910 = load ptr, ptr %b.data.gep787, align 8
  %b.app.dst911 = getelementptr i8, ptr %b.app.data910, i64 %b.app.cur.len876
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst911, ptr align 1 @str.38, i64 2, i1 false)
  %b.app.nul912 = getelementptr i8, ptr %b.app.data910, i64 %sum878
  store i8 0, ptr %b.app.nul912, align 1
  store i64 %sum878, ptr %builder.new786, align 8
  br label %choice.exit870

b.new.buf.len2901:                                ; preds = %b.grow2886
  %arena.cur904 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2905 = call ptr @dva_arena_alloc(ptr %arena.cur904, i64 %sum899)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2905, ptr align 1 %b.cur.data2897, i64 %b.app.cur.len876, i1 false)
  %b.grow2.nul906 = getelementptr i8, ptr %b.new.buf2905, i64 %b.app.cur.len876
  store i8 0, ptr %b.grow2.nul906, align 1
  store ptr %b.new.buf2905, ptr %b.data.gep787, align 8
  store i64 %b.new.cap893, ptr %b.cap.gep789, align 8
  br label %b.grow_done888

str_overflow_abort902:                            ; preds = %b.grow2886
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len926:                                 ; preds = %choice.exit870
  %b.cap930 = load i64, ptr %b.cap.gep789, align 8
  %b.need.grow931 = icmp slt i64 %b.cap930, %sum924
  br i1 %b.need.grow931, label %b.grow2932, label %b.grow_done934

str_overflow_abort927:                            ; preds = %choice.exit870
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2932:                                       ; preds = %b.app.new.len926
  %b.cap2935 = mul i64 %b.cap930, 2
  %b.cap.small936 = icmp slt i64 %b.cap2935, 16
  %b.cap.grow937 = select i1 %b.cap.small936, i64 16, i64 %b.cap2935
  %b.cap.need938 = icmp slt i64 %b.cap.grow937, %sum924
  %b.new.cap939 = select i1 %b.cap.need938, i64 %sum924, i64 %b.cap.grow937
  %b.cur.data2943 = load ptr, ptr %b.data.gep787, align 8
  %b.new.buf.len2944 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap939, i64 1)
  %sum945 = extractvalue { i64, i1 } %b.new.buf.len2944, 0
  %ovf946 = extractvalue { i64, i1 } %b.new.buf.len2944, 1
  br i1 %ovf946, label %str_overflow_abort948, label %b.new.buf.len2947

b.grow_done934:                                   ; preds = %b.app.new.len926, %b.new.buf.len2947
  %b.app.data956 = load ptr, ptr %b.data.gep787, align 8
  %b.app.dst957 = getelementptr i8, ptr %b.app.data956, i64 %b.app.cur.len922
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst957, ptr align 1 %app.str.data920, i64 %app.str.len918, i1 false)
  %b.app.nul958 = getelementptr i8, ptr %b.app.data956, i64 %sum924
  store i8 0, ptr %b.app.nul958, align 1
  store i64 %sum924, ptr %builder.new786, align 8
  %loop.next961 = add nsw i64 %loop.idx.924.0, 1
  br label %loop.header.924

b.new.buf.len2947:                                ; preds = %b.grow2932
  %arena.cur950 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2951 = call ptr @dva_arena_alloc(ptr %arena.cur950, i64 %sum945)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2951, ptr align 1 %b.cur.data2943, i64 %b.app.cur.len922, i1 false)
  %b.grow2.nul952 = getelementptr i8, ptr %b.new.buf2951, i64 %b.app.cur.len922
  store i8 0, ptr %b.grow2.nul952, align 1
  store ptr %b.new.buf2951, ptr %b.data.gep787, align 8
  store i64 %b.new.cap939, ptr %b.cap.gep789, align 8
  br label %b.grow_done934

str_overflow_abort948:                            ; preds = %b.grow2932
  call void @dva_abort_str_overflow_msg()
  unreachable

b.freeze.check978:                                ; preds = %choice.exit807
  %b.freeze.last.idx981 = sub nuw nsw i64 %b.freeze.nc976, 1
  %b.freeze.chunks.gep982 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena974, i32 0, i32 3
  %b.freeze.chunk.slot983 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep982, i64 0, i64 %b.freeze.last.idx981
  %b.freeze.last.chunk984 = load ptr, ptr %b.freeze.chunk.slot983, align 8
  %b.freeze.off.gep985 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena974, i32 0, i32 2
  %b.freeze.off986 = load i64, ptr %b.freeze.off.gep985, align 8
  %b.freeze.bump987 = getelementptr i8, ptr %b.freeze.last.chunk984, i64 %b.freeze.off986
  %b.freeze.cap989 = load i64, ptr %b.freeze.arena974, align 8
  %b.freeze.chunk.end990 = getelementptr i8, ptr %b.freeze.last.chunk984, i64 %b.freeze.cap989
  %b.freeze.ge.chunk991 = icmp uge ptr %b.freeze.data973, %b.freeze.last.chunk984
  %b.freeze.lt.end992 = icmp ult ptr %b.freeze.data973, %b.freeze.chunk.end990
  %b.freeze.in.chunk993 = and i1 %b.freeze.ge.chunk991, %b.freeze.lt.end992
  %b.freeze.ge.bump994 = icmp uge ptr %b.freeze.data973, %b.freeze.bump987
  %b.freeze.reaped995 = and i1 %b.freeze.in.chunk993, %b.freeze.ge.bump994
  br i1 %b.freeze.reaped995, label %b.freeze.copy979, label %b.freeze.done980

b.freeze.copy979:                                 ; preds = %b.freeze.check978
  %b.freeze.alen996 = add i64 %b.freeze.len971, 1
  %b.freeze.fresh998 = call ptr @dva_arena_alloc(ptr %b.freeze.arena974, i64 %b.freeze.alen996)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh998, ptr align 1 %b.freeze.data973, i64 %b.freeze.len971, i1 false)
  %b.freeze.nul999 = getelementptr i8, ptr %b.freeze.fresh998, i64 %b.freeze.len971
  store i8 0, ptr %b.freeze.nul999, align 1
  br label %b.freeze.done980

b.freeze.done980:                                 ; preds = %b.freeze.copy979, %b.freeze.check978, %choice.exit807
  %b.freeze.data1000 = phi ptr [ %b.freeze.data973, %choice.exit807 ], [ %b.freeze.data973, %b.freeze.check978 ], [ %b.freeze.fresh998, %b.freeze.copy979 ]
  %arena.cur1001 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze1002 = call ptr @dva_arena_alloc(ptr %arena.cur1001, i64 16)
  store i64 %b.freeze.len971, ptr %builder.freeze1002, align 8
  %str.build.data.gep1004 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze1002, i32 0, i32 1
  store ptr %b.freeze.data1000, ptr %str.build.data.gep1004, align 8
  store i64 0, ptr %builder.new786, align 8
  store ptr null, ptr %b.data.gep787, align 8
  store i64 0, ptr %b.cap.gep789, align 8
  %cat.seg1009 = load i64, ptr %builder.freeze1002, align 8
  %cat.seg1010 = and i64 %cat.seg1009, 281474976710655
  %cat.seg1012 = load ptr, ptr %str.build.data.gep1004, align 8
  %cat.sum.len1014 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg965, i64 3)
  %sum1015 = extractvalue { i64, i1 } %cat.sum.len1014, 0
  %cat.sum.len1020 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1015, i64 %cat.seg1010)
  %sum1021 = extractvalue { i64, i1 } %cat.sum.len1020, 0
  %cat.sum.len1026 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1021, i64 7)
  %sum1027 = extractvalue { i64, i1 } %cat.sum.len1026, 0
  %concat.tot.len1032 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1027, i64 1)
  %sum1033 = extractvalue { i64, i1 } %concat.tot.len1032, 0
  %arena.cur1038 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1039 = call ptr @dva_arena_alloc(ptr %arena.cur1038, i64 %sum1033)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1039, ptr align 1 %cat.seg967, i64 %cat.seg965, i1 false)
  %cat.dst1042 = getelementptr i8, ptr %concat.buf1039, i64 %cat.seg965
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1042, ptr align 1 @str.53, i64 3, i1 false)
  %cat.off1043 = add nuw nsw i64 %cat.seg965, 3
  %cat.dst1044 = getelementptr i8, ptr %concat.buf1039, i64 %cat.off1043
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1044, ptr align 1 %cat.seg1012, i64 %cat.seg1010, i1 false)
  %cat.off1045 = add nuw nsw i64 %cat.off1043, %cat.seg1010
  %cat.dst1046 = getelementptr i8, ptr %concat.buf1039, i64 %cat.off1045
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1046, ptr align 1 @str.54, i64 7, i1 false)
  %concat.nul1047 = getelementptr i8, ptr %concat.buf1039, i64 %sum1027
  store i8 0, ptr %concat.nul1047, align 1
  %arena.cur1048 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1049 = call ptr @dva_arena_alloc(ptr %arena.cur1048, i64 16)
  store i64 %sum1027, ptr %concat.str1049, align 8
  %str.build.data.gep1051 = getelementptr inbounds { i64, ptr }, ptr %concat.str1049, i32 0, i32 1
  store ptr %concat.buf1039, ptr %str.build.data.gep1051, align 8
  br label %choice.exit731

choice.then1057:                                  ; preds = %choice.exit731
  %a.null1061 = icmp eq ptr %var.syms.0, null
  br i1 %a.null1061, label %a.create1062, label %a.after1063

choice.exit1058:                                  ; preds = %loop.header.925, %choice.exit731
  %"var.updated'.0" = phi i1 [ false, %choice.exit731 ], [ %"var.updated'.1", %loop.header.925 ]
  %var.syms.4 = phi ptr [ %var.syms.0, %choice.exit731 ], [ %var.syms.6, %loop.header.925 ]
  %nottmp1318 = xor i1 %"var.updated'.0", true
  br i1 %nottmp1318, label %choice.then1319, label %choice.exit150

a.create1062:                                     ; preds = %choice.then1057
  %arena.cur1064 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1065 = call ptr @dva_arena_alloc(ptr %arena.cur1064, i64 24)
  %arena.cur1066 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1067 = call ptr @dva_arena_alloc(ptr %arena.cur1066, i64 128)
  store i64 0, ptr %a.create1065, align 8
  %a.data.gep1069 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1065, i32 0, i32 1
  store ptr %a.buf1067, ptr %a.data.gep1069, align 8
  %a.cap.gep1070 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1065, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1070, align 8
  br label %a.after1063

a.after1063:                                      ; preds = %a.create1062, %choice.then1057
  %var.syms.5 = phi ptr [ %a.create1065, %a.create1062 ], [ %var.syms.0, %choice.then1057 ]
  %a.len.query1073 = load i64, ptr %var.syms.5, align 8
  br label %loop.header.925

loop.header.925:                                  ; preds = %choice.exit1172, %a.after1063
  %"var.updated'.1" = phi i1 [ false, %a.after1063 ], [ %"var.updated'.2", %choice.exit1172 ]
  %loop.idx.925.0 = phi i64 [ 0, %a.after1063 ], [ %loop.next1316, %choice.exit1172 ]
  %var.syms.6 = phi ptr [ %var.syms.5, %a.after1063 ], [ %var.syms.6, %choice.exit1172 ]
  %loop.cond1075 = icmp slt i64 %loop.idx.925.0, %a.len.query1073
  br i1 %loop.cond1075, label %a.rd.check1094, label %choice.exit1058

a.rd.check1094:                                   ; preds = %loop.header.925
  %a.rd.len1100 = load i64, ptr %var.syms.6, align 8
  %a.rd.ge01101 = icmp sge i64 %loop.idx.925.0, 0
  %a.rd.lt1102 = icmp slt i64 %loop.idx.925.0, %a.rd.len1100
  %a.rd.bounds1103 = and i1 %a.rd.ge01101, %a.rd.lt1102
  br i1 %a.rd.bounds1103, label %a.rd.ok1095, label %a.rd.err.oob1097

a.rd.ok1095:                                      ; preds = %a.rd.check1094
  %a.rd.data1104 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.syms.6, i32 0, i32 1
  %a.rd.data1105 = load ptr, ptr %a.rd.data1104, align 8
  %a.rd.elem.gep1106 = getelementptr i64, ptr %a.rd.data1105, i64 %loop.idx.925.0
  %a.rd.elem1107 = load i64, ptr %a.rd.elem.gep1106, align 8
  br label %a.rd.done1098

a.rd.err.oob1097:                                 ; preds = %a.rd.check1094
  %arena.cur1119 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1120 = call ptr @dva_arena_alloc(ptr %arena.cur1119, i64 56)
  store i64 4011, ptr %err.alloc1120, align 8
  %err.msg.gep1122 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1120, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep1122, align 8
  %err.file.gep1123 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1120, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep1123, align 8
  %err.line.gep1124 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1120, i32 0, i32 3
  store i64 403, ptr %err.line.gep1124, align 8
  %err.col.gep1125 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1120, i32 0, i32 4
  store i64 37, ptr %err.col.gep1125, align 8
  %err.ctx.gep1126 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1120, i32 0, i32 5
  store i64 %loop.idx.925.0, ptr %err.ctx.gep1126, align 8
  %err.ctx1.gep1128 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1126, i32 0, i32 1
  store i64 %a.rd.len1100, ptr %err.ctx1.gep1128, align 8
  %err.p2i1129 = ptrtoint ptr %err.alloc1120 to i64
  br label %a.rd.done1098

a.rd.done1098:                                    ; preds = %a.rd.err.oob1097, %a.rd.ok1095
  %a.rd.tag1130 = phi i1 [ true, %a.rd.ok1095 ], [ false, %a.rd.err.oob1097 ]
  %a.rd.pay1131 = phi i64 [ %a.rd.elem1107, %a.rd.ok1095 ], [ %err.p2i1129, %a.rd.err.oob1097 ]
  br i1 %a.rd.tag1130, label %unwrap.pos.926, label %unwrap.abort.926

unwrap.pos.926:                                   ; preds = %a.rd.done1098
  %pay.ptr1145 = inttoptr i64 %a.rd.pay1131 to ptr
  %fld.load1148 = load ptr, ptr %pay.ptr1145, align 8
  %eq.lhs.len1151 = load i64, ptr %fld.load1148, align 8
  %eq.lhs.len1152 = and i64 %eq.lhs.len1151, 281474976710655
  %eq.rhs.len1154 = load i64, ptr %fld.load662, align 8
  %eq.rhs.len1155 = and i64 %eq.rhs.len1154, 281474976710655
  %eq.len1156 = icmp eq i64 %eq.lhs.len1152, %eq.rhs.len1155
  br i1 %eq.len1156, label %str.eq.then1157, label %choice.exit1172

unwrap.abort.926:                                 ; preds = %a.rd.done1098
  %err.ptr = inttoptr i64 %a.rd.pay1131 to ptr
  %err.code = load i64, ptr %err.ptr, align 8
  %err.msg.gep1135 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep1135, align 8
  %err.file.gep1136 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep1136, align 8
  %err.line.gep1137 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep1137, align 8
  %err.col.gep1138 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep1138, align 8
  %err.msg.len1139 = load i64, ptr %err.msg.struct, align 8
  %err.msg.len1140 = and i64 %err.msg.len1139, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len1140 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data1141 = load ptr, ptr %err.msg.data, align 8
  %err.file.len1142 = load i64, ptr %err.file.struct, align 8
  %err.file.len1143 = and i64 %err.file.len1142, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len1143 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data1144 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.926
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.926
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data1141, i32 %err.file.len32, ptr %err.file.data1144, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

str.eq.then1157:                                  ; preds = %unwrap.pos.926
  %eq.lhs.data1160 = getelementptr inbounds { i64, ptr }, ptr %fld.load1148, i32 0, i32 1
  %eq.lhs.data1161 = load ptr, ptr %eq.lhs.data1160, align 8
  %eq.rhs.data1162 = getelementptr inbounds { i64, ptr }, ptr %fld.load662, i32 0, i32 1
  %eq.rhs.data1163 = load ptr, ptr %eq.rhs.data1162, align 8
  %eq.memcmp1164 = call i32 @memcmp(ptr %eq.lhs.data1161, ptr %eq.rhs.data1163, i64 %eq.lhs.len1152)
  %eq.cmp.zero1165 = icmp eq i32 %eq.memcmp1164, 0
  br i1 %eq.cmp.zero1165, label %and.927.then, label %choice.exit1172

and.927.then:                                     ; preds = %str.eq.then1157
  %fld.gep1168 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %pay.ptr1145, i32 0, i32 8
  %fld.load1169 = load i1, ptr %fld.gep1168, align 1
  %nottmp1170 = xor i1 %fld.load1169, true
  br i1 %nottmp1170, label %choice.then1171, label %choice.exit1172

choice.then1171:                                  ; preds = %and.927.then
  %fld.gep1174 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %pay.ptr1145, i32 0, i32 1
  %fld.load1175 = load ptr, ptr %fld.gep1174, align 8
  %eq.lhs.len1178 = load i64, ptr %fld.load1175, align 8
  %eq.lhs.len1179 = and i64 %eq.lhs.len1178, 281474976710655
  %eq.rhs.len1181 = load i64, ptr %fld.load662, align 8
  %eq.rhs.len1182 = and i64 %eq.rhs.len1181, 281474976710655
  %eq.len1183 = icmp eq i64 %eq.lhs.len1179, %eq.rhs.len1182
  br i1 %eq.len1183, label %str.eq.then1184, label %str.eq.merge1186

choice.exit1172:                                  ; preds = %str.eq.then1157, %unwrap.pos.926, %a.wr.done, %and.927.then
  %"var.updated'.2" = phi i1 [ %"var.updated'.1", %and.927.then ], [ true, %a.wr.done ], [ %"var.updated'.1", %unwrap.pos.926 ], [ %"var.updated'.1", %str.eq.then1157 ]
  %loop.next1316 = add i64 %loop.idx.925.0, 1
  br label %loop.header.925

str.eq.then1184:                                  ; preds = %choice.then1171
  %eq.lhs.data1187 = getelementptr inbounds { i64, ptr }, ptr %fld.load1175, i32 0, i32 1
  %eq.lhs.data1188 = load ptr, ptr %eq.lhs.data1187, align 8
  %eq.rhs.data1189 = getelementptr inbounds { i64, ptr }, ptr %fld.load662, i32 0, i32 1
  %eq.rhs.data1190 = load ptr, ptr %eq.rhs.data1189, align 8
  %eq.memcmp1191 = call i32 @memcmp(ptr %eq.lhs.data1188, ptr %eq.rhs.data1190, i64 %eq.lhs.len1179)
  %eq.cmp.zero1192 = icmp eq i32 %eq.memcmp1191, 0
  br label %str.eq.merge1186

str.eq.merge1186:                                 ; preds = %choice.then1171, %str.eq.then1184
  %str.eq.result1193 = phi i1 [ %eq.cmp.zero1192, %str.eq.then1184 ], [ false, %choice.then1171 ]
  %str.neq1194 = xor i1 %str.eq.result1193, true
  br i1 %str.neq1194, label %choice.then1195, label %a.after1207

choice.then1195:                                  ; preds = %str.eq.merge1186
  %fld.load1200 = load ptr, ptr %fld.gep1174, align 8
  br label %a.after1207

a.after1207:                                      ; preds = %choice.then1195, %str.eq.merge1186
  %choice.res1202 = phi ptr [ %fld.load1200, %choice.then1195 ], [ %choice.res1054, %str.eq.merge1186 ]
  br i1 %or.923.phi, label %choice.then1220, label %choice.else1221

choice.then1220:                                  ; preds = %a.after1207
  %var.load1223 = load i64, ptr @"var.lsp::SYM_FUNCTION", align 8
  br label %choice.exit1222

choice.else1221:                                  ; preds = %a.after1207
  %fld.gep1225 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %pay.ptr1145, i32 0, i32 2
  %fld.load1226 = load i64, ptr %fld.gep1225, align 8
  br label %choice.exit1222

choice.exit1222:                                  ; preds = %choice.else1221, %choice.then1220
  %choice.res1227 = phi i64 [ %var.load1223, %choice.then1220 ], [ %fld.load1226, %choice.else1221 ]
  %fld.gep1229 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %pay.ptr1145, i32 0, i32 3
  %fld.load1230 = load i64, ptr %fld.gep1229, align 8
  %fld.gep1232 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %pay.ptr1145, i32 0, i32 4
  %fld.load1233 = load i64, ptr %fld.gep1232, align 8
  %str.len.query1238 = load i64, ptr %fld.load662, align 8
  %str.len.query1239 = and i64 %str.len.query1238, 281474976710655
  %addtmp1240 = add i64 %choice.res148, %str.len.query1239
  %fld.gep1242 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %pay.ptr1145, i32 0, i32 7
  %fld.load1243 = load i1, ptr %fld.gep1242, align 1
  %fld.load1243.str.neq727 = select i1 %fld.load1243, i1 %fld.load1243, i1 %str.neq727
  %arena.cur1245 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1246 = call ptr @dva_arena_alloc(ptr %arena.cur1245, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr null, i32 1) to i64))
  store ptr %fld.load662, ptr %rec.alloc1246, align 8
  %rec.fld1248 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc1246, i32 0, i32 1
  store ptr %choice.res1202, ptr %rec.fld1248, align 8
  %rec.fld1249 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc1246, i32 0, i32 2
  store i64 %choice.res1227, ptr %rec.fld1249, align 8
  %rec.fld1250 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc1246, i32 0, i32 3
  store i64 %fld.load1230, ptr %rec.fld1250, align 8
  %rec.fld1251 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc1246, i32 0, i32 4
  store i64 %fld.load1233, ptr %rec.fld1251, align 8
  %rec.fld1252 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc1246, i32 0, i32 5
  store i64 %choice.res62, ptr %rec.fld1252, align 8
  %rec.fld1253 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc1246, i32 0, i32 6
  store i64 %addtmp1240, ptr %rec.fld1253, align 8
  %rec.fld1254 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc1246, i32 0, i32 7
  store i1 %fld.load1243.str.neq727, ptr %rec.fld1254, align 1
  %rec.fld1255 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc1246, i32 0, i32 8
  store i1 false, ptr %rec.fld1255, align 1
  %slot.p2i1256 = ptrtoint ptr %rec.alloc1246 to i64
  %a.wr.len1257 = load i64, ptr %var.syms.6, align 8
  %a.wr.lt = icmp slt i64 %loop.idx.925.0, %a.wr.len1257
  %a.wr.bounds = and i1 %a.rd.ge01101, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %choice.exit1222
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.syms.6, i32 0, i32 1
  %a.wr.data1258 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep1259 = getelementptr i64, ptr %a.wr.data1258, i64 %loop.idx.925.0
  store i64 %slot.p2i1256, ptr %a.elem.gep1259, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %choice.exit1222
  %arena.cur1270 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1271 = call ptr @dva_arena_alloc(ptr %arena.cur1270, i64 56)
  store i64 4011, ptr %err.alloc1271, align 8
  %err.msg.gep1273 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1271, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep1273, align 8
  %err.file.gep1274 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1271, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep1274, align 8
  %err.line.gep1275 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1271, i32 0, i32 3
  store i64 0, ptr %err.line.gep1275, align 8
  %err.col.gep1276 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1271, i32 0, i32 4
  store i64 0, ptr %err.col.gep1276, align 8
  %err.ctx.gep1277 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1271, i32 0, i32 5
  store i64 %loop.idx.925.0, ptr %err.ctx.gep1277, align 8
  %err.ctx1.gep1279 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1277, i32 0, i32 1
  store i64 %a.wr.len1257, ptr %err.ctx1.gep1279, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc1271, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.exit1172, label %choice.else1281

choice.else1281:                                  ; preds = %a.wr.done
  %err.code1287 = load i64, ptr %a.wr.niche, align 8
  %err.msg.gep1288 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct1289 = load ptr, ptr %err.msg.gep1288, align 8
  %err.file.gep1290 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct1291 = load ptr, ptr %err.file.gep1290, align 8
  %err.line.gep1292 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line1293 = load i64, ptr %err.line.gep1292, align 8
  %err.col.gep1294 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col1295 = load i64, ptr %err.col.gep1294, align 8
  %err.msg.len1297 = load i64, ptr %err.msg.struct1289, align 8
  %err.msg.len1298 = and i64 %err.msg.len1297, 281474976710655
  %err.msg.len321299 = trunc i64 %err.msg.len1298 to i32
  %err.msg.data1300 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1289, i32 0, i32 1
  %err.msg.data1301 = load ptr, ptr %err.msg.data1300, align 8
  %err.file.len1303 = load i64, ptr %err.file.struct1291, align 8
  %err.file.len1304 = and i64 %err.file.len1303, 281474976710655
  %err.file.len321305 = trunc i64 %err.file.len1304 to i32
  %err.file.data1306 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1291, i32 0, i32 1
  %err.file.data1307 = load ptr, ptr %err.file.data1306, align 8
  %err.thread.rec1308 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1309 = icmp ne ptr %err.thread.rec1308, null
  br i1 %err.is.thread1309, label %err.thread1310, label %err.normal1311

err.thread1310:                                   ; preds = %choice.else1281
  %err.haserr.gep1312 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1308, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1312, align 8
  %err.err.gep1313 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1308, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep1313, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1311:                                   ; preds = %choice.else1281
  %err.panic.printf1314 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1287, i32 %err.msg.len321299, ptr %err.msg.data1301, i32 %err.file.len321305, ptr %err.file.data1307, i64 %err.line1293, i64 %err.col1295)
  call void @exit(i32 1)
  unreachable

choice.then1319:                                  ; preds = %choice.exit1058
  %str.len.query1330 = load i64, ptr %fld.load662, align 8
  %str.len.query1331 = and i64 %str.len.query1330, 281474976710655
  %addtmp1332 = add i64 %choice.res148, %str.len.query1331
  %arena.cur1334 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1335 = call ptr @dva_arena_alloc(ptr %arena.cur1334, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr null, i32 1) to i64))
  store ptr %fld.load662, ptr %rec.alloc1335, align 8
  %rec.fld1337 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc1335, i32 0, i32 1
  store ptr %choice.res1054, ptr %rec.fld1337, align 8
  %rec.fld1338 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc1335, i32 0, i32 2
  store i64 %choice.res707, ptr %rec.fld1338, align 8
  %rec.fld1339 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc1335, i32 0, i32 3
  store i64 %choice.res62, ptr %rec.fld1339, align 8
  %rec.fld1340 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc1335, i32 0, i32 4
  store i64 %choice.res148, ptr %rec.fld1340, align 8
  %rec.fld1341 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc1335, i32 0, i32 5
  store i64 %choice.res62, ptr %rec.fld1341, align 8
  %rec.fld1342 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc1335, i32 0, i32 6
  store i64 %addtmp1332, ptr %rec.fld1342, align 8
  %rec.fld1343 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc1335, i32 0, i32 7
  store i1 %str.neq727, ptr %rec.fld1343, align 1
  %rec.fld1344 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc1335, i32 0, i32 8
  store i1 false, ptr %rec.fld1344, align 1
  %a.null1346 = icmp eq ptr %var.syms.4, null
  br i1 %a.null1346, label %a.create1347, label %a.check1357

a.create1347:                                     ; preds = %choice.then1319
  %arena.cur1349 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1350 = call ptr @dva_arena_alloc(ptr %arena.cur1349, i64 24)
  %arena.cur1351 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1352 = call ptr @dva_arena_alloc(ptr %arena.cur1351, i64 128)
  store i64 0, ptr %a.create1350, align 8
  %a.data.gep1354 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1350, i32 0, i32 1
  store ptr %a.buf1352, ptr %a.data.gep1354, align 8
  %a.cap.gep1355 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1350, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1355, align 8
  br label %a.check1357

a.check1357:                                      ; preds = %choice.then1319, %a.create1347
  %var.syms.11 = phi ptr [ %a.create1350, %a.create1347 ], [ %var.syms.4, %choice.then1319 ]
  %a.len1361 = load i64, ptr %var.syms.11, align 8
  %a.cap1362 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.syms.11, i32 0, i32 2
  %a.cap1363 = load i64, ptr %a.cap1362, align 8
  %a.needs.grow1364 = icmp eq i64 %a.len1361, %a.cap1363
  br i1 %a.needs.grow1364, label %a.grow1358, label %a.store1359

a.grow1358:                                       ; preds = %a.check1357
  call void @dva_array_grow(ptr %var.syms.11)
  br label %a.store1359

a.store1359:                                      ; preds = %a.grow1358, %a.check1357
  %a.cur.data1365 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.syms.11, i32 0, i32 1
  %a.cur.data1366 = load ptr, ptr %a.cur.data1365, align 8
  %a.cur.len1368 = load i64, ptr %var.syms.11, align 8
  %a.elem.gep1369 = getelementptr i64, ptr %a.cur.data1366, i64 %a.cur.len1368
  %slot.p2i1370 = ptrtoint ptr %rec.alloc1335 to i64
  store i64 %slot.p2i1370, ptr %a.elem.gep1369, align 8
  %a.next.len1371 = add i64 %a.cur.len1368, 1
  store i64 %a.next.len1371, ptr %var.syms.11, align 8
  br label %choice.exit150

a.create1378:                                     ; preds = %loop.exit.921
  %arena.cur1380 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1381 = call ptr @dva_arena_alloc(ptr %arena.cur1380, i64 24)
  %arena.cur1382 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1383 = call ptr @dva_arena_alloc(ptr %arena.cur1382, i64 128)
  store i64 0, ptr %a.create1381, align 8
  %a.data.gep1385 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1381, i32 0, i32 1
  store ptr %a.buf1383, ptr %a.data.gep1385, align 8
  %a.cap.gep1386 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1381, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1386, align 8
  br label %a.after1379

a.after1379:                                      ; preds = %a.create1378, %loop.exit.921
  %var.syms.12 = phi ptr [ %a.create1381, %a.create1378 ], [ %var.syms.0, %loop.exit.921 ]
  ret ptr %var.syms.12
}

define i1 @"lsp::has_use_imports"(ptr %0) #3 {
entry:
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  store i64 0, ptr %a.create1, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.stmts.0 = phi ptr [ %a.create1, %a.create ], [ %0, %entry ]
  %arr.cycle.len3 = load i64, ptr %var.stmts.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.stmts.0, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.929

loop.header.929:                                  ; preds = %choice.exit7, %a.after
  %loop.idx.929.0 = phi i64 [ 0, %a.after ], [ %loop.next, %choice.exit7 ]
  %loop.cond = icmp slt i64 %loop.idx.929.0, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.929, label %loop.exit.929

loop.body.929:                                    ; preds = %loop.header.929
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %loop.idx.929.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %tag.id = load i64, ptr %slot.i2p, align 8
  %tag.match = icmp eq i64 %tag.id, 20
  br i1 %tag.match, label %loop.exit.929, label %choice.exit7

loop.exit.929:                                    ; preds = %loop.body.929, %loop.header.929
  %"var.found'.0" = phi i1 [ false, %loop.header.929 ], [ true, %loop.body.929 ]
  ret i1 %"var.found'.0"

choice.exit7:                                     ; preds = %loop.body.929
  %loop.next = add i64 %loop.idx.929.0, 1
  br label %loop.header.929
}

define { i64, ptr } @"lsp::lsp_range_json"(i64 %0, i64 %1, i64 %2, i64 %3) #3 {
entry:
  %cat.ibuf39 = alloca [24 x i8], align 1
  %cat.ibuf35 = alloca [24 x i8], align 1
  %cat.ibuf31 = alloca [24 x i8], align 1
  %cat.ibuf = alloca [24 x i8], align 1
  %cmptmp = icmp sgt i64 %0, 0
  %subtmp = sub i64 %0, 1
  %choice.res = select i1 %cmptmp, i64 %subtmp, i64 0
  %cmptmp3 = icmp sgt i64 %1, 0
  %subtmp8 = sub i64 %1, 1
  %choice.res9 = select i1 %cmptmp3, i64 %subtmp8, i64 0
  %cmptmp11 = icmp sgt i64 %2, 0
  %subtmp16 = sub i64 %2, 1
  %choice.res18 = select i1 %cmptmp11, i64 %subtmp16, i64 %choice.res
  %cmptmp20 = icmp sgt i64 %3, 0
  %subtmp25 = sub i64 %3, 1
  %addtmp = add i64 %choice.res9, 1
  %choice.res27 = select i1 %cmptmp20, i64 %subtmp25, i64 %addtmp
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %choice.res, i1 false)
  %cat.ilen32 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf31, i64 %choice.res9, i1 false)
  %cat.ilen36 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf35, i64 %choice.res18, i1 false)
  %cat.ilen40 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf39, i64 %choice.res27, i1 false)
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 17, i64 %cat.ilen)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len42

cat.sum.len42:                                    ; preds = %entry
  %cat.sum.len43 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 13)
  %sum44 = extractvalue { i64, i1 } %cat.sum.len43, 0
  %ovf45 = extractvalue { i64, i1 } %cat.sum.len43, 1
  br i1 %ovf45, label %str_overflow_abort47, label %cat.sum.len46

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len46:                                    ; preds = %cat.sum.len42
  %cat.sum.len49 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum44, i64 %cat.ilen32)
  %sum50 = extractvalue { i64, i1 } %cat.sum.len49, 0
  %ovf51 = extractvalue { i64, i1 } %cat.sum.len49, 1
  br i1 %ovf51, label %str_overflow_abort53, label %cat.sum.len52

str_overflow_abort47:                             ; preds = %cat.sum.len42
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len52:                                    ; preds = %cat.sum.len46
  %cat.sum.len55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum50, i64 16)
  %sum56 = extractvalue { i64, i1 } %cat.sum.len55, 0
  %ovf57 = extractvalue { i64, i1 } %cat.sum.len55, 1
  br i1 %ovf57, label %str_overflow_abort59, label %cat.sum.len58

str_overflow_abort53:                             ; preds = %cat.sum.len46
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len58:                                    ; preds = %cat.sum.len52
  %cat.sum.len61 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum56, i64 %cat.ilen36)
  %sum62 = extractvalue { i64, i1 } %cat.sum.len61, 0
  %ovf63 = extractvalue { i64, i1 } %cat.sum.len61, 1
  br i1 %ovf63, label %str_overflow_abort65, label %cat.sum.len64

str_overflow_abort59:                             ; preds = %cat.sum.len52
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len64:                                    ; preds = %cat.sum.len58
  %cat.sum.len67 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum62, i64 13)
  %sum68 = extractvalue { i64, i1 } %cat.sum.len67, 0
  %ovf69 = extractvalue { i64, i1 } %cat.sum.len67, 1
  br i1 %ovf69, label %str_overflow_abort71, label %cat.sum.len70

str_overflow_abort65:                             ; preds = %cat.sum.len58
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len70:                                    ; preds = %cat.sum.len64
  %cat.sum.len73 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum68, i64 %cat.ilen40)
  %sum74 = extractvalue { i64, i1 } %cat.sum.len73, 0
  %ovf75 = extractvalue { i64, i1 } %cat.sum.len73, 1
  br i1 %ovf75, label %str_overflow_abort77, label %cat.sum.len76

str_overflow_abort71:                             ; preds = %cat.sum.len64
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len76:                                    ; preds = %cat.sum.len70
  %cat.sum.len79 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum74, i64 2)
  %sum80 = extractvalue { i64, i1 } %cat.sum.len79, 0
  %ovf81 = extractvalue { i64, i1 } %cat.sum.len79, 1
  br i1 %ovf81, label %str_overflow_abort83, label %cat.sum.len82

str_overflow_abort77:                             ; preds = %cat.sum.len70
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len82:                                    ; preds = %cat.sum.len76
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum80, i64 1)
  %sum85 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf86 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf86, label %str_overflow_abort88, label %concat.tot.len87

str_overflow_abort83:                             ; preds = %cat.sum.len76
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len87:                                 ; preds = %cat.sum.len82
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum85)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.55, i64 17, i1 false)
  %cat.dst90 = getelementptr i8, ptr %concat.buf, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst90, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %cat.off = add i64 17, %cat.ilen
  %cat.dst91 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst91, ptr align 1 @str.56, i64 13, i1 false)
  %cat.off92 = add i64 %cat.off, 13
  %cat.dst93 = getelementptr i8, ptr %concat.buf, i64 %cat.off92
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst93, ptr align 1 %cat.ibuf31, i64 %cat.ilen32, i1 false)
  %cat.off94 = add i64 %cat.off92, %cat.ilen32
  %cat.dst95 = getelementptr i8, ptr %concat.buf, i64 %cat.off94
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst95, ptr align 1 @str.57, i64 16, i1 false)
  %cat.off96 = add i64 %cat.off94, 16
  %cat.dst97 = getelementptr i8, ptr %concat.buf, i64 %cat.off96
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst97, ptr align 1 %cat.ibuf35, i64 %cat.ilen36, i1 false)
  %cat.off98 = add i64 %cat.off96, %cat.ilen36
  %cat.dst99 = getelementptr i8, ptr %concat.buf, i64 %cat.off98
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst99, ptr align 1 @str.56, i64 13, i1 false)
  %cat.off100 = add i64 %cat.off98, 13
  %cat.dst101 = getelementptr i8, ptr %concat.buf, i64 %cat.off100
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst101, ptr align 1 %cat.ibuf39, i64 %cat.ilen40, i1 false)
  %cat.off102 = add i64 %cat.off100, %cat.ilen40
  %cat.dst103 = getelementptr i8, ptr %concat.buf, i64 %cat.off102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst103, ptr align 1 @str.58, i64 2, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum80
  store i8 0, ptr %concat.nul, align 1
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %sum80, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %concat.buf, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

str_overflow_abort88:                             ; preds = %cat.sum.len82
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"lsp::lsp_diag_json"(i64 %0, i64 %1, i64 %2, ptr %3, i1 %4) #3 {
entry:
  %cat.ibuf87 = alloca [24 x i8], align 1
  %cat.ibuf83 = alloca [24 x i8], align 1
  %cat.ibuf = alloca [24 x i8], align 1
  %. = select i1 %4, i64 2, i64 1
  %addtmp = add i64 %2, 1
  %call.res = call { i64, ptr } @"lsp::lsp_range_json"(i64 %1, i64 %2, i64 %1, i64 %addtmp)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %0, i1 false)
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 %cat.ilen)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len7

cat.sum.len7:                                     ; preds = %entry
  %cat.sum.len8 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 2)
  %sum9 = extractvalue { i64, i1 } %cat.sum.len8, 0
  %ovf10 = extractvalue { i64, i1 } %cat.sum.len8, 1
  br i1 %ovf10, label %str_overflow_abort12, label %cat.sum.len11

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len11:                                    ; preds = %cat.sum.len7
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum9, i64 1)
  %sum14 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf15 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf15, label %str_overflow_abort17, label %concat.tot.len16

str_overflow_abort12:                             ; preds = %cat.sum.len7
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len16:                                 ; preds = %cat.sum.len11
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum14)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.59, i64 1, i1 false)
  %cat.dst19 = getelementptr i8, ptr %concat.buf, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst19, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %cat.off = add i64 1, %cat.ilen
  %cat.dst20 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst20, ptr align 1 @str.6, i64 2, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum9
  store i8 0, ptr %concat.nul, align 1
  %str.len.query22 = load i64, ptr %3, align 8
  %str.len.query23 = and i64 %str.len.query22, 281474976710655
  %str.len.query27 = and i64 %sum9, 281474976710655
  %cmptmp = icmp sge i64 %str.len.query23, %str.len.query27
  br i1 %cmptmp, label %and.930.then, label %choice.else43

str_overflow_abort17:                             ; preds = %cat.sum.len11
  call void @dva_abort_str_overflow_msg()
  unreachable

and.930.then:                                     ; preds = %concat.tot.len16
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %3, i32 0, i32 1
  %s.read.data31 = load ptr, ptr %s.read.data, align 8
  %view.empty = icmp sle i64 %str.len.query27, 0
  %view.len = select i1 %view.empty, i64 0, i64 %str.len.query27
  %eq.memcmp = call i32 @memcmp(ptr %s.read.data31, ptr %concat.buf, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.exit44, label %choice.else43

choice.else43:                                    ; preds = %concat.tot.len16, %and.930.then
  %concat.rhs52 = load i64, ptr %3, align 8
  %concat.rhs53 = and i64 %concat.rhs52, 281474976710655
  %concat.rhs54 = getelementptr inbounds { i64, ptr }, ptr %3, i32 0, i32 1
  %concat.rhs55 = load ptr, ptr %concat.rhs54, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %str.len.query27, i64 %concat.rhs53)
  %sum56 = extractvalue { i64, i1 } %concat.sum.len, 0
  %concat.tot.len61 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum56, i64 1)
  %sum62 = extractvalue { i64, i1 } %concat.tot.len61, 0
  %arena.cur67 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 %sum62)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf68, ptr align 1 %concat.buf, i64 %str.len.query27, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf68, i64 %str.len.query27
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs55, i64 %concat.rhs53, i1 false)
  %concat.nul69 = getelementptr i8, ptr %concat.buf68, i64 %sum56
  store i8 0, ptr %concat.nul69, align 1
  %arena.cur70 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str71 = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 16)
  store i64 %sum56, ptr %concat.str71, align 8
  %str.build.data.gep73 = getelementptr inbounds { i64, ptr }, ptr %concat.str71, i32 0, i32 1
  store ptr %concat.buf68, ptr %str.build.data.gep73, align 8
  br label %choice.exit44

choice.exit44:                                    ; preds = %and.930.then, %choice.else43
  %choice.res74 = phi ptr [ %concat.str71, %choice.else43 ], [ %3, %and.930.then ]
  %cat.seg78 = and i64 %call.res.fca.0.extract, 281474976710655
  %cat.ilen84 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf83, i64 %., i1 false)
  %cat.ilen88 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf87, i64 %0, i1 false)
  %call.res93 = call { i64, ptr } @"json::escape_string"(ptr %choice.res74)
  %call.res93.fca.0.extract = extractvalue { i64, ptr } %call.res93, 0
  %call.res93.fca.1.extract = extractvalue { i64, ptr } %call.res93, 1
  %cat.seg97 = and i64 %call.res93.fca.0.extract, 281474976710655
  %cat.sum.len101 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 9, i64 %cat.seg78)
  %sum102 = extractvalue { i64, i1 } %cat.sum.len101, 0
  %cat.sum.len107 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum102, i64 12)
  %sum108 = extractvalue { i64, i1 } %cat.sum.len107, 0
  %cat.sum.len113 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum108, i64 %cat.ilen84)
  %sum114 = extractvalue { i64, i1 } %cat.sum.len113, 0
  %ovf115 = extractvalue { i64, i1 } %cat.sum.len113, 1
  br i1 %ovf115, label %str_overflow_abort117, label %cat.sum.len116

cat.sum.len116:                                   ; preds = %choice.exit44
  %cat.sum.len119 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum114, i64 10)
  %sum120 = extractvalue { i64, i1 } %cat.sum.len119, 0
  %ovf121 = extractvalue { i64, i1 } %cat.sum.len119, 1
  br i1 %ovf121, label %str_overflow_abort123, label %cat.sum.len122

str_overflow_abort117:                            ; preds = %choice.exit44
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len122:                                   ; preds = %cat.sum.len116
  %cat.sum.len125 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum120, i64 %cat.ilen88)
  %sum126 = extractvalue { i64, i1 } %cat.sum.len125, 0
  %ovf127 = extractvalue { i64, i1 } %cat.sum.len125, 1
  br i1 %ovf127, label %str_overflow_abort129, label %cat.sum.len128

str_overflow_abort123:                            ; preds = %cat.sum.len116
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len128:                                   ; preds = %cat.sum.len122
  %cat.sum.len131 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum126, i64 1)
  %sum132 = extractvalue { i64, i1 } %cat.sum.len131, 0
  %ovf133 = extractvalue { i64, i1 } %cat.sum.len131, 1
  br i1 %ovf133, label %str_overflow_abort135, label %cat.sum.len134

str_overflow_abort129:                            ; preds = %cat.sum.len122
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len134:                                   ; preds = %cat.sum.len128
  %cat.sum.len137 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum132, i64 16)
  %sum138 = extractvalue { i64, i1 } %cat.sum.len137, 0
  %ovf139 = extractvalue { i64, i1 } %cat.sum.len137, 1
  br i1 %ovf139, label %str_overflow_abort141, label %cat.sum.len140

str_overflow_abort135:                            ; preds = %cat.sum.len128
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len140:                                   ; preds = %cat.sum.len134
  %cat.sum.len143 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum138, i64 11)
  %sum144 = extractvalue { i64, i1 } %cat.sum.len143, 0
  %ovf145 = extractvalue { i64, i1 } %cat.sum.len143, 1
  br i1 %ovf145, label %str_overflow_abort147, label %cat.sum.len146

str_overflow_abort141:                            ; preds = %cat.sum.len134
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len146:                                   ; preds = %cat.sum.len140
  %cat.sum.len149 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum144, i64 %cat.seg97)
  %sum150 = extractvalue { i64, i1 } %cat.sum.len149, 0
  %ovf151 = extractvalue { i64, i1 } %cat.sum.len149, 1
  br i1 %ovf151, label %str_overflow_abort153, label %cat.sum.len152

str_overflow_abort147:                            ; preds = %cat.sum.len140
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len152:                                   ; preds = %cat.sum.len146
  %cat.sum.len155 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum150, i64 1)
  %sum156 = extractvalue { i64, i1 } %cat.sum.len155, 0
  %ovf157 = extractvalue { i64, i1 } %cat.sum.len155, 1
  br i1 %ovf157, label %str_overflow_abort159, label %cat.sum.len158

str_overflow_abort153:                            ; preds = %cat.sum.len146
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len158:                                   ; preds = %cat.sum.len152
  %concat.tot.len161 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum156, i64 1)
  %sum162 = extractvalue { i64, i1 } %concat.tot.len161, 0
  %ovf163 = extractvalue { i64, i1 } %concat.tot.len161, 1
  br i1 %ovf163, label %str_overflow_abort165, label %concat.tot.len164

str_overflow_abort159:                            ; preds = %cat.sum.len152
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len164:                                ; preds = %cat.sum.len158
  %arena.cur167 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf168 = call ptr @dva_arena_alloc(ptr %arena.cur167, i64 %sum162)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf168, ptr align 1 @str.60, i64 9, i1 false)
  %cat.dst170 = getelementptr i8, ptr %concat.buf168, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst170, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg78, i1 false)
  %cat.off171 = add nuw nsw i64 9, %cat.seg78
  %cat.dst172 = getelementptr i8, ptr %concat.buf168, i64 %cat.off171
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst172, ptr align 1 @str.61, i64 12, i1 false)
  %cat.off173 = add nuw nsw i64 %cat.off171, 12
  %cat.dst174 = getelementptr i8, ptr %concat.buf168, i64 %cat.off173
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst174, ptr align 1 %cat.ibuf83, i64 %cat.ilen84, i1 false)
  %cat.off175 = add i64 %cat.off173, %cat.ilen84
  %cat.dst176 = getelementptr i8, ptr %concat.buf168, i64 %cat.off175
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst176, ptr align 1 @str.62, i64 10, i1 false)
  %cat.off177 = add i64 %cat.off175, 10
  %cat.dst178 = getelementptr i8, ptr %concat.buf168, i64 %cat.off177
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst178, ptr align 1 %cat.ibuf87, i64 %cat.ilen88, i1 false)
  %cat.off179 = add i64 %cat.off177, %cat.ilen88
  %cat.dst180 = getelementptr i8, ptr %concat.buf168, i64 %cat.off179
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst180, ptr align 1 @str.63, i64 1, i1 false)
  %cat.off181 = add i64 %cat.off179, 1
  %cat.dst182 = getelementptr i8, ptr %concat.buf168, i64 %cat.off181
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst182, ptr align 1 @str.64, i64 16, i1 false)
  %cat.off183 = add i64 %cat.off181, 16
  %cat.dst184 = getelementptr i8, ptr %concat.buf168, i64 %cat.off183
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst184, ptr align 1 @str.65, i64 11, i1 false)
  %cat.off185 = add i64 %cat.off183, 11
  %cat.dst186 = getelementptr i8, ptr %concat.buf168, i64 %cat.off185
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst186, ptr align 1 %call.res93.fca.1.extract, i64 %cat.seg97, i1 false)
  %cat.off187 = add i64 %cat.off185, %cat.seg97
  %cat.dst188 = getelementptr i8, ptr %concat.buf168, i64 %cat.off187
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst188, ptr align 1 @str.44, i64 1, i1 false)
  %concat.nul189 = getelementptr i8, ptr %concat.buf168, i64 %sum156
  store i8 0, ptr %concat.nul189, align 1
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %sum156, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %concat.buf168, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

str_overflow_abort165:                            ; preds = %cat.sum.len158
  call void @dva_abort_str_overflow_msg()
  unreachable
}

declare { i64, ptr } @"json::escape_string"(ptr) #3

define void @"lsp::publish_diagnostics"(ptr %0, ptr %1) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 513)
  store i8 0, ptr %b.buf, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.buf, ptr align 1 @str.66, i64 76, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.buf, i64 76
  store i8 0, ptr %b.app.nul, align 1
  %call.res = call { i64, ptr } @"json::escape_string"(ptr %0)
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %app.str.len23 = load i64, ptr %ret.ub.alloc, align 8
  %app.str.len24 = and i64 %app.str.len23, 281474976710655
  %app.str.data25 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data26 = load ptr, ptr %app.str.data25, align 8
  %b.app.new.len29 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 76, i64 %app.str.len24)
  %sum30 = extractvalue { i64, i1 } %b.app.new.len29, 0
  %b.need.grow37 = icmp slt i64 512, %sum30
  br i1 %b.need.grow37, label %b.grow238, label %b.grow_done40

b.grow238:                                        ; preds = %entry
  %b.cap.need44 = icmp slt i64 1024, %sum30
  %b.new.cap45 = select i1 %b.cap.need44, i64 %sum30, i64 1024
  %b.new.buf.len250 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap45, i64 1)
  %sum51 = extractvalue { i64, i1 } %b.new.buf.len250, 0
  %arena.cur56 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf257 = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 %sum51)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf257, ptr align 1 %b.buf, i64 76, i1 false)
  %b.grow2.nul58 = getelementptr i8, ptr %b.new.buf257, i64 76
  store i8 0, ptr %b.grow2.nul58, align 1
  br label %b.grow_done40

b.grow_done40:                                    ; preds = %entry, %b.grow238
  %builder.new.salloc.sroa.42.1 = phi i64 [ %b.new.cap45, %b.grow238 ], [ 512, %entry ]
  %builder.new.salloc.sroa.21.1 = phi ptr [ %b.new.buf257, %b.grow238 ], [ %b.buf, %entry ]
  %b.app.dst63 = getelementptr i8, ptr %builder.new.salloc.sroa.21.1, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst63, ptr align 1 %app.str.data26, i64 %app.str.len24, i1 false)
  %b.app.nul64 = getelementptr i8, ptr %builder.new.salloc.sroa.21.1, i64 %sum30
  store i8 0, ptr %b.app.nul64, align 1
  %b.app.new.len72 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum30, i64 16)
  %sum73 = extractvalue { i64, i1 } %b.app.new.len72, 0
  %b.need.grow80 = icmp slt i64 %builder.new.salloc.sroa.42.1, %sum73
  br i1 %b.need.grow80, label %b.grow281, label %b.grow_done83

b.grow281:                                        ; preds = %b.grow_done40
  %b.cap284 = mul nuw nsw i64 %builder.new.salloc.sroa.42.1, 2
  %b.cap.grow86 = select i1 false, i64 16, i64 %b.cap284
  %b.cap.need87 = icmp slt i64 %b.cap.grow86, %sum73
  %b.new.cap88 = select i1 %b.cap.need87, i64 %sum73, i64 %b.cap.grow86
  %b.new.buf.len293 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap88, i64 1)
  %sum94 = extractvalue { i64, i1 } %b.new.buf.len293, 0
  %arena.cur99 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2100 = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 %sum94)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2100, ptr align 1 %builder.new.salloc.sroa.21.1, i64 %sum30, i1 false)
  %b.grow2.nul101 = getelementptr i8, ptr %b.new.buf2100, i64 %sum30
  store i8 0, ptr %b.grow2.nul101, align 1
  br label %b.grow_done83

b.grow_done83:                                    ; preds = %b.grow_done40, %b.grow281
  %builder.new.salloc.sroa.42.2 = phi i64 [ %b.new.cap88, %b.grow281 ], [ %builder.new.salloc.sroa.42.1, %b.grow_done40 ]
  %builder.new.salloc.sroa.21.2 = phi ptr [ %b.new.buf2100, %b.grow281 ], [ %builder.new.salloc.sroa.21.1, %b.grow_done40 ]
  %b.app.dst106 = getelementptr i8, ptr %builder.new.salloc.sroa.21.2, i64 %sum30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst106, ptr align 1 @str.67, i64 16, i1 false)
  %b.app.nul107 = getelementptr i8, ptr %builder.new.salloc.sroa.21.2, i64 %sum73
  store i8 0, ptr %b.app.nul107, align 1
  %a.null = icmp eq ptr %1, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %b.grow_done83
  %arena.cur110 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 24)
  %arena.cur112 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur112, i64 128)
  store i64 0, ptr %a.create111, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create111, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create111, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %b.grow_done83
  %var.diags.0 = phi ptr [ %a.create111, %a.create ], [ %1, %b.grow_done83 ]
  %arr.cycle.len113 = load i64, ptr %var.diags.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.diags.0, i32 0, i32 1
  %arr.cycle.data114 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.931

loop.header.931:                                  ; preds = %b.grow_done194, %a.after
  %builder.new.salloc.sroa.42.3 = phi i64 [ %builder.new.salloc.sroa.42.2, %a.after ], [ %builder.new.salloc.sroa.42.6, %b.grow_done194 ]
  %builder.new.salloc.sroa.21.3 = phi ptr [ %builder.new.salloc.sroa.21.2, %a.after ], [ %builder.new.salloc.sroa.21.6, %b.grow_done194 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ %sum73, %a.after ], [ %sum184, %b.grow_done194 ]
  %loop.idx.931.0 = phi i64 [ 0, %a.after ], [ %loop.next, %b.grow_done194 ]
  %loop.cond = icmp slt i64 %loop.idx.931.0, %arr.cycle.len113
  br i1 %loop.cond, label %loop.body.931, label %loop.exit.931

loop.body.931:                                    ; preds = %loop.header.931
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data114, i64 %loop.idx.931.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %cmptmp = icmp sgt i64 %loop.idx.931.0, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.931:                                    ; preds = %loop.header.931
  %b.app.new.len226 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 3)
  %sum227 = extractvalue { i64, i1 } %b.app.new.len226, 0
  %ovf228 = extractvalue { i64, i1 } %b.app.new.len226, 1
  br i1 %ovf228, label %str_overflow_abort230, label %b.app.new.len229

choice.then:                                      ; preds = %loop.body.931
  %b.app.new.len122 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 1)
  %sum123 = extractvalue { i64, i1 } %b.app.new.len122, 0
  %ovf124 = extractvalue { i64, i1 } %b.app.new.len122, 1
  br i1 %ovf124, label %str_overflow_abort126, label %b.app.new.len125

choice.exit:                                      ; preds = %b.grow_done133, %loop.body.931
  %builder.new.salloc.sroa.42.4 = phi i64 [ %builder.new.salloc.sroa.42.5, %b.grow_done133 ], [ %builder.new.salloc.sroa.42.3, %loop.body.931 ]
  %builder.new.salloc.sroa.21.4 = phi ptr [ %builder.new.salloc.sroa.21.5, %b.grow_done133 ], [ %builder.new.salloc.sroa.21.3, %loop.body.931 ]
  %builder.new.salloc.sroa.0.1 = phi i64 [ %sum123, %b.grow_done133 ], [ %builder.new.salloc.sroa.0.0, %loop.body.931 ]
  %fld.load = load i64, ptr %slot.i2p, align 8
  %fld.gep162 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %slot.i2p, i32 0, i32 2
  %fld.load163 = load i64, ptr %fld.gep162, align 8
  %fld.gep165 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %slot.i2p, i32 0, i32 3
  %fld.load166 = load i64, ptr %fld.gep165, align 8
  %fld.gep168 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %slot.i2p, i32 0, i32 4
  %fld.load169 = load ptr, ptr %fld.gep168, align 8
  %fld.gep171 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %slot.i2p, i32 0, i32 5
  %fld.load172 = load i1, ptr %fld.gep171, align 1
  %call.res173 = call { i64, ptr } @"lsp::lsp_diag_json"(i64 %fld.load, i64 %fld.load163, i64 %fld.load166, ptr %fld.load169, i1 %fld.load172)
  %arena.cur174 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc175 = call ptr @dva_arena_alloc(ptr %arena.cur174, i64 16)
  store { i64, ptr } %call.res173, ptr %ret.ub.alloc175, align 8
  %app.str.len177 = load i64, ptr %ret.ub.alloc175, align 8
  %app.str.len178 = and i64 %app.str.len177, 281474976710655
  %app.str.data179 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc175, i32 0, i32 1
  %app.str.data180 = load ptr, ptr %app.str.data179, align 8
  %b.app.new.len183 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.1, i64 %app.str.len178)
  %sum184 = extractvalue { i64, i1 } %b.app.new.len183, 0
  %ovf185 = extractvalue { i64, i1 } %b.app.new.len183, 1
  br i1 %ovf185, label %str_overflow_abort187, label %b.app.new.len186

b.app.new.len125:                                 ; preds = %choice.then
  %b.need.grow130 = icmp slt i64 %builder.new.salloc.sroa.42.3, %sum123
  br i1 %b.need.grow130, label %b.grow2131, label %b.grow_done133

str_overflow_abort126:                            ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2131:                                       ; preds = %b.app.new.len125
  %b.cap2134 = mul i64 %builder.new.salloc.sroa.42.3, 2
  %b.cap.small135 = icmp slt i64 %b.cap2134, 16
  %b.cap.grow136 = select i1 %b.cap.small135, i64 16, i64 %b.cap2134
  %b.cap.need137 = icmp slt i64 %b.cap.grow136, %sum123
  %b.new.cap138 = select i1 %b.cap.need137, i64 %sum123, i64 %b.cap.grow136
  %b.new.buf.len2143 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap138, i64 1)
  %sum144 = extractvalue { i64, i1 } %b.new.buf.len2143, 0
  %ovf145 = extractvalue { i64, i1 } %b.new.buf.len2143, 1
  br i1 %ovf145, label %str_overflow_abort147, label %b.new.buf.len2146

b.grow_done133:                                   ; preds = %b.app.new.len125, %b.new.buf.len2146
  %builder.new.salloc.sroa.42.5 = phi i64 [ %b.new.cap138, %b.new.buf.len2146 ], [ %builder.new.salloc.sroa.42.3, %b.app.new.len125 ]
  %builder.new.salloc.sroa.21.5 = phi ptr [ %b.new.buf2150, %b.new.buf.len2146 ], [ %builder.new.salloc.sroa.21.3, %b.app.new.len125 ]
  %b.app.dst156 = getelementptr i8, ptr %builder.new.salloc.sroa.21.5, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst156, ptr align 1 @str.68, i64 1, i1 false)
  %b.app.nul157 = getelementptr i8, ptr %builder.new.salloc.sroa.21.5, i64 %sum123
  store i8 0, ptr %b.app.nul157, align 1
  br label %choice.exit

b.new.buf.len2146:                                ; preds = %b.grow2131
  %arena.cur149 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2150 = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 %sum144)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2150, ptr align 1 %builder.new.salloc.sroa.21.3, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul151 = getelementptr i8, ptr %b.new.buf2150, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul151, align 1
  br label %b.grow_done133

str_overflow_abort147:                            ; preds = %b.grow2131
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len186:                                 ; preds = %choice.exit
  %b.need.grow191 = icmp slt i64 %builder.new.salloc.sroa.42.4, %sum184
  br i1 %b.need.grow191, label %b.grow2192, label %b.grow_done194

str_overflow_abort187:                            ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2192:                                       ; preds = %b.app.new.len186
  %b.cap2195 = mul i64 %builder.new.salloc.sroa.42.4, 2
  %b.cap.small196 = icmp slt i64 %b.cap2195, 16
  %b.cap.grow197 = select i1 %b.cap.small196, i64 16, i64 %b.cap2195
  %b.cap.need198 = icmp slt i64 %b.cap.grow197, %sum184
  %b.new.cap199 = select i1 %b.cap.need198, i64 %sum184, i64 %b.cap.grow197
  %b.new.buf.len2204 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap199, i64 1)
  %sum205 = extractvalue { i64, i1 } %b.new.buf.len2204, 0
  %ovf206 = extractvalue { i64, i1 } %b.new.buf.len2204, 1
  br i1 %ovf206, label %str_overflow_abort208, label %b.new.buf.len2207

b.grow_done194:                                   ; preds = %b.app.new.len186, %b.new.buf.len2207
  %builder.new.salloc.sroa.42.6 = phi i64 [ %b.new.cap199, %b.new.buf.len2207 ], [ %builder.new.salloc.sroa.42.4, %b.app.new.len186 ]
  %builder.new.salloc.sroa.21.6 = phi ptr [ %b.new.buf2211, %b.new.buf.len2207 ], [ %builder.new.salloc.sroa.21.4, %b.app.new.len186 ]
  %b.app.dst217 = getelementptr i8, ptr %builder.new.salloc.sroa.21.6, i64 %builder.new.salloc.sroa.0.1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst217, ptr align 1 %app.str.data180, i64 %app.str.len178, i1 false)
  %b.app.nul218 = getelementptr i8, ptr %builder.new.salloc.sroa.21.6, i64 %sum184
  store i8 0, ptr %b.app.nul218, align 1
  %loop.next = add i64 %loop.idx.931.0, 1
  br label %loop.header.931

b.new.buf.len2207:                                ; preds = %b.grow2192
  %arena.cur210 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2211 = call ptr @dva_arena_alloc(ptr %arena.cur210, i64 %sum205)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2211, ptr align 1 %builder.new.salloc.sroa.21.4, i64 %builder.new.salloc.sroa.0.1, i1 false)
  %b.grow2.nul212 = getelementptr i8, ptr %b.new.buf2211, i64 %builder.new.salloc.sroa.0.1
  store i8 0, ptr %b.grow2.nul212, align 1
  br label %b.grow_done194

str_overflow_abort208:                            ; preds = %b.grow2192
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len229:                                 ; preds = %loop.exit.931
  %b.need.grow234 = icmp slt i64 %builder.new.salloc.sroa.42.3, %sum227
  br i1 %b.need.grow234, label %b.grow2235, label %b.grow_done237

str_overflow_abort230:                            ; preds = %loop.exit.931
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2235:                                       ; preds = %b.app.new.len229
  %b.cap2238 = mul i64 %builder.new.salloc.sroa.42.3, 2
  %b.cap.small239 = icmp slt i64 %b.cap2238, 16
  %b.cap.grow240 = select i1 %b.cap.small239, i64 16, i64 %b.cap2238
  %b.cap.need241 = icmp slt i64 %b.cap.grow240, %sum227
  %b.new.cap242 = select i1 %b.cap.need241, i64 %sum227, i64 %b.cap.grow240
  %b.new.buf.len2247 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap242, i64 1)
  %sum248 = extractvalue { i64, i1 } %b.new.buf.len2247, 0
  %ovf249 = extractvalue { i64, i1 } %b.new.buf.len2247, 1
  br i1 %ovf249, label %str_overflow_abort251, label %b.new.buf.len2250

b.grow_done237:                                   ; preds = %b.app.new.len229, %b.new.buf.len2250
  %builder.new.salloc.sroa.21.7 = phi ptr [ %b.new.buf2254, %b.new.buf.len2250 ], [ %builder.new.salloc.sroa.21.3, %b.app.new.len229 ]
  %b.app.dst260 = getelementptr i8, ptr %builder.new.salloc.sroa.21.7, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst260, ptr align 1 @str.69, i64 3, i1 false)
  %b.app.nul261 = getelementptr i8, ptr %builder.new.salloc.sroa.21.7, i64 %sum227
  store i8 0, ptr %b.app.nul261, align 1
  %arena.cur266 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur266, i64 16)
  store i64 %sum227, ptr %builder.freeze, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %builder.new.salloc.sroa.21.7, ptr %str.build.data.gep, align 8
  call void @"lsp::send_rpc_payload"(ptr %builder.freeze)
  ret void

b.new.buf.len2250:                                ; preds = %b.grow2235
  %arena.cur253 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2254 = call ptr @dva_arena_alloc(ptr %arena.cur253, i64 %sum248)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2254, ptr align 1 %builder.new.salloc.sroa.21.3, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul255 = getelementptr i8, ptr %b.new.buf2254, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul255, align 1
  br label %b.grow_done237

str_overflow_abort251:                            ; preds = %b.grow2235
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define ptr @"lsp::copy_sym_entries"(ptr %0) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.create3, align 8
  %a.data.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf5, ptr %a.data.gep7, align 8
  %a.cap.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep8, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.src.0 = phi ptr [ %a.create3, %a.create ], [ %0, %entry ]
  %arr.cycle.len9 = load i64, ptr %var.src.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.src.0, i32 0, i32 1
  %arr.cycle.data10 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.932

loop.header.932:                                  ; preds = %a.store, %a.after
  %loop.idx.932.0 = phi i64 [ 0, %a.after ], [ %loop.next, %a.store ]
  %var.out.0 = phi ptr [ %a.new, %a.after ], [ %var.out.0, %a.store ]
  %loop.cond = icmp slt i64 %loop.idx.932.0, %arr.cycle.len9
  br i1 %loop.cond, label %loop.body.932, label %a.after84

loop.body.932:                                    ; preds = %loop.header.932
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data10, i64 %loop.idx.932.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.load = load ptr, ptr %slot.i2p, align 8
  %copy.len12 = load i64, ptr %fld.load, align 8
  %copy.len13 = and i64 %copy.len12, 281474976710655
  %copy.len14 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %copy.len15 = load ptr, ptr %copy.len14, align 8
  %copy.alen = add nuw nsw i64 %copy.len13, 1
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 %copy.alen)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf, ptr align 1 %copy.len15, i64 %copy.len13, i1 false)
  %copy.nul = getelementptr i8, ptr %copy.buf, i64 %copy.len13
  store i8 0, ptr %copy.nul, align 1
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.str = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 16)
  store i64 %copy.len13, ptr %copy.str, align 8
  %str.copy.data.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 1
  store ptr %copy.buf, ptr %str.copy.data.gep, align 8
  %fld.gep19 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 1
  %fld.load20 = load ptr, ptr %fld.gep19, align 8
  %copy.len22 = load i64, ptr %fld.load20, align 8
  %copy.len23 = and i64 %copy.len22, 281474976710655
  %copy.len24 = getelementptr inbounds { i64, ptr }, ptr %fld.load20, i32 0, i32 1
  %copy.len25 = load ptr, ptr %copy.len24, align 8
  %copy.alen26 = add nuw nsw i64 %copy.len23, 1
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.buf28 = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 %copy.alen26)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf28, ptr align 1 %copy.len25, i64 %copy.len23, i1 false)
  %copy.nul29 = getelementptr i8, ptr %copy.buf28, i64 %copy.len23
  store i8 0, ptr %copy.nul29, align 1
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.str31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 16)
  store i64 %copy.len23, ptr %copy.str31, align 8
  %str.copy.data.gep33 = getelementptr inbounds { i64, ptr }, ptr %copy.str31, i32 0, i32 1
  store ptr %copy.buf28, ptr %str.copy.data.gep33, align 8
  %fld.gep35 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 2
  %fld.load36 = load i64, ptr %fld.gep35, align 8
  %fld.gep38 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 3
  %fld.load39 = load i64, ptr %fld.gep38, align 8
  %fld.gep41 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 4
  %fld.load42 = load i64, ptr %fld.gep41, align 8
  %fld.gep44 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 5
  %fld.load45 = load i64, ptr %fld.gep44, align 8
  %fld.gep47 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 6
  %fld.load48 = load i64, ptr %fld.gep47, align 8
  %fld.gep50 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 7
  %fld.load51 = load i1, ptr %fld.gep50, align 1
  %fld.gep53 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 8
  %fld.load54 = load i1, ptr %fld.gep53, align 1
  %arena.cur55 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr null, i32 1) to i64))
  store ptr %copy.str, ptr %rec.alloc, align 8
  %rec.fld56 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %copy.str31, ptr %rec.fld56, align 8
  %rec.fld57 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %fld.load36, ptr %rec.fld57, align 8
  %rec.fld58 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %fld.load39, ptr %rec.fld58, align 8
  %rec.fld59 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %fld.load42, ptr %rec.fld59, align 8
  %rec.fld60 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %fld.load45, ptr %rec.fld60, align 8
  %rec.fld61 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 6
  store i64 %fld.load48, ptr %rec.fld61, align 8
  %rec.fld62 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 7
  store i1 %fld.load51, ptr %rec.fld62, align 1
  %rec.fld63 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %rec.alloc, i32 0, i32 8
  store i1 %fld.load54, ptr %rec.fld63, align 1
  %a.len76 = load i64, ptr %var.out.0, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.out.0, i32 0, i32 2
  %a.cap77 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len76, %a.cap77
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %loop.body.932
  call void @dva_array_grow(ptr %var.out.0)
  br label %a.store

a.store:                                          ; preds = %a.grow, %loop.body.932
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.out.0, i32 0, i32 1
  %a.cur.data78 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len79 = load i64, ptr %var.out.0, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data78, i64 %a.cur.len79
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len79, 1
  store i64 %a.next.len, ptr %var.out.0, align 8
  %loop.next = add i64 %loop.idx.932.0, 1
  br label %loop.header.932

a.after84:                                        ; preds = %loop.header.932
  ret ptr %var.out.0
}

define void @"lsp::upsert_doc"(ptr %0, ptr %1, ptr %2, ptr %3) #3 {
entry:
  %clo.salloc = alloca { ptr, ptr }, align 8
  %env.salloc = alloca { ptr, ptr, ptr, ptr }, align 8
  store ptr %0, ptr %env.salloc, align 8
  %env.store.gep1 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %env.salloc, i32 0, i32 1
  store ptr %1, ptr %env.store.gep1, align 8
  %env.store.gep2 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %env.salloc, i32 0, i32 2
  store ptr %2, ptr %env.store.gep2, align 8
  %env.store.gep3 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %env.salloc, i32 0, i32 3
  store ptr %3, ptr %env.store.gep3, align 8
  store ptr @"$anon_fn.126", ptr %clo.salloc, align 8
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.salloc, i32 0, i32 1
  store ptr %env.salloc, ptr %clo.env.gep, align 8
  call void @"mem::escape"(ptr %clo.salloc)
  ret void
}

define internal void @"$anon_fn.126"(ptr %0) #3 {
entry:
  %env.gep1 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %env.gep2 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 2
  %env.gep3 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %var.load = load ptr, ptr %0, align 8
  %copy.len4 = load i64, ptr %var.load, align 8
  %copy.len5 = and i64 %copy.len4, 281474976710655
  %copy.len6 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %copy.len7 = load ptr, ptr %copy.len6, align 8
  %copy.alen = add nuw nsw i64 %copy.len5, 1
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %copy.alen)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf, ptr align 1 %copy.len7, i64 %copy.len5, i1 false)
  %copy.nul = getelementptr i8, ptr %copy.buf, i64 %copy.len5
  store i8 0, ptr %copy.nul, align 1
  %arena.cur8 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.str = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 16)
  store i64 %copy.len5, ptr %copy.str, align 8
  %str.copy.data.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 1
  store ptr %copy.buf, ptr %str.copy.data.gep, align 8
  %var.load9 = load ptr, ptr %env.gep1, align 8
  %copy.len11 = load i64, ptr %var.load9, align 8
  %copy.len12 = and i64 %copy.len11, 281474976710655
  %copy.len13 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %copy.len14 = load ptr, ptr %copy.len13, align 8
  %copy.alen15 = add nuw nsw i64 %copy.len12, 1
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.buf17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 %copy.alen15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf17, ptr align 1 %copy.len14, i64 %copy.len12, i1 false)
  %copy.nul18 = getelementptr i8, ptr %copy.buf17, i64 %copy.len12
  store i8 0, ptr %copy.nul18, align 1
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.str20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 16)
  store i64 %copy.len12, ptr %copy.str20, align 8
  %str.copy.data.gep22 = getelementptr inbounds { i64, ptr }, ptr %copy.str20, i32 0, i32 1
  store ptr %copy.buf17, ptr %str.copy.data.gep22, align 8
  %var.load23 = load ptr, ptr %env.gep2, align 8
  %copy.len25 = load i64, ptr %var.load23, align 8
  %copy.len26 = and i64 %copy.len25, 281474976710655
  %copy.len27 = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 1
  %copy.len28 = load ptr, ptr %copy.len27, align 8
  %copy.alen29 = add nuw nsw i64 %copy.len26, 1
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.buf31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 %copy.alen29)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf31, ptr align 1 %copy.len28, i64 %copy.len26, i1 false)
  %copy.nul32 = getelementptr i8, ptr %copy.buf31, i64 %copy.len26
  store i8 0, ptr %copy.nul32, align 1
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.str34 = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 16)
  store i64 %copy.len26, ptr %copy.str34, align 8
  %str.copy.data.gep36 = getelementptr inbounds { i64, ptr }, ptr %copy.str34, i32 0, i32 1
  store ptr %copy.buf31, ptr %str.copy.data.gep36, align 8
  %a.load = load ptr, ptr %env.gep3, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 24)
  %arena.cur40 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 128)
  store i64 0, ptr %a.create39, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create39, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create39, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create39, ptr %env.gep3, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %env.gep3, align 8
  %call.res = call ptr @"lsp::copy_sym_entries"(ptr %a.load2)
  %a.load42 = load ptr, ptr @"var.lsp::open_docs", align 8
  %a.null43 = icmp eq ptr %a.load42, null
  br i1 %a.null43, label %a.create44, label %a.after45

a.create44:                                       ; preds = %a.after
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 24)
  %arena.cur48 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf49 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 128)
  store i64 0, ptr %a.create47, align 8
  %a.data.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create47, i32 0, i32 1
  store ptr %a.buf49, ptr %a.data.gep51, align 8
  %a.cap.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create47, i32 0, i32 2
  store i64 16, ptr %a.cap.gep52, align 8
  store ptr %a.create47, ptr @"var.lsp::open_docs", align 8
  br label %a.after45

a.after45:                                        ; preds = %a.create44, %a.after
  %a.load253 = load ptr, ptr @"var.lsp::open_docs", align 8
  %a.null56 = icmp eq ptr %a.load253, null
  br i1 %a.null56, label %a.create57, label %a.after58

a.create57:                                       ; preds = %a.after45
  %arena.cur59 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create60 = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 24)
  %arena.cur61 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf62 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 128)
  store i64 0, ptr %a.create60, align 8
  %a.data.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create60, i32 0, i32 1
  store ptr %a.buf62, ptr %a.data.gep64, align 8
  %a.cap.gep65 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create60, i32 0, i32 2
  store i64 16, ptr %a.cap.gep65, align 8
  br label %a.after58

a.after58:                                        ; preds = %a.create57, %a.after45
  %var.docs.0 = phi ptr [ %a.create60, %a.create57 ], [ %a.load253, %a.after45 ]
  %a.len.query67 = load i64, ptr %var.docs.0, align 8
  br label %loop.header.933

loop.header.933:                                  ; preds = %choice.exit, %a.after58
  %var.docs.1 = phi ptr [ %var.docs.0, %a.after58 ], [ %var.docs.1, %choice.exit ]
  %loop.idx.933.0 = phi i64 [ 0, %a.after58 ], [ %loop.next, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.933.0, %a.len.query67
  br i1 %loop.cond, label %a.rd.check, label %loop.exit.933

loop.exit.933:                                    ; preds = %a.wr.done, %loop.header.933
  %var.esc_syms.0 = phi ptr [ %call.res, %loop.header.933 ], [ %var.esc_syms.1, %a.wr.done ]
  %var.docs.2 = phi ptr [ %var.docs.1, %loop.header.933 ], [ %var.docs.1, %a.wr.done ]
  %"var.found'.0" = phi i1 [ false, %loop.header.933 ], [ true, %a.wr.done ]
  %nottmp = xor i1 %"var.found'.0", true
  br i1 %nottmp, label %choice.then206, label %choice.exit207

a.rd.check:                                       ; preds = %loop.header.933
  %a.rd.len82 = load i64, ptr %var.docs.1, align 8
  %a.rd.ge0 = icmp sge i64 %loop.idx.933.0, 0
  %a.rd.lt = icmp slt i64 %loop.idx.933.0, %a.rd.len82
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.docs.1, i32 0, i32 1
  %a.rd.data83 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data83, i64 %loop.idx.933.0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur85 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc86 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 56)
  store i64 4011, ptr %err.alloc86, align 8
  %err.msg.gep88 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep88, align 8
  %err.file.gep89 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep89, align 8
  %err.line.gep90 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 3
  store i64 645, ptr %err.line.gep90, align 8
  %err.col.gep91 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 4
  store i64 21, ptr %err.col.gep91, align 8
  %err.ctx.gep92 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 5
  store i64 %loop.idx.933.0, ptr %err.ctx.gep92, align 8
  %err.ctx1.gep94 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep92, i32 0, i32 1
  store i64 %a.rd.len82, ptr %err.ctx1.gep94, align 8
  %err.p2i95 = ptrtoint ptr %err.alloc86 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i95, %a.rd.err.oob ]
  br i1 %a.rd.tag, label %unwrap.pos.934, label %unwrap.abort.934

unwrap.pos.934:                                   ; preds = %a.rd.done
  %pay.ptr = inttoptr i64 %a.rd.pay to ptr
  %fld.load = load ptr, ptr %pay.ptr, align 8
  %eq.lhs.len109 = load i64, ptr %fld.load, align 8
  %eq.lhs.len110 = and i64 %eq.lhs.len109, 281474976710655
  %eq.rhs.len111 = load i64, ptr %copy.str, align 8
  %eq.rhs.len112 = and i64 %eq.rhs.len111, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len110, %eq.rhs.len112
  br i1 %eq.len, label %str.eq.then, label %choice.exit

unwrap.abort.934:                                 ; preds = %a.rd.done
  %err.ptr = inttoptr i64 %a.rd.pay to ptr
  %err.code = load i64, ptr %err.ptr, align 8
  %err.msg.gep97 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep97, align 8
  %err.file.gep98 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep98, align 8
  %err.line.gep99 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep99, align 8
  %err.col.gep100 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep100, align 8
  %err.msg.len101 = load i64, ptr %err.msg.struct, align 8
  %err.msg.len102 = and i64 %err.msg.len101, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len102 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data103 = load ptr, ptr %err.msg.data, align 8
  %err.file.len104 = load i64, ptr %err.file.struct, align 8
  %err.file.len105 = and i64 %err.file.len104, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len105 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data106 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.934
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.934
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data103, i32 %err.file.len32, ptr %err.file.data106, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

str.eq.then:                                      ; preds = %unwrap.pos.934
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data113 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data114 = load ptr, ptr %str.copy.data.gep, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data113, ptr %eq.rhs.data114, i64 %eq.lhs.len110)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %a.after119, label %choice.exit

choice.exit:                                      ; preds = %unwrap.pos.934, %str.eq.then
  %loop.next = add i64 %loop.idx.933.0, 1
  br label %loop.header.933

a.after119:                                       ; preds = %str.eq.then
  %a.null134 = icmp eq ptr %call.res, null
  br i1 %a.null134, label %a.create135, label %a.after136

a.create135:                                      ; preds = %a.after119
  %arena.cur137 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create138 = call ptr @dva_arena_alloc(ptr %arena.cur137, i64 24)
  %arena.cur139 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf140 = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 128)
  store i64 0, ptr %a.create138, align 8
  %a.data.gep142 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create138, i32 0, i32 1
  store ptr %a.buf140, ptr %a.data.gep142, align 8
  %a.cap.gep143 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create138, i32 0, i32 2
  store i64 16, ptr %a.cap.gep143, align 8
  br label %a.after136

a.after136:                                       ; preds = %a.create135, %a.after119
  %var.esc_syms.1 = phi ptr [ %a.create138, %a.create135 ], [ %call.res, %a.after119 ]
  %arena.cur145 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur145, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr }, ptr null, i32 1) to i64))
  store ptr %copy.str, ptr %rec.alloc, align 8
  %rec.fld146 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %copy.str20, ptr %rec.fld146, align 8
  %rec.fld147 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %copy.str34, ptr %rec.fld147, align 8
  %rec.fld148 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 3
  store ptr %var.esc_syms.1, ptr %rec.fld148, align 8
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  %a.wr.len149 = load i64, ptr %var.docs.1, align 8
  %a.wr.lt = icmp slt i64 %loop.idx.933.0, %a.wr.len149
  %a.wr.bounds = and i1 %a.rd.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.after136
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.docs.1, i32 0, i32 1
  %a.wr.data150 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data150, i64 %loop.idx.933.0
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.after136
  %arena.cur161 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc162 = call ptr @dva_arena_alloc(ptr %arena.cur161, i64 56)
  store i64 4011, ptr %err.alloc162, align 8
  %err.msg.gep164 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc162, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep164, align 8
  %err.file.gep165 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc162, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep165, align 8
  %err.line.gep166 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc162, i32 0, i32 3
  store i64 0, ptr %err.line.gep166, align 8
  %err.col.gep167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc162, i32 0, i32 4
  store i64 0, ptr %err.col.gep167, align 8
  %err.ctx.gep168 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc162, i32 0, i32 5
  store i64 %loop.idx.933.0, ptr %err.ctx.gep168, align 8
  %err.ctx1.gep170 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep168, i32 0, i32 1
  store i64 %a.wr.len149, ptr %err.ctx1.gep170, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc162, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %loop.exit.933, label %choice.else

choice.else:                                      ; preds = %a.wr.done
  %err.code177 = load i64, ptr %a.wr.niche, align 8
  %err.msg.gep178 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct179 = load ptr, ptr %err.msg.gep178, align 8
  %err.file.gep180 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct181 = load ptr, ptr %err.file.gep180, align 8
  %err.line.gep182 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line183 = load i64, ptr %err.line.gep182, align 8
  %err.col.gep184 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col185 = load i64, ptr %err.col.gep184, align 8
  %err.msg.len187 = load i64, ptr %err.msg.struct179, align 8
  %err.msg.len188 = and i64 %err.msg.len187, 281474976710655
  %err.msg.len32189 = trunc i64 %err.msg.len188 to i32
  %err.msg.data190 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct179, i32 0, i32 1
  %err.msg.data191 = load ptr, ptr %err.msg.data190, align 8
  %err.file.len193 = load i64, ptr %err.file.struct181, align 8
  %err.file.len194 = and i64 %err.file.len193, 281474976710655
  %err.file.len32195 = trunc i64 %err.file.len194 to i32
  %err.file.data196 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct181, i32 0, i32 1
  %err.file.data197 = load ptr, ptr %err.file.data196, align 8
  %err.thread.rec198 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread199 = icmp ne ptr %err.thread.rec198, null
  br i1 %err.is.thread199, label %err.thread200, label %err.normal201

err.thread200:                                    ; preds = %choice.else
  %err.haserr.gep202 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec198, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep202, align 8
  %err.err.gep203 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec198, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep203, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal201:                                    ; preds = %choice.else
  %err.panic.printf204 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code177, i32 %err.msg.len32189, ptr %err.msg.data191, i32 %err.file.len32195, ptr %err.file.data197, i64 %err.line183, i64 %err.col185)
  call void @exit(i32 1)
  unreachable

choice.then206:                                   ; preds = %loop.exit.933
  %a.null213 = icmp eq ptr %var.esc_syms.0, null
  br i1 %a.null213, label %a.create214, label %a.after215

choice.exit207:                                   ; preds = %a.store, %loop.exit.933
  ret void

a.create214:                                      ; preds = %choice.then206
  %arena.cur216 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create217 = call ptr @dva_arena_alloc(ptr %arena.cur216, i64 24)
  %arena.cur218 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf219 = call ptr @dva_arena_alloc(ptr %arena.cur218, i64 128)
  store i64 0, ptr %a.create217, align 8
  %a.data.gep221 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create217, i32 0, i32 1
  store ptr %a.buf219, ptr %a.data.gep221, align 8
  %a.cap.gep222 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create217, i32 0, i32 2
  store i64 16, ptr %a.cap.gep222, align 8
  br label %a.after215

a.after215:                                       ; preds = %a.create214, %choice.then206
  %var.esc_syms.2 = phi ptr [ %a.create217, %a.create214 ], [ %var.esc_syms.0, %choice.then206 ]
  %arena.cur224 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc225 = call ptr @dva_arena_alloc(ptr %arena.cur224, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr }, ptr null, i32 1) to i64))
  store ptr %copy.str, ptr %rec.alloc225, align 8
  %rec.fld227 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %rec.alloc225, i32 0, i32 1
  store ptr %copy.str20, ptr %rec.fld227, align 8
  %rec.fld228 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %rec.alloc225, i32 0, i32 2
  store ptr %copy.str34, ptr %rec.fld228, align 8
  %rec.fld229 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %rec.alloc225, i32 0, i32 3
  store ptr %var.esc_syms.2, ptr %rec.fld229, align 8
  %a.len242 = load i64, ptr %var.docs.2, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.docs.2, i32 0, i32 2
  %a.cap243 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len242, %a.cap243
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.after215
  call void @dva_array_grow(ptr %var.docs.2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.after215
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.docs.2, i32 0, i32 1
  %a.cur.data244 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len245 = load i64, ptr %var.docs.2, align 8
  %a.elem.gep246 = getelementptr i64, ptr %a.cur.data244, i64 %a.cur.len245
  %slot.p2i247 = ptrtoint ptr %rec.alloc225 to i64
  store i64 %slot.p2i247, ptr %a.elem.gep246, align 8
  %a.next.len = add i64 %a.cur.len245, 1
  store i64 %a.next.len, ptr %var.docs.2, align 8
  store ptr %var.docs.2, ptr @"var.lsp::open_docs", align 8
  br label %choice.exit207
}

declare void @"mem::escape"(ptr) #3

define ptr @"lsp::get_doc"(ptr %0) #3 {
entry:
  %a.load = load ptr, ptr @"var.lsp::open_docs", align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  store i64 0, ptr %a.create1, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create1, ptr @"var.lsp::open_docs", align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr @"var.lsp::open_docs", align 8
  %a.null5 = icmp eq ptr %a.load2, null
  br i1 %a.null5, label %a.create6, label %a.after7

a.create6:                                        ; preds = %a.after
  %arena.cur8 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create9 = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 24)
  %arena.cur10 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf11 = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 128)
  store i64 0, ptr %a.create9, align 8
  %a.data.gep13 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create9, i32 0, i32 1
  store ptr %a.buf11, ptr %a.data.gep13, align 8
  %a.cap.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create9, i32 0, i32 2
  store i64 16, ptr %a.cap.gep14, align 8
  br label %a.after7

a.after7:                                         ; preds = %a.create6, %a.after
  %var.docs.0 = phi ptr [ %a.create9, %a.create6 ], [ %a.load2, %a.after ]
  %arr.cycle.len16 = load i64, ptr %var.docs.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.docs.0, i32 0, i32 1
  %arr.cycle.data17 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.936

loop.header.936:                                  ; preds = %choice.exit, %a.after7
  %loop.idx.936.0 = phi i64 [ 0, %a.after7 ], [ %loop.next, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.936.0, %arr.cycle.len16
  br i1 %loop.cond, label %loop.body.936, label %loop.exit.936

loop.body.936:                                    ; preds = %loop.header.936
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data17, i64 %loop.idx.936.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.load = load ptr, ptr %slot.i2p, align 8
  %eq.lhs.len20 = load i64, ptr %fld.load, align 8
  %eq.lhs.len21 = and i64 %eq.lhs.len20, 281474976710655
  %eq.rhs.len22 = load i64, ptr %0, align 8
  %eq.rhs.len23 = and i64 %eq.rhs.len22, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len21, %eq.rhs.len23
  br i1 %eq.len, label %str.eq.then, label %choice.exit

loop.exit.936:                                    ; preds = %str.eq.then, %loop.header.936
  %"var.res'.0" = phi ptr [ null, %loop.header.936 ], [ %slot.i2p, %str.eq.then ]
  ret ptr %"var.res'.0"

str.eq.then:                                      ; preds = %loop.body.936
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data24 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.rhs.data25 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data24, ptr %eq.rhs.data25, i64 %eq.lhs.len21)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %loop.exit.936, label %choice.exit

choice.exit:                                      ; preds = %loop.body.936, %str.eq.then
  %loop.next = add i64 %loop.idx.936.0, 1
  br label %loop.header.936
}

define void @"lsp::remove_doc"(ptr %0) #3 {
entry:
  %clo.salloc = alloca { ptr, ptr }, align 8
  %env.salloc = alloca { ptr }, align 8
  store ptr %0, ptr %env.salloc, align 8
  store ptr @"$anon_fn.130", ptr %clo.salloc, align 8
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.salloc, i32 0, i32 1
  store ptr %env.salloc, ptr %clo.env.gep, align 8
  call void @"mem::escape"(ptr %clo.salloc)
  ret void
}

define internal void @"$anon_fn.130"(ptr %0) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %a.load = load ptr, ptr @"var.lsp::open_docs", align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.create3, align 8
  %a.data.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf5, ptr %a.data.gep7, align 8
  %a.cap.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep8, align 8
  store ptr %a.create3, ptr @"var.lsp::open_docs", align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr @"var.lsp::open_docs", align 8
  %arr.cycle.len9 = load i64, ptr %a.load2, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data10 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.937

loop.header.937:                                  ; preds = %choice.exit21, %a.after
  %loop.idx.937.0 = phi i64 [ 0, %a.after ], [ %loop.next, %choice.exit21 ]
  %var._map_out_862.0 = phi ptr [ %a.new, %a.after ], [ %var._map_out_862.1, %choice.exit21 ]
  %loop.cond = icmp slt i64 %loop.idx.937.0, %arr.cycle.len9
  br i1 %loop.cond, label %loop.body.937, label %loop.exit.937

loop.body.937:                                    ; preds = %loop.header.937
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data10, i64 %loop.idx.937.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.load = load ptr, ptr %slot.i2p, align 8
  %var.load12 = load ptr, ptr %0, align 8
  %eq.lhs.len13 = load i64, ptr %fld.load, align 8
  %eq.lhs.len14 = and i64 %eq.lhs.len13, 281474976710655
  %eq.rhs.len15 = load i64, ptr %var.load12, align 8
  %eq.rhs.len16 = and i64 %eq.rhs.len15, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len14, %eq.rhs.len16
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

loop.exit.937:                                    ; preds = %loop.header.937
  %a.null42 = icmp eq ptr %var._map_out_862.0, null
  br i1 %a.null42, label %a.create43, label %a.after44

str.eq.then:                                      ; preds = %loop.body.937
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data17 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 1
  %eq.rhs.data18 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data17, ptr %eq.rhs.data18, i64 %eq.lhs.len14)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %loop.body.937, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %loop.body.937 ]
  %str.neq = xor i1 %str.eq.result, true
  %slot.i2p. = select i1 %str.neq, ptr %slot.i2p, ptr null
  br i1 %str.neq, label %choice.then20, label %choice.exit21

choice.then20:                                    ; preds = %str.eq.merge
  %a.null25 = icmp eq ptr %var._map_out_862.0, null
  br i1 %a.null25, label %a.create26, label %a.check

choice.exit21:                                    ; preds = %a.store, %str.eq.merge
  %var._map_out_862.1 = phi ptr [ %var._map_out_862.2, %a.store ], [ %var._map_out_862.0, %str.eq.merge ]
  %loop.next = add i64 %loop.idx.937.0, 1
  br label %loop.header.937

a.create26:                                       ; preds = %choice.then20
  %arena.cur28 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create29 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 24)
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 128)
  store i64 0, ptr %a.create29, align 8
  %a.data.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create29, i32 0, i32 1
  store ptr %a.buf31, ptr %a.data.gep33, align 8
  %a.cap.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create29, i32 0, i32 2
  store i64 16, ptr %a.cap.gep34, align 8
  br label %a.check

a.check:                                          ; preds = %choice.then20, %a.create26
  %var._map_out_862.2 = phi ptr [ %a.create29, %a.create26 ], [ %var._map_out_862.0, %choice.then20 ]
  %a.len36 = load i64, ptr %var._map_out_862.2, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var._map_out_862.2, i32 0, i32 2
  %a.cap37 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len36, %a.cap37
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var._map_out_862.2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var._map_out_862.2, i32 0, i32 1
  %a.cur.data38 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len39 = load i64, ptr %var._map_out_862.2, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data38, i64 %a.cur.len39
  %slot.p2i = ptrtoint ptr %slot.i2p. to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len39, 1
  store i64 %a.next.len, ptr %var._map_out_862.2, align 8
  br label %choice.exit21

a.create43:                                       ; preds = %loop.exit.937
  %arena.cur45 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 24)
  %arena.cur47 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf48 = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 128)
  store i64 0, ptr %a.create46, align 8
  %a.data.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create46, i32 0, i32 1
  store ptr %a.buf48, ptr %a.data.gep50, align 8
  %a.cap.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create46, i32 0, i32 2
  store i64 16, ptr %a.cap.gep51, align 8
  br label %a.after44

a.after44:                                        ; preds = %a.create43, %loop.exit.937
  %var._map_out_862.3 = phi ptr [ %a.create46, %a.create43 ], [ %var._map_out_862.0, %loop.exit.937 ]
  store ptr %var._map_out_862.3, ptr @"var.lsp::open_docs", align 8
  ret void
}

define void @"lsp::analyze_document"(ptr %0, ptr %1, ptr %2) #3 {
entry:
  store ptr %1, ptr @"var.lsp::active_doc_text", align 8
  %call.res = call { i64, ptr } @"lsp::uri_to_path"(ptr %0)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  call void @"ast::cell_var_reset"()
  call void @"diag::enable_capture"()
  call void @"lexer::lex_set_file"(ptr %ret.ub.alloc)
  %call.res4 = call ptr @"parser::parse_init"(ptr %1)
  call void @"parser::parser_set_file"(ptr %call.res4, ptr %ret.ub.alloc)
  %fld.gep = getelementptr inbounds { { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, { ptr, i64, i64, i64, i64, i1, i1, ptr }, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, i1, i1, i1, i1, i1, ptr, ptr, ptr, ptr, i64, i64, i1, i1, i1, ptr, i1, ptr, ptr, ptr, ptr, i1, i1, i1 }, ptr %call.res4, i32 0, i32 16
  store i1 true, ptr %fld.gep, align 1
  %call.res9 = call { i1, i64 } @"parser::parse_program"(ptr %call.res4)
  %call.res9.fca.0.extract = extractvalue { i1, i64 } %call.res9, 0
  %call.res9.fca.1.extract = extractvalue { i1, i64 } %call.res9, 1
  %call.res10 = call ptr @"diag::get_captured"()
  call void @"diag::disable_capture"()
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 24)
  %arena.cur12 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %a.null = icmp eq ptr %call.res10, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur14 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create15 = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 24)
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 128)
  store i64 0, ptr %a.create15, align 8
  %a.data.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 1
  store ptr %a.buf17, ptr %a.data.gep19, align 8
  %a.cap.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 2
  store i64 16, ptr %a.cap.gep20, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.captured.0 = phi ptr [ %a.create15, %a.create ], [ %call.res10, %entry ]
  %arr.cycle.len21 = load i64, ptr %var.captured.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.captured.0, i32 0, i32 1
  %arr.cycle.data22 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.938

loop.header.938:                                  ; preds = %loop.body.938, %a.after
  %loop.idx.938.0 = phi i64 [ 0, %a.after ], [ %loop.next, %loop.body.938 ]
  %var.all_diags.0 = phi ptr [ %a.new, %a.after ], [ %var.all_diags.0, %loop.body.938 ]
  %loop.cond = icmp slt i64 %loop.idx.938.0, %arr.cycle.len21
  br i1 %loop.cond, label %loop.body.938, label %loop.exit.938

loop.body.938:                                    ; preds = %loop.header.938
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data22, i64 %loop.idx.938.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  call void @"lsp::add_unique_diag"(ptr %var.all_diags.0, ptr %slot.i2p)
  %loop.next = add i64 %loop.idx.938.0, 1
  br label %loop.header.938

loop.exit.938:                                    ; preds = %loop.header.938
  %arena.cur37 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new38 = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 24)
  %arena.cur39 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf40 = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 128)
  store i64 0, ptr %a.new38, align 8
  %a.data.gep42 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new38, i32 0, i32 1
  store ptr %a.buf40, ptr %a.data.gep42, align 8
  %a.cap.gep43 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new38, i32 0, i32 2
  store i64 16, ptr %a.cap.gep43, align 8
  call void @"lsp::upsert_doc"(ptr %0, ptr %ret.ub.alloc, ptr %1, ptr %a.new38)
  br i1 %call.res9.fca.0.extract, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %loop.exit.938
  %pay.ptr = inttoptr i64 %call.res9.fca.1.extract to ptr
  %tag.id = load i64, ptr %pay.ptr, align 8
  %tag.match = icmp eq i64 %tag.id, 8
  br i1 %tag.match, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %loop.header.940, %choice.then231, %a.after425, %a.after105, %choice.then, %loop.exit.938
  %"var.syms'.1" = phi ptr [ %a.new38, %loop.exit.938 ], [ %a.new38, %choice.then ], [ %"var.syms'.3", %a.after105 ], [ %a.load2433, %a.after425 ], [ %"var.syms'.3", %choice.then231 ], [ %"var.syms'.3", %loop.header.940 ]
  %var.all_diags.2 = phi ptr [ %var.all_diags.0, %loop.exit.938 ], [ %var.all_diags.0, %choice.then ], [ %var.all_diags.0, %a.after105 ], [ %var.all_diags.0, %a.after425 ], [ %var.all_diags.0, %choice.then231 ], [ %var.all_diags.8, %loop.header.940 ]
  %a.null439 = icmp eq ptr %"var.syms'.1", null
  br i1 %a.null439, label %a.create440, label %a.after441

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %pay.ptr, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %a.null67 = icmp eq ptr %payload.ptr, null
  br i1 %a.null67, label %a.create68, label %a.after69

a.create68:                                       ; preds = %choice.case
  %arena.cur70 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create71 = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 24)
  %arena.cur72 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf73 = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 128)
  store i64 0, ptr %a.create71, align 8
  %a.data.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create71, i32 0, i32 1
  store ptr %a.buf73, ptr %a.data.gep75, align 8
  %a.cap.gep76 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create71, i32 0, i32 2
  store i64 16, ptr %a.cap.gep76, align 8
  br label %a.after69

a.after69:                                        ; preds = %a.create68, %choice.case
  %var.stmts.0 = phi ptr [ %a.create71, %a.create68 ], [ %payload.ptr, %choice.case ]
  %call.res78 = call ptr @"parser::fold_program_consts"(ptr %var.stmts.0)
  %a.null81 = icmp eq ptr %call.res78, null
  br i1 %a.null81, label %a.create82, label %a.after83

a.create82:                                       ; preds = %a.after69
  %arena.cur84 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create85 = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 24)
  %arena.cur86 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf87 = call ptr @dva_arena_alloc(ptr %arena.cur86, i64 128)
  store i64 0, ptr %a.create85, align 8
  %a.data.gep89 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create85, i32 0, i32 1
  store ptr %a.buf87, ptr %a.data.gep89, align 8
  %a.cap.gep90 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create85, i32 0, i32 2
  store i64 16, ptr %a.cap.gep90, align 8
  br label %a.after83

a.after83:                                        ; preds = %a.create82, %a.after69
  %var.folded.0 = phi ptr [ %a.create85, %a.create82 ], [ %call.res78, %a.after69 ]
  %fld.gep93 = getelementptr inbounds { { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, { ptr, i64, i64, i64, i64, i1, i1, ptr }, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, i1, i1, i1, i1, i1, ptr, ptr, ptr, ptr, i64, i64, i1, i1, i1, ptr, i1, ptr, ptr, ptr, ptr, i1, i1, i1 }, ptr %call.res4, i32 0, i32 29
  %fld.load = load ptr, ptr %fld.gep93, align 8
  %fld.gep95 = getelementptr inbounds { { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, { ptr, i64, i64, i64, i64, i1, i1, ptr }, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, i1, i1, i1, i1, i1, ptr, ptr, ptr, ptr, i64, i64, i1, i1, i1, ptr, i1, ptr, ptr, ptr, ptr, i1, i1, i1 }, ptr %call.res4, i32 0, i32 30
  %fld.load96 = load ptr, ptr %fld.gep95, align 8
  %call.res97 = call ptr @"lsp::extract_symbols"(ptr %var.folded.0, ptr %fld.load, ptr %fld.load96)
  %a.null103 = icmp eq ptr %call.res97, null
  br i1 %a.null103, label %a.create104, label %a.after105

a.create104:                                      ; preds = %a.after83
  %arena.cur106 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create107 = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 24)
  %arena.cur108 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf109 = call ptr @dva_arena_alloc(ptr %arena.cur108, i64 128)
  store i64 0, ptr %a.create107, align 8
  %a.data.gep111 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create107, i32 0, i32 1
  store ptr %a.buf109, ptr %a.data.gep111, align 8
  %a.cap.gep112 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create107, i32 0, i32 2
  store i64 16, ptr %a.cap.gep112, align 8
  br label %a.after105

a.after105:                                       ; preds = %a.create104, %a.after83
  %"var.syms'.3" = phi ptr [ %a.create107, %a.create104 ], [ %call.res97, %a.after83 ]
  call void @"lsp::upsert_doc"(ptr %0, ptr %ret.ub.alloc, ptr %1, ptr %"var.syms'.3")
  %a.len.query127 = load i64, ptr %var.all_diags.0, align 8
  %cmptmp = icmp eq i64 %a.len.query127, 0
  br i1 %cmptmp, label %a.after134, label %choice.exit

a.after134:                                       ; preds = %a.after105
  %call.res143 = call i1 @"lsp::has_use_imports"(ptr %var.folded.0)
  %nottmp = xor i1 %call.res143, true
  br i1 %nottmp, label %choice.then144, label %a.after312

choice.then144:                                   ; preds = %a.after134
  %arena.cur146 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new147 = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 24)
  %arena.cur148 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf149 = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 128)
  store i64 0, ptr %a.new147, align 8
  %a.data.gep151 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new147, i32 0, i32 1
  store ptr %a.buf149, ptr %a.data.gep151, align 8
  %a.cap.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new147, i32 0, i32 2
  store i64 16, ptr %a.cap.gep152, align 8
  %a.len.query167 = load i64, ptr %var.folded.0, align 8
  br label %loop.header.939

loop.header.939:                                  ; preds = %a.store, %choice.then144
  %var.files.0 = phi ptr [ %a.new147, %choice.then144 ], [ %var.files.0, %a.store ]
  %loop.idx.939.0 = phi i64 [ 0, %choice.then144 ], [ %loop.next191, %a.store ]
  %loop.cond169 = icmp slt i64 %loop.idx.939.0, %a.len.query167
  br i1 %loop.cond169, label %a.check, label %loop.exit.939

loop.exit.939:                                    ; preds = %loop.header.939
  call void @"annotate::set_source_file"(ptr %ret.ub.alloc)
  %fld.load208 = load ptr, ptr %fld.gep93, align 8
  %fld.load211 = load ptr, ptr %fld.gep95, align 8
  call void @"annotate::set_program_locs"(ptr %var.files.0, ptr %fld.load208, ptr %fld.load211)
  %arena.cur212 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur212, i64 16)
  store i64 8, ptr %enum.alloc, align 8
  %pay.gep214 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr %var.folded.0, ptr %pay.gep214, align 8
  %call.res228 = call { i1, i64 } @"annotate::annotate_program"(ptr %enum.alloc)
  %call.res228.fca.0.extract = extractvalue { i1, i64 } %call.res228, 0
  %call.res228.fca.1.extract = extractvalue { i1, i64 } %call.res228, 1
  br i1 %call.res228.fca.0.extract, label %choice.then231, label %choice.else232

a.check:                                          ; preds = %loop.header.939
  %a.len186 = load i64, ptr %var.files.0, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.files.0, i32 0, i32 2
  %a.cap187 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len186, %a.cap187
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var.files.0)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.files.0, i32 0, i32 1
  %a.cur.data188 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len189 = load i64, ptr %var.files.0, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data188, i64 %a.cur.len189
  %slot.p2i = ptrtoint ptr %ret.ub.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len189, 1
  store i64 %a.next.len, ptr %var.files.0, align 8
  %loop.next191 = add i64 %loop.idx.939.0, 1
  br label %loop.header.939

choice.then231:                                   ; preds = %loop.exit.939
  %pay.ptr235 = inttoptr i64 %call.res228.fca.1.extract to ptr
  %fld.gep251 = getelementptr inbounds { ptr, { i64, i64, i64, i64 }, { i64, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr } }, ptr %pay.ptr235, i32 0, i32 2
  %fld.load254 = load ptr, ptr %pay.ptr235, align 8
  call void @"lsp::enrich_symbols_with_tast"(ptr %"var.syms'.3", ptr %fld.gep251, ptr %fld.load254, ptr %1)
  br label %choice.exit

choice.else232:                                   ; preds = %loop.exit.939
  %pay.ptr257 = inttoptr i64 %call.res228.fca.1.extract to ptr
  %arr.cycle.len261 = load i64, ptr %pay.ptr257, align 8
  %arr.cycle.data262 = getelementptr inbounds { i64, ptr, i64 }, ptr %pay.ptr257, i32 0, i32 1
  %arr.cycle.data263 = load ptr, ptr %arr.cycle.data262, align 8
  br label %loop.header.940

loop.header.940:                                  ; preds = %loop.body.940, %choice.else232
  %var.all_diags.8 = phi ptr [ %var.all_diags.0, %choice.else232 ], [ %var.all_diags.8, %loop.body.940 ]
  %loop.idx.940.0 = phi i64 [ 0, %choice.else232 ], [ %loop.next307, %loop.body.940 ]
  %loop.cond265 = icmp slt i64 %loop.idx.940.0, %arr.cycle.len261
  br i1 %loop.cond265, label %loop.body.940, label %choice.exit

loop.body.940:                                    ; preds = %loop.header.940
  %arr.elem.gep267 = getelementptr i64, ptr %arr.cycle.data263, i64 %loop.idx.940.0
  %arr.elem.raw268 = load i64, ptr %arr.elem.gep267, align 8
  %slot.i2p269 = inttoptr i64 %arr.elem.raw268 to ptr
  %fld.load287 = load i64, ptr %slot.i2p269, align 8
  %fld.gep289 = getelementptr inbounds { i64, ptr, ptr, i64, i64, ptr, i64, i64 }, ptr %slot.i2p269, i32 0, i32 2
  %fld.load290 = load ptr, ptr %fld.gep289, align 8
  %fld.gep292 = getelementptr inbounds { i64, ptr, ptr, i64, i64, ptr, i64, i64 }, ptr %slot.i2p269, i32 0, i32 3
  %fld.load293 = load i64, ptr %fld.gep292, align 8
  %fld.gep295 = getelementptr inbounds { i64, ptr, ptr, i64, i64, ptr, i64, i64 }, ptr %slot.i2p269, i32 0, i32 4
  %fld.load296 = load i64, ptr %fld.gep295, align 8
  %fld.gep298 = getelementptr inbounds { i64, ptr, ptr, i64, i64, ptr, i64, i64 }, ptr %slot.i2p269, i32 0, i32 1
  %fld.load299 = load ptr, ptr %fld.gep298, align 8
  %arena.cur300 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur300, i64 ptrtoint (ptr getelementptr ({ i64, ptr, i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  store i64 %fld.load287, ptr %rec.alloc, align 8
  %rec.fld301 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %fld.load290, ptr %rec.fld301, align 8
  %rec.fld302 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %fld.load293, ptr %rec.fld302, align 8
  %rec.fld303 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %fld.load296, ptr %rec.fld303, align 8
  %rec.fld304 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 4
  store ptr %fld.load299, ptr %rec.fld304, align 8
  %rec.fld305 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld305, align 1
  call void @"lsp::add_unique_diag"(ptr %var.all_diags.8, ptr %rec.alloc)
  %loop.next307 = add i64 %loop.idx.940.0, 1
  br label %loop.header.940

a.after312:                                       ; preds = %a.after134
  store ptr %"var.syms'.3", ptr @"var.lsp::pending_syms", align 8
  store ptr %var.all_diags.0, ptr @"var.lsp::pending_diags", align 8
  call void @"diag::enable_capture"()
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %clo.fn.load = load ptr, ptr %2, align 8
  %clo.env.load = load ptr, ptr %clo.env.gep, align 8
  %clo.is_cap = icmp ne ptr %clo.env.load, null
  br i1 %clo.is_cap, label %clo.cap, label %clo.plain

clo.cap:                                          ; preds = %a.after312
  call void %clo.fn.load(ptr %clo.env.load, ptr %ret.ub.alloc)
  br label %clo.merge

clo.plain:                                        ; preds = %a.after312
  call void %clo.fn.load(ptr %ret.ub.alloc)
  br label %clo.merge

clo.merge:                                        ; preds = %clo.plain, %clo.cap
  %call.res335 = call ptr @"diag::get_captured"()
  call void @"diag::disable_capture"()
  %a.null338 = icmp eq ptr %call.res335, null
  br i1 %a.null338, label %a.create339, label %a.after340

a.create339:                                      ; preds = %clo.merge
  %arena.cur341 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create342 = call ptr @dva_arena_alloc(ptr %arena.cur341, i64 24)
  %arena.cur343 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf344 = call ptr @dva_arena_alloc(ptr %arena.cur343, i64 128)
  store i64 0, ptr %a.create342, align 8
  %a.data.gep346 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create342, i32 0, i32 1
  store ptr %a.buf344, ptr %a.data.gep346, align 8
  %a.cap.gep347 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create342, i32 0, i32 2
  store i64 16, ptr %a.cap.gep347, align 8
  br label %a.after340

a.after340:                                       ; preds = %a.create339, %clo.merge
  %var.ld_captured.0 = phi ptr [ %a.create342, %a.create339 ], [ %call.res335, %clo.merge ]
  %arr.cycle.len350 = load i64, ptr %var.ld_captured.0, align 8
  %arr.cycle.data351 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.ld_captured.0, i32 0, i32 1
  %arr.cycle.data352 = load ptr, ptr %arr.cycle.data351, align 8
  br label %loop.header.941

loop.header.941:                                  ; preds = %choice.exit404, %a.after340
  %loop.idx.941.0 = phi i64 [ 0, %a.after340 ], [ %loop.next420, %choice.exit404 ]
  %loop.cond354 = icmp slt i64 %loop.idx.941.0, %arr.cycle.len350
  br i1 %loop.cond354, label %loop.body.941, label %loop.exit.941

loop.body.941:                                    ; preds = %loop.header.941
  %arr.elem.gep356 = getelementptr i64, ptr %arr.cycle.data352, i64 %loop.idx.941.0
  %arr.elem.raw357 = load i64, ptr %arr.elem.gep356, align 8
  %slot.i2p358 = inttoptr i64 %arr.elem.raw357 to ptr
  %fld.gep362 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %slot.i2p358, i32 0, i32 1
  %fld.load363 = load ptr, ptr %fld.gep362, align 8
  %eq.lhs.len364 = load i64, ptr %fld.load363, align 8
  %eq.lhs.len365 = and i64 %eq.lhs.len364, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len364, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

loop.exit.941:                                    ; preds = %loop.header.941
  %a.load422 = load ptr, ptr @"var.lsp::pending_syms", align 8
  %a.null423 = icmp eq ptr %a.load422, null
  br i1 %a.null423, label %a.create424, label %a.after425

str_ok:                                           ; preds = %tag.slow_check, %loop.body.941
  %eq.len = icmp eq i64 %eq.lhs.len365, 0
  br i1 %eq.len, label %str.eq.then, label %or.942.else

tag.slow_check:                                   ; preds = %loop.body.941
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load363, i32 0, i32 1
  %eq.lhs.data367 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data367, ptr @str.0, i64 0)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then403, label %or.942.else

or.942.else:                                      ; preds = %str_ok, %str.eq.then
  %fld.load370 = load ptr, ptr %fld.gep362, align 8
  %eq.lhs.len373 = load i64, ptr %fld.load370, align 8
  %eq.lhs.len374 = and i64 %eq.lhs.len373, 281474976710655
  %str.tag375 = lshr i64 %eq.lhs.len373, 48
  %tag.immortal377 = icmp eq i64 %str.tag375, 0
  %active.gen378 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current379 = icmp eq i64 %str.tag375, %active.gen378
  %tag.fast.ok380 = or i1 %tag.immortal377, %tag.current379
  br i1 %tag.fast.ok380, label %str_ok376, label %tag.slow_check381

str_ok376:                                        ; preds = %tag.slow_check381, %or.942.else
  %eq.rhs.len383 = load i64, ptr %ret.ub.alloc, align 8
  %eq.rhs.len384 = and i64 %eq.rhs.len383, 281474976710655
  %str.tag385 = lshr i64 %eq.rhs.len383, 48
  %tag.immortal387 = icmp eq i64 %str.tag385, 0
  %active.gen388 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current389 = icmp eq i64 %str.tag385, %active.gen388
  %tag.fast.ok390 = or i1 %tag.immortal387, %tag.current389
  br i1 %tag.fast.ok390, label %str_ok386, label %tag.slow_check391

tag.slow_check381:                                ; preds = %or.942.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag375)
  br label %str_ok376

str_ok386:                                        ; preds = %tag.slow_check391, %str_ok376
  %eq.len392 = icmp eq i64 %eq.lhs.len374, %eq.rhs.len384
  br i1 %eq.len392, label %str.eq.then393, label %choice.exit404

tag.slow_check391:                                ; preds = %str_ok376
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag385)
  br label %str_ok386

str.eq.then393:                                   ; preds = %str_ok386
  %eq.lhs.data396 = getelementptr inbounds { i64, ptr }, ptr %fld.load370, i32 0, i32 1
  %eq.lhs.data397 = load ptr, ptr %eq.lhs.data396, align 8
  %eq.rhs.data398 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.rhs.data399 = load ptr, ptr %eq.rhs.data398, align 8
  %eq.memcmp400 = call i32 @memcmp(ptr %eq.lhs.data397, ptr %eq.rhs.data399, i64 %eq.lhs.len374)
  %eq.cmp.zero401 = icmp eq i32 %eq.memcmp400, 0
  br i1 %eq.cmp.zero401, label %choice.then403, label %choice.exit404

choice.then403:                                   ; preds = %str.eq.then, %str.eq.then393
  %a.load406 = load ptr, ptr @"var.lsp::pending_diags", align 8
  %a.null407 = icmp eq ptr %a.load406, null
  br i1 %a.null407, label %a.create408, label %a.after409

choice.exit404:                                   ; preds = %str_ok386, %a.after409, %str.eq.then393
  %loop.next420 = add i64 %loop.idx.941.0, 1
  br label %loop.header.941

a.create408:                                      ; preds = %choice.then403
  %arena.cur410 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create411 = call ptr @dva_arena_alloc(ptr %arena.cur410, i64 24)
  %arena.cur412 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf413 = call ptr @dva_arena_alloc(ptr %arena.cur412, i64 128)
  store i64 0, ptr %a.create411, align 8
  %a.data.gep415 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create411, i32 0, i32 1
  store ptr %a.buf413, ptr %a.data.gep415, align 8
  %a.cap.gep416 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create411, i32 0, i32 2
  store i64 16, ptr %a.cap.gep416, align 8
  store ptr %a.create411, ptr @"var.lsp::pending_diags", align 8
  br label %a.after409

a.after409:                                       ; preds = %a.create408, %choice.then403
  %a.load2417 = load ptr, ptr @"var.lsp::pending_diags", align 8
  call void @"lsp::add_unique_diag"(ptr %a.load2417, ptr %slot.i2p358)
  br label %choice.exit404

a.create424:                                      ; preds = %loop.exit.941
  %arena.cur426 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create427 = call ptr @dva_arena_alloc(ptr %arena.cur426, i64 24)
  %arena.cur428 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf429 = call ptr @dva_arena_alloc(ptr %arena.cur428, i64 128)
  store i64 0, ptr %a.create427, align 8
  %a.data.gep431 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create427, i32 0, i32 1
  store ptr %a.buf429, ptr %a.data.gep431, align 8
  %a.cap.gep432 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create427, i32 0, i32 2
  store i64 16, ptr %a.cap.gep432, align 8
  store ptr %a.create427, ptr @"var.lsp::pending_syms", align 8
  br label %a.after425

a.after425:                                       ; preds = %a.create424, %loop.exit.941
  %a.load2433 = load ptr, ptr @"var.lsp::pending_syms", align 8
  br label %choice.exit

a.create440:                                      ; preds = %choice.exit
  %arena.cur442 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create443 = call ptr @dva_arena_alloc(ptr %arena.cur442, i64 24)
  %arena.cur444 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf445 = call ptr @dva_arena_alloc(ptr %arena.cur444, i64 128)
  store i64 0, ptr %a.create443, align 8
  %a.data.gep447 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create443, i32 0, i32 1
  store ptr %a.buf445, ptr %a.data.gep447, align 8
  %a.cap.gep448 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create443, i32 0, i32 2
  store i64 16, ptr %a.cap.gep448, align 8
  br label %a.after441

a.after441:                                       ; preds = %a.create440, %choice.exit
  %"var.syms'.9" = phi ptr [ %a.create443, %a.create440 ], [ %"var.syms'.1", %choice.exit ]
  call void @"lsp::upsert_doc"(ptr %0, ptr %ret.ub.alloc, ptr %1, ptr %"var.syms'.9")
  %a.null453 = icmp eq ptr %var.all_diags.2, null
  br i1 %a.null453, label %a.create454, label %a.after455

a.create454:                                      ; preds = %a.after441
  %arena.cur456 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create457 = call ptr @dva_arena_alloc(ptr %arena.cur456, i64 24)
  %arena.cur458 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf459 = call ptr @dva_arena_alloc(ptr %arena.cur458, i64 128)
  store i64 0, ptr %a.create457, align 8
  %a.data.gep461 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create457, i32 0, i32 1
  store ptr %a.buf459, ptr %a.data.gep461, align 8
  %a.cap.gep462 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create457, i32 0, i32 2
  store i64 16, ptr %a.cap.gep462, align 8
  br label %a.after455

a.after455:                                       ; preds = %a.create454, %a.after441
  %var.all_diags.11 = phi ptr [ %a.create457, %a.create454 ], [ %var.all_diags.2, %a.after441 ]
  call void @"lsp::publish_diagnostics"(ptr %0, ptr %var.all_diags.11)
  ret void
}

declare void @"ast::cell_var_reset"() #3

declare void @"diag::enable_capture"() #3

declare void @"lexer::lex_set_file"(ptr) #3

declare ptr @"parser::parse_init"(ptr) #3

declare void @"parser::parser_set_file"(ptr, ptr) #3

declare { i1, i64 } @"parser::parse_program"(ptr) #3

declare ptr @"diag::get_captured"() #3

declare void @"diag::disable_capture"() #3

declare ptr @"parser::fold_program_consts"(ptr) #3

declare void @"annotate::set_source_file"(ptr) #3

declare void @"annotate::set_program_locs"(ptr, ptr, ptr) #3

declare { i1, i64 } @"annotate::annotate_program"(ptr) #3

define i1 @"lsp::is_ident_char"(i64 %0) #3 {
entry:
  %cmptmp = icmp sge i64 %0, 97
  %cmptmp1 = icmp sle i64 %0, 122
  %and.943.phi = select i1 %cmptmp, i1 %cmptmp1, i1 false
  %cmptmp2 = icmp sge i64 %0, 65
  %cmptmp3 = icmp sle i64 %0, 90
  %and.944.phi = select i1 %cmptmp2, i1 %cmptmp3, i1 false
  %case.or = or i1 %and.943.phi, %and.944.phi
  %cmptmp4 = icmp sge i64 %0, 48
  %cmptmp5 = icmp sle i64 %0, 57
  %and.945.phi = select i1 %cmptmp4, i1 %cmptmp5, i1 false
  %case.or6 = or i1 %case.or, %and.945.phi
  %val.match = icmp eq i64 %0, 95
  %case.or7 = or i1 %case.or6, %val.match
  %val.match8 = icmp eq i64 %0, 39
  %case.or9 = or i1 %case.or7, %val.match8
  %val.match10 = icmp eq i64 %0, 35
  %case.or11 = or i1 %case.or9, %val.match10
  %val.match12 = icmp eq i64 %0, 58
  %case.or13 = or i1 %case.or11, %val.match12
  ret i1 %case.or13
}

define { i64, ptr } @"lsp::extract_word_at"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %call.res = call { i64, ptr } @"lsp::get_line_at"(ptr %0, i64 %1)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %str.len.query4 = and i64 %call.res.fca.0.extract, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query4, 0
  br i1 %cmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %idx_ok, %entry, %choice.else77
  %common.ret.op = phi { i64, ptr } [ %ret.pack91.fca.1.insert, %choice.else77 ], [ { i64 0, ptr @str.0 }, %entry ], [ { i64 0, ptr @str.0 }, %idx_ok ]
  ret { i64, ptr } %common.ret.op

choice.exit:                                      ; preds = %entry
  %cmptmp8 = icmp slt i64 %2, %str.len.query4
  %cmptmp12 = icmp slt i64 %2, 0
  %. = select i1 %cmptmp12, i64 0, i64 %2
  %subtmp = sub nuw i64 %str.len.query4, 1
  %choice.res18 = select i1 %cmptmp8, i64 %., i64 %subtmp
  %idx.oob = icmp uge i64 %choice.res18, %str.len.query4
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.exit
  %s.byte.gep = getelementptr i8, ptr %call.res.fca.1.extract, i64 %choice.res18
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res24 = call i1 @"lsp::is_ident_char"(i64 %s.byte.val)
  %nottmp = xor i1 %call.res24, true
  br i1 %nottmp, label %common.ret, label %loop.header.946

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

loop.header.946:                                  ; preds = %idx_ok, %choice.then48
  %"var.s'.0" = phi i64 [ %subtmp39, %choice.then48 ], [ %choice.res18, %idx_ok ]
  %loop.idx.946.0 = phi i64 [ %loop.next, %choice.then48 ], [ 0, %idx_ok ]
  %cmptmp31 = icmp sgt i64 %"var.s'.0", 0
  br i1 %cmptmp31, label %and.947.then, label %choice.else49

and.947.then:                                     ; preds = %loop.header.946
  %subtmp39 = sub nuw nsw i64 %"var.s'.0", 1
  %idx.oob40 = icmp uge i64 %subtmp39, %str.len.query4
  br i1 %idx.oob40, label %idx_oob42, label %idx_ok41

idx_ok41:                                         ; preds = %and.947.then
  %s.byte.gep44 = getelementptr i8, ptr %call.res.fca.1.extract, i64 %subtmp39
  %s.byte45 = load i8, ptr %s.byte.gep44, align 1
  %s.byte.val46 = zext i8 %s.byte45 to i64
  %call.res47 = call i1 @"lsp::is_ident_char"(i64 %s.byte.val46)
  br i1 %call.res47, label %choice.then48, label %choice.else49

idx_oob42:                                        ; preds = %and.947.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then48:                                    ; preds = %idx_ok41
  %loop.next = add i64 %loop.idx.946.0, 1
  br label %loop.header.946

choice.else49:                                    ; preds = %loop.header.946, %idx_ok41
  %addtmp = add nuw i64 %choice.res18, 1
  br label %loop.header.948

loop.header.948:                                  ; preds = %choice.then76, %choice.else49
  %"var.e'.0" = phi i64 [ %addtmp, %choice.else49 ], [ %addtmp80, %choice.then76 ]
  %loop.idx.948.0 = phi i64 [ 0, %choice.else49 ], [ %loop.next82, %choice.then76 ]
  %cmptmp60 = icmp slt i64 %"var.e'.0", %str.len.query4
  br i1 %cmptmp60, label %and.949.then, label %choice.else77

and.949.then:                                     ; preds = %loop.header.948
  %idx.oob68 = icmp uge i64 %"var.e'.0", %str.len.query4
  br i1 %idx.oob68, label %idx_oob70, label %idx_ok69

idx_ok69:                                         ; preds = %and.949.then
  %s.byte.gep72 = getelementptr i8, ptr %call.res.fca.1.extract, i64 %"var.e'.0"
  %s.byte73 = load i8, ptr %s.byte.gep72, align 1
  %s.byte.val74 = zext i8 %s.byte73 to i64
  %call.res75 = call i1 @"lsp::is_ident_char"(i64 %s.byte.val74)
  br i1 %call.res75, label %choice.then76, label %choice.else77

idx_oob70:                                        ; preds = %and.949.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then76:                                    ; preds = %idx_ok69
  %addtmp80 = add nuw i64 %"var.e'.0", 1
  %loop.next82 = add i64 %loop.idx.948.0, 1
  br label %loop.header.948

choice.else77:                                    ; preds = %loop.header.948, %idx_ok69
  %start.is_neg = icmp slt i64 %"var.s'.0", 0
  %rel.start = add i64 %str.len.query4, %"var.s'.0"
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %"var.s'.0"
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %str.len.query4
  %final.start = select i1 %start.gt.len, i64 %str.len.query4, i64 %c.start.0
  %end.is_neg = icmp slt i64 %"var.e'.0", 0
  %rel.end = add i64 %str.len.query4, %"var.e'.0"
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %"var.e'.0"
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %str.len.query4
  %final.end = select i1 %end.gt.len, i64 %str.len.query4, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %call.res.fca.1.extract, i64 %final.start
  %ret.pack91.fca.0.insert = insertvalue { i64, ptr } poison, i64 %view.len, 0
  %ret.pack91.fca.1.insert = insertvalue { i64, ptr } %ret.pack91.fca.0.insert, ptr %view.data, 1
  br label %common.ret
}

define i1 @"lsp::is_op_char"(i64 %0) #3 {
entry:
  switch i64 %0, label %choice.next [
    i64 126, label %choice.exit
    i64 124, label %choice.exit
    i64 94, label %choice.exit
    i64 64, label %choice.exit
    i64 63, label %choice.exit
    i64 62, label %choice.exit
    i64 61, label %choice.exit
    i64 60, label %choice.exit
    i64 58, label %choice.exit
    i64 47, label %choice.exit
    i64 46, label %choice.exit
    i64 45, label %choice.exit
    i64 43, label %choice.exit
    i64 42, label %choice.exit
    i64 38, label %choice.exit
    i64 37, label %choice.exit
    i64 36, label %choice.exit
    i64 33, label %choice.exit
  ]

choice.exit:                                      ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %choice.next
  %choice.res = phi i1 [ false, %choice.next ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ]
  ret i1 %choice.res

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define { i64, ptr } @"lsp::extract_operator_at"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %call.res = call { i64, ptr } @"lsp::get_line_at"(ptr %0, i64 %1)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %str.len.query4 = and i64 %call.res.fca.0.extract, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query4, 0
  br i1 %cmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %idx_ok, %and.953.exit, %entry, %choice.else183
  %common.ret.op = phi { i64, ptr } [ %ret.pack215.fca.1.insert, %choice.else183 ], [ { i64 0, ptr @str.0 }, %entry ], [ { i64 3, ptr @str.70 }, %and.953.exit ], [ { i64 0, ptr @str.0 }, %idx_ok ]
  ret { i64, ptr } %common.ret.op

choice.exit:                                      ; preds = %entry
  %cmptmp8 = icmp slt i64 %2, %str.len.query4
  %cmptmp12 = icmp slt i64 %2, 0
  %. = select i1 %cmptmp12, i64 0, i64 %2
  %subtmp = sub nuw i64 %str.len.query4, 1
  %choice.res18 = select i1 %cmptmp8, i64 %., i64 %subtmp
  %addtmp = add i64 %choice.res18, 2
  %cmptmp21 = icmp slt i64 %addtmp, %str.len.query4
  br i1 %cmptmp21, label %and.950.then, label %and.950.exit

and.950.then:                                     ; preds = %choice.exit
  %addtmp28 = add i64 %choice.res18, 3
  %start.is_neg = icmp slt i64 %choice.res18, 0
  %rel.start = add i64 %str.len.query4, %choice.res18
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %choice.res18
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %str.len.query4
  %final.start = select i1 %start.gt.len, i64 %str.len.query4, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp28, 0
  %rel.end = add i64 %str.len.query4, %addtmp28
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp28
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %str.len.query4
  %final.end = select i1 %end.gt.len, i64 %str.len.query4, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %call.res.fca.1.extract, i64 %final.start
  %eq.len = icmp eq i64 %view.len, 3
  br i1 %eq.len, label %str.eq.then, label %and.950.exit

and.950.exit:                                     ; preds = %str.eq.then, %and.950.then, %choice.exit
  %and.950.phi = phi i1 [ false, %choice.exit ], [ %eq.cmp.zero, %str.eq.then ], [ false, %and.950.then ]
  %cmptmp32 = icmp sgt i64 %choice.res18, 0
  %addtmp34 = add i64 %choice.res18, 1
  %cmptmp36 = icmp slt i64 %addtmp34, %str.len.query4
  %and.951.phi = select i1 %cmptmp32, i1 %cmptmp36, i1 false
  br i1 %and.951.phi, label %and.952.then, label %and.952.exit

str.eq.then:                                      ; preds = %and.950.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr @str.70, i64 3)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %and.950.exit

and.952.then:                                     ; preds = %and.950.exit
  %subtmp44 = sub nuw nsw i64 %choice.res18, 1
  %rel.start48 = add i64 %str.len.query4, %subtmp44
  %norm.start49 = select i1 false, i64 %rel.start48, i64 %subtmp44
  %c.start.051 = select i1 false, i64 0, i64 %norm.start49
  %start.gt.len52 = icmp sgt i64 %c.start.051, %str.len.query4
  %final.start53 = select i1 %start.gt.len52, i64 %str.len.query4, i64 %c.start.051
  %end.is_neg54 = icmp slt i64 %addtmp, 0
  %rel.end55 = add i64 %str.len.query4, %addtmp
  %norm.end56 = select i1 %end.is_neg54, i64 %rel.end55, i64 %addtmp
  %end.lt.057 = icmp slt i64 %norm.end56, 0
  %c.end.058 = select i1 %end.lt.057, i64 0, i64 %norm.end56
  %end.gt.len59 = icmp sgt i64 %c.end.058, %str.len.query4
  %final.end60 = select i1 %end.gt.len59, i64 %str.len.query4, i64 %c.end.058
  %view.empty61 = icmp sle i64 %final.end60, %final.start53
  %view.len.sub62 = sub i64 %final.end60, %final.start53
  %view.len63 = select i1 %view.empty61, i64 0, i64 %view.len.sub62
  %view.data64 = getelementptr i8, ptr %call.res.fca.1.extract, i64 %final.start53
  %eq.len68 = icmp eq i64 %view.len63, 3
  br i1 %eq.len68, label %str.eq.then69, label %and.952.exit

and.952.exit:                                     ; preds = %str.eq.then69, %and.952.then, %and.950.exit
  %and.952.phi = phi i1 [ false, %and.950.exit ], [ %eq.cmp.zero73, %str.eq.then69 ], [ false, %and.952.then ]
  %cmptmp76 = icmp sge i64 %choice.res18, 2
  br i1 %cmptmp76, label %and.953.then, label %and.953.exit

str.eq.then69:                                    ; preds = %and.952.then
  %eq.memcmp72 = call i32 @memcmp(ptr %view.data64, ptr @str.70, i64 3)
  %eq.cmp.zero73 = icmp eq i32 %eq.memcmp72, 0
  br label %and.952.exit

and.953.then:                                     ; preds = %and.952.exit
  %subtmp84 = sub nuw nsw i64 %choice.res18, 2
  %rel.start88 = add i64 %str.len.query4, %subtmp84
  %norm.start89 = select i1 false, i64 %rel.start88, i64 %subtmp84
  %c.start.091 = select i1 false, i64 0, i64 %norm.start89
  %start.gt.len92 = icmp sgt i64 %c.start.091, %str.len.query4
  %final.start93 = select i1 %start.gt.len92, i64 %str.len.query4, i64 %c.start.091
  %end.is_neg94 = icmp slt i64 %addtmp34, 0
  %rel.end95 = add i64 %str.len.query4, %addtmp34
  %norm.end96 = select i1 %end.is_neg94, i64 %rel.end95, i64 %addtmp34
  %end.lt.097 = icmp slt i64 %norm.end96, 0
  %c.end.098 = select i1 %end.lt.097, i64 0, i64 %norm.end96
  %end.gt.len99 = icmp sgt i64 %c.end.098, %str.len.query4
  %final.end100 = select i1 %end.gt.len99, i64 %str.len.query4, i64 %c.end.098
  %view.empty101 = icmp sle i64 %final.end100, %final.start93
  %view.len.sub102 = sub i64 %final.end100, %final.start93
  %view.len103 = select i1 %view.empty101, i64 0, i64 %view.len.sub102
  %view.data104 = getelementptr i8, ptr %call.res.fca.1.extract, i64 %final.start93
  %eq.len108 = icmp eq i64 %view.len103, 3
  br i1 %eq.len108, label %str.eq.then109, label %and.953.exit

and.953.exit:                                     ; preds = %str.eq.then109, %and.953.then, %and.952.exit
  %and.953.phi = phi i1 [ false, %and.952.exit ], [ %eq.cmp.zero113, %str.eq.then109 ], [ false, %and.953.then ]
  %and.950.phi.and.952.phi = select i1 %and.950.phi, i1 %and.950.phi, i1 %and.952.phi
  %or.955.phi = select i1 %and.950.phi.and.952.phi, i1 %and.950.phi.and.952.phi, i1 %and.953.phi
  br i1 %or.955.phi, label %common.ret, label %choice.exit119

str.eq.then109:                                   ; preds = %and.953.then
  %eq.memcmp112 = call i32 @memcmp(ptr %view.data104, ptr @str.70, i64 3)
  %eq.cmp.zero113 = icmp eq i32 %eq.memcmp112, 0
  br label %and.953.exit

choice.exit119:                                   ; preds = %and.953.exit
  %idx.oob = icmp uge i64 %choice.res18, %str.len.query4
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.exit119
  %s.byte.gep = getelementptr i8, ptr %call.res.fca.1.extract, i64 %choice.res18
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res129 = call i1 @"lsp::is_op_char"(i64 %s.byte.val)
  %nottmp = xor i1 %call.res129, true
  br i1 %nottmp, label %common.ret, label %loop.header.956

idx_oob:                                          ; preds = %choice.exit119
  call void @dva_abort_str_oob_msg()
  unreachable

loop.header.956:                                  ; preds = %idx_ok, %choice.then153
  %"var.s'.0" = phi i64 [ %subtmp144, %choice.then153 ], [ %choice.res18, %idx_ok ]
  %loop.idx.956.0 = phi i64 [ %loop.next, %choice.then153 ], [ 0, %idx_ok ]
  %cmptmp136 = icmp sgt i64 %"var.s'.0", 0
  br i1 %cmptmp136, label %and.957.then, label %choice.else154

and.957.then:                                     ; preds = %loop.header.956
  %subtmp144 = sub nuw nsw i64 %"var.s'.0", 1
  %idx.oob145 = icmp uge i64 %subtmp144, %str.len.query4
  br i1 %idx.oob145, label %idx_oob147, label %idx_ok146

idx_ok146:                                        ; preds = %and.957.then
  %s.byte.gep149 = getelementptr i8, ptr %call.res.fca.1.extract, i64 %subtmp144
  %s.byte150 = load i8, ptr %s.byte.gep149, align 1
  %s.byte.val151 = zext i8 %s.byte150 to i64
  %call.res152 = call i1 @"lsp::is_op_char"(i64 %s.byte.val151)
  br i1 %call.res152, label %choice.then153, label %choice.else154

idx_oob147:                                       ; preds = %and.957.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then153:                                   ; preds = %idx_ok146
  %loop.next = add i64 %loop.idx.956.0, 1
  br label %loop.header.956

choice.else154:                                   ; preds = %loop.header.956, %idx_ok146
  br label %loop.header.958

loop.header.958:                                  ; preds = %choice.then182, %choice.else154
  %"var.e'.0" = phi i64 [ %addtmp34, %choice.else154 ], [ %addtmp186, %choice.then182 ]
  %loop.idx.958.0 = phi i64 [ 0, %choice.else154 ], [ %loop.next188, %choice.then182 ]
  %cmptmp166 = icmp slt i64 %"var.e'.0", %str.len.query4
  br i1 %cmptmp166, label %and.959.then, label %choice.else183

and.959.then:                                     ; preds = %loop.header.958
  %idx.oob174 = icmp uge i64 %"var.e'.0", %str.len.query4
  br i1 %idx.oob174, label %idx_oob176, label %idx_ok175

idx_ok175:                                        ; preds = %and.959.then
  %s.byte.gep178 = getelementptr i8, ptr %call.res.fca.1.extract, i64 %"var.e'.0"
  %s.byte179 = load i8, ptr %s.byte.gep178, align 1
  %s.byte.val180 = zext i8 %s.byte179 to i64
  %call.res181 = call i1 @"lsp::is_op_char"(i64 %s.byte.val180)
  br i1 %call.res181, label %choice.then182, label %choice.else183

idx_oob176:                                       ; preds = %and.959.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then182:                                   ; preds = %idx_ok175
  %addtmp186 = add nsw i64 %"var.e'.0", 1
  %loop.next188 = add i64 %loop.idx.958.0, 1
  br label %loop.header.958

choice.else183:                                   ; preds = %loop.header.958, %idx_ok175
  %start.is_neg197 = icmp slt i64 %"var.s'.0", 0
  %rel.start198 = add i64 %str.len.query4, %"var.s'.0"
  %norm.start199 = select i1 %start.is_neg197, i64 %rel.start198, i64 %"var.s'.0"
  %start.lt.0200 = icmp slt i64 %norm.start199, 0
  %c.start.0201 = select i1 %start.lt.0200, i64 0, i64 %norm.start199
  %start.gt.len202 = icmp sgt i64 %c.start.0201, %str.len.query4
  %final.start203 = select i1 %start.gt.len202, i64 %str.len.query4, i64 %c.start.0201
  %end.is_neg204 = icmp slt i64 %"var.e'.0", 0
  %rel.end205 = add i64 %str.len.query4, %"var.e'.0"
  %norm.end206 = select i1 %end.is_neg204, i64 %rel.end205, i64 %"var.e'.0"
  %end.lt.0207 = icmp slt i64 %norm.end206, 0
  %c.end.0208 = select i1 %end.lt.0207, i64 0, i64 %norm.end206
  %end.gt.len209 = icmp sgt i64 %c.end.0208, %str.len.query4
  %final.end210 = select i1 %end.gt.len209, i64 %str.len.query4, i64 %c.end.0208
  %view.empty211 = icmp sle i64 %final.end210, %final.start203
  %view.len.sub212 = sub i64 %final.end210, %final.start203
  %view.len213 = select i1 %view.empty211, i64 0, i64 %view.len.sub212
  %view.data214 = getelementptr i8, ptr %call.res.fca.1.extract, i64 %final.start203
  %ret.pack215.fca.0.insert = insertvalue { i64, ptr } poison, i64 %view.len213, 0
  %ret.pack215.fca.1.insert = insertvalue { i64, ptr } %ret.pack215.fca.0.insert, ptr %view.data214, 1
  br label %common.ret
}

define { i64, ptr } @"lsp::operator_hover_doc"(ptr %0) #3 {
entry:
  %eq.lhs.len1 = load i64, ptr %0, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, 1
  br i1 %eq.len, label %str.eq.then, label %choice.next

choice.exit:                                      ; preds = %str.eq.merge994, %str.eq.merge929, %str.eq.then895, %str.eq.then878, %str.eq.then861, %str.eq.then844, %str.eq.then827, %str.eq.then810, %str.eq.then793, %str.eq.then776, %str.eq.then759, %str.eq.then742, %str.eq.then725, %str.eq.then708, %str.eq.then691, %str.eq.then674, %str.eq.then657, %str.eq.merge642, %str.eq.then608, %str.eq.then591, %str.eq.then574, %str.eq.then557, %str.eq.then540, %str.eq.then523, %str.eq.then506, %str.eq.then489, %str.eq.then472, %str.eq.then455, %str.eq.then438, %str.eq.then421, %str.eq.then404, %str.eq.then387, %str.eq.then370, %str.eq.then353, %str.eq.then336, %str.eq.then319, %str.eq.then302, %str.eq.then285, %str.eq.then268, %str.eq.then251, %str.eq.then234, %str.eq.then217, %str.eq.then200, %str.eq.then183, %str.eq.then166, %str.eq.then149, %str.eq.then132, %str.eq.then115, %str.eq.then98, %str.eq.then81, %str.eq.then64, %str.eq.then47, %str.eq.then30, %str.eq.then13, %str.eq.then
  %choice.res = phi ptr [ @str.72.struct, %str.eq.then ], [ @str.74.struct, %str.eq.then13 ], [ @str.76.struct, %str.eq.then30 ], [ @str.78.struct, %str.eq.then47 ], [ @str.80.struct, %str.eq.then64 ], [ @str.82.struct, %str.eq.then81 ], [ @str.84.struct, %str.eq.then98 ], [ @str.86.struct, %str.eq.then115 ], [ @str.88.struct, %str.eq.then132 ], [ @str.90.struct, %str.eq.then149 ], [ @str.92.struct, %str.eq.then166 ], [ @str.93.struct, %str.eq.then183 ], [ @str.95.struct, %str.eq.then200 ], [ @str.97.struct, %str.eq.then217 ], [ @str.99.struct, %str.eq.then234 ], [ @str.101.struct, %str.eq.then251 ], [ @str.103.struct, %str.eq.then268 ], [ @str.105.struct, %str.eq.then285 ], [ @str.107.struct, %str.eq.then302 ], [ @str.109.struct, %str.eq.then319 ], [ @str.110.struct, %str.eq.then336 ], [ @str.112.struct, %str.eq.then353 ], [ @str.114.struct, %str.eq.then370 ], [ @str.116.struct, %str.eq.then387 ], [ @str.118.struct, %str.eq.then404 ], [ @str.120.struct, %str.eq.then421 ], [ @str.122.struct, %str.eq.then438 ], [ @str.124.struct, %str.eq.then455 ], [ @str.126.struct, %str.eq.then472 ], [ @str.128.struct, %str.eq.then489 ], [ @str.130.struct, %str.eq.then506 ], [ @str.132.struct, %str.eq.then523 ], [ @str.134.struct, %str.eq.then540 ], [ @str.136.struct, %str.eq.then557 ], [ @str.138.struct, %str.eq.then574 ], [ @str.140.struct, %str.eq.then591 ], [ @str.142.struct, %str.eq.then608 ], [ @str.144.struct, %str.eq.merge642 ], [ @str.146.struct, %str.eq.then657 ], [ @str.148.struct, %str.eq.then674 ], [ @str.150.struct, %str.eq.then691 ], [ @str.152.struct, %str.eq.then708 ], [ @str.154.struct, %str.eq.then725 ], [ @str.156.struct, %str.eq.then742 ], [ @str.158.struct, %str.eq.then759 ], [ @str.159.struct, %str.eq.then776 ], [ @str.161.struct, %str.eq.then793 ], [ @str.163.struct, %str.eq.then810 ], [ @str.165.struct, %str.eq.then827 ], [ @str.167.struct, %str.eq.then844 ], [ @str.169.struct, %str.eq.then861 ], [ @str.171.struct, %str.eq.then878 ], [ @str.173.struct, %str.eq.then895 ], [ @str.176.struct, %str.eq.merge929 ], [ %spec.select, %str.eq.merge994 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

choice.next:                                      ; preds = %entry, %str.eq.then
  %eq.lhs.len8 = load i64, ptr %0, align 8
  %eq.lhs.len9 = and i64 %eq.lhs.len8, 281474976710655
  %eq.len12 = icmp eq i64 %eq.lhs.len9, 2
  br i1 %eq.len12, label %str.eq.then13, label %choice.next6

str.eq.then:                                      ; preds = %entry
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr @str.71, i64 1)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.exit, label %choice.next

choice.next6:                                     ; preds = %choice.next, %str.eq.then13
  %eq.lhs.len25 = load i64, ptr %0, align 8
  %eq.lhs.len26 = and i64 %eq.lhs.len25, 281474976710655
  %eq.len29 = icmp eq i64 %eq.lhs.len26, 3
  br i1 %eq.len29, label %str.eq.then30, label %choice.next23

str.eq.then13:                                    ; preds = %choice.next
  %eq.lhs.data16 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data17 = load ptr, ptr %eq.lhs.data16, align 8
  %eq.memcmp19 = call i32 @memcmp(ptr %eq.lhs.data17, ptr @str.73, i64 2)
  %eq.cmp.zero20 = icmp eq i32 %eq.memcmp19, 0
  br i1 %eq.cmp.zero20, label %choice.exit, label %choice.next6

choice.next23:                                    ; preds = %choice.next6, %str.eq.then30
  %eq.lhs.len42 = load i64, ptr %0, align 8
  %eq.lhs.len43 = and i64 %eq.lhs.len42, 281474976710655
  %eq.len46 = icmp eq i64 %eq.lhs.len43, 3
  br i1 %eq.len46, label %str.eq.then47, label %choice.next40

str.eq.then30:                                    ; preds = %choice.next6
  %eq.lhs.data33 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data34 = load ptr, ptr %eq.lhs.data33, align 8
  %eq.memcmp36 = call i32 @memcmp(ptr %eq.lhs.data34, ptr @str.75, i64 3)
  %eq.cmp.zero37 = icmp eq i32 %eq.memcmp36, 0
  br i1 %eq.cmp.zero37, label %choice.exit, label %choice.next23

choice.next40:                                    ; preds = %choice.next23, %str.eq.then47
  %eq.lhs.len59 = load i64, ptr %0, align 8
  %eq.lhs.len60 = and i64 %eq.lhs.len59, 281474976710655
  %eq.len63 = icmp eq i64 %eq.lhs.len60, 3
  br i1 %eq.len63, label %str.eq.then64, label %choice.next57

str.eq.then47:                                    ; preds = %choice.next23
  %eq.lhs.data50 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data51 = load ptr, ptr %eq.lhs.data50, align 8
  %eq.memcmp53 = call i32 @memcmp(ptr %eq.lhs.data51, ptr @str.77, i64 3)
  %eq.cmp.zero54 = icmp eq i32 %eq.memcmp53, 0
  br i1 %eq.cmp.zero54, label %choice.exit, label %choice.next40

choice.next57:                                    ; preds = %choice.next40, %str.eq.then64
  %eq.lhs.len76 = load i64, ptr %0, align 8
  %eq.lhs.len77 = and i64 %eq.lhs.len76, 281474976710655
  %eq.len80 = icmp eq i64 %eq.lhs.len77, 3
  br i1 %eq.len80, label %str.eq.then81, label %choice.next74

str.eq.then64:                                    ; preds = %choice.next40
  %eq.lhs.data67 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data68 = load ptr, ptr %eq.lhs.data67, align 8
  %eq.memcmp70 = call i32 @memcmp(ptr %eq.lhs.data68, ptr @str.79, i64 3)
  %eq.cmp.zero71 = icmp eq i32 %eq.memcmp70, 0
  br i1 %eq.cmp.zero71, label %choice.exit, label %choice.next57

choice.next74:                                    ; preds = %choice.next57, %str.eq.then81
  %eq.lhs.len93 = load i64, ptr %0, align 8
  %eq.lhs.len94 = and i64 %eq.lhs.len93, 281474976710655
  %eq.len97 = icmp eq i64 %eq.lhs.len94, 3
  br i1 %eq.len97, label %str.eq.then98, label %choice.next91

str.eq.then81:                                    ; preds = %choice.next57
  %eq.lhs.data84 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data85 = load ptr, ptr %eq.lhs.data84, align 8
  %eq.memcmp87 = call i32 @memcmp(ptr %eq.lhs.data85, ptr @str.81, i64 3)
  %eq.cmp.zero88 = icmp eq i32 %eq.memcmp87, 0
  br i1 %eq.cmp.zero88, label %choice.exit, label %choice.next74

choice.next91:                                    ; preds = %choice.next74, %str.eq.then98
  %eq.lhs.len110 = load i64, ptr %0, align 8
  %eq.lhs.len111 = and i64 %eq.lhs.len110, 281474976710655
  %eq.len114 = icmp eq i64 %eq.lhs.len111, 2
  br i1 %eq.len114, label %str.eq.then115, label %choice.next108

str.eq.then98:                                    ; preds = %choice.next74
  %eq.lhs.data101 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data102 = load ptr, ptr %eq.lhs.data101, align 8
  %eq.memcmp104 = call i32 @memcmp(ptr %eq.lhs.data102, ptr @str.83, i64 3)
  %eq.cmp.zero105 = icmp eq i32 %eq.memcmp104, 0
  br i1 %eq.cmp.zero105, label %choice.exit, label %choice.next91

choice.next108:                                   ; preds = %choice.next91, %str.eq.then115
  %eq.lhs.len127 = load i64, ptr %0, align 8
  %eq.lhs.len128 = and i64 %eq.lhs.len127, 281474976710655
  %eq.len131 = icmp eq i64 %eq.lhs.len128, 2
  br i1 %eq.len131, label %str.eq.then132, label %choice.next125

str.eq.then115:                                   ; preds = %choice.next91
  %eq.lhs.data118 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data119 = load ptr, ptr %eq.lhs.data118, align 8
  %eq.memcmp121 = call i32 @memcmp(ptr %eq.lhs.data119, ptr @str.85, i64 2)
  %eq.cmp.zero122 = icmp eq i32 %eq.memcmp121, 0
  br i1 %eq.cmp.zero122, label %choice.exit, label %choice.next108

choice.next125:                                   ; preds = %choice.next108, %str.eq.then132
  %eq.lhs.len144 = load i64, ptr %0, align 8
  %eq.lhs.len145 = and i64 %eq.lhs.len144, 281474976710655
  %eq.len148 = icmp eq i64 %eq.lhs.len145, 2
  br i1 %eq.len148, label %str.eq.then149, label %choice.next142

str.eq.then132:                                   ; preds = %choice.next108
  %eq.lhs.data135 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data136 = load ptr, ptr %eq.lhs.data135, align 8
  %eq.memcmp138 = call i32 @memcmp(ptr %eq.lhs.data136, ptr @str.87, i64 2)
  %eq.cmp.zero139 = icmp eq i32 %eq.memcmp138, 0
  br i1 %eq.cmp.zero139, label %choice.exit, label %choice.next125

choice.next142:                                   ; preds = %choice.next125, %str.eq.then149
  %eq.lhs.len161 = load i64, ptr %0, align 8
  %eq.lhs.len162 = and i64 %eq.lhs.len161, 281474976710655
  %eq.len165 = icmp eq i64 %eq.lhs.len162, 2
  br i1 %eq.len165, label %str.eq.then166, label %choice.next159

str.eq.then149:                                   ; preds = %choice.next125
  %eq.lhs.data152 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data153 = load ptr, ptr %eq.lhs.data152, align 8
  %eq.memcmp155 = call i32 @memcmp(ptr %eq.lhs.data153, ptr @str.89, i64 2)
  %eq.cmp.zero156 = icmp eq i32 %eq.memcmp155, 0
  br i1 %eq.cmp.zero156, label %choice.exit, label %choice.next142

choice.next159:                                   ; preds = %choice.next142, %str.eq.then166
  %eq.lhs.len178 = load i64, ptr %0, align 8
  %eq.lhs.len179 = and i64 %eq.lhs.len178, 281474976710655
  %eq.len182 = icmp eq i64 %eq.lhs.len179, 2
  br i1 %eq.len182, label %str.eq.then183, label %choice.next176

str.eq.then166:                                   ; preds = %choice.next142
  %eq.lhs.data169 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data170 = load ptr, ptr %eq.lhs.data169, align 8
  %eq.memcmp172 = call i32 @memcmp(ptr %eq.lhs.data170, ptr @str.91, i64 2)
  %eq.cmp.zero173 = icmp eq i32 %eq.memcmp172, 0
  br i1 %eq.cmp.zero173, label %choice.exit, label %choice.next159

choice.next176:                                   ; preds = %choice.next159, %str.eq.then183
  %eq.lhs.len195 = load i64, ptr %0, align 8
  %eq.lhs.len196 = and i64 %eq.lhs.len195, 281474976710655
  %eq.len199 = icmp eq i64 %eq.lhs.len196, 3
  br i1 %eq.len199, label %str.eq.then200, label %choice.next193

str.eq.then183:                                   ; preds = %choice.next159
  %eq.lhs.data186 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data187 = load ptr, ptr %eq.lhs.data186, align 8
  %eq.memcmp189 = call i32 @memcmp(ptr %eq.lhs.data187, ptr @str.30, i64 2)
  %eq.cmp.zero190 = icmp eq i32 %eq.memcmp189, 0
  br i1 %eq.cmp.zero190, label %choice.exit, label %choice.next176

choice.next193:                                   ; preds = %choice.next176, %str.eq.then200
  %eq.lhs.len212 = load i64, ptr %0, align 8
  %eq.lhs.len213 = and i64 %eq.lhs.len212, 281474976710655
  %eq.len216 = icmp eq i64 %eq.lhs.len213, 3
  br i1 %eq.len216, label %str.eq.then217, label %choice.next210

str.eq.then200:                                   ; preds = %choice.next176
  %eq.lhs.data203 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data204 = load ptr, ptr %eq.lhs.data203, align 8
  %eq.memcmp206 = call i32 @memcmp(ptr %eq.lhs.data204, ptr @str.94, i64 3)
  %eq.cmp.zero207 = icmp eq i32 %eq.memcmp206, 0
  br i1 %eq.cmp.zero207, label %choice.exit, label %choice.next193

choice.next210:                                   ; preds = %choice.next193, %str.eq.then217
  %eq.lhs.len229 = load i64, ptr %0, align 8
  %eq.lhs.len230 = and i64 %eq.lhs.len229, 281474976710655
  %eq.len233 = icmp eq i64 %eq.lhs.len230, 4
  br i1 %eq.len233, label %str.eq.then234, label %choice.next227

str.eq.then217:                                   ; preds = %choice.next193
  %eq.lhs.data220 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data221 = load ptr, ptr %eq.lhs.data220, align 8
  %eq.memcmp223 = call i32 @memcmp(ptr %eq.lhs.data221, ptr @str.96, i64 3)
  %eq.cmp.zero224 = icmp eq i32 %eq.memcmp223, 0
  br i1 %eq.cmp.zero224, label %choice.exit, label %choice.next210

choice.next227:                                   ; preds = %choice.next210, %str.eq.then234
  %eq.lhs.len246 = load i64, ptr %0, align 8
  %eq.lhs.len247 = and i64 %eq.lhs.len246, 281474976710655
  %eq.len250 = icmp eq i64 %eq.lhs.len247, 4
  br i1 %eq.len250, label %str.eq.then251, label %choice.next244

str.eq.then234:                                   ; preds = %choice.next210
  %eq.lhs.data237 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data238 = load ptr, ptr %eq.lhs.data237, align 8
  %eq.memcmp240 = call i32 @memcmp(ptr %eq.lhs.data238, ptr @str.98, i64 4)
  %eq.cmp.zero241 = icmp eq i32 %eq.memcmp240, 0
  br i1 %eq.cmp.zero241, label %choice.exit, label %choice.next227

choice.next244:                                   ; preds = %choice.next227, %str.eq.then251
  %eq.lhs.len263 = load i64, ptr %0, align 8
  %eq.lhs.len264 = and i64 %eq.lhs.len263, 281474976710655
  %eq.len267 = icmp eq i64 %eq.lhs.len264, 3
  br i1 %eq.len267, label %str.eq.then268, label %choice.next261

str.eq.then251:                                   ; preds = %choice.next227
  %eq.lhs.data254 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data255 = load ptr, ptr %eq.lhs.data254, align 8
  %eq.memcmp257 = call i32 @memcmp(ptr %eq.lhs.data255, ptr @str.100, i64 4)
  %eq.cmp.zero258 = icmp eq i32 %eq.memcmp257, 0
  br i1 %eq.cmp.zero258, label %choice.exit, label %choice.next244

choice.next261:                                   ; preds = %choice.next244, %str.eq.then268
  %eq.lhs.len280 = load i64, ptr %0, align 8
  %eq.lhs.len281 = and i64 %eq.lhs.len280, 281474976710655
  %eq.len284 = icmp eq i64 %eq.lhs.len281, 3
  br i1 %eq.len284, label %str.eq.then285, label %choice.next278

str.eq.then268:                                   ; preds = %choice.next244
  %eq.lhs.data271 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data272 = load ptr, ptr %eq.lhs.data271, align 8
  %eq.memcmp274 = call i32 @memcmp(ptr %eq.lhs.data272, ptr @str.102, i64 3)
  %eq.cmp.zero275 = icmp eq i32 %eq.memcmp274, 0
  br i1 %eq.cmp.zero275, label %choice.exit, label %choice.next261

choice.next278:                                   ; preds = %choice.next261, %str.eq.then285
  %eq.lhs.len297 = load i64, ptr %0, align 8
  %eq.lhs.len298 = and i64 %eq.lhs.len297, 281474976710655
  %eq.len301 = icmp eq i64 %eq.lhs.len298, 4
  br i1 %eq.len301, label %str.eq.then302, label %choice.next295

str.eq.then285:                                   ; preds = %choice.next261
  %eq.lhs.data288 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data289 = load ptr, ptr %eq.lhs.data288, align 8
  %eq.memcmp291 = call i32 @memcmp(ptr %eq.lhs.data289, ptr @str.104, i64 3)
  %eq.cmp.zero292 = icmp eq i32 %eq.memcmp291, 0
  br i1 %eq.cmp.zero292, label %choice.exit, label %choice.next278

choice.next295:                                   ; preds = %choice.next278, %str.eq.then302
  %eq.lhs.len314 = load i64, ptr %0, align 8
  %eq.lhs.len315 = and i64 %eq.lhs.len314, 281474976710655
  %eq.len318 = icmp eq i64 %eq.lhs.len315, 4
  br i1 %eq.len318, label %str.eq.then319, label %choice.next312

str.eq.then302:                                   ; preds = %choice.next278
  %eq.lhs.data305 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data306 = load ptr, ptr %eq.lhs.data305, align 8
  %eq.memcmp308 = call i32 @memcmp(ptr %eq.lhs.data306, ptr @str.106, i64 4)
  %eq.cmp.zero309 = icmp eq i32 %eq.memcmp308, 0
  br i1 %eq.cmp.zero309, label %choice.exit, label %choice.next295

choice.next312:                                   ; preds = %choice.next295, %str.eq.then319
  %eq.lhs.len331 = load i64, ptr %0, align 8
  %eq.lhs.len332 = and i64 %eq.lhs.len331, 281474976710655
  %eq.len335 = icmp eq i64 %eq.lhs.len332, 3
  br i1 %eq.len335, label %str.eq.then336, label %choice.next329

str.eq.then319:                                   ; preds = %choice.next295
  %eq.lhs.data322 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data323 = load ptr, ptr %eq.lhs.data322, align 8
  %eq.memcmp325 = call i32 @memcmp(ptr %eq.lhs.data323, ptr @str.108, i64 4)
  %eq.cmp.zero326 = icmp eq i32 %eq.memcmp325, 0
  br i1 %eq.cmp.zero326, label %choice.exit, label %choice.next312

choice.next329:                                   ; preds = %choice.next312, %str.eq.then336
  %eq.lhs.len348 = load i64, ptr %0, align 8
  %eq.lhs.len349 = and i64 %eq.lhs.len348, 281474976710655
  %eq.len352 = icmp eq i64 %eq.lhs.len349, 1
  br i1 %eq.len352, label %str.eq.then353, label %choice.next346

str.eq.then336:                                   ; preds = %choice.next312
  %eq.lhs.data339 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data340 = load ptr, ptr %eq.lhs.data339, align 8
  %eq.memcmp342 = call i32 @memcmp(ptr %eq.lhs.data340, ptr @str.70, i64 3)
  %eq.cmp.zero343 = icmp eq i32 %eq.memcmp342, 0
  br i1 %eq.cmp.zero343, label %choice.exit, label %choice.next329

choice.next346:                                   ; preds = %choice.next329, %str.eq.then353
  %eq.lhs.len365 = load i64, ptr %0, align 8
  %eq.lhs.len366 = and i64 %eq.lhs.len365, 281474976710655
  %eq.len369 = icmp eq i64 %eq.lhs.len366, 2
  br i1 %eq.len369, label %str.eq.then370, label %choice.next363

str.eq.then353:                                   ; preds = %choice.next329
  %eq.lhs.data356 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data357 = load ptr, ptr %eq.lhs.data356, align 8
  %eq.memcmp359 = call i32 @memcmp(ptr %eq.lhs.data357, ptr @str.111, i64 1)
  %eq.cmp.zero360 = icmp eq i32 %eq.memcmp359, 0
  br i1 %eq.cmp.zero360, label %choice.exit, label %choice.next346

choice.next363:                                   ; preds = %choice.next346, %str.eq.then370
  %eq.lhs.len382 = load i64, ptr %0, align 8
  %eq.lhs.len383 = and i64 %eq.lhs.len382, 281474976710655
  %eq.len386 = icmp eq i64 %eq.lhs.len383, 2
  br i1 %eq.len386, label %str.eq.then387, label %choice.next380

str.eq.then370:                                   ; preds = %choice.next346
  %eq.lhs.data373 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data374 = load ptr, ptr %eq.lhs.data373, align 8
  %eq.memcmp376 = call i32 @memcmp(ptr %eq.lhs.data374, ptr @str.113, i64 2)
  %eq.cmp.zero377 = icmp eq i32 %eq.memcmp376, 0
  br i1 %eq.cmp.zero377, label %choice.exit, label %choice.next363

choice.next380:                                   ; preds = %choice.next363, %str.eq.then387
  %eq.lhs.len399 = load i64, ptr %0, align 8
  %eq.lhs.len400 = and i64 %eq.lhs.len399, 281474976710655
  %eq.len403 = icmp eq i64 %eq.lhs.len400, 3
  br i1 %eq.len403, label %str.eq.then404, label %choice.next397

str.eq.then387:                                   ; preds = %choice.next363
  %eq.lhs.data390 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data391 = load ptr, ptr %eq.lhs.data390, align 8
  %eq.memcmp393 = call i32 @memcmp(ptr %eq.lhs.data391, ptr @str.115, i64 2)
  %eq.cmp.zero394 = icmp eq i32 %eq.memcmp393, 0
  br i1 %eq.cmp.zero394, label %choice.exit, label %choice.next380

choice.next397:                                   ; preds = %choice.next380, %str.eq.then404
  %eq.lhs.len416 = load i64, ptr %0, align 8
  %eq.lhs.len417 = and i64 %eq.lhs.len416, 281474976710655
  %eq.len420 = icmp eq i64 %eq.lhs.len417, 1
  br i1 %eq.len420, label %str.eq.then421, label %choice.next414

str.eq.then404:                                   ; preds = %choice.next380
  %eq.lhs.data407 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data408 = load ptr, ptr %eq.lhs.data407, align 8
  %eq.memcmp410 = call i32 @memcmp(ptr %eq.lhs.data408, ptr @str.117, i64 3)
  %eq.cmp.zero411 = icmp eq i32 %eq.memcmp410, 0
  br i1 %eq.cmp.zero411, label %choice.exit, label %choice.next397

choice.next414:                                   ; preds = %choice.next397, %str.eq.then421
  %eq.lhs.len433 = load i64, ptr %0, align 8
  %eq.lhs.len434 = and i64 %eq.lhs.len433, 281474976710655
  %eq.len437 = icmp eq i64 %eq.lhs.len434, 2
  br i1 %eq.len437, label %str.eq.then438, label %choice.next431

str.eq.then421:                                   ; preds = %choice.next397
  %eq.lhs.data424 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data425 = load ptr, ptr %eq.lhs.data424, align 8
  %eq.memcmp427 = call i32 @memcmp(ptr %eq.lhs.data425, ptr @str.119, i64 1)
  %eq.cmp.zero428 = icmp eq i32 %eq.memcmp427, 0
  br i1 %eq.cmp.zero428, label %choice.exit, label %choice.next414

choice.next431:                                   ; preds = %choice.next414, %str.eq.then438
  %eq.lhs.len450 = load i64, ptr %0, align 8
  %eq.lhs.len451 = and i64 %eq.lhs.len450, 281474976710655
  %eq.len454 = icmp eq i64 %eq.lhs.len451, 3
  br i1 %eq.len454, label %str.eq.then455, label %choice.next448

str.eq.then438:                                   ; preds = %choice.next414
  %eq.lhs.data441 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data442 = load ptr, ptr %eq.lhs.data441, align 8
  %eq.memcmp444 = call i32 @memcmp(ptr %eq.lhs.data442, ptr @str.121, i64 2)
  %eq.cmp.zero445 = icmp eq i32 %eq.memcmp444, 0
  br i1 %eq.cmp.zero445, label %choice.exit, label %choice.next431

choice.next448:                                   ; preds = %choice.next431, %str.eq.then455
  %eq.lhs.len467 = load i64, ptr %0, align 8
  %eq.lhs.len468 = and i64 %eq.lhs.len467, 281474976710655
  %eq.len471 = icmp eq i64 %eq.lhs.len468, 3
  br i1 %eq.len471, label %str.eq.then472, label %choice.next465

str.eq.then455:                                   ; preds = %choice.next431
  %eq.lhs.data458 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data459 = load ptr, ptr %eq.lhs.data458, align 8
  %eq.memcmp461 = call i32 @memcmp(ptr %eq.lhs.data459, ptr @str.123, i64 3)
  %eq.cmp.zero462 = icmp eq i32 %eq.memcmp461, 0
  br i1 %eq.cmp.zero462, label %choice.exit, label %choice.next448

choice.next465:                                   ; preds = %choice.next448, %str.eq.then472
  %eq.lhs.len484 = load i64, ptr %0, align 8
  %eq.lhs.len485 = and i64 %eq.lhs.len484, 281474976710655
  %eq.len488 = icmp eq i64 %eq.lhs.len485, 3
  br i1 %eq.len488, label %str.eq.then489, label %choice.next482

str.eq.then472:                                   ; preds = %choice.next448
  %eq.lhs.data475 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data476 = load ptr, ptr %eq.lhs.data475, align 8
  %eq.memcmp478 = call i32 @memcmp(ptr %eq.lhs.data476, ptr @str.125, i64 3)
  %eq.cmp.zero479 = icmp eq i32 %eq.memcmp478, 0
  br i1 %eq.cmp.zero479, label %choice.exit, label %choice.next465

choice.next482:                                   ; preds = %choice.next465, %str.eq.then489
  %eq.lhs.len501 = load i64, ptr %0, align 8
  %eq.lhs.len502 = and i64 %eq.lhs.len501, 281474976710655
  %eq.len505 = icmp eq i64 %eq.lhs.len502, 2
  br i1 %eq.len505, label %str.eq.then506, label %choice.next499

str.eq.then489:                                   ; preds = %choice.next465
  %eq.lhs.data492 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data493 = load ptr, ptr %eq.lhs.data492, align 8
  %eq.memcmp495 = call i32 @memcmp(ptr %eq.lhs.data493, ptr @str.127, i64 3)
  %eq.cmp.zero496 = icmp eq i32 %eq.memcmp495, 0
  br i1 %eq.cmp.zero496, label %choice.exit, label %choice.next482

choice.next499:                                   ; preds = %choice.next482, %str.eq.then506
  %eq.lhs.len518 = load i64, ptr %0, align 8
  %eq.lhs.len519 = and i64 %eq.lhs.len518, 281474976710655
  %eq.len522 = icmp eq i64 %eq.lhs.len519, 2
  br i1 %eq.len522, label %str.eq.then523, label %choice.next516

str.eq.then506:                                   ; preds = %choice.next482
  %eq.lhs.data509 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data510 = load ptr, ptr %eq.lhs.data509, align 8
  %eq.memcmp512 = call i32 @memcmp(ptr %eq.lhs.data510, ptr @str.129, i64 2)
  %eq.cmp.zero513 = icmp eq i32 %eq.memcmp512, 0
  br i1 %eq.cmp.zero513, label %choice.exit, label %choice.next499

choice.next516:                                   ; preds = %choice.next499, %str.eq.then523
  %eq.lhs.len535 = load i64, ptr %0, align 8
  %eq.lhs.len536 = and i64 %eq.lhs.len535, 281474976710655
  %eq.len539 = icmp eq i64 %eq.lhs.len536, 2
  br i1 %eq.len539, label %str.eq.then540, label %choice.next533

str.eq.then523:                                   ; preds = %choice.next499
  %eq.lhs.data526 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data527 = load ptr, ptr %eq.lhs.data526, align 8
  %eq.memcmp529 = call i32 @memcmp(ptr %eq.lhs.data527, ptr @str.131, i64 2)
  %eq.cmp.zero530 = icmp eq i32 %eq.memcmp529, 0
  br i1 %eq.cmp.zero530, label %choice.exit, label %choice.next516

choice.next533:                                   ; preds = %choice.next516, %str.eq.then540
  %eq.lhs.len552 = load i64, ptr %0, align 8
  %eq.lhs.len553 = and i64 %eq.lhs.len552, 281474976710655
  %eq.len556 = icmp eq i64 %eq.lhs.len553, 2
  br i1 %eq.len556, label %str.eq.then557, label %choice.next550

str.eq.then540:                                   ; preds = %choice.next516
  %eq.lhs.data543 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data544 = load ptr, ptr %eq.lhs.data543, align 8
  %eq.memcmp546 = call i32 @memcmp(ptr %eq.lhs.data544, ptr @str.133, i64 2)
  %eq.cmp.zero547 = icmp eq i32 %eq.memcmp546, 0
  br i1 %eq.cmp.zero547, label %choice.exit, label %choice.next533

choice.next550:                                   ; preds = %choice.next533, %str.eq.then557
  %eq.lhs.len569 = load i64, ptr %0, align 8
  %eq.lhs.len570 = and i64 %eq.lhs.len569, 281474976710655
  %eq.len573 = icmp eq i64 %eq.lhs.len570, 2
  br i1 %eq.len573, label %str.eq.then574, label %choice.next567

str.eq.then557:                                   ; preds = %choice.next533
  %eq.lhs.data560 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data561 = load ptr, ptr %eq.lhs.data560, align 8
  %eq.memcmp563 = call i32 @memcmp(ptr %eq.lhs.data561, ptr @str.135, i64 2)
  %eq.cmp.zero564 = icmp eq i32 %eq.memcmp563, 0
  br i1 %eq.cmp.zero564, label %choice.exit, label %choice.next550

choice.next567:                                   ; preds = %choice.next550, %str.eq.then574
  %eq.lhs.len586 = load i64, ptr %0, align 8
  %eq.lhs.len587 = and i64 %eq.lhs.len586, 281474976710655
  %eq.len590 = icmp eq i64 %eq.lhs.len587, 2
  br i1 %eq.len590, label %str.eq.then591, label %choice.next584

str.eq.then574:                                   ; preds = %choice.next550
  %eq.lhs.data577 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data578 = load ptr, ptr %eq.lhs.data577, align 8
  %eq.memcmp580 = call i32 @memcmp(ptr %eq.lhs.data578, ptr @str.137, i64 2)
  %eq.cmp.zero581 = icmp eq i32 %eq.memcmp580, 0
  br i1 %eq.cmp.zero581, label %choice.exit, label %choice.next567

choice.next584:                                   ; preds = %choice.next567, %str.eq.then591
  %eq.lhs.len603 = load i64, ptr %0, align 8
  %eq.lhs.len604 = and i64 %eq.lhs.len603, 281474976710655
  %eq.len607 = icmp eq i64 %eq.lhs.len604, 2
  br i1 %eq.len607, label %str.eq.then608, label %choice.next601

str.eq.then591:                                   ; preds = %choice.next567
  %eq.lhs.data594 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data595 = load ptr, ptr %eq.lhs.data594, align 8
  %eq.memcmp597 = call i32 @memcmp(ptr %eq.lhs.data595, ptr @str.139, i64 2)
  %eq.cmp.zero598 = icmp eq i32 %eq.memcmp597, 0
  br i1 %eq.cmp.zero598, label %choice.exit, label %choice.next584

choice.next601:                                   ; preds = %choice.next584, %str.eq.then608
  %eq.lhs.len620 = load i64, ptr %0, align 8
  %eq.lhs.len621 = and i64 %eq.lhs.len620, 281474976710655
  %eq.len624 = icmp eq i64 %eq.lhs.len621, 3
  br i1 %eq.len624, label %str.eq.then625, label %str.eq.merge627

str.eq.then608:                                   ; preds = %choice.next584
  %eq.lhs.data611 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data612 = load ptr, ptr %eq.lhs.data611, align 8
  %eq.memcmp614 = call i32 @memcmp(ptr %eq.lhs.data612, ptr @str.141, i64 2)
  %eq.cmp.zero615 = icmp eq i32 %eq.memcmp614, 0
  br i1 %eq.cmp.zero615, label %choice.exit, label %choice.next601

choice.next618:                                   ; preds = %str.eq.merge642
  %eq.lhs.len652 = load i64, ptr %0, align 8
  %eq.lhs.len653 = and i64 %eq.lhs.len652, 281474976710655
  %eq.len656 = icmp eq i64 %eq.lhs.len653, 1
  br i1 %eq.len656, label %str.eq.then657, label %choice.next650

str.eq.then625:                                   ; preds = %choice.next601
  %eq.lhs.data628 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data629 = load ptr, ptr %eq.lhs.data628, align 8
  %eq.memcmp631 = call i32 @memcmp(ptr %eq.lhs.data629, ptr @str.5, i64 3)
  %eq.cmp.zero632 = icmp eq i32 %eq.memcmp631, 0
  br label %str.eq.merge627

str.eq.merge627:                                  ; preds = %choice.next601, %str.eq.then625
  %str.eq.result633 = phi i1 [ %eq.cmp.zero632, %str.eq.then625 ], [ false, %choice.next601 ]
  %eq.lhs.len635 = load i64, ptr %0, align 8
  %eq.lhs.len636 = and i64 %eq.lhs.len635, 281474976710655
  %eq.len639 = icmp eq i64 %eq.lhs.len636, 3
  br i1 %eq.len639, label %str.eq.then640, label %str.eq.merge642

str.eq.then640:                                   ; preds = %str.eq.merge627
  %eq.lhs.data643 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data644 = load ptr, ptr %eq.lhs.data643, align 8
  %eq.memcmp646 = call i32 @memcmp(ptr %eq.lhs.data644, ptr @str.143, i64 3)
  %eq.cmp.zero647 = icmp eq i32 %eq.memcmp646, 0
  br label %str.eq.merge642

str.eq.merge642:                                  ; preds = %str.eq.merge627, %str.eq.then640
  %str.eq.result648 = phi i1 [ %eq.cmp.zero647, %str.eq.then640 ], [ false, %str.eq.merge627 ]
  %case.or = or i1 %str.eq.result633, %str.eq.result648
  br i1 %case.or, label %choice.exit, label %choice.next618

choice.next650:                                   ; preds = %choice.next618, %str.eq.then657
  %eq.lhs.len669 = load i64, ptr %0, align 8
  %eq.lhs.len670 = and i64 %eq.lhs.len669, 281474976710655
  %eq.len673 = icmp eq i64 %eq.lhs.len670, 2
  br i1 %eq.len673, label %str.eq.then674, label %choice.next667

str.eq.then657:                                   ; preds = %choice.next618
  %eq.lhs.data660 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data661 = load ptr, ptr %eq.lhs.data660, align 8
  %eq.memcmp663 = call i32 @memcmp(ptr %eq.lhs.data661, ptr @str.145, i64 1)
  %eq.cmp.zero664 = icmp eq i32 %eq.memcmp663, 0
  br i1 %eq.cmp.zero664, label %choice.exit, label %choice.next650

choice.next667:                                   ; preds = %choice.next650, %str.eq.then674
  %eq.lhs.len686 = load i64, ptr %0, align 8
  %eq.lhs.len687 = and i64 %eq.lhs.len686, 281474976710655
  %eq.len690 = icmp eq i64 %eq.lhs.len687, 2
  br i1 %eq.len690, label %str.eq.then691, label %choice.next684

str.eq.then674:                                   ; preds = %choice.next650
  %eq.lhs.data677 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data678 = load ptr, ptr %eq.lhs.data677, align 8
  %eq.memcmp680 = call i32 @memcmp(ptr %eq.lhs.data678, ptr @str.147, i64 2)
  %eq.cmp.zero681 = icmp eq i32 %eq.memcmp680, 0
  br i1 %eq.cmp.zero681, label %choice.exit, label %choice.next667

choice.next684:                                   ; preds = %choice.next667, %str.eq.then691
  %eq.lhs.len703 = load i64, ptr %0, align 8
  %eq.lhs.len704 = and i64 %eq.lhs.len703, 281474976710655
  %eq.len707 = icmp eq i64 %eq.lhs.len704, 2
  br i1 %eq.len707, label %str.eq.then708, label %choice.next701

str.eq.then691:                                   ; preds = %choice.next667
  %eq.lhs.data694 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data695 = load ptr, ptr %eq.lhs.data694, align 8
  %eq.memcmp697 = call i32 @memcmp(ptr %eq.lhs.data695, ptr @str.149, i64 2)
  %eq.cmp.zero698 = icmp eq i32 %eq.memcmp697, 0
  br i1 %eq.cmp.zero698, label %choice.exit, label %choice.next684

choice.next701:                                   ; preds = %choice.next684, %str.eq.then708
  %eq.lhs.len720 = load i64, ptr %0, align 8
  %eq.lhs.len721 = and i64 %eq.lhs.len720, 281474976710655
  %eq.len724 = icmp eq i64 %eq.lhs.len721, 2
  br i1 %eq.len724, label %str.eq.then725, label %choice.next718

str.eq.then708:                                   ; preds = %choice.next684
  %eq.lhs.data711 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data712 = load ptr, ptr %eq.lhs.data711, align 8
  %eq.memcmp714 = call i32 @memcmp(ptr %eq.lhs.data712, ptr @str.151, i64 2)
  %eq.cmp.zero715 = icmp eq i32 %eq.memcmp714, 0
  br i1 %eq.cmp.zero715, label %choice.exit, label %choice.next701

choice.next718:                                   ; preds = %choice.next701, %str.eq.then725
  %eq.lhs.len737 = load i64, ptr %0, align 8
  %eq.lhs.len738 = and i64 %eq.lhs.len737, 281474976710655
  %eq.len741 = icmp eq i64 %eq.lhs.len738, 3
  br i1 %eq.len741, label %str.eq.then742, label %choice.next735

str.eq.then725:                                   ; preds = %choice.next701
  %eq.lhs.data728 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data729 = load ptr, ptr %eq.lhs.data728, align 8
  %eq.memcmp731 = call i32 @memcmp(ptr %eq.lhs.data729, ptr @str.153, i64 2)
  %eq.cmp.zero732 = icmp eq i32 %eq.memcmp731, 0
  br i1 %eq.cmp.zero732, label %choice.exit, label %choice.next718

choice.next735:                                   ; preds = %choice.next718, %str.eq.then742
  %eq.lhs.len754 = load i64, ptr %0, align 8
  %eq.lhs.len755 = and i64 %eq.lhs.len754, 281474976710655
  %eq.len758 = icmp eq i64 %eq.lhs.len755, 1
  br i1 %eq.len758, label %str.eq.then759, label %choice.next752

str.eq.then742:                                   ; preds = %choice.next718
  %eq.lhs.data745 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data746 = load ptr, ptr %eq.lhs.data745, align 8
  %eq.memcmp748 = call i32 @memcmp(ptr %eq.lhs.data746, ptr @str.155, i64 3)
  %eq.cmp.zero749 = icmp eq i32 %eq.memcmp748, 0
  br i1 %eq.cmp.zero749, label %choice.exit, label %choice.next735

choice.next752:                                   ; preds = %choice.next735, %str.eq.then759
  %eq.lhs.len771 = load i64, ptr %0, align 8
  %eq.lhs.len772 = and i64 %eq.lhs.len771, 281474976710655
  %eq.len775 = icmp eq i64 %eq.lhs.len772, 1
  br i1 %eq.len775, label %str.eq.then776, label %choice.next769

str.eq.then759:                                   ; preds = %choice.next735
  %eq.lhs.data762 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data763 = load ptr, ptr %eq.lhs.data762, align 8
  %eq.memcmp765 = call i32 @memcmp(ptr %eq.lhs.data763, ptr @str.157, i64 1)
  %eq.cmp.zero766 = icmp eq i32 %eq.memcmp765, 0
  br i1 %eq.cmp.zero766, label %choice.exit, label %choice.next752

choice.next769:                                   ; preds = %choice.next752, %str.eq.then776
  %eq.lhs.len788 = load i64, ptr %0, align 8
  %eq.lhs.len789 = and i64 %eq.lhs.len788, 281474976710655
  %eq.len792 = icmp eq i64 %eq.lhs.len789, 2
  br i1 %eq.len792, label %str.eq.then793, label %choice.next786

str.eq.then776:                                   ; preds = %choice.next752
  %eq.lhs.data779 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data780 = load ptr, ptr %eq.lhs.data779, align 8
  %eq.memcmp782 = call i32 @memcmp(ptr %eq.lhs.data780, ptr @str.1, i64 1)
  %eq.cmp.zero783 = icmp eq i32 %eq.memcmp782, 0
  br i1 %eq.cmp.zero783, label %choice.exit, label %choice.next769

choice.next786:                                   ; preds = %choice.next769, %str.eq.then793
  %eq.lhs.len805 = load i64, ptr %0, align 8
  %eq.lhs.len806 = and i64 %eq.lhs.len805, 281474976710655
  %eq.len809 = icmp eq i64 %eq.lhs.len806, 1
  br i1 %eq.len809, label %str.eq.then810, label %choice.next803

str.eq.then793:                                   ; preds = %choice.next769
  %eq.lhs.data796 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data797 = load ptr, ptr %eq.lhs.data796, align 8
  %eq.memcmp799 = call i32 @memcmp(ptr %eq.lhs.data797, ptr @str.160, i64 2)
  %eq.cmp.zero800 = icmp eq i32 %eq.memcmp799, 0
  br i1 %eq.cmp.zero800, label %choice.exit, label %choice.next786

choice.next803:                                   ; preds = %choice.next786, %str.eq.then810
  %eq.lhs.len822 = load i64, ptr %0, align 8
  %eq.lhs.len823 = and i64 %eq.lhs.len822, 281474976710655
  %eq.len826 = icmp eq i64 %eq.lhs.len823, 2
  br i1 %eq.len826, label %str.eq.then827, label %choice.next820

str.eq.then810:                                   ; preds = %choice.next786
  %eq.lhs.data813 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data814 = load ptr, ptr %eq.lhs.data813, align 8
  %eq.memcmp816 = call i32 @memcmp(ptr %eq.lhs.data814, ptr @str.162, i64 1)
  %eq.cmp.zero817 = icmp eq i32 %eq.memcmp816, 0
  br i1 %eq.cmp.zero817, label %choice.exit, label %choice.next803

choice.next820:                                   ; preds = %choice.next803, %str.eq.then827
  %eq.lhs.len839 = load i64, ptr %0, align 8
  %eq.lhs.len840 = and i64 %eq.lhs.len839, 281474976710655
  %eq.len843 = icmp eq i64 %eq.lhs.len840, 2
  br i1 %eq.len843, label %str.eq.then844, label %choice.next837

str.eq.then827:                                   ; preds = %choice.next803
  %eq.lhs.data830 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data831 = load ptr, ptr %eq.lhs.data830, align 8
  %eq.memcmp833 = call i32 @memcmp(ptr %eq.lhs.data831, ptr @str.164, i64 2)
  %eq.cmp.zero834 = icmp eq i32 %eq.memcmp833, 0
  br i1 %eq.cmp.zero834, label %choice.exit, label %choice.next820

choice.next837:                                   ; preds = %choice.next820, %str.eq.then844
  %eq.lhs.len856 = load i64, ptr %0, align 8
  %eq.lhs.len857 = and i64 %eq.lhs.len856, 281474976710655
  %eq.len860 = icmp eq i64 %eq.lhs.len857, 1
  br i1 %eq.len860, label %str.eq.then861, label %choice.next854

str.eq.then844:                                   ; preds = %choice.next820
  %eq.lhs.data847 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data848 = load ptr, ptr %eq.lhs.data847, align 8
  %eq.memcmp850 = call i32 @memcmp(ptr %eq.lhs.data848, ptr @str.166, i64 2)
  %eq.cmp.zero851 = icmp eq i32 %eq.memcmp850, 0
  br i1 %eq.cmp.zero851, label %choice.exit, label %choice.next837

choice.next854:                                   ; preds = %choice.next837, %str.eq.then861
  %eq.lhs.len873 = load i64, ptr %0, align 8
  %eq.lhs.len874 = and i64 %eq.lhs.len873, 281474976710655
  %eq.len877 = icmp eq i64 %eq.lhs.len874, 2
  br i1 %eq.len877, label %str.eq.then878, label %choice.next871

str.eq.then861:                                   ; preds = %choice.next837
  %eq.lhs.data864 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data865 = load ptr, ptr %eq.lhs.data864, align 8
  %eq.memcmp867 = call i32 @memcmp(ptr %eq.lhs.data865, ptr @str.168, i64 1)
  %eq.cmp.zero868 = icmp eq i32 %eq.memcmp867, 0
  br i1 %eq.cmp.zero868, label %choice.exit, label %choice.next854

choice.next871:                                   ; preds = %choice.next854, %str.eq.then878
  %eq.lhs.len890 = load i64, ptr %0, align 8
  %eq.lhs.len891 = and i64 %eq.lhs.len890, 281474976710655
  %eq.len894 = icmp eq i64 %eq.lhs.len891, 3
  br i1 %eq.len894, label %str.eq.then895, label %choice.next888

str.eq.then878:                                   ; preds = %choice.next854
  %eq.lhs.data881 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data882 = load ptr, ptr %eq.lhs.data881, align 8
  %eq.memcmp884 = call i32 @memcmp(ptr %eq.lhs.data882, ptr @str.170, i64 2)
  %eq.cmp.zero885 = icmp eq i32 %eq.memcmp884, 0
  br i1 %eq.cmp.zero885, label %choice.exit, label %choice.next871

choice.next888:                                   ; preds = %choice.next871, %str.eq.then895
  %eq.lhs.len907 = load i64, ptr %0, align 8
  %eq.lhs.len908 = and i64 %eq.lhs.len907, 281474976710655
  %eq.len911 = icmp eq i64 %eq.lhs.len908, 3
  br i1 %eq.len911, label %str.eq.then912, label %str.eq.merge914

str.eq.then895:                                   ; preds = %choice.next871
  %eq.lhs.data898 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data899 = load ptr, ptr %eq.lhs.data898, align 8
  %eq.memcmp901 = call i32 @memcmp(ptr %eq.lhs.data899, ptr @str.172, i64 3)
  %eq.cmp.zero902 = icmp eq i32 %eq.memcmp901, 0
  br i1 %eq.cmp.zero902, label %choice.exit, label %choice.next888

choice.next905:                                   ; preds = %str.eq.merge929
  %eq.lhs.len940 = load i64, ptr %0, align 8
  %eq.lhs.len941 = and i64 %eq.lhs.len940, 281474976710655
  %eq.len944 = icmp eq i64 %eq.lhs.len941, 3
  br i1 %eq.len944, label %str.eq.then945, label %str.eq.merge947

str.eq.then912:                                   ; preds = %choice.next888
  %eq.lhs.data915 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data916 = load ptr, ptr %eq.lhs.data915, align 8
  %eq.memcmp918 = call i32 @memcmp(ptr %eq.lhs.data916, ptr @str.174, i64 3)
  %eq.cmp.zero919 = icmp eq i32 %eq.memcmp918, 0
  br label %str.eq.merge914

str.eq.merge914:                                  ; preds = %choice.next888, %str.eq.then912
  %str.eq.result920 = phi i1 [ %eq.cmp.zero919, %str.eq.then912 ], [ false, %choice.next888 ]
  %eq.lhs.len922 = load i64, ptr %0, align 8
  %eq.lhs.len923 = and i64 %eq.lhs.len922, 281474976710655
  %eq.len926 = icmp eq i64 %eq.lhs.len923, 3
  br i1 %eq.len926, label %str.eq.then927, label %str.eq.merge929

str.eq.then927:                                   ; preds = %str.eq.merge914
  %eq.lhs.data930 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data931 = load ptr, ptr %eq.lhs.data930, align 8
  %eq.memcmp933 = call i32 @memcmp(ptr %eq.lhs.data931, ptr @str.175, i64 3)
  %eq.cmp.zero934 = icmp eq i32 %eq.memcmp933, 0
  br label %str.eq.merge929

str.eq.merge929:                                  ; preds = %str.eq.merge914, %str.eq.then927
  %str.eq.result935 = phi i1 [ %eq.cmp.zero934, %str.eq.then927 ], [ false, %str.eq.merge914 ]
  %case.or936 = or i1 %str.eq.result920, %str.eq.result935
  br i1 %case.or936, label %choice.exit, label %choice.next905

str.eq.then945:                                   ; preds = %choice.next905
  %eq.lhs.data948 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data949 = load ptr, ptr %eq.lhs.data948, align 8
  %eq.memcmp951 = call i32 @memcmp(ptr %eq.lhs.data949, ptr @str.177, i64 3)
  %eq.cmp.zero952 = icmp eq i32 %eq.memcmp951, 0
  br label %str.eq.merge947

str.eq.merge947:                                  ; preds = %choice.next905, %str.eq.then945
  %str.eq.result953 = phi i1 [ %eq.cmp.zero952, %str.eq.then945 ], [ false, %choice.next905 ]
  %eq.lhs.len955 = load i64, ptr %0, align 8
  %eq.lhs.len956 = and i64 %eq.lhs.len955, 281474976710655
  %eq.len959 = icmp eq i64 %eq.lhs.len956, 3
  br i1 %eq.len959, label %str.eq.then960, label %str.eq.merge962

str.eq.then960:                                   ; preds = %str.eq.merge947
  %eq.lhs.data963 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data964 = load ptr, ptr %eq.lhs.data963, align 8
  %eq.memcmp966 = call i32 @memcmp(ptr %eq.lhs.data964, ptr @str.178, i64 3)
  %eq.cmp.zero967 = icmp eq i32 %eq.memcmp966, 0
  br label %str.eq.merge962

str.eq.merge962:                                  ; preds = %str.eq.merge947, %str.eq.then960
  %str.eq.result968 = phi i1 [ %eq.cmp.zero967, %str.eq.then960 ], [ false, %str.eq.merge947 ]
  %case.or969 = or i1 %str.eq.result953, %str.eq.result968
  %eq.lhs.len971 = load i64, ptr %0, align 8
  %eq.lhs.len972 = and i64 %eq.lhs.len971, 281474976710655
  %eq.len975 = icmp eq i64 %eq.lhs.len972, 3
  br i1 %eq.len975, label %str.eq.then976, label %str.eq.merge978

str.eq.then976:                                   ; preds = %str.eq.merge962
  %eq.lhs.data979 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data980 = load ptr, ptr %eq.lhs.data979, align 8
  %eq.memcmp982 = call i32 @memcmp(ptr %eq.lhs.data980, ptr @str.179, i64 3)
  %eq.cmp.zero983 = icmp eq i32 %eq.memcmp982, 0
  br label %str.eq.merge978

str.eq.merge978:                                  ; preds = %str.eq.merge962, %str.eq.then976
  %str.eq.result984 = phi i1 [ %eq.cmp.zero983, %str.eq.then976 ], [ false, %str.eq.merge962 ]
  %case.or985 = or i1 %case.or969, %str.eq.result984
  %eq.lhs.len987 = load i64, ptr %0, align 8
  %eq.lhs.len988 = and i64 %eq.lhs.len987, 281474976710655
  %eq.len991 = icmp eq i64 %eq.lhs.len988, 3
  br i1 %eq.len991, label %str.eq.then992, label %str.eq.merge994

str.eq.then992:                                   ; preds = %str.eq.merge978
  %eq.lhs.data995 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data996 = load ptr, ptr %eq.lhs.data995, align 8
  %eq.memcmp998 = call i32 @memcmp(ptr %eq.lhs.data996, ptr @str.180, i64 3)
  %eq.cmp.zero999 = icmp eq i32 %eq.memcmp998, 0
  br label %str.eq.merge994

str.eq.merge994:                                  ; preds = %str.eq.merge978, %str.eq.then992
  %str.eq.result1000 = phi i1 [ %eq.cmp.zero999, %str.eq.then992 ], [ false, %str.eq.merge978 ]
  %case.or1001 = or i1 %case.or985, %str.eq.result1000
  %spec.select = select i1 %case.or1001, ptr @str.181.struct, ptr @str.0.struct
  br label %choice.exit
}

define { i64, ptr } @"lsp::builtin_hover_doc"(ptr %0) #3 {
entry:
  %eq.lhs.len1 = load i64, ptr %0, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, 3
  br i1 %eq.len, label %str.eq.then, label %choice.next

choice.exit:                                      ; preds = %str.eq.merge474, %str.eq.then455, %str.eq.then438, %str.eq.then421, %str.eq.then404, %str.eq.then387, %str.eq.then370, %str.eq.then353, %str.eq.then336, %str.eq.then319, %str.eq.then302, %str.eq.then285, %str.eq.then268, %str.eq.then251, %str.eq.then234, %str.eq.then217, %str.eq.then200, %str.eq.then183, %str.eq.then166, %str.eq.then149, %str.eq.then132, %str.eq.then115, %str.eq.then98, %str.eq.then81, %str.eq.then64, %str.eq.then47, %str.eq.then30, %str.eq.then13, %str.eq.then
  %choice.res = phi ptr [ @str.182.struct, %str.eq.then ], [ @str.183.struct, %str.eq.then13 ], [ @str.184.struct, %str.eq.then30 ], [ @str.185.struct, %str.eq.then47 ], [ @str.186.struct, %str.eq.then64 ], [ @str.187.struct, %str.eq.then81 ], [ @str.188.struct, %str.eq.then98 ], [ @str.189.struct, %str.eq.then115 ], [ @str.191.struct, %str.eq.then132 ], [ @str.193.struct, %str.eq.then149 ], [ @str.195.struct, %str.eq.then166 ], [ @str.197.struct, %str.eq.then183 ], [ @str.199.struct, %str.eq.then200 ], [ @str.201.struct, %str.eq.then217 ], [ @str.203.struct, %str.eq.then234 ], [ @str.205.struct, %str.eq.then251 ], [ @str.207.struct, %str.eq.then268 ], [ @str.209.struct, %str.eq.then285 ], [ @str.211.struct, %str.eq.then302 ], [ @str.213.struct, %str.eq.then319 ], [ @str.215.struct, %str.eq.then336 ], [ @str.217.struct, %str.eq.then353 ], [ @str.219.struct, %str.eq.then370 ], [ @str.221.struct, %str.eq.then387 ], [ @str.223.struct, %str.eq.then404 ], [ @str.225.struct, %str.eq.then421 ], [ @str.227.struct, %str.eq.then438 ], [ @str.229.struct, %str.eq.then455 ], [ %spec.select, %str.eq.merge474 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

choice.next:                                      ; preds = %entry, %str.eq.then
  %eq.lhs.len8 = load i64, ptr %0, align 8
  %eq.lhs.len9 = and i64 %eq.lhs.len8, 281474976710655
  %eq.len12 = icmp eq i64 %eq.lhs.len9, 5
  br i1 %eq.len12, label %str.eq.then13, label %choice.next6

str.eq.then:                                      ; preds = %entry
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr @str.17, i64 3)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.exit, label %choice.next

choice.next6:                                     ; preds = %choice.next, %str.eq.then13
  %eq.lhs.len25 = load i64, ptr %0, align 8
  %eq.lhs.len26 = and i64 %eq.lhs.len25, 281474976710655
  %eq.len29 = icmp eq i64 %eq.lhs.len26, 6
  br i1 %eq.len29, label %str.eq.then30, label %choice.next23

str.eq.then13:                                    ; preds = %choice.next
  %eq.lhs.data16 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data17 = load ptr, ptr %eq.lhs.data16, align 8
  %eq.memcmp19 = call i32 @memcmp(ptr %eq.lhs.data17, ptr @str.26, i64 5)
  %eq.cmp.zero20 = icmp eq i32 %eq.memcmp19, 0
  br i1 %eq.cmp.zero20, label %choice.exit, label %choice.next6

choice.next23:                                    ; preds = %choice.next6, %str.eq.then30
  %eq.lhs.len42 = load i64, ptr %0, align 8
  %eq.lhs.len43 = and i64 %eq.lhs.len42, 281474976710655
  %eq.len46 = icmp eq i64 %eq.lhs.len43, 4
  br i1 %eq.len46, label %str.eq.then47, label %choice.next40

str.eq.then30:                                    ; preds = %choice.next6
  %eq.lhs.data33 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data34 = load ptr, ptr %eq.lhs.data33, align 8
  %eq.memcmp36 = call i32 @memcmp(ptr %eq.lhs.data34, ptr @str.28, i64 6)
  %eq.cmp.zero37 = icmp eq i32 %eq.memcmp36, 0
  br i1 %eq.cmp.zero37, label %choice.exit, label %choice.next23

choice.next40:                                    ; preds = %choice.next23, %str.eq.then47
  %eq.lhs.len59 = load i64, ptr %0, align 8
  %eq.lhs.len60 = and i64 %eq.lhs.len59, 281474976710655
  %eq.len63 = icmp eq i64 %eq.lhs.len60, 7
  br i1 %eq.len63, label %str.eq.then64, label %choice.next57

str.eq.then47:                                    ; preds = %choice.next23
  %eq.lhs.data50 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data51 = load ptr, ptr %eq.lhs.data50, align 8
  %eq.memcmp53 = call i32 @memcmp(ptr %eq.lhs.data51, ptr @str.29, i64 4)
  %eq.cmp.zero54 = icmp eq i32 %eq.memcmp53, 0
  br i1 %eq.cmp.zero54, label %choice.exit, label %choice.next40

choice.next57:                                    ; preds = %choice.next40, %str.eq.then64
  %eq.lhs.len76 = load i64, ptr %0, align 8
  %eq.lhs.len77 = and i64 %eq.lhs.len76, 281474976710655
  %eq.len80 = icmp eq i64 %eq.lhs.len77, 4
  br i1 %eq.len80, label %str.eq.then81, label %choice.next74

str.eq.then64:                                    ; preds = %choice.next40
  %eq.lhs.data67 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data68 = load ptr, ptr %eq.lhs.data67, align 8
  %eq.memcmp70 = call i32 @memcmp(ptr %eq.lhs.data68, ptr @str.32, i64 7)
  %eq.cmp.zero71 = icmp eq i32 %eq.memcmp70, 0
  br i1 %eq.cmp.zero71, label %choice.exit, label %choice.next57

choice.next74:                                    ; preds = %choice.next57, %str.eq.then81
  %eq.lhs.len93 = load i64, ptr %0, align 8
  %eq.lhs.len94 = and i64 %eq.lhs.len93, 281474976710655
  %eq.len97 = icmp eq i64 %eq.lhs.len94, 5
  br i1 %eq.len97, label %str.eq.then98, label %choice.next91

str.eq.then81:                                    ; preds = %choice.next57
  %eq.lhs.data84 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data85 = load ptr, ptr %eq.lhs.data84, align 8
  %eq.memcmp87 = call i32 @memcmp(ptr %eq.lhs.data85, ptr @str.31, i64 4)
  %eq.cmp.zero88 = icmp eq i32 %eq.memcmp87, 0
  br i1 %eq.cmp.zero88, label %choice.exit, label %choice.next74

choice.next91:                                    ; preds = %choice.next74, %str.eq.then98
  %eq.lhs.len110 = load i64, ptr %0, align 8
  %eq.lhs.len111 = and i64 %eq.lhs.len110, 281474976710655
  %eq.len114 = icmp eq i64 %eq.lhs.len111, 4
  br i1 %eq.len114, label %str.eq.then115, label %choice.next108

str.eq.then98:                                    ; preds = %choice.next74
  %eq.lhs.data101 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data102 = load ptr, ptr %eq.lhs.data101, align 8
  %eq.memcmp104 = call i32 @memcmp(ptr %eq.lhs.data102, ptr @str.33, i64 5)
  %eq.cmp.zero105 = icmp eq i32 %eq.memcmp104, 0
  br i1 %eq.cmp.zero105, label %choice.exit, label %choice.next91

choice.next108:                                   ; preds = %choice.next91, %str.eq.then115
  %eq.lhs.len127 = load i64, ptr %0, align 8
  %eq.lhs.len128 = and i64 %eq.lhs.len127, 281474976710655
  %eq.len131 = icmp eq i64 %eq.lhs.len128, 4
  br i1 %eq.len131, label %str.eq.then132, label %choice.next125

str.eq.then115:                                   ; preds = %choice.next91
  %eq.lhs.data118 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data119 = load ptr, ptr %eq.lhs.data118, align 8
  %eq.memcmp121 = call i32 @memcmp(ptr %eq.lhs.data119, ptr @str.34, i64 4)
  %eq.cmp.zero122 = icmp eq i32 %eq.memcmp121, 0
  br i1 %eq.cmp.zero122, label %choice.exit, label %choice.next108

choice.next125:                                   ; preds = %choice.next108, %str.eq.then132
  %eq.lhs.len144 = load i64, ptr %0, align 8
  %eq.lhs.len145 = and i64 %eq.lhs.len144, 281474976710655
  %eq.len148 = icmp eq i64 %eq.lhs.len145, 5
  br i1 %eq.len148, label %str.eq.then149, label %choice.next142

str.eq.then132:                                   ; preds = %choice.next108
  %eq.lhs.data135 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data136 = load ptr, ptr %eq.lhs.data135, align 8
  %eq.memcmp138 = call i32 @memcmp(ptr %eq.lhs.data136, ptr @str.190, i64 4)
  %eq.cmp.zero139 = icmp eq i32 %eq.memcmp138, 0
  br i1 %eq.cmp.zero139, label %choice.exit, label %choice.next125

choice.next142:                                   ; preds = %choice.next125, %str.eq.then149
  %eq.lhs.len161 = load i64, ptr %0, align 8
  %eq.lhs.len162 = and i64 %eq.lhs.len161, 281474976710655
  %eq.len165 = icmp eq i64 %eq.lhs.len162, 8
  br i1 %eq.len165, label %str.eq.then166, label %choice.next159

str.eq.then149:                                   ; preds = %choice.next125
  %eq.lhs.data152 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data153 = load ptr, ptr %eq.lhs.data152, align 8
  %eq.memcmp155 = call i32 @memcmp(ptr %eq.lhs.data153, ptr @str.192, i64 5)
  %eq.cmp.zero156 = icmp eq i32 %eq.memcmp155, 0
  br i1 %eq.cmp.zero156, label %choice.exit, label %choice.next142

choice.next159:                                   ; preds = %choice.next142, %str.eq.then166
  %eq.lhs.len178 = load i64, ptr %0, align 8
  %eq.lhs.len179 = and i64 %eq.lhs.len178, 281474976710655
  %eq.len182 = icmp eq i64 %eq.lhs.len179, 7
  br i1 %eq.len182, label %str.eq.then183, label %choice.next176

str.eq.then166:                                   ; preds = %choice.next142
  %eq.lhs.data169 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data170 = load ptr, ptr %eq.lhs.data169, align 8
  %eq.memcmp172 = call i32 @memcmp(ptr %eq.lhs.data170, ptr @str.194, i64 8)
  %eq.cmp.zero173 = icmp eq i32 %eq.memcmp172, 0
  br i1 %eq.cmp.zero173, label %choice.exit, label %choice.next159

choice.next176:                                   ; preds = %choice.next159, %str.eq.then183
  %eq.lhs.len195 = load i64, ptr %0, align 8
  %eq.lhs.len196 = and i64 %eq.lhs.len195, 281474976710655
  %eq.len199 = icmp eq i64 %eq.lhs.len196, 8
  br i1 %eq.len199, label %str.eq.then200, label %choice.next193

str.eq.then183:                                   ; preds = %choice.next159
  %eq.lhs.data186 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data187 = load ptr, ptr %eq.lhs.data186, align 8
  %eq.memcmp189 = call i32 @memcmp(ptr %eq.lhs.data187, ptr @str.196, i64 7)
  %eq.cmp.zero190 = icmp eq i32 %eq.memcmp189, 0
  br i1 %eq.cmp.zero190, label %choice.exit, label %choice.next176

choice.next193:                                   ; preds = %choice.next176, %str.eq.then200
  %eq.lhs.len212 = load i64, ptr %0, align 8
  %eq.lhs.len213 = and i64 %eq.lhs.len212, 281474976710655
  %eq.len216 = icmp eq i64 %eq.lhs.len213, 7
  br i1 %eq.len216, label %str.eq.then217, label %choice.next210

str.eq.then200:                                   ; preds = %choice.next176
  %eq.lhs.data203 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data204 = load ptr, ptr %eq.lhs.data203, align 8
  %eq.memcmp206 = call i32 @memcmp(ptr %eq.lhs.data204, ptr @str.198, i64 8)
  %eq.cmp.zero207 = icmp eq i32 %eq.memcmp206, 0
  br i1 %eq.cmp.zero207, label %choice.exit, label %choice.next193

choice.next210:                                   ; preds = %choice.next193, %str.eq.then217
  %eq.lhs.len229 = load i64, ptr %0, align 8
  %eq.lhs.len230 = and i64 %eq.lhs.len229, 281474976710655
  %eq.len233 = icmp eq i64 %eq.lhs.len230, 6
  br i1 %eq.len233, label %str.eq.then234, label %choice.next227

str.eq.then217:                                   ; preds = %choice.next193
  %eq.lhs.data220 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data221 = load ptr, ptr %eq.lhs.data220, align 8
  %eq.memcmp223 = call i32 @memcmp(ptr %eq.lhs.data221, ptr @str.200, i64 7)
  %eq.cmp.zero224 = icmp eq i32 %eq.memcmp223, 0
  br i1 %eq.cmp.zero224, label %choice.exit, label %choice.next210

choice.next227:                                   ; preds = %choice.next210, %str.eq.then234
  %eq.lhs.len246 = load i64, ptr %0, align 8
  %eq.lhs.len247 = and i64 %eq.lhs.len246, 281474976710655
  %eq.len250 = icmp eq i64 %eq.lhs.len247, 6
  br i1 %eq.len250, label %str.eq.then251, label %choice.next244

str.eq.then234:                                   ; preds = %choice.next210
  %eq.lhs.data237 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data238 = load ptr, ptr %eq.lhs.data237, align 8
  %eq.memcmp240 = call i32 @memcmp(ptr %eq.lhs.data238, ptr @str.202, i64 6)
  %eq.cmp.zero241 = icmp eq i32 %eq.memcmp240, 0
  br i1 %eq.cmp.zero241, label %choice.exit, label %choice.next227

choice.next244:                                   ; preds = %choice.next227, %str.eq.then251
  %eq.lhs.len263 = load i64, ptr %0, align 8
  %eq.lhs.len264 = and i64 %eq.lhs.len263, 281474976710655
  %eq.len267 = icmp eq i64 %eq.lhs.len264, 7
  br i1 %eq.len267, label %str.eq.then268, label %choice.next261

str.eq.then251:                                   ; preds = %choice.next227
  %eq.lhs.data254 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data255 = load ptr, ptr %eq.lhs.data254, align 8
  %eq.memcmp257 = call i32 @memcmp(ptr %eq.lhs.data255, ptr @str.204, i64 6)
  %eq.cmp.zero258 = icmp eq i32 %eq.memcmp257, 0
  br i1 %eq.cmp.zero258, label %choice.exit, label %choice.next244

choice.next261:                                   ; preds = %choice.next244, %str.eq.then268
  %eq.lhs.len280 = load i64, ptr %0, align 8
  %eq.lhs.len281 = and i64 %eq.lhs.len280, 281474976710655
  %eq.len284 = icmp eq i64 %eq.lhs.len281, 6
  br i1 %eq.len284, label %str.eq.then285, label %choice.next278

str.eq.then268:                                   ; preds = %choice.next244
  %eq.lhs.data271 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data272 = load ptr, ptr %eq.lhs.data271, align 8
  %eq.memcmp274 = call i32 @memcmp(ptr %eq.lhs.data272, ptr @str.206, i64 7)
  %eq.cmp.zero275 = icmp eq i32 %eq.memcmp274, 0
  br i1 %eq.cmp.zero275, label %choice.exit, label %choice.next261

choice.next278:                                   ; preds = %choice.next261, %str.eq.then285
  %eq.lhs.len297 = load i64, ptr %0, align 8
  %eq.lhs.len298 = and i64 %eq.lhs.len297, 281474976710655
  %eq.len301 = icmp eq i64 %eq.lhs.len298, 3
  br i1 %eq.len301, label %str.eq.then302, label %choice.next295

str.eq.then285:                                   ; preds = %choice.next261
  %eq.lhs.data288 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data289 = load ptr, ptr %eq.lhs.data288, align 8
  %eq.memcmp291 = call i32 @memcmp(ptr %eq.lhs.data289, ptr @str.208, i64 6)
  %eq.cmp.zero292 = icmp eq i32 %eq.memcmp291, 0
  br i1 %eq.cmp.zero292, label %choice.exit, label %choice.next278

choice.next295:                                   ; preds = %choice.next278, %str.eq.then302
  %eq.lhs.len314 = load i64, ptr %0, align 8
  %eq.lhs.len315 = and i64 %eq.lhs.len314, 281474976710655
  %eq.len318 = icmp eq i64 %eq.lhs.len315, 5
  br i1 %eq.len318, label %str.eq.then319, label %choice.next312

str.eq.then302:                                   ; preds = %choice.next278
  %eq.lhs.data305 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data306 = load ptr, ptr %eq.lhs.data305, align 8
  %eq.memcmp308 = call i32 @memcmp(ptr %eq.lhs.data306, ptr @str.210, i64 3)
  %eq.cmp.zero309 = icmp eq i32 %eq.memcmp308, 0
  br i1 %eq.cmp.zero309, label %choice.exit, label %choice.next295

choice.next312:                                   ; preds = %choice.next295, %str.eq.then319
  %eq.lhs.len331 = load i64, ptr %0, align 8
  %eq.lhs.len332 = and i64 %eq.lhs.len331, 281474976710655
  %eq.len335 = icmp eq i64 %eq.lhs.len332, 7
  br i1 %eq.len335, label %str.eq.then336, label %choice.next329

str.eq.then319:                                   ; preds = %choice.next295
  %eq.lhs.data322 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data323 = load ptr, ptr %eq.lhs.data322, align 8
  %eq.memcmp325 = call i32 @memcmp(ptr %eq.lhs.data323, ptr @str.212, i64 5)
  %eq.cmp.zero326 = icmp eq i32 %eq.memcmp325, 0
  br i1 %eq.cmp.zero326, label %choice.exit, label %choice.next312

choice.next329:                                   ; preds = %choice.next312, %str.eq.then336
  %eq.lhs.len348 = load i64, ptr %0, align 8
  %eq.lhs.len349 = and i64 %eq.lhs.len348, 281474976710655
  %eq.len352 = icmp eq i64 %eq.lhs.len349, 5
  br i1 %eq.len352, label %str.eq.then353, label %choice.next346

str.eq.then336:                                   ; preds = %choice.next312
  %eq.lhs.data339 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data340 = load ptr, ptr %eq.lhs.data339, align 8
  %eq.memcmp342 = call i32 @memcmp(ptr %eq.lhs.data340, ptr @str.214, i64 7)
  %eq.cmp.zero343 = icmp eq i32 %eq.memcmp342, 0
  br i1 %eq.cmp.zero343, label %choice.exit, label %choice.next329

choice.next346:                                   ; preds = %choice.next329, %str.eq.then353
  %eq.lhs.len365 = load i64, ptr %0, align 8
  %eq.lhs.len366 = and i64 %eq.lhs.len365, 281474976710655
  %eq.len369 = icmp eq i64 %eq.lhs.len366, 6
  br i1 %eq.len369, label %str.eq.then370, label %choice.next363

str.eq.then353:                                   ; preds = %choice.next329
  %eq.lhs.data356 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data357 = load ptr, ptr %eq.lhs.data356, align 8
  %eq.memcmp359 = call i32 @memcmp(ptr %eq.lhs.data357, ptr @str.216, i64 5)
  %eq.cmp.zero360 = icmp eq i32 %eq.memcmp359, 0
  br i1 %eq.cmp.zero360, label %choice.exit, label %choice.next346

choice.next363:                                   ; preds = %choice.next346, %str.eq.then370
  %eq.lhs.len382 = load i64, ptr %0, align 8
  %eq.lhs.len383 = and i64 %eq.lhs.len382, 281474976710655
  %eq.len386 = icmp eq i64 %eq.lhs.len383, 5
  br i1 %eq.len386, label %str.eq.then387, label %choice.next380

str.eq.then370:                                   ; preds = %choice.next346
  %eq.lhs.data373 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data374 = load ptr, ptr %eq.lhs.data373, align 8
  %eq.memcmp376 = call i32 @memcmp(ptr %eq.lhs.data374, ptr @str.218, i64 6)
  %eq.cmp.zero377 = icmp eq i32 %eq.memcmp376, 0
  br i1 %eq.cmp.zero377, label %choice.exit, label %choice.next363

choice.next380:                                   ; preds = %choice.next363, %str.eq.then387
  %eq.lhs.len399 = load i64, ptr %0, align 8
  %eq.lhs.len400 = and i64 %eq.lhs.len399, 281474976710655
  %eq.len403 = icmp eq i64 %eq.lhs.len400, 5
  br i1 %eq.len403, label %str.eq.then404, label %choice.next397

str.eq.then387:                                   ; preds = %choice.next363
  %eq.lhs.data390 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data391 = load ptr, ptr %eq.lhs.data390, align 8
  %eq.memcmp393 = call i32 @memcmp(ptr %eq.lhs.data391, ptr @str.220, i64 5)
  %eq.cmp.zero394 = icmp eq i32 %eq.memcmp393, 0
  br i1 %eq.cmp.zero394, label %choice.exit, label %choice.next380

choice.next397:                                   ; preds = %choice.next380, %str.eq.then404
  %eq.lhs.len416 = load i64, ptr %0, align 8
  %eq.lhs.len417 = and i64 %eq.lhs.len416, 281474976710655
  %eq.len420 = icmp eq i64 %eq.lhs.len417, 6
  br i1 %eq.len420, label %str.eq.then421, label %choice.next414

str.eq.then404:                                   ; preds = %choice.next380
  %eq.lhs.data407 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data408 = load ptr, ptr %eq.lhs.data407, align 8
  %eq.memcmp410 = call i32 @memcmp(ptr %eq.lhs.data408, ptr @str.222, i64 5)
  %eq.cmp.zero411 = icmp eq i32 %eq.memcmp410, 0
  br i1 %eq.cmp.zero411, label %choice.exit, label %choice.next397

choice.next414:                                   ; preds = %choice.next397, %str.eq.then421
  %eq.lhs.len433 = load i64, ptr %0, align 8
  %eq.lhs.len434 = and i64 %eq.lhs.len433, 281474976710655
  %eq.len437 = icmp eq i64 %eq.lhs.len434, 11
  br i1 %eq.len437, label %str.eq.then438, label %choice.next431

str.eq.then421:                                   ; preds = %choice.next397
  %eq.lhs.data424 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data425 = load ptr, ptr %eq.lhs.data424, align 8
  %eq.memcmp427 = call i32 @memcmp(ptr %eq.lhs.data425, ptr @str.224, i64 6)
  %eq.cmp.zero428 = icmp eq i32 %eq.memcmp427, 0
  br i1 %eq.cmp.zero428, label %choice.exit, label %choice.next414

choice.next431:                                   ; preds = %choice.next414, %str.eq.then438
  %eq.lhs.len450 = load i64, ptr %0, align 8
  %eq.lhs.len451 = and i64 %eq.lhs.len450, 281474976710655
  %eq.len454 = icmp eq i64 %eq.lhs.len451, 8
  br i1 %eq.len454, label %str.eq.then455, label %choice.next448

str.eq.then438:                                   ; preds = %choice.next414
  %eq.lhs.data441 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data442 = load ptr, ptr %eq.lhs.data441, align 8
  %eq.memcmp444 = call i32 @memcmp(ptr %eq.lhs.data442, ptr @str.226, i64 11)
  %eq.cmp.zero445 = icmp eq i32 %eq.memcmp444, 0
  br i1 %eq.cmp.zero445, label %choice.exit, label %choice.next431

choice.next448:                                   ; preds = %choice.next431, %str.eq.then455
  %eq.lhs.len467 = load i64, ptr %0, align 8
  %eq.lhs.len468 = and i64 %eq.lhs.len467, 281474976710655
  %eq.len471 = icmp eq i64 %eq.lhs.len468, 7
  br i1 %eq.len471, label %str.eq.then472, label %str.eq.merge474

str.eq.then455:                                   ; preds = %choice.next431
  %eq.lhs.data458 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data459 = load ptr, ptr %eq.lhs.data458, align 8
  %eq.memcmp461 = call i32 @memcmp(ptr %eq.lhs.data459, ptr @str.228, i64 8)
  %eq.cmp.zero462 = icmp eq i32 %eq.memcmp461, 0
  br i1 %eq.cmp.zero462, label %choice.exit, label %choice.next448

str.eq.then472:                                   ; preds = %choice.next448
  %eq.lhs.data475 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %eq.lhs.data476 = load ptr, ptr %eq.lhs.data475, align 8
  %eq.memcmp478 = call i32 @memcmp(ptr %eq.lhs.data476, ptr @str.230, i64 7)
  %eq.cmp.zero479 = icmp eq i32 %eq.memcmp478, 0
  br label %str.eq.merge474

str.eq.merge474:                                  ; preds = %choice.next448, %str.eq.then472
  %str.eq.result480 = phi i1 [ %eq.cmp.zero479, %str.eq.then472 ], [ false, %choice.next448 ]
  %spec.select = select i1 %str.eq.result480, ptr @str.231.struct, ptr @str.0.struct
  br label %choice.exit
}

define ptr @"lsp::find_imported_symbol"(ptr %0, ptr %1, ptr %2) #3 {
entry:
  %call.res = call { i64, ptr } @"path::parent"(ptr %0)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %concat.lhs3 = load i64, ptr %1, align 8
  %concat.lhs4 = and i64 %concat.lhs3, 281474976710655
  %str.tag = lshr i64 %concat.lhs3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %concat.lhs5 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %concat.lhs6 = load ptr, ptr %concat.lhs5, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs4, i64 4)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum10 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 %sum10)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs6, i64 %concat.lhs4, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 @str.232, i64 4, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res17 = call { i64, ptr } @"path::join"(ptr %ret.ub.alloc, ptr %concat.str)
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 16)
  store { i64, ptr } %call.res17, ptr %ret.ub.alloc19, align 8
  %var.load20 = load ptr, ptr @"var.lsp::stdlib_dir_path", align 8
  %eq.lhs.len21 = load i64, ptr %var.load20, align 8
  %eq.lhs.len22 = and i64 %eq.lhs.len21, 281474976710655
  %str.tag23 = lshr i64 %eq.lhs.len21, 48
  %tag.immortal25 = icmp eq i64 %str.tag23, 0
  %active.gen26 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current27 = icmp eq i64 %str.tag23, %active.gen26
  %tag.fast.ok28 = or i1 %tag.immortal25, %tag.current27
  br i1 %tag.fast.ok28, label %str_ok24, label %tag.slow_check29

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok24:                                         ; preds = %tag.slow_check29, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len22, 0
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

tag.slow_check29:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag23)
  br label %str_ok24

str.eq.then:                                      ; preds = %str_ok24
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %eq.lhs.data31 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data31, ptr @str.0, i64 0)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str_ok24, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str_ok24 ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load32 = load ptr, ptr @"var.lsp::stdlib_dir_path", align 8
  %concat.lhs35 = load i64, ptr %1, align 8
  %concat.lhs36 = and i64 %concat.lhs35, 281474976710655
  %str.tag37 = lshr i64 %concat.lhs35, 48
  %tag.immortal39 = icmp eq i64 %str.tag37, 0
  %active.gen40 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current41 = icmp eq i64 %str.tag37, %active.gen40
  %tag.fast.ok42 = or i1 %tag.immortal39, %tag.current41
  br i1 %tag.fast.ok42, label %str_ok38, label %tag.slow_check43

choice.exit:                                      ; preds = %str.eq.merge, %str_ok38
  %choice.res = phi ptr [ %ret.ub.alloc74, %str_ok38 ], [ @str.0.struct, %str.eq.merge ]
  %call.res76 = call i1 @"lsp::has_override"(ptr %ret.ub.alloc19)
  br i1 %call.res76, label %choice.exit81, label %or.961.else

str_ok38:                                         ; preds = %tag.slow_check43, %choice.then
  %concat.lhs45 = load ptr, ptr %concat.lhs5, align 8
  %concat.sum.len49 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs36, i64 4)
  %sum50 = extractvalue { i64, i1 } %concat.sum.len49, 0
  %concat.tot.len55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum50, i64 1)
  %sum56 = extractvalue { i64, i1 } %concat.tot.len55, 0
  %arena.cur61 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf62 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 %sum56)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf62, ptr align 1 %concat.lhs45, i64 %concat.lhs36, i1 false)
  %concat.mid63 = getelementptr i8, ptr %concat.buf62, i64 %concat.lhs36
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid63, ptr align 1 @str.232, i64 4, i1 false)
  %concat.nul64 = getelementptr i8, ptr %concat.buf62, i64 %sum50
  store i8 0, ptr %concat.nul64, align 1
  %arena.cur65 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str66 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 16)
  %str.tag.gen68 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift69 = shl i64 %str.tag.gen68, 48
  %str.tagged.len70 = or i64 %sum50, %str.tag.shift69
  store i64 %str.tagged.len70, ptr %concat.str66, align 8
  %str.build.data.gep71 = getelementptr inbounds { i64, ptr }, ptr %concat.str66, i32 0, i32 1
  store ptr %concat.buf62, ptr %str.build.data.gep71, align 8
  %call.res72 = call { i64, ptr } @"path::join"(ptr %var.load32, ptr %concat.str66)
  %arena.cur73 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc74 = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 16)
  store { i64, ptr } %call.res72, ptr %ret.ub.alloc74, align 8
  br label %choice.exit

tag.slow_check43:                                 ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag37)
  br label %str_ok38

or.961.else:                                      ; preds = %choice.exit
  %call.res78 = call i1 @"fs::is_file"(ptr %ret.ub.alloc19)
  br i1 %call.res78, label %choice.exit81, label %choice.else80

choice.else80:                                    ; preds = %or.961.else
  %eq.lhs.len85 = load i64, ptr %choice.res, align 8
  %eq.lhs.len86 = and i64 %eq.lhs.len85, 281474976710655
  %str.tag87 = lshr i64 %eq.lhs.len85, 48
  %tag.immortal89 = icmp eq i64 %str.tag87, 0
  %active.gen90 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current91 = icmp eq i64 %str.tag87, %active.gen90
  %tag.fast.ok92 = or i1 %tag.immortal89, %tag.current91
  br i1 %tag.fast.ok92, label %str_ok88, label %tag.slow_check93

choice.exit81:                                    ; preds = %choice.exit, %or.961.else, %and.962.exit
  %choice.res116 = phi ptr [ %choice.res.str.0.struct, %and.962.exit ], [ %ret.ub.alloc19, %or.961.else ], [ %ret.ub.alloc19, %choice.exit ]
  %eq.lhs.len119 = load i64, ptr %choice.res116, align 8
  %eq.lhs.len120 = and i64 %eq.lhs.len119, 281474976710655
  %str.tag121 = lshr i64 %eq.lhs.len119, 48
  %tag.immortal123 = icmp eq i64 %str.tag121, 0
  %active.gen124 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current125 = icmp eq i64 %str.tag121, %active.gen124
  %tag.fast.ok126 = or i1 %tag.immortal123, %tag.current125
  br i1 %tag.fast.ok126, label %str_ok122, label %tag.slow_check127

str_ok88:                                         ; preds = %tag.slow_check93, %choice.else80
  %eq.len96 = icmp eq i64 %eq.lhs.len86, 0
  br i1 %eq.len96, label %str.eq.then97, label %str.eq.merge99

tag.slow_check93:                                 ; preds = %choice.else80
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag87)
  br label %str_ok88

str.eq.then97:                                    ; preds = %str_ok88
  %eq.lhs.data100 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %eq.lhs.data101 = load ptr, ptr %eq.lhs.data100, align 8
  %eq.memcmp103 = call i32 @memcmp(ptr %eq.lhs.data101, ptr @str.0, i64 0)
  %eq.cmp.zero104 = icmp eq i32 %eq.memcmp103, 0
  br label %str.eq.merge99

str.eq.merge99:                                   ; preds = %str_ok88, %str.eq.then97
  %str.eq.result105 = phi i1 [ %eq.cmp.zero104, %str.eq.then97 ], [ false, %str_ok88 ]
  %str.neq106 = xor i1 %str.eq.result105, true
  br i1 %str.neq106, label %and.962.then, label %and.962.exit

and.962.then:                                     ; preds = %str.eq.merge99
  %call.res108 = call i1 @"lsp::has_override"(ptr %choice.res)
  br i1 %call.res108, label %and.962.exit, label %or.963.else

and.962.exit:                                     ; preds = %or.963.else, %and.962.then, %str.eq.merge99
  %and.962.phi = phi i1 [ false, %str.eq.merge99 ], [ %call.res110, %or.963.else ], [ true, %and.962.then ]
  %choice.res.str.0.struct = select i1 %and.962.phi, ptr %choice.res, ptr @str.0.struct
  br label %choice.exit81

or.963.else:                                      ; preds = %and.962.then
  %call.res110 = call i1 @"fs::is_file"(ptr %choice.res)
  br label %and.962.exit

str_ok122:                                        ; preds = %tag.slow_check127, %choice.exit81
  %eq.len130 = icmp eq i64 %eq.lhs.len120, 0
  br i1 %eq.len130, label %str.eq.then131, label %choice.exit141

tag.slow_check127:                                ; preds = %choice.exit81
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag121)
  br label %str_ok122

str.eq.then131:                                   ; preds = %str_ok122
  %eq.lhs.data134 = getelementptr inbounds { i64, ptr }, ptr %choice.res116, i32 0, i32 1
  %eq.lhs.data135 = load ptr, ptr %eq.lhs.data134, align 8
  %eq.memcmp137 = call i32 @memcmp(ptr %eq.lhs.data135, ptr @str.0, i64 0)
  %eq.cmp.zero138 = icmp eq i32 %eq.memcmp137, 0
  br i1 %eq.cmp.zero138, label %common.ret, label %choice.exit141

common.ret:                                       ; preds = %choice.then242, %loop.header.964, %choice.then174, %choice.then161, %choice.exit147, %str.eq.then131
  %common.ret.op = phi ptr [ null, %str.eq.then131 ], [ null, %choice.exit147 ], [ null, %choice.then161 ], [ null, %choice.then174 ], [ %rec.alloc, %choice.then242 ], [ null, %loop.header.964 ]
  ret ptr %common.ret.op

choice.exit141:                                   ; preds = %str_ok122, %str.eq.then131
  %call.res143 = call { i64, ptr } @"lsp::get_override_text"(ptr %choice.res116)
  %ret.niche.data = extractvalue { i64, ptr } %call.res143, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

ret.niche.alloc:                                  ; preds = %choice.exit141
  %arena.cur144 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 16)
  store { i64, ptr } %call.res143, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %choice.exit141
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %choice.exit141 ]
  %niche.ne.null = icmp ne ptr %ret.niche.ptr, null
  br i1 %niche.ne.null, label %choice.exit147, label %choice.else146

choice.else146:                                   ; preds = %ret.niche.done
  %call.res150 = call { i64, ptr } @"fs::read_to_string"(ptr %choice.res116)
  %ret.niche.data151 = extractvalue { i64, ptr } %call.res150, 1
  %ret.niche.ok152 = icmp ne ptr %ret.niche.data151, null
  br i1 %ret.niche.ok152, label %ret.niche.alloc153, label %choice.exit147

choice.exit147:                                   ; preds = %choice.else146, %ret.niche.alloc153, %ret.niche.done
  %choice.res158 = phi ptr [ %ret.niche.ptr, %ret.niche.done ], [ %ret.niche.buf156, %ret.niche.alloc153 ], [ null, %choice.else146 ]
  %niche.ne.null160 = icmp ne ptr %choice.res158, null
  br i1 %niche.ne.null160, label %choice.then161, label %common.ret

ret.niche.alloc153:                               ; preds = %choice.else146
  %arena.cur155 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf156 = call ptr @dva_arena_alloc(ptr %arena.cur155, i64 16)
  store { i64, ptr } %call.res150, ptr %ret.niche.buf156, align 8
  br label %choice.exit147

choice.then161:                                   ; preds = %choice.exit147
  call void @"diag::enable_capture"()
  call void @"lexer::lex_set_file"(ptr %choice.res116)
  %call.res167 = call ptr @"parser::parse_init"(ptr %choice.res158)
  call void @"parser::parser_set_file"(ptr %call.res167, ptr %choice.res116)
  %fld.gep = getelementptr inbounds { { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, { ptr, i64, i64, i64, i64, i1, i1, ptr }, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, i1, i1, i1, i1, i1, ptr, ptr, ptr, ptr, i64, i64, i1, i1, i1, ptr, i1, ptr, ptr, ptr, ptr, i1, i1, i1 }, ptr %call.res167, i32 0, i32 16
  store i1 true, ptr %fld.gep, align 1
  %call.res172 = call { i1, i64 } @"parser::parse_program"(ptr %call.res167)
  %call.res172.fca.0.extract = extractvalue { i1, i64 } %call.res172, 0
  %call.res172.fca.1.extract = extractvalue { i1, i64 } %call.res172, 1
  call void @"diag::disable_capture"()
  br i1 %call.res172.fca.0.extract, label %choice.then174, label %common.ret

choice.then174:                                   ; preds = %choice.then161
  %pay.ptr = inttoptr i64 %call.res172.fca.1.extract to ptr
  %tag.id = load i64, ptr %pay.ptr, align 8
  %tag.match = icmp eq i64 %tag.id, 8
  br i1 %tag.match, label %choice.case, label %common.ret

choice.case:                                      ; preds = %choice.then174
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %pay.ptr, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %a.null = icmp eq ptr %payload.ptr, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %choice.case
  %arena.cur182 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 24)
  %arena.cur184 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 128)
  store i64 0, ptr %a.create183, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create183, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create183, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case
  %var.stmts.0 = phi ptr [ %a.create183, %a.create ], [ %payload.ptr, %choice.case ]
  %fld.gep186 = getelementptr inbounds { { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, { ptr, i64, i64, i64, i64, i1, i1, ptr }, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, i1, i1, i1, i1, i1, ptr, ptr, ptr, ptr, i64, i64, i1, i1, i1, ptr, i1, ptr, ptr, ptr, ptr, i1, i1, i1 }, ptr %call.res167, i32 0, i32 29
  %fld.load = load ptr, ptr %fld.gep186, align 8
  %fld.gep188 = getelementptr inbounds { { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, { ptr, i64, i64, i64, i64, i1, i1, ptr }, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, i1, i1, i1, i1, i1, ptr, ptr, ptr, ptr, i64, i64, i1, i1, i1, ptr, i1, ptr, ptr, ptr, ptr, i1, i1, i1 }, ptr %call.res167, i32 0, i32 30
  %fld.load189 = load ptr, ptr %fld.gep188, align 8
  %call.res190 = call ptr @"lsp::extract_symbols"(ptr %var.stmts.0, ptr %fld.load, ptr %fld.load189)
  %a.null193 = icmp eq ptr %call.res190, null
  br i1 %a.null193, label %a.create194, label %a.after195

a.create194:                                      ; preds = %a.after
  %arena.cur196 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create197 = call ptr @dva_arena_alloc(ptr %arena.cur196, i64 24)
  %arena.cur198 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf199 = call ptr @dva_arena_alloc(ptr %arena.cur198, i64 128)
  store i64 0, ptr %a.create197, align 8
  %a.data.gep201 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create197, i32 0, i32 1
  store ptr %a.buf199, ptr %a.data.gep201, align 8
  %a.cap.gep202 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create197, i32 0, i32 2
  store i64 16, ptr %a.cap.gep202, align 8
  br label %a.after195

a.after195:                                       ; preds = %a.create194, %a.after
  %var.syms.0 = phi ptr [ %a.create197, %a.create194 ], [ %call.res190, %a.after ]
  %arr.cycle.len204 = load i64, ptr %var.syms.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.syms.0, i32 0, i32 1
  %arr.cycle.data205 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.964

loop.header.964:                                  ; preds = %choice.exit243, %a.after195
  %loop.idx.964.0 = phi i64 [ 0, %a.after195 ], [ %loop.next, %choice.exit243 ]
  %loop.cond = icmp slt i64 %loop.idx.964.0, %arr.cycle.len204
  br i1 %loop.cond, label %loop.body.964, label %common.ret

loop.body.964:                                    ; preds = %loop.header.964
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data205, i64 %loop.idx.964.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.load209 = load ptr, ptr %slot.i2p, align 8
  %eq.lhs.len212 = load i64, ptr %fld.load209, align 8
  %eq.lhs.len213 = and i64 %eq.lhs.len212, 281474976710655
  %str.tag214 = lshr i64 %eq.lhs.len212, 48
  %tag.immortal216 = icmp eq i64 %str.tag214, 0
  %active.gen217 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current218 = icmp eq i64 %str.tag214, %active.gen217
  %tag.fast.ok219 = or i1 %tag.immortal216, %tag.current218
  br i1 %tag.fast.ok219, label %str_ok215, label %tag.slow_check220

str_ok215:                                        ; preds = %tag.slow_check220, %loop.body.964
  %eq.rhs.len222 = load i64, ptr %2, align 8
  %eq.rhs.len223 = and i64 %eq.rhs.len222, 281474976710655
  %str.tag224 = lshr i64 %eq.rhs.len222, 48
  %tag.immortal226 = icmp eq i64 %str.tag224, 0
  %active.gen227 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current228 = icmp eq i64 %str.tag224, %active.gen227
  %tag.fast.ok229 = or i1 %tag.immortal226, %tag.current228
  br i1 %tag.fast.ok229, label %str_ok225, label %tag.slow_check230

tag.slow_check220:                                ; preds = %loop.body.964
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag214)
  br label %str_ok215

str_ok225:                                        ; preds = %tag.slow_check230, %str_ok215
  %eq.len231 = icmp eq i64 %eq.lhs.len213, %eq.rhs.len223
  br i1 %eq.len231, label %str.eq.then232, label %choice.exit243

tag.slow_check230:                                ; preds = %str_ok215
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag224)
  br label %str_ok225

str.eq.then232:                                   ; preds = %str_ok225
  %eq.lhs.data235 = getelementptr inbounds { i64, ptr }, ptr %fld.load209, i32 0, i32 1
  %eq.lhs.data236 = load ptr, ptr %eq.lhs.data235, align 8
  %eq.rhs.data237 = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %eq.rhs.data238 = load ptr, ptr %eq.rhs.data237, align 8
  %eq.memcmp239 = call i32 @memcmp(ptr %eq.lhs.data236, ptr %eq.rhs.data238, i64 %eq.lhs.len213)
  %eq.cmp.zero240 = icmp eq i32 %eq.memcmp239, 0
  br i1 %eq.cmp.zero240, label %choice.then242, label %choice.exit243

choice.then242:                                   ; preds = %str.eq.then232
  %arena.cur246 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur246, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 } }, ptr null, i32 1) to i64))
  store ptr %choice.res116, ptr %rec.alloc, align 8
  %rec.fld247 = getelementptr inbounds { ptr, { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 } }, ptr %rec.alloc, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld247, ptr align 1 %slot.i2p, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr null, i32 1) to i64), i1 false)
  br label %common.ret

choice.exit243:                                   ; preds = %str_ok225, %str.eq.then232
  %loop.next = add i64 %loop.idx.964.0, 1
  br label %loop.header.964
}

declare { i64, ptr } @"path::parent"(ptr) #3

declare { i64, ptr } @"path::join"(ptr, ptr) #3

declare i1 @"fs::is_file"(ptr) #3

declare { i64, ptr } @"fs::read_to_string"(ptr) #3

define { ptr, ptr } @"lsp::split_qualified"(ptr %0) #3 {
entry:
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  br label %loop.header.966

loop.header.966:                                  ; preds = %choice.exit28, %entry
  %"var.i'.0" = phi i64 [ 0, %entry ], [ %addtmp, %choice.exit28 ]
  %loop.idx.966.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit28 ]
  %addtmp = add i64 %"var.i'.0", 1
  %cmptmp = icmp sge i64 %addtmp, %str.len.query2
  br i1 %cmptmp, label %loop.exit.966, label %choice.exit

loop.exit.966:                                    ; preds = %idx_ok20, %loop.header.966
  %"var.found'.0" = phi i64 [ -1, %loop.header.966 ], [ %"var.i'.0", %idx_ok20 ]
  %cmptmp33 = icmp sge i64 %"var.found'.0", 0
  br i1 %cmptmp33, label %choice.then34, label %choice.exit35

choice.exit:                                      ; preds = %loop.header.966
  %s.read.len6 = load i64, ptr %0, align 8
  %s.read.len7 = and i64 %s.read.len6, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data8 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %"var.i'.0", %s.read.len7
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data8, i64 %"var.i'.0"
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp10 = icmp eq i64 %s.byte.val, 58
  br i1 %cmptmp10, label %and.967.then, label %choice.exit28

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

and.967.then:                                     ; preds = %idx_ok
  %idx.oob19 = icmp uge i64 %addtmp, %s.read.len7
  br i1 %idx.oob19, label %idx_oob21, label %idx_ok20

idx_ok20:                                         ; preds = %and.967.then
  %s.byte.gep23 = getelementptr i8, ptr %s.read.data8, i64 %addtmp
  %s.byte24 = load i8, ptr %s.byte.gep23, align 1
  %s.byte.val25 = zext i8 %s.byte24 to i64
  %cmptmp26 = icmp eq i64 %s.byte.val25, 58
  br i1 %cmptmp26, label %loop.exit.966, label %choice.exit28

idx_oob21:                                        ; preds = %and.967.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.exit28:                                    ; preds = %idx_ok, %idx_ok20
  %loop.next = add i64 %loop.idx.966.0, 1
  br label %loop.header.966

choice.then34:                                    ; preds = %loop.exit.966
  %s.read.len38 = load i64, ptr %0, align 8
  %s.read.len39 = and i64 %s.read.len38, 281474976710655
  %s.read.data40 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data41 = load ptr, ptr %s.read.data40, align 8
  %end.gt.len = icmp sgt i64 %"var.found'.0", %s.read.len39
  %final.end = select i1 %end.gt.len, i64 %s.read.len39, i64 %"var.found'.0"
  %view.empty = icmp sle i64 %final.end, 0
  %view.len = select i1 %view.empty, i64 0, i64 %final.end
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %s.read.data41, ptr %str.build.data.gep, align 8
  %s.read.len45 = load i64, ptr %0, align 8
  %s.read.len46 = and i64 %s.read.len45, 281474976710655
  %s.read.data48 = load ptr, ptr %s.read.data40, align 8
  %addtmp50 = add nuw i64 %"var.found'.0", 2
  %start.is_neg = icmp slt i64 %addtmp50, 0
  %rel.start52 = add nuw i64 %s.read.len46, %addtmp50
  %norm.start53 = select i1 %start.is_neg, i64 %rel.start52, i64 %addtmp50
  %start.lt.054 = icmp slt i64 %norm.start53, 0
  %c.start.055 = select i1 %start.lt.054, i64 0, i64 %norm.start53
  %start.gt.len56 = icmp sgt i64 %c.start.055, %s.read.len46
  %final.start57 = select i1 %start.gt.len56, i64 %s.read.len46, i64 %c.start.055
  %end.gt.len63 = icmp sgt i64 %str.len.query2, %s.read.len46
  %final.end64 = select i1 %end.gt.len63, i64 %s.read.len46, i64 %str.len.query2
  %view.empty65 = icmp sle i64 %final.end64, %final.start57
  %view.len.sub66 = sub i64 %final.end64, %final.start57
  %view.len67 = select i1 %view.empty65, i64 0, i64 %view.len.sub66
  %view.data68 = getelementptr i8, ptr %s.read.data48, i64 %final.start57
  %arena.cur69 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view70 = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 16)
  store i64 %view.len67, ptr %str.view70, align 8
  %str.build.data.gep72 = getelementptr inbounds { i64, ptr }, ptr %str.view70, i32 0, i32 1
  store ptr %view.data68, ptr %str.build.data.gep72, align 8
  br label %choice.exit35

choice.exit35:                                    ; preds = %loop.exit.966, %choice.then34
  %choice.res.sroa.phi.sroa.speculated = phi ptr [ %str.view, %choice.then34 ], [ @str.0.struct, %loop.exit.966 ]
  %choice.res.sroa.phi85.sroa.speculated = phi ptr [ %str.view70, %choice.then34 ], [ %0, %loop.exit.966 ]
  %ret.pack.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %choice.res.sroa.phi.sroa.speculated, 0
  %ret.pack.fca.1.insert = insertvalue { ptr, ptr } %ret.pack.fca.0.insert, ptr %choice.res.sroa.phi85.sroa.speculated, 1
  ret { ptr, ptr } %ret.pack.fca.1.insert
}

define { i64, ptr } @"lsp::format_id_json"(ptr %0) #3 {
entry:
  %ret.ub.salloc12 = alloca { i64, ptr }, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %tag.id = load i64, ptr %0, align 8
  switch i64 %tag.id, label %choice.exit [
    i64 1, label %choice.case
    i64 0, label %choice.case2
  ]

choice.exit:                                      ; preds = %entry, %choice.case2, %pay.float.merge
  %choice.res = phi ptr [ %ret.ub.salloc, %pay.float.merge ], [ %ret.ub.salloc12, %choice.case2 ], [ @str.233.struct, %entry ]
  %ret.pack.fca.0.load = load i64, ptr %choice.res, align 8
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.pack.fca.0.load, 0
  %ret.pack.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %ret.pack.fca.1.load = load ptr, ptr %ret.pack.fca.1.gep, align 8
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %ret.pack.fca.1.load, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.float.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.float.null, label %pay.float.merge, label %pay.float.load

pay.float.load:                                   ; preds = %choice.case
  %pay.float.val = load double, ptr %payload.ptr, align 8
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %choice.case, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %choice.case ]
  %call.res = call { i64, ptr } @"json::format_number"(double %pay.float.phi)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  store i64 %call.res.fca.0.extract, ptr %ret.ub.salloc, align 8
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %call.res.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  store ptr %call.res.fca.1.extract, ptr %call.res.fca.1.gep, align 8
  br label %choice.exit

choice.case2:                                     ; preds = %entry
  %pay.gep7 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr8 = load ptr, ptr %pay.gep7, align 8
  %call.res11 = call { i64, ptr } @"json::escape_string"(ptr %payload.ptr8)
  %call.res11.fca.0.extract = extractvalue { i64, ptr } %call.res11, 0
  store i64 %call.res11.fca.0.extract, ptr %ret.ub.salloc12, align 8
  %call.res11.fca.1.extract = extractvalue { i64, ptr } %call.res11, 1
  %call.res11.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc12, i32 0, i32 1
  store ptr %call.res11.fca.1.extract, ptr %call.res11.fca.1.gep, align 8
  br label %choice.exit
}

declare { i64, ptr } @"json::format_number"(double) #3

define void @"lsp::send_result"(ptr %0, ptr %1) #3 {
entry:
  %call.res = call { i64, ptr } @"lsp::format_id_json"(ptr %0)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %cat.seg2 = and i64 %call.res.fca.0.extract, 281474976710655
  %cat.seg8 = load i64, ptr %1, align 8
  %cat.seg9 = and i64 %cat.seg8, 281474976710655
  %cat.seg10 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %cat.seg11 = load ptr, ptr %cat.seg10, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 22, i64 %cat.seg2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %cat.sum.len14 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 10)
  %sum15 = extractvalue { i64, i1 } %cat.sum.len14, 0
  %cat.sum.len20 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum15, i64 %cat.seg9)
  %sum21 = extractvalue { i64, i1 } %cat.sum.len20, 0
  %cat.sum.len26 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum21, i64 1)
  %sum27 = extractvalue { i64, i1 } %cat.sum.len26, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum27, i64 1)
  %sum32 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum32)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.234, i64 22, i1 false)
  %cat.dst37 = getelementptr i8, ptr %concat.buf, i64 22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst37, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg2, i1 false)
  %cat.off = add nuw nsw i64 22, %cat.seg2
  %cat.dst38 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst38, ptr align 1 @str.235, i64 10, i1 false)
  %cat.off39 = add nuw nsw i64 %cat.off, 10
  %cat.dst40 = getelementptr i8, ptr %concat.buf, i64 %cat.off39
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst40, ptr align 1 %cat.seg11, i64 %cat.seg9, i1 false)
  %cat.off41 = add nuw nsw i64 %cat.off39, %cat.seg9
  %cat.dst42 = getelementptr i8, ptr %concat.buf, i64 %cat.off41
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst42, ptr align 1 @str.44, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum27
  store i8 0, ptr %concat.nul, align 1
  %arena.cur43 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 16)
  store i64 %sum27, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  call void @"lsp::send_rpc_payload"(ptr %concat.str)
  ret void
}

define void @"lsp::handle_initialize"(ptr %0) #3 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %var.load = load ptr, ptr @"var.version::VERSION", align 8
  %call.res = call { i64, ptr } @"json::escape_string"(ptr %var.load)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %cat.seg10 = and i64 %call.res.fca.0.extract, 281474976710655
  %cat.sum.len57 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 270, i64 %cat.seg10)
  %sum58 = extractvalue { i64, i1 } %cat.sum.len57, 0
  %cat.sum.len63 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum58, i64 2)
  %sum64 = extractvalue { i64, i1 } %cat.sum.len63, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum64, i64 1)
  %sum69 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum69)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.236, i64 17, i1 false)
  %cat.dst74 = getelementptr i8, ptr %concat.buf, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst74, ptr align 1 @str.237, i64 21, i1 false)
  %cat.dst75 = getelementptr i8, ptr %concat.buf, i64 38
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst75, ptr align 1 @str.238, i64 21, i1 false)
  %cat.dst76 = getelementptr i8, ptr %concat.buf, i64 59
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst76, ptr align 1 @str.239, i64 26, i1 false)
  %cat.dst77 = getelementptr i8, ptr %concat.buf, i64 85
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst77, ptr align 1 @str.240, i64 30, i1 false)
  %cat.dst78 = getelementptr i8, ptr %concat.buf, i64 115
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst78, ptr align 1 @str.241, i64 34, i1 false)
  %cat.dst79 = getelementptr i8, ptr %concat.buf, i64 149
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst79, ptr align 1 @str.242, i64 25, i1 false)
  %cat.dst80 = getelementptr i8, ptr %concat.buf, i64 174
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst80, ptr align 1 @str.243, i64 52, i1 false)
  %cat.dst81 = getelementptr i8, ptr %concat.buf, i64 226
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst81, ptr align 1 @str.244, i64 44, i1 false)
  %cat.dst82 = getelementptr i8, ptr %concat.buf, i64 270
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst82, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg10, i1 false)
  %cat.off = add nuw nsw i64 270, %cat.seg10
  %cat.dst83 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst83, ptr align 1 @str.58, i64 2, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum64
  store i8 0, ptr %concat.nul, align 1
  store i64 %sum64, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  call void @"lsp::send_result"(ptr %0, ptr %concat.str)
  ret void
}

define { ptr, i64, i64 } @"lsp::extract_doc_uri_and_pos"(ptr %0) #3 {
entry:
  %call.res = call { i1, i64 } @"json::get"(ptr %0, ptr @str.245.struct)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 3, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ %enum.alloc, %choice.else ]
  %call.res3 = call { i1, i64 } @"json::get"(ptr %0, ptr @str.246.struct)
  %ram.tag4 = extractvalue { i1, i64 } %call.res3, 0
  br i1 %ram.tag4, label %choice.then5, label %choice.else6

choice.then5:                                     ; preds = %choice.exit
  %ram.pay8 = extractvalue { i1, i64 } %call.res3, 1
  %pay.ptr9 = inttoptr i64 %ram.pay8 to ptr
  br label %choice.exit7

choice.else6:                                     ; preds = %choice.exit
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc14 = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 16)
  store i64 3, ptr %enum.alloc14, align 8
  %pay.gep16 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc14, i32 0, i32 1
  store ptr null, ptr %pay.gep16, align 8
  br label %choice.exit7

choice.exit7:                                     ; preds = %choice.else6, %choice.then5
  %choice.res17 = phi ptr [ %pay.ptr9, %choice.then5 ], [ %enum.alloc14, %choice.else6 ]
  %call.res19 = call { i64, ptr } @"json::get_str"(ptr %choice.res, ptr @str.247.struct)
  %ret.niche.data = extractvalue { i64, ptr } %call.res19, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

ret.niche.alloc:                                  ; preds = %choice.exit7
  %arena.cur20 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 16)
  store { i64, ptr } %call.res19, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %choice.exit7
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %choice.exit7 ]
  %niche.ne.null = icmp ne ptr %ret.niche.ptr, null
  %ret.niche.ptr.str.0.struct = select i1 %niche.ne.null, ptr %ret.niche.ptr, ptr @str.0.struct
  %call.res28 = call { i1, i64 } @"json::get_int"(ptr %choice.res17, ptr @str.248.struct)
  %ram.tag29 = extractvalue { i1, i64 } %call.res28, 0
  %ram.pay33 = extractvalue { i1, i64 } %call.res28, 1
  %choice.res36 = select i1 %ram.tag29, i64 %ram.pay33, i64 0
  %call.res38 = call { i1, i64 } @"json::get_int"(ptr %choice.res17, ptr @str.249.struct)
  %ram.tag39 = extractvalue { i1, i64 } %call.res38, 0
  %ram.pay43 = extractvalue { i1, i64 } %call.res38, 1
  %choice.res46 = select i1 %ram.tag39, i64 %ram.pay43, i64 0
  %ret.pack.fca.0.insert = insertvalue { ptr, i64, i64 } poison, ptr %ret.niche.ptr.str.0.struct, 0
  %ret.pack.fca.1.insert = insertvalue { ptr, i64, i64 } %ret.pack.fca.0.insert, i64 %choice.res36, 1
  %ret.pack.fca.2.insert = insertvalue { ptr, i64, i64 } %ret.pack.fca.1.insert, i64 %choice.res46, 2
  ret { ptr, i64, i64 } %ret.pack.fca.2.insert
}

declare { i1, i64 } @"json::get"(ptr, ptr) #3

declare { i64, ptr } @"json::get_str"(ptr, ptr) #3

declare { i1, i64 } @"json::get_int"(ptr, ptr) #3

define void @"lsp::handle_hover"(ptr %0, ptr %1) #3 {
entry:
  %call.res = call { ptr, i64, i64 } @"lsp::extract_doc_uri_and_pos"(ptr %1)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64 }, ptr null, i32 1) to i64))
  store { ptr, i64, i64 } %call.res, ptr %ret.ub.alloc, align 8
  %fld.load = load ptr, ptr %ret.ub.alloc, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64 }, ptr %ret.ub.alloc, i32 0, i32 1
  %fld.load4 = load i64, ptr %fld.gep3, align 8
  %fld.gep6 = getelementptr inbounds { ptr, i64, i64 }, ptr %ret.ub.alloc, i32 0, i32 2
  %fld.load7 = load i64, ptr %fld.gep6, align 8
  %call.res9 = call ptr @"lsp::get_doc"(ptr %fld.load)
  %niche.ne.null = icmp ne ptr %call.res9, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %fld.gep12 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %call.res9, i32 0, i32 2
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %call.res16 = call { i64, ptr } @"lsp::extract_word_at"(ptr %fld.load13, i64 %fld.load4, i64 %fld.load7)
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 16)
  store { i64, ptr } %call.res16, ptr %ret.ub.alloc18, align 8
  %str.len.query20 = load i64, ptr %ret.ub.alloc18, align 8
  %str.len.query21 = and i64 %str.len.query20, 281474976710655
  %str.tag = lshr i64 %str.len.query20, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.else:                                      ; preds = %entry
  call void @"lsp::send_result"(ptr %0, ptr @str.233.struct)
  br label %choice.exit

choice.exit:                                      ; preds = %str_ok681, %choice.else669, %str_ok561, %str_ok479, %str_ok253, %choice.else159, %str_ok87, %choice.else77, %choice.else
  ret void

str_ok:                                           ; preds = %tag.slow_check, %choice.then
  %cmptmp = icmp eq i64 %str.len.query21, 0
  br i1 %cmptmp, label %choice.then22, label %choice.else23

tag.slow_check:                                   ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then22:                                    ; preds = %str_ok
  %fld.load27 = load ptr, ptr %fld.gep12, align 8
  %call.res30 = call { i64, ptr } @"lsp::extract_operator_at"(ptr %fld.load27, i64 %fld.load4, i64 %fld.load7)
  %arena.cur31 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 16)
  store { i64, ptr } %call.res30, ptr %ret.ub.alloc32, align 8
  %eq.lhs.len34 = load i64, ptr %ret.ub.alloc32, align 8
  %eq.lhs.len35 = and i64 %eq.lhs.len34, 281474976710655
  %str.tag36 = lshr i64 %eq.lhs.len34, 48
  %tag.immortal38 = icmp eq i64 %str.tag36, 0
  %active.gen39 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current40 = icmp eq i64 %str.tag36, %active.gen39
  %tag.fast.ok41 = or i1 %tag.immortal38, %tag.current40
  br i1 %tag.fast.ok41, label %str_ok37, label %tag.slow_check42

choice.else23:                                    ; preds = %str_ok
  %call.res114 = call { ptr, ptr } @"lsp::split_qualified"(ptr %ret.ub.alloc18)
  %arena.cur115 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc116 = call ptr @dva_arena_alloc(ptr %arena.cur115, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  store { ptr, ptr } %call.res114, ptr %ret.ub.alloc116, align 8
  %fld.load119 = load ptr, ptr %ret.ub.alloc116, align 8
  %fld.gep121 = getelementptr inbounds { ptr, ptr }, ptr %ret.ub.alloc116, i32 0, i32 1
  %fld.load122 = load ptr, ptr %fld.gep121, align 8
  %eq.lhs.len125 = load i64, ptr %fld.load119, align 8
  %eq.lhs.len126 = and i64 %eq.lhs.len125, 281474976710655
  %str.tag127 = lshr i64 %eq.lhs.len125, 48
  %tag.immortal129 = icmp eq i64 %str.tag127, 0
  %active.gen130 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current131 = icmp eq i64 %str.tag127, %active.gen130
  %tag.fast.ok132 = or i1 %tag.immortal129, %tag.current131
  br i1 %tag.fast.ok132, label %str_ok128, label %tag.slow_check133

str_ok37:                                         ; preds = %tag.slow_check42, %choice.then22
  %eq.len = icmp eq i64 %eq.lhs.len35, 0
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

tag.slow_check42:                                 ; preds = %choice.then22
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag36)
  br label %str_ok37

str.eq.then:                                      ; preds = %str_ok37
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc32, i32 0, i32 1
  %eq.lhs.data44 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data44, ptr @str.0, i64 0)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str_ok37, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str_ok37 ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then45, label %choice.exit47

choice.then45:                                    ; preds = %str.eq.merge
  %call.res49 = call { i64, ptr } @"lsp::operator_hover_doc"(ptr %ret.ub.alloc32)
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 16)
  store { i64, ptr } %call.res49, ptr %ret.ub.alloc51, align 8
  br label %choice.exit47

choice.exit47:                                    ; preds = %str.eq.merge, %choice.then45
  %choice.res = phi ptr [ %ret.ub.alloc51, %choice.then45 ], [ @str.0.struct, %str.eq.merge ]
  %eq.lhs.len54 = load i64, ptr %choice.res, align 8
  %eq.lhs.len55 = and i64 %eq.lhs.len54, 281474976710655
  %str.tag56 = lshr i64 %eq.lhs.len54, 48
  %tag.immortal58 = icmp eq i64 %str.tag56, 0
  %active.gen59 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current60 = icmp eq i64 %str.tag56, %active.gen59
  %tag.fast.ok61 = or i1 %tag.immortal58, %tag.current60
  br i1 %tag.fast.ok61, label %str_ok57, label %tag.slow_check62

str_ok57:                                         ; preds = %tag.slow_check62, %choice.exit47
  %eq.len65 = icmp eq i64 %eq.lhs.len55, 0
  br i1 %eq.len65, label %str.eq.then66, label %str.eq.merge68

tag.slow_check62:                                 ; preds = %choice.exit47
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag56)
  br label %str_ok57

str.eq.then66:                                    ; preds = %str_ok57
  %eq.lhs.data69 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %eq.lhs.data70 = load ptr, ptr %eq.lhs.data69, align 8
  %eq.memcmp72 = call i32 @memcmp(ptr %eq.lhs.data70, ptr @str.0, i64 0)
  %eq.cmp.zero73 = icmp eq i32 %eq.memcmp72, 0
  br label %str.eq.merge68

str.eq.merge68:                                   ; preds = %str_ok57, %str.eq.then66
  %str.eq.result74 = phi i1 [ %eq.cmp.zero73, %str.eq.then66 ], [ false, %str_ok57 ]
  %str.neq75 = xor i1 %str.eq.result74, true
  br i1 %str.neq75, label %choice.then76, label %choice.else77

choice.then76:                                    ; preds = %str.eq.merge68
  %call.res81 = call { i64, ptr } @"json::escape_string"(ptr %choice.res)
  %arena.cur82 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc83 = call ptr @dva_arena_alloc(ptr %arena.cur82, i64 16)
  store { i64, ptr } %call.res81, ptr %ret.ub.alloc83, align 8
  %cat.seg84 = load i64, ptr %ret.ub.alloc83, align 8
  %cat.seg85 = and i64 %cat.seg84, 281474976710655
  %str.tag86 = lshr i64 %cat.seg84, 48
  %tag.immortal88 = icmp eq i64 %str.tag86, 0
  %active.gen89 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current90 = icmp eq i64 %str.tag86, %active.gen89
  %tag.fast.ok91 = or i1 %tag.immortal88, %tag.current90
  br i1 %tag.fast.ok91, label %str_ok87, label %tag.slow_check92

choice.else77:                                    ; preds = %str.eq.merge68
  call void @"lsp::send_result"(ptr %0, ptr @str.233.struct)
  br label %choice.exit

str_ok87:                                         ; preds = %tag.slow_check92, %choice.then76
  %cat.seg93 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc83, i32 0, i32 1
  %cat.seg94 = load ptr, ptr %cat.seg93, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 39, i64 %cat.seg85)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %cat.sum.len97 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 2)
  %sum98 = extractvalue { i64, i1 } %cat.sum.len97, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum98, i64 1)
  %sum103 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur108 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur108, i64 %sum103)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.250, i64 39, i1 false)
  %cat.dst109 = getelementptr i8, ptr %concat.buf, i64 39
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst109, ptr align 1 %cat.seg94, i64 %cat.seg85, i1 false)
  %cat.off = add nuw nsw i64 39, %cat.seg85
  %cat.dst110 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst110, ptr align 1 @str.58, i64 2, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum98
  store i8 0, ptr %concat.nul, align 1
  %arena.cur111 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum98, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  call void @"lsp::send_result"(ptr %0, ptr %concat.str)
  br label %choice.exit

tag.slow_check92:                                 ; preds = %choice.then76
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag86)
  br label %str_ok87

str_ok128:                                        ; preds = %tag.slow_check133, %choice.else23
  %eq.len136 = icmp eq i64 %eq.lhs.len126, 0
  br i1 %eq.len136, label %str.eq.then137, label %str.eq.merge139

tag.slow_check133:                                ; preds = %choice.else23
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag127)
  br label %str_ok128

str.eq.then137:                                   ; preds = %str_ok128
  %eq.lhs.data140 = getelementptr inbounds { i64, ptr }, ptr %fld.load119, i32 0, i32 1
  %eq.lhs.data141 = load ptr, ptr %eq.lhs.data140, align 8
  %eq.memcmp143 = call i32 @memcmp(ptr %eq.lhs.data141, ptr @str.0, i64 0)
  %eq.cmp.zero144 = icmp eq i32 %eq.memcmp143, 0
  br label %str.eq.merge139

str.eq.merge139:                                  ; preds = %str_ok128, %str.eq.then137
  %str.eq.result145 = phi i1 [ %eq.cmp.zero144, %str.eq.then137 ], [ false, %str_ok128 ]
  %str.neq146 = xor i1 %str.eq.result145, true
  br i1 %str.neq146, label %choice.then147, label %choice.else148

choice.then147:                                   ; preds = %str.eq.merge139
  %fld.gep151 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %call.res9, i32 0, i32 1
  %fld.load152 = load ptr, ptr %fld.gep151, align 8
  %call.res155 = call ptr @"lsp::find_imported_symbol"(ptr %fld.load152, ptr %fld.load119, ptr %fld.load122)
  %niche.ne.null157 = icmp ne ptr %call.res155, null
  br i1 %niche.ne.null157, label %choice.then158, label %choice.else159

choice.else148:                                   ; preds = %str.eq.merge139
  %arena.cur297 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur297, i64 1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf, ptr align 1 @str.0, i64 0, i1 false)
  store i8 0, ptr %copy.buf, align 1
  %arena.cur298 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.str = call ptr @dva_arena_alloc(ptr %arena.cur298, i64 16)
  store i64 0, ptr %copy.str, align 8
  %str.copy.data.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 1
  store ptr %copy.buf, ptr %str.copy.data.gep, align 8
  %fld.gep300 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %call.res9, i32 0, i32 3
  %fld.load301 = load ptr, ptr %fld.gep300, align 8
  %arr.cycle.len302 = load i64, ptr %fld.load301, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load301, i32 0, i32 1
  %arr.cycle.data303 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.969

choice.then158:                                   ; preds = %choice.then147
  %fld.gep163 = getelementptr inbounds { ptr, { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 } }, ptr %call.res155, i32 0, i32 1
  %fld.gep166 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %fld.gep163, i32 0, i32 1
  %fld.load167 = load ptr, ptr %fld.gep166, align 8
  %cat.seg169 = load i64, ptr %fld.load167, align 8
  %cat.seg170 = and i64 %cat.seg169, 281474976710655
  %str.tag171 = lshr i64 %cat.seg169, 48
  %tag.immortal173 = icmp eq i64 %str.tag171, 0
  %active.gen174 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current175 = icmp eq i64 %str.tag171, %active.gen174
  %tag.fast.ok176 = or i1 %tag.immortal173, %tag.current175
  br i1 %tag.fast.ok176, label %str_ok172, label %tag.slow_check177

choice.else159:                                   ; preds = %choice.then147
  call void @"lsp::send_result"(ptr %0, ptr @str.233.struct)
  br label %choice.exit

str_ok172:                                        ; preds = %tag.slow_check177, %choice.then158
  %cat.seg178 = getelementptr inbounds { i64, ptr }, ptr %fld.load167, i32 0, i32 1
  %cat.seg179 = load ptr, ptr %cat.seg178, align 8
  %cat.seg183 = load i64, ptr %fld.load119, align 8
  %cat.seg184 = and i64 %cat.seg183, 281474976710655
  %str.tag185 = lshr i64 %cat.seg183, 48
  %tag.immortal187 = icmp eq i64 %str.tag185, 0
  %active.gen188 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current189 = icmp eq i64 %str.tag185, %active.gen188
  %tag.fast.ok190 = or i1 %tag.immortal187, %tag.current189
  br i1 %tag.fast.ok190, label %str_ok186, label %tag.slow_check191

tag.slow_check177:                                ; preds = %choice.then158
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag171)
  br label %str_ok172

str_ok186:                                        ; preds = %tag.slow_check191, %str_ok172
  %cat.seg192 = getelementptr inbounds { i64, ptr }, ptr %fld.load119, i32 0, i32 1
  %cat.seg193 = load ptr, ptr %cat.seg192, align 8
  %cat.sum.len195 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 7, i64 %cat.seg170)
  %sum196 = extractvalue { i64, i1 } %cat.sum.len195, 0
  %cat.sum.len201 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum196, i64 13)
  %sum202 = extractvalue { i64, i1 } %cat.sum.len201, 0
  %cat.sum.len207 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum202, i64 %cat.seg184)
  %sum208 = extractvalue { i64, i1 } %cat.sum.len207, 0
  %cat.sum.len213 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum208, i64 3)
  %sum214 = extractvalue { i64, i1 } %cat.sum.len213, 0
  %concat.tot.len219 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum214, i64 1)
  %sum220 = extractvalue { i64, i1 } %concat.tot.len219, 0
  %arena.cur225 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf226 = call ptr @dva_arena_alloc(ptr %arena.cur225, i64 %sum220)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf226, ptr align 1 @str.251, i64 7, i1 false)
  %cat.dst228 = getelementptr i8, ptr %concat.buf226, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst228, ptr align 1 %cat.seg179, i64 %cat.seg170, i1 false)
  %cat.off229 = add nuw nsw i64 7, %cat.seg170
  %cat.dst230 = getelementptr i8, ptr %concat.buf226, i64 %cat.off229
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst230, ptr align 1 @str.252, i64 13, i1 false)
  %cat.off231 = add nuw nsw i64 %cat.off229, 13
  %cat.dst232 = getelementptr i8, ptr %concat.buf226, i64 %cat.off231
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst232, ptr align 1 %cat.seg193, i64 %cat.seg184, i1 false)
  %cat.off233 = add nuw nsw i64 %cat.off231, %cat.seg184
  %cat.dst234 = getelementptr i8, ptr %concat.buf226, i64 %cat.off233
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst234, ptr align 1 @str.253, i64 3, i1 false)
  %concat.nul235 = getelementptr i8, ptr %concat.buf226, i64 %sum214
  store i8 0, ptr %concat.nul235, align 1
  %arena.cur236 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str237 = call ptr @dva_arena_alloc(ptr %arena.cur236, i64 16)
  %str.tag.gen239 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift240 = shl i64 %str.tag.gen239, 48
  %str.tagged.len241 = or i64 %sum214, %str.tag.shift240
  store i64 %str.tagged.len241, ptr %concat.str237, align 8
  %str.build.data.gep242 = getelementptr inbounds { i64, ptr }, ptr %concat.str237, i32 0, i32 1
  store ptr %concat.buf226, ptr %str.build.data.gep242, align 8
  %call.res246 = call { i64, ptr } @"json::escape_string"(ptr %concat.str237)
  %arena.cur247 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc248 = call ptr @dva_arena_alloc(ptr %arena.cur247, i64 16)
  store { i64, ptr } %call.res246, ptr %ret.ub.alloc248, align 8
  %cat.seg250 = load i64, ptr %ret.ub.alloc248, align 8
  %cat.seg251 = and i64 %cat.seg250, 281474976710655
  %str.tag252 = lshr i64 %cat.seg250, 48
  %tag.immortal254 = icmp eq i64 %str.tag252, 0
  %active.gen255 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current256 = icmp eq i64 %str.tag252, %active.gen255
  %tag.fast.ok257 = or i1 %tag.immortal254, %tag.current256
  br i1 %tag.fast.ok257, label %str_ok253, label %tag.slow_check258

tag.slow_check191:                                ; preds = %str_ok172
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag185)
  br label %str_ok186

str_ok253:                                        ; preds = %tag.slow_check258, %str_ok186
  %cat.seg259 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc248, i32 0, i32 1
  %cat.seg260 = load ptr, ptr %cat.seg259, align 8
  %cat.sum.len262 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 39, i64 %cat.seg251)
  %sum263 = extractvalue { i64, i1 } %cat.sum.len262, 0
  %cat.sum.len268 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum263, i64 2)
  %sum269 = extractvalue { i64, i1 } %cat.sum.len268, 0
  %concat.tot.len274 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum269, i64 1)
  %sum275 = extractvalue { i64, i1 } %concat.tot.len274, 0
  %arena.cur280 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf281 = call ptr @dva_arena_alloc(ptr %arena.cur280, i64 %sum275)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf281, ptr align 1 @str.250, i64 39, i1 false)
  %cat.dst283 = getelementptr i8, ptr %concat.buf281, i64 39
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst283, ptr align 1 %cat.seg260, i64 %cat.seg251, i1 false)
  %cat.off284 = add nuw nsw i64 39, %cat.seg251
  %cat.dst285 = getelementptr i8, ptr %concat.buf281, i64 %cat.off284
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst285, ptr align 1 @str.58, i64 2, i1 false)
  %concat.nul286 = getelementptr i8, ptr %concat.buf281, i64 %sum269
  store i8 0, ptr %concat.nul286, align 1
  %arena.cur287 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str288 = call ptr @dva_arena_alloc(ptr %arena.cur287, i64 16)
  %str.tag.gen290 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift291 = shl i64 %str.tag.gen290, 48
  %str.tagged.len292 = or i64 %sum269, %str.tag.shift291
  store i64 %str.tagged.len292, ptr %concat.str288, align 8
  %str.build.data.gep293 = getelementptr inbounds { i64, ptr }, ptr %concat.str288, i32 0, i32 1
  store ptr %concat.buf281, ptr %str.build.data.gep293, align 8
  call void @"lsp::send_result"(ptr %0, ptr %concat.str288)
  br label %choice.exit

tag.slow_check258:                                ; preds = %str_ok186
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag252)
  br label %str_ok253

loop.header.969:                                  ; preds = %choice.exit341, %choice.else148
  %"var.hit_det'.0" = phi ptr [ %copy.str, %choice.else148 ], [ %"var.hit_det'.1", %choice.exit341 ]
  %"var.hit_local_ln'.0" = phi i64 [ 0, %choice.else148 ], [ %"var.hit_local_ln'.1", %choice.exit341 ]
  %loop.idx.969.0 = phi i64 [ 0, %choice.else148 ], [ %loop.next, %choice.exit341 ]
  %loop.cond = icmp slt i64 %loop.idx.969.0, %arr.cycle.len302
  br i1 %loop.cond, label %loop.body.969, label %loop.exit.969

loop.body.969:                                    ; preds = %loop.header.969
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data303, i64 %loop.idx.969.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.load307 = load ptr, ptr %slot.i2p, align 8
  %eq.lhs.len310 = load i64, ptr %fld.load307, align 8
  %eq.lhs.len311 = and i64 %eq.lhs.len310, 281474976710655
  %str.tag312 = lshr i64 %eq.lhs.len310, 48
  %tag.immortal314 = icmp eq i64 %str.tag312, 0
  %active.gen315 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current316 = icmp eq i64 %str.tag312, %active.gen315
  %tag.fast.ok317 = or i1 %tag.immortal314, %tag.current316
  br i1 %tag.fast.ok317, label %str_ok313, label %tag.slow_check318

loop.exit.969:                                    ; preds = %loop.header.969
  %eq.lhs.len396 = load i64, ptr %"var.hit_det'.0", align 8
  %eq.lhs.len397 = and i64 %eq.lhs.len396, 281474976710655
  %str.tag398 = lshr i64 %eq.lhs.len396, 48
  %tag.immortal400 = icmp eq i64 %str.tag398, 0
  %active.gen401 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current402 = icmp eq i64 %str.tag398, %active.gen401
  %tag.fast.ok403 = or i1 %tag.immortal400, %tag.current402
  br i1 %tag.fast.ok403, label %str_ok399, label %tag.slow_check404

str_ok313:                                        ; preds = %tag.slow_check318, %loop.body.969
  %eq.rhs.len320 = load i64, ptr %fld.load122, align 8
  %eq.rhs.len321 = and i64 %eq.rhs.len320, 281474976710655
  %str.tag322 = lshr i64 %eq.rhs.len320, 48
  %tag.immortal324 = icmp eq i64 %str.tag322, 0
  %active.gen325 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current326 = icmp eq i64 %str.tag322, %active.gen325
  %tag.fast.ok327 = or i1 %tag.immortal324, %tag.current326
  br i1 %tag.fast.ok327, label %str_ok323, label %tag.slow_check328

tag.slow_check318:                                ; preds = %loop.body.969
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag312)
  br label %str_ok313

str_ok323:                                        ; preds = %tag.slow_check328, %str_ok313
  %eq.len329 = icmp eq i64 %eq.lhs.len311, %eq.rhs.len321
  br i1 %eq.len329, label %str.eq.then330, label %choice.exit341

tag.slow_check328:                                ; preds = %str_ok313
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag322)
  br label %str_ok323

str.eq.then330:                                   ; preds = %str_ok323
  %eq.lhs.data333 = getelementptr inbounds { i64, ptr }, ptr %fld.load307, i32 0, i32 1
  %eq.lhs.data334 = load ptr, ptr %eq.lhs.data333, align 8
  %eq.rhs.data335 = getelementptr inbounds { i64, ptr }, ptr %fld.load122, i32 0, i32 1
  %eq.rhs.data336 = load ptr, ptr %eq.rhs.data335, align 8
  %eq.memcmp337 = call i32 @memcmp(ptr %eq.lhs.data334, ptr %eq.rhs.data336, i64 %eq.lhs.len311)
  %eq.cmp.zero338 = icmp eq i32 %eq.memcmp337, 0
  br i1 %eq.cmp.zero338, label %choice.then340, label %choice.exit341

choice.then340:                                   ; preds = %str.eq.then330
  %fld.gep343 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 8
  %fld.load344 = load i1, ptr %fld.gep343, align 1
  br i1 %fld.load344, label %choice.then345, label %choice.else346

choice.exit341:                                   ; preds = %str.eq.then380, %choice.then389, %str_ok371, %choice.then345, %choice.then358, %str_ok323, %str.eq.then330
  %"var.hit_det'.1" = phi ptr [ %"var.hit_det'.0", %str.eq.then330 ], [ %"var.hit_det'.0", %str_ok323 ], [ %fld.load365, %choice.then358 ], [ %"var.hit_det'.0", %choice.then345 ], [ %fld.load393, %choice.then389 ], [ %"var.hit_det'.0", %str.eq.then380 ], [ %"var.hit_det'.0", %str_ok371 ]
  %"var.hit_local_ln'.1" = phi i64 [ %"var.hit_local_ln'.0", %str.eq.then330 ], [ %"var.hit_local_ln'.0", %str_ok323 ], [ %fld.load350, %choice.then358 ], [ %"var.hit_local_ln'.0", %choice.then345 ], [ %"var.hit_local_ln'.0", %str_ok371 ], [ %"var.hit_local_ln'.0", %choice.then389 ], [ %"var.hit_local_ln'.0", %str.eq.then380 ]
  %loop.next = add i64 %loop.idx.969.0, 1
  br label %loop.header.969

choice.then345:                                   ; preds = %choice.then340
  %fld.gep349 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 3
  %fld.load350 = load i64, ptr %fld.gep349, align 8
  %addtmp = add i64 %fld.load4, 1
  %cmptmp352 = icmp sle i64 %fld.load350, %addtmp
  %cmptmp357 = icmp sge i64 %fld.load350, %"var.hit_local_ln'.0"
  %and.970.phi = select i1 %cmptmp352, i1 %cmptmp357, i1 false
  br i1 %and.970.phi, label %choice.then358, label %choice.exit341

choice.else346:                                   ; preds = %choice.then340
  %eq.lhs.len368 = load i64, ptr %"var.hit_det'.0", align 8
  %eq.lhs.len369 = and i64 %eq.lhs.len368, 281474976710655
  %str.tag370 = lshr i64 %eq.lhs.len368, 48
  %tag.immortal372 = icmp eq i64 %str.tag370, 0
  %active.gen373 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current374 = icmp eq i64 %str.tag370, %active.gen373
  %tag.fast.ok375 = or i1 %tag.immortal372, %tag.current374
  br i1 %tag.fast.ok375, label %str_ok371, label %tag.slow_check376

choice.then358:                                   ; preds = %choice.then345
  %fld.gep364 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 1
  %fld.load365 = load ptr, ptr %fld.gep364, align 8
  br label %choice.exit341

str_ok371:                                        ; preds = %tag.slow_check376, %choice.else346
  %eq.len379 = icmp eq i64 %eq.lhs.len369, 0
  br i1 %eq.len379, label %str.eq.then380, label %choice.exit341

tag.slow_check376:                                ; preds = %choice.else346
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag370)
  br label %str_ok371

str.eq.then380:                                   ; preds = %str_ok371
  %eq.lhs.data383 = getelementptr inbounds { i64, ptr }, ptr %"var.hit_det'.0", i32 0, i32 1
  %eq.lhs.data384 = load ptr, ptr %eq.lhs.data383, align 8
  %eq.memcmp386 = call i32 @memcmp(ptr %eq.lhs.data384, ptr @str.0, i64 0)
  %eq.cmp.zero387 = icmp eq i32 %eq.memcmp386, 0
  br i1 %eq.cmp.zero387, label %choice.then389, label %choice.exit341

choice.then389:                                   ; preds = %str.eq.then380
  %fld.gep392 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 1
  %fld.load393 = load ptr, ptr %fld.gep392, align 8
  br label %choice.exit341

str_ok399:                                        ; preds = %tag.slow_check404, %loop.exit.969
  %eq.len407 = icmp eq i64 %eq.lhs.len397, 0
  br i1 %eq.len407, label %str.eq.then408, label %str.eq.merge410

tag.slow_check404:                                ; preds = %loop.exit.969
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag398)
  br label %str_ok399

str.eq.then408:                                   ; preds = %str_ok399
  %eq.lhs.data411 = getelementptr inbounds { i64, ptr }, ptr %"var.hit_det'.0", i32 0, i32 1
  %eq.lhs.data412 = load ptr, ptr %eq.lhs.data411, align 8
  %eq.memcmp414 = call i32 @memcmp(ptr %eq.lhs.data412, ptr @str.0, i64 0)
  %eq.cmp.zero415 = icmp eq i32 %eq.memcmp414, 0
  br label %str.eq.merge410

str.eq.merge410:                                  ; preds = %str_ok399, %str.eq.then408
  %str.eq.result416 = phi i1 [ %eq.cmp.zero415, %str.eq.then408 ], [ false, %str_ok399 ]
  %str.neq417 = xor i1 %str.eq.result416, true
  br i1 %str.neq417, label %choice.then418, label %choice.else419

choice.then418:                                   ; preds = %str.eq.merge410
  %cat.seg424 = load i64, ptr %"var.hit_det'.0", align 8
  %cat.seg425 = and i64 %cat.seg424, 281474976710655
  %str.tag426 = lshr i64 %cat.seg424, 48
  %tag.immortal428 = icmp eq i64 %str.tag426, 0
  %active.gen429 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current430 = icmp eq i64 %str.tag426, %active.gen429
  %tag.fast.ok431 = or i1 %tag.immortal428, %tag.current430
  br i1 %tag.fast.ok431, label %str_ok427, label %tag.slow_check432

choice.else419:                                   ; preds = %str.eq.merge410
  %call.res521 = call { i64, ptr } @"lsp::builtin_hover_doc"(ptr %ret.ub.alloc18)
  %arena.cur522 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc523 = call ptr @dva_arena_alloc(ptr %arena.cur522, i64 16)
  store { i64, ptr } %call.res521, ptr %ret.ub.alloc523, align 8
  %eq.lhs.len526 = load i64, ptr %ret.ub.alloc523, align 8
  %eq.lhs.len527 = and i64 %eq.lhs.len526, 281474976710655
  %str.tag528 = lshr i64 %eq.lhs.len526, 48
  %tag.immortal530 = icmp eq i64 %str.tag528, 0
  %active.gen531 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current532 = icmp eq i64 %str.tag528, %active.gen531
  %tag.fast.ok533 = or i1 %tag.immortal530, %tag.current532
  br i1 %tag.fast.ok533, label %str_ok529, label %tag.slow_check534

str_ok427:                                        ; preds = %tag.slow_check432, %choice.then418
  %cat.seg433 = getelementptr inbounds { i64, ptr }, ptr %"var.hit_det'.0", i32 0, i32 1
  %cat.seg434 = load ptr, ptr %cat.seg433, align 8
  %cat.sum.len436 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 7, i64 %cat.seg425)
  %sum437 = extractvalue { i64, i1 } %cat.sum.len436, 0
  %cat.sum.len442 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum437, i64 4)
  %sum443 = extractvalue { i64, i1 } %cat.sum.len442, 0
  %concat.tot.len448 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum443, i64 1)
  %sum449 = extractvalue { i64, i1 } %concat.tot.len448, 0
  %arena.cur454 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf455 = call ptr @dva_arena_alloc(ptr %arena.cur454, i64 %sum449)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf455, ptr align 1 @str.251, i64 7, i1 false)
  %cat.dst457 = getelementptr i8, ptr %concat.buf455, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst457, ptr align 1 %cat.seg434, i64 %cat.seg425, i1 false)
  %cat.off458 = add nuw nsw i64 7, %cat.seg425
  %cat.dst459 = getelementptr i8, ptr %concat.buf455, i64 %cat.off458
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst459, ptr align 1 @str.254, i64 4, i1 false)
  %concat.nul460 = getelementptr i8, ptr %concat.buf455, i64 %sum443
  store i8 0, ptr %concat.nul460, align 1
  %arena.cur461 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str462 = call ptr @dva_arena_alloc(ptr %arena.cur461, i64 16)
  %str.tag.gen464 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift465 = shl i64 %str.tag.gen464, 48
  %str.tagged.len466 = or i64 %sum443, %str.tag.shift465
  store i64 %str.tagged.len466, ptr %concat.str462, align 8
  %str.build.data.gep467 = getelementptr inbounds { i64, ptr }, ptr %concat.str462, i32 0, i32 1
  store ptr %concat.buf455, ptr %str.build.data.gep467, align 8
  %call.res472 = call { i64, ptr } @"json::escape_string"(ptr %concat.str462)
  %arena.cur473 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc474 = call ptr @dva_arena_alloc(ptr %arena.cur473, i64 16)
  store { i64, ptr } %call.res472, ptr %ret.ub.alloc474, align 8
  %cat.seg476 = load i64, ptr %ret.ub.alloc474, align 8
  %cat.seg477 = and i64 %cat.seg476, 281474976710655
  %str.tag478 = lshr i64 %cat.seg476, 48
  %tag.immortal480 = icmp eq i64 %str.tag478, 0
  %active.gen481 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current482 = icmp eq i64 %str.tag478, %active.gen481
  %tag.fast.ok483 = or i1 %tag.immortal480, %tag.current482
  br i1 %tag.fast.ok483, label %str_ok479, label %tag.slow_check484

tag.slow_check432:                                ; preds = %choice.then418
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag426)
  br label %str_ok427

str_ok479:                                        ; preds = %tag.slow_check484, %str_ok427
  %cat.seg485 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc474, i32 0, i32 1
  %cat.seg486 = load ptr, ptr %cat.seg485, align 8
  %cat.sum.len488 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 39, i64 %cat.seg477)
  %sum489 = extractvalue { i64, i1 } %cat.sum.len488, 0
  %cat.sum.len494 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum489, i64 2)
  %sum495 = extractvalue { i64, i1 } %cat.sum.len494, 0
  %concat.tot.len500 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum495, i64 1)
  %sum501 = extractvalue { i64, i1 } %concat.tot.len500, 0
  %arena.cur506 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf507 = call ptr @dva_arena_alloc(ptr %arena.cur506, i64 %sum501)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf507, ptr align 1 @str.250, i64 39, i1 false)
  %cat.dst509 = getelementptr i8, ptr %concat.buf507, i64 39
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst509, ptr align 1 %cat.seg486, i64 %cat.seg477, i1 false)
  %cat.off510 = add nuw nsw i64 39, %cat.seg477
  %cat.dst511 = getelementptr i8, ptr %concat.buf507, i64 %cat.off510
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst511, ptr align 1 @str.58, i64 2, i1 false)
  %concat.nul512 = getelementptr i8, ptr %concat.buf507, i64 %sum495
  store i8 0, ptr %concat.nul512, align 1
  %arena.cur513 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str514 = call ptr @dva_arena_alloc(ptr %arena.cur513, i64 16)
  %str.tag.gen516 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift517 = shl i64 %str.tag.gen516, 48
  %str.tagged.len518 = or i64 %sum495, %str.tag.shift517
  store i64 %str.tagged.len518, ptr %concat.str514, align 8
  %str.build.data.gep519 = getelementptr inbounds { i64, ptr }, ptr %concat.str514, i32 0, i32 1
  store ptr %concat.buf507, ptr %str.build.data.gep519, align 8
  call void @"lsp::send_result"(ptr %0, ptr %concat.str514)
  br label %choice.exit

tag.slow_check484:                                ; preds = %str_ok427
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag478)
  br label %str_ok479

str_ok529:                                        ; preds = %tag.slow_check534, %choice.else419
  %eq.len537 = icmp eq i64 %eq.lhs.len527, 0
  br i1 %eq.len537, label %str.eq.then538, label %str.eq.merge540

tag.slow_check534:                                ; preds = %choice.else419
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag528)
  br label %str_ok529

str.eq.then538:                                   ; preds = %str_ok529
  %eq.lhs.data541 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc523, i32 0, i32 1
  %eq.lhs.data542 = load ptr, ptr %eq.lhs.data541, align 8
  %eq.memcmp544 = call i32 @memcmp(ptr %eq.lhs.data542, ptr @str.0, i64 0)
  %eq.cmp.zero545 = icmp eq i32 %eq.memcmp544, 0
  br label %str.eq.merge540

str.eq.merge540:                                  ; preds = %str_ok529, %str.eq.then538
  %str.eq.result546 = phi i1 [ %eq.cmp.zero545, %str.eq.then538 ], [ false, %str_ok529 ]
  %str.neq547 = xor i1 %str.eq.result546, true
  br i1 %str.neq547, label %choice.then548, label %choice.else549

choice.then548:                                   ; preds = %str.eq.merge540
  %call.res554 = call { i64, ptr } @"json::escape_string"(ptr %ret.ub.alloc523)
  %arena.cur555 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc556 = call ptr @dva_arena_alloc(ptr %arena.cur555, i64 16)
  store { i64, ptr } %call.res554, ptr %ret.ub.alloc556, align 8
  %cat.seg558 = load i64, ptr %ret.ub.alloc556, align 8
  %cat.seg559 = and i64 %cat.seg558, 281474976710655
  %str.tag560 = lshr i64 %cat.seg558, 48
  %tag.immortal562 = icmp eq i64 %str.tag560, 0
  %active.gen563 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current564 = icmp eq i64 %str.tag560, %active.gen563
  %tag.fast.ok565 = or i1 %tag.immortal562, %tag.current564
  br i1 %tag.fast.ok565, label %str_ok561, label %tag.slow_check566

choice.else549:                                   ; preds = %str.eq.merge540
  %fld.load604 = load ptr, ptr %fld.gep12, align 8
  %call.res607 = call { i64, ptr } @"lsp::extract_operator_at"(ptr %fld.load604, i64 %fld.load4, i64 %fld.load7)
  %arena.cur608 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc609 = call ptr @dva_arena_alloc(ptr %arena.cur608, i64 16)
  store { i64, ptr } %call.res607, ptr %ret.ub.alloc609, align 8
  %eq.lhs.len613 = load i64, ptr %ret.ub.alloc609, align 8
  %eq.lhs.len614 = and i64 %eq.lhs.len613, 281474976710655
  %str.tag615 = lshr i64 %eq.lhs.len613, 48
  %tag.immortal617 = icmp eq i64 %str.tag615, 0
  %active.gen618 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current619 = icmp eq i64 %str.tag615, %active.gen618
  %tag.fast.ok620 = or i1 %tag.immortal617, %tag.current619
  br i1 %tag.fast.ok620, label %str_ok616, label %tag.slow_check621

str_ok561:                                        ; preds = %tag.slow_check566, %choice.then548
  %cat.seg567 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc556, i32 0, i32 1
  %cat.seg568 = load ptr, ptr %cat.seg567, align 8
  %cat.sum.len570 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 39, i64 %cat.seg559)
  %sum571 = extractvalue { i64, i1 } %cat.sum.len570, 0
  %cat.sum.len576 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum571, i64 2)
  %sum577 = extractvalue { i64, i1 } %cat.sum.len576, 0
  %concat.tot.len582 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum577, i64 1)
  %sum583 = extractvalue { i64, i1 } %concat.tot.len582, 0
  %arena.cur588 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf589 = call ptr @dva_arena_alloc(ptr %arena.cur588, i64 %sum583)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf589, ptr align 1 @str.250, i64 39, i1 false)
  %cat.dst591 = getelementptr i8, ptr %concat.buf589, i64 39
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst591, ptr align 1 %cat.seg568, i64 %cat.seg559, i1 false)
  %cat.off592 = add nuw nsw i64 39, %cat.seg559
  %cat.dst593 = getelementptr i8, ptr %concat.buf589, i64 %cat.off592
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst593, ptr align 1 @str.58, i64 2, i1 false)
  %concat.nul594 = getelementptr i8, ptr %concat.buf589, i64 %sum577
  store i8 0, ptr %concat.nul594, align 1
  %arena.cur595 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str596 = call ptr @dva_arena_alloc(ptr %arena.cur595, i64 16)
  %str.tag.gen598 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift599 = shl i64 %str.tag.gen598, 48
  %str.tagged.len600 = or i64 %sum577, %str.tag.shift599
  store i64 %str.tagged.len600, ptr %concat.str596, align 8
  %str.build.data.gep601 = getelementptr inbounds { i64, ptr }, ptr %concat.str596, i32 0, i32 1
  store ptr %concat.buf589, ptr %str.build.data.gep601, align 8
  call void @"lsp::send_result"(ptr %0, ptr %concat.str596)
  br label %choice.exit

tag.slow_check566:                                ; preds = %choice.then548
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag560)
  br label %str_ok561

str_ok616:                                        ; preds = %tag.slow_check621, %choice.else549
  %eq.len624 = icmp eq i64 %eq.lhs.len614, 0
  br i1 %eq.len624, label %str.eq.then625, label %str.eq.merge627

tag.slow_check621:                                ; preds = %choice.else549
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag615)
  br label %str_ok616

str.eq.then625:                                   ; preds = %str_ok616
  %eq.lhs.data628 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc609, i32 0, i32 1
  %eq.lhs.data629 = load ptr, ptr %eq.lhs.data628, align 8
  %eq.memcmp631 = call i32 @memcmp(ptr %eq.lhs.data629, ptr @str.0, i64 0)
  %eq.cmp.zero632 = icmp eq i32 %eq.memcmp631, 0
  br label %str.eq.merge627

str.eq.merge627:                                  ; preds = %str_ok616, %str.eq.then625
  %str.eq.result633 = phi i1 [ %eq.cmp.zero632, %str.eq.then625 ], [ false, %str_ok616 ]
  %str.neq634 = xor i1 %str.eq.result633, true
  br i1 %str.neq634, label %choice.then635, label %choice.exit637

choice.then635:                                   ; preds = %str.eq.merge627
  %call.res639 = call { i64, ptr } @"lsp::operator_hover_doc"(ptr %ret.ub.alloc609)
  %arena.cur640 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc641 = call ptr @dva_arena_alloc(ptr %arena.cur640, i64 16)
  store { i64, ptr } %call.res639, ptr %ret.ub.alloc641, align 8
  br label %choice.exit637

choice.exit637:                                   ; preds = %str.eq.merge627, %choice.then635
  %choice.res642 = phi ptr [ %ret.ub.alloc641, %choice.then635 ], [ @str.0.struct, %str.eq.merge627 ]
  %eq.lhs.len646 = load i64, ptr %choice.res642, align 8
  %eq.lhs.len647 = and i64 %eq.lhs.len646, 281474976710655
  %str.tag648 = lshr i64 %eq.lhs.len646, 48
  %tag.immortal650 = icmp eq i64 %str.tag648, 0
  %active.gen651 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current652 = icmp eq i64 %str.tag648, %active.gen651
  %tag.fast.ok653 = or i1 %tag.immortal650, %tag.current652
  br i1 %tag.fast.ok653, label %str_ok649, label %tag.slow_check654

str_ok649:                                        ; preds = %tag.slow_check654, %choice.exit637
  %eq.len657 = icmp eq i64 %eq.lhs.len647, 0
  br i1 %eq.len657, label %str.eq.then658, label %str.eq.merge660

tag.slow_check654:                                ; preds = %choice.exit637
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag648)
  br label %str_ok649

str.eq.then658:                                   ; preds = %str_ok649
  %eq.lhs.data661 = getelementptr inbounds { i64, ptr }, ptr %choice.res642, i32 0, i32 1
  %eq.lhs.data662 = load ptr, ptr %eq.lhs.data661, align 8
  %eq.memcmp664 = call i32 @memcmp(ptr %eq.lhs.data662, ptr @str.0, i64 0)
  %eq.cmp.zero665 = icmp eq i32 %eq.memcmp664, 0
  br label %str.eq.merge660

str.eq.merge660:                                  ; preds = %str_ok649, %str.eq.then658
  %str.eq.result666 = phi i1 [ %eq.cmp.zero665, %str.eq.then658 ], [ false, %str_ok649 ]
  %str.neq667 = xor i1 %str.eq.result666, true
  br i1 %str.neq667, label %choice.then668, label %choice.else669

choice.then668:                                   ; preds = %str.eq.merge660
  %call.res674 = call { i64, ptr } @"json::escape_string"(ptr %choice.res642)
  %arena.cur675 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc676 = call ptr @dva_arena_alloc(ptr %arena.cur675, i64 16)
  store { i64, ptr } %call.res674, ptr %ret.ub.alloc676, align 8
  %cat.seg678 = load i64, ptr %ret.ub.alloc676, align 8
  %cat.seg679 = and i64 %cat.seg678, 281474976710655
  %str.tag680 = lshr i64 %cat.seg678, 48
  %tag.immortal682 = icmp eq i64 %str.tag680, 0
  %active.gen683 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current684 = icmp eq i64 %str.tag680, %active.gen683
  %tag.fast.ok685 = or i1 %tag.immortal682, %tag.current684
  br i1 %tag.fast.ok685, label %str_ok681, label %tag.slow_check686

choice.else669:                                   ; preds = %str.eq.merge660
  call void @"lsp::send_result"(ptr %0, ptr @str.233.struct)
  br label %choice.exit

str_ok681:                                        ; preds = %tag.slow_check686, %choice.then668
  %cat.seg687 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc676, i32 0, i32 1
  %cat.seg688 = load ptr, ptr %cat.seg687, align 8
  %cat.sum.len690 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 39, i64 %cat.seg679)
  %sum691 = extractvalue { i64, i1 } %cat.sum.len690, 0
  %cat.sum.len696 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum691, i64 2)
  %sum697 = extractvalue { i64, i1 } %cat.sum.len696, 0
  %concat.tot.len702 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum697, i64 1)
  %sum703 = extractvalue { i64, i1 } %concat.tot.len702, 0
  %arena.cur708 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf709 = call ptr @dva_arena_alloc(ptr %arena.cur708, i64 %sum703)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf709, ptr align 1 @str.250, i64 39, i1 false)
  %cat.dst711 = getelementptr i8, ptr %concat.buf709, i64 39
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst711, ptr align 1 %cat.seg688, i64 %cat.seg679, i1 false)
  %cat.off712 = add nuw nsw i64 39, %cat.seg679
  %cat.dst713 = getelementptr i8, ptr %concat.buf709, i64 %cat.off712
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst713, ptr align 1 @str.58, i64 2, i1 false)
  %concat.nul714 = getelementptr i8, ptr %concat.buf709, i64 %sum697
  store i8 0, ptr %concat.nul714, align 1
  %arena.cur715 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str716 = call ptr @dva_arena_alloc(ptr %arena.cur715, i64 16)
  %str.tag.gen718 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift719 = shl i64 %str.tag.gen718, 48
  %str.tagged.len720 = or i64 %sum697, %str.tag.shift719
  store i64 %str.tagged.len720, ptr %concat.str716, align 8
  %str.build.data.gep721 = getelementptr inbounds { i64, ptr }, ptr %concat.str716, i32 0, i32 1
  store ptr %concat.buf709, ptr %str.build.data.gep721, align 8
  call void @"lsp::send_result"(ptr %0, ptr %concat.str716)
  br label %choice.exit

tag.slow_check686:                                ; preds = %choice.then668
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag680)
  br label %str_ok681
}

define void @"lsp::handle_definition"(ptr %0, ptr %1) #3 {
entry:
  %call.res = call { ptr, i64, i64 } @"lsp::extract_doc_uri_and_pos"(ptr %1)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64 }, ptr null, i32 1) to i64))
  store { ptr, i64, i64 } %call.res, ptr %ret.ub.alloc, align 8
  %fld.load = load ptr, ptr %ret.ub.alloc, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64 }, ptr %ret.ub.alloc, i32 0, i32 1
  %fld.load4 = load i64, ptr %fld.gep3, align 8
  %fld.gep6 = getelementptr inbounds { ptr, i64, i64 }, ptr %ret.ub.alloc, i32 0, i32 2
  %fld.load7 = load i64, ptr %fld.gep6, align 8
  %call.res9 = call ptr @"lsp::get_doc"(ptr %fld.load)
  %niche.ne.null = icmp ne ptr %call.res9, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %fld.gep12 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %call.res9, i32 0, i32 2
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %call.res16 = call { i64, ptr } @"lsp::extract_word_at"(ptr %fld.load13, i64 %fld.load4, i64 %fld.load7)
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 16)
  store { i64, ptr } %call.res16, ptr %ret.ub.alloc18, align 8
  %str.len.query20 = load i64, ptr %ret.ub.alloc18, align 8
  %str.len.query21 = and i64 %str.len.query20, 281474976710655
  %str.tag = lshr i64 %str.len.query20, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.else:                                      ; preds = %entry
  call void @"lsp::send_result"(ptr %0, ptr @str.233.struct)
  br label %choice.exit

choice.exit:                                      ; preds = %str_ok109, %choice.else60, %loop.exit.971, %choice.then22, %choice.else
  ret void

str_ok:                                           ; preds = %tag.slow_check, %choice.then
  %cmptmp = icmp eq i64 %str.len.query21, 0
  br i1 %cmptmp, label %choice.then22, label %choice.else23

tag.slow_check:                                   ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then22:                                    ; preds = %str_ok
  call void @"lsp::send_result"(ptr %0, ptr @str.233.struct)
  br label %choice.exit

choice.else23:                                    ; preds = %str_ok
  %call.res27 = call { ptr, ptr } @"lsp::split_qualified"(ptr %ret.ub.alloc18)
  %arena.cur28 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc29 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  store { ptr, ptr } %call.res27, ptr %ret.ub.alloc29, align 8
  %fld.load32 = load ptr, ptr %ret.ub.alloc29, align 8
  %fld.gep34 = getelementptr inbounds { ptr, ptr }, ptr %ret.ub.alloc29, i32 0, i32 1
  %fld.load35 = load ptr, ptr %fld.gep34, align 8
  %eq.lhs.len37 = load i64, ptr %fld.load32, align 8
  %eq.lhs.len38 = and i64 %eq.lhs.len37, 281474976710655
  %str.tag39 = lshr i64 %eq.lhs.len37, 48
  %tag.immortal41 = icmp eq i64 %str.tag39, 0
  %active.gen42 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current43 = icmp eq i64 %str.tag39, %active.gen42
  %tag.fast.ok44 = or i1 %tag.immortal41, %tag.current43
  br i1 %tag.fast.ok44, label %str_ok40, label %tag.slow_check45

str_ok40:                                         ; preds = %tag.slow_check45, %choice.else23
  %eq.len = icmp eq i64 %eq.lhs.len38, 0
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

tag.slow_check45:                                 ; preds = %choice.else23
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag39)
  br label %str_ok40

str.eq.then:                                      ; preds = %str_ok40
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load32, i32 0, i32 1
  %eq.lhs.data47 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data47, ptr @str.0, i64 0)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str_ok40, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str_ok40 ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then48, label %choice.else49

choice.then48:                                    ; preds = %str.eq.merge
  %fld.gep52 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %call.res9, i32 0, i32 1
  %fld.load53 = load ptr, ptr %fld.gep52, align 8
  %call.res56 = call ptr @"lsp::find_imported_symbol"(ptr %fld.load53, ptr %fld.load32, ptr %fld.load35)
  %niche.ne.null58 = icmp ne ptr %call.res56, null
  br i1 %niche.ne.null58, label %choice.then59, label %choice.else60

choice.else49:                                    ; preds = %str.eq.merge
  %arena.cur153 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 5)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf, ptr align 1 @str.233, i64 4, i1 false)
  %copy.nul = getelementptr i8, ptr %copy.buf, i64 4
  store i8 0, ptr %copy.nul, align 1
  %arena.cur154 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.str = call ptr @dva_arena_alloc(ptr %arena.cur154, i64 16)
  store i64 4, ptr %copy.str, align 8
  %str.copy.data.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 1
  store ptr %copy.buf, ptr %str.copy.data.gep, align 8
  %fld.gep156 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %call.res9, i32 0, i32 3
  %fld.load157 = load ptr, ptr %fld.gep156, align 8
  %arr.cycle.len158 = load i64, ptr %fld.load157, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load157, i32 0, i32 1
  %arr.cycle.data159 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.971

choice.then59:                                    ; preds = %choice.then48
  %fld.load65 = load ptr, ptr %call.res56, align 8
  %fld.gep67 = getelementptr inbounds { ptr, { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 } }, ptr %call.res56, i32 0, i32 1
  %call.res69 = call { i64, ptr } @"lsp::path_to_uri"(ptr %fld.load65)
  %arena.cur70 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc71 = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 16)
  store { i64, ptr } %call.res69, ptr %ret.ub.alloc71, align 8
  %fld.gep73 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %fld.gep67, i32 0, i32 3
  %fld.load74 = load i64, ptr %fld.gep73, align 8
  %fld.gep76 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %fld.gep67, i32 0, i32 4
  %fld.load77 = load i64, ptr %fld.gep76, align 8
  %fld.gep79 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %fld.gep67, i32 0, i32 5
  %fld.load80 = load i64, ptr %fld.gep79, align 8
  %fld.gep82 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %fld.gep67, i32 0, i32 6
  %fld.load83 = load i64, ptr %fld.gep82, align 8
  %call.res84 = call { i64, ptr } @"lsp::lsp_range_json"(i64 %fld.load74, i64 %fld.load77, i64 %fld.load80, i64 %fld.load83)
  %arena.cur85 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc86 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 16)
  store { i64, ptr } %call.res84, ptr %ret.ub.alloc86, align 8
  %call.res89 = call { i64, ptr } @"json::escape_string"(ptr %ret.ub.alloc71)
  %arena.cur90 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc91 = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 16)
  store { i64, ptr } %call.res89, ptr %ret.ub.alloc91, align 8
  %cat.seg92 = load i64, ptr %ret.ub.alloc91, align 8
  %cat.seg93 = and i64 %cat.seg92, 281474976710655
  %str.tag94 = lshr i64 %cat.seg92, 48
  %tag.immortal96 = icmp eq i64 %str.tag94, 0
  %active.gen97 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current98 = icmp eq i64 %str.tag94, %active.gen97
  %tag.fast.ok99 = or i1 %tag.immortal96, %tag.current98
  br i1 %tag.fast.ok99, label %str_ok95, label %tag.slow_check100

choice.else60:                                    ; preds = %choice.then48
  call void @"lsp::send_result"(ptr %0, ptr @str.233.struct)
  br label %choice.exit

str_ok95:                                         ; preds = %tag.slow_check100, %choice.then59
  %cat.seg101 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc91, i32 0, i32 1
  %cat.seg102 = load ptr, ptr %cat.seg101, align 8
  %cat.seg106 = load i64, ptr %ret.ub.alloc86, align 8
  %cat.seg107 = and i64 %cat.seg106, 281474976710655
  %str.tag108 = lshr i64 %cat.seg106, 48
  %tag.immortal110 = icmp eq i64 %str.tag108, 0
  %active.gen111 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current112 = icmp eq i64 %str.tag108, %active.gen111
  %tag.fast.ok113 = or i1 %tag.immortal110, %tag.current112
  br i1 %tag.fast.ok113, label %str_ok109, label %tag.slow_check114

tag.slow_check100:                                ; preds = %choice.then59
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag94)
  br label %str_ok95

str_ok109:                                        ; preds = %tag.slow_check114, %str_ok95
  %cat.seg115 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc86, i32 0, i32 1
  %cat.seg116 = load ptr, ptr %cat.seg115, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 7, i64 %cat.seg93)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %cat.sum.len119 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 9)
  %sum120 = extractvalue { i64, i1 } %cat.sum.len119, 0
  %cat.sum.len125 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum120, i64 %cat.seg107)
  %sum126 = extractvalue { i64, i1 } %cat.sum.len125, 0
  %cat.sum.len131 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum126, i64 1)
  %sum132 = extractvalue { i64, i1 } %cat.sum.len131, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum132, i64 1)
  %sum137 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur142 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 %sum137)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.255, i64 7, i1 false)
  %cat.dst143 = getelementptr i8, ptr %concat.buf, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst143, ptr align 1 %cat.seg102, i64 %cat.seg93, i1 false)
  %cat.off = add nuw nsw i64 7, %cat.seg93
  %cat.dst144 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst144, ptr align 1 @str.256, i64 9, i1 false)
  %cat.off145 = add nuw nsw i64 %cat.off, 9
  %cat.dst146 = getelementptr i8, ptr %concat.buf, i64 %cat.off145
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst146, ptr align 1 %cat.seg116, i64 %cat.seg107, i1 false)
  %cat.off147 = add nuw nsw i64 %cat.off145, %cat.seg107
  %cat.dst148 = getelementptr i8, ptr %concat.buf, i64 %cat.off147
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst148, ptr align 1 @str.44, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum132
  store i8 0, ptr %concat.nul, align 1
  %arena.cur149 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum132, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  call void @"lsp::send_result"(ptr %0, ptr %concat.str)
  br label %choice.exit

tag.slow_check114:                                ; preds = %str_ok95
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag108)
  br label %str_ok109

loop.header.971:                                  ; preds = %choice.exit197, %choice.else49
  %loop.idx.971.0 = phi i64 [ 0, %choice.else49 ], [ %loop.next, %choice.exit197 ]
  %loop.cond = icmp slt i64 %loop.idx.971.0, %arr.cycle.len158
  br i1 %loop.cond, label %loop.body.971, label %loop.exit.971

loop.body.971:                                    ; preds = %loop.header.971
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data159, i64 %loop.idx.971.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.load163 = load ptr, ptr %slot.i2p, align 8
  %eq.lhs.len166 = load i64, ptr %fld.load163, align 8
  %eq.lhs.len167 = and i64 %eq.lhs.len166, 281474976710655
  %str.tag168 = lshr i64 %eq.lhs.len166, 48
  %tag.immortal170 = icmp eq i64 %str.tag168, 0
  %active.gen171 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current172 = icmp eq i64 %str.tag168, %active.gen171
  %tag.fast.ok173 = or i1 %tag.immortal170, %tag.current172
  br i1 %tag.fast.ok173, label %str_ok169, label %tag.slow_check174

loop.exit.971:                                    ; preds = %loop.header.971, %str_ok237
  %"var.loc_json'.0" = phi ptr [ %concat.str288, %str_ok237 ], [ %copy.str, %loop.header.971 ]
  call void @"lsp::send_result"(ptr %0, ptr %"var.loc_json'.0")
  br label %choice.exit

str_ok169:                                        ; preds = %tag.slow_check174, %loop.body.971
  %eq.rhs.len176 = load i64, ptr %fld.load35, align 8
  %eq.rhs.len177 = and i64 %eq.rhs.len176, 281474976710655
  %str.tag178 = lshr i64 %eq.rhs.len176, 48
  %tag.immortal180 = icmp eq i64 %str.tag178, 0
  %active.gen181 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current182 = icmp eq i64 %str.tag178, %active.gen181
  %tag.fast.ok183 = or i1 %tag.immortal180, %tag.current182
  br i1 %tag.fast.ok183, label %str_ok179, label %tag.slow_check184

tag.slow_check174:                                ; preds = %loop.body.971
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag168)
  br label %str_ok169

str_ok179:                                        ; preds = %tag.slow_check184, %str_ok169
  %eq.len185 = icmp eq i64 %eq.lhs.len167, %eq.rhs.len177
  br i1 %eq.len185, label %str.eq.then186, label %choice.exit197

tag.slow_check184:                                ; preds = %str_ok169
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag178)
  br label %str_ok179

str.eq.then186:                                   ; preds = %str_ok179
  %eq.lhs.data189 = getelementptr inbounds { i64, ptr }, ptr %fld.load163, i32 0, i32 1
  %eq.lhs.data190 = load ptr, ptr %eq.lhs.data189, align 8
  %eq.rhs.data191 = getelementptr inbounds { i64, ptr }, ptr %fld.load35, i32 0, i32 1
  %eq.rhs.data192 = load ptr, ptr %eq.rhs.data191, align 8
  %eq.memcmp193 = call i32 @memcmp(ptr %eq.lhs.data190, ptr %eq.rhs.data192, i64 %eq.lhs.len167)
  %eq.cmp.zero194 = icmp eq i32 %eq.memcmp193, 0
  br i1 %eq.cmp.zero194, label %choice.then196, label %choice.exit197

choice.then196:                                   ; preds = %str.eq.then186
  %fld.gep199 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 3
  %fld.load200 = load i64, ptr %fld.gep199, align 8
  %fld.gep202 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 4
  %fld.load203 = load i64, ptr %fld.gep202, align 8
  %fld.gep205 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 5
  %fld.load206 = load i64, ptr %fld.gep205, align 8
  %fld.gep208 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 6
  %fld.load209 = load i64, ptr %fld.gep208, align 8
  %call.res210 = call { i64, ptr } @"lsp::lsp_range_json"(i64 %fld.load200, i64 %fld.load203, i64 %fld.load206, i64 %fld.load209)
  %arena.cur211 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc212 = call ptr @dva_arena_alloc(ptr %arena.cur211, i64 16)
  store { i64, ptr } %call.res210, ptr %ret.ub.alloc212, align 8
  %call.res216 = call { i64, ptr } @"json::escape_string"(ptr %fld.load)
  %arena.cur217 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc218 = call ptr @dva_arena_alloc(ptr %arena.cur217, i64 16)
  store { i64, ptr } %call.res216, ptr %ret.ub.alloc218, align 8
  %cat.seg220 = load i64, ptr %ret.ub.alloc218, align 8
  %cat.seg221 = and i64 %cat.seg220, 281474976710655
  %str.tag222 = lshr i64 %cat.seg220, 48
  %tag.immortal224 = icmp eq i64 %str.tag222, 0
  %active.gen225 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current226 = icmp eq i64 %str.tag222, %active.gen225
  %tag.fast.ok227 = or i1 %tag.immortal224, %tag.current226
  br i1 %tag.fast.ok227, label %str_ok223, label %tag.slow_check228

choice.exit197:                                   ; preds = %str_ok179, %str.eq.then186
  %loop.next = add i64 %loop.idx.971.0, 1
  br label %loop.header.971

str_ok223:                                        ; preds = %tag.slow_check228, %choice.then196
  %cat.seg229 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc218, i32 0, i32 1
  %cat.seg230 = load ptr, ptr %cat.seg229, align 8
  %cat.seg234 = load i64, ptr %ret.ub.alloc212, align 8
  %cat.seg235 = and i64 %cat.seg234, 281474976710655
  %str.tag236 = lshr i64 %cat.seg234, 48
  %tag.immortal238 = icmp eq i64 %str.tag236, 0
  %active.gen239 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current240 = icmp eq i64 %str.tag236, %active.gen239
  %tag.fast.ok241 = or i1 %tag.immortal238, %tag.current240
  br i1 %tag.fast.ok241, label %str_ok237, label %tag.slow_check242

tag.slow_check228:                                ; preds = %choice.then196
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag222)
  br label %str_ok223

str_ok237:                                        ; preds = %tag.slow_check242, %str_ok223
  %cat.seg243 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc212, i32 0, i32 1
  %cat.seg244 = load ptr, ptr %cat.seg243, align 8
  %cat.sum.len246 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 7, i64 %cat.seg221)
  %sum247 = extractvalue { i64, i1 } %cat.sum.len246, 0
  %cat.sum.len252 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum247, i64 9)
  %sum253 = extractvalue { i64, i1 } %cat.sum.len252, 0
  %cat.sum.len258 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum253, i64 %cat.seg235)
  %sum259 = extractvalue { i64, i1 } %cat.sum.len258, 0
  %cat.sum.len264 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum259, i64 1)
  %sum265 = extractvalue { i64, i1 } %cat.sum.len264, 0
  %concat.tot.len270 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum265, i64 1)
  %sum271 = extractvalue { i64, i1 } %concat.tot.len270, 0
  %arena.cur276 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf277 = call ptr @dva_arena_alloc(ptr %arena.cur276, i64 %sum271)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf277, ptr align 1 @str.255, i64 7, i1 false)
  %cat.dst279 = getelementptr i8, ptr %concat.buf277, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst279, ptr align 1 %cat.seg230, i64 %cat.seg221, i1 false)
  %cat.off280 = add nuw nsw i64 7, %cat.seg221
  %cat.dst281 = getelementptr i8, ptr %concat.buf277, i64 %cat.off280
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst281, ptr align 1 @str.256, i64 9, i1 false)
  %cat.off282 = add nuw nsw i64 %cat.off280, 9
  %cat.dst283 = getelementptr i8, ptr %concat.buf277, i64 %cat.off282
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst283, ptr align 1 %cat.seg244, i64 %cat.seg235, i1 false)
  %cat.off284 = add nuw nsw i64 %cat.off282, %cat.seg235
  %cat.dst285 = getelementptr i8, ptr %concat.buf277, i64 %cat.off284
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst285, ptr align 1 @str.44, i64 1, i1 false)
  %concat.nul286 = getelementptr i8, ptr %concat.buf277, i64 %sum265
  store i8 0, ptr %concat.nul286, align 1
  %arena.cur287 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str288 = call ptr @dva_arena_alloc(ptr %arena.cur287, i64 16)
  %str.tag.gen290 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift291 = shl i64 %str.tag.gen290, 48
  %str.tagged.len292 = or i64 %sum265, %str.tag.shift291
  store i64 %str.tagged.len292, ptr %concat.str288, align 8
  %str.build.data.gep293 = getelementptr inbounds { i64, ptr }, ptr %concat.str288, i32 0, i32 1
  store ptr %concat.buf277, ptr %str.build.data.gep293, align 8
  br label %loop.exit.971

tag.slow_check242:                                ; preds = %str_ok223
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag236)
  br label %str_ok237
}

define void @"lsp::handle_document_symbol"(ptr %0, ptr %1) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %ret.niche.salloc = alloca { i64, ptr }, align 8
  %call.res = call { i1, i64 } @"json::get"(ptr %1, ptr @str.245.struct)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 3, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ %enum.alloc, %choice.else ]
  %call.res3 = call { i64, ptr } @"json::get_str"(ptr %choice.res, ptr @str.247.struct)
  %ret.niche.data = extractvalue { i64, ptr } %call.res3, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  %call.res3.fca.0.extract = extractvalue { i64, ptr } %call.res3, 0
  store i64 %call.res3.fca.0.extract, ptr %ret.niche.salloc, align 8
  %call.res3.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.niche.salloc, i32 0, i32 1
  store ptr %ret.niche.data, ptr %call.res3.fca.1.gep, align 8
  %ret.niche.sel = select i1 %ret.niche.ok, ptr %ret.niche.salloc, ptr null
  %ret.niche.sel.str.0.struct = select i1 %ret.niche.ok, ptr %ret.niche.sel, ptr @str.0.struct
  %call.res11 = call ptr @"lsp::get_doc"(ptr %ret.niche.sel.str.0.struct)
  %niche.ne.null13 = icmp ne ptr %call.res11, null
  br i1 %niche.ne.null13, label %b.buf.len18, label %choice.else15

choice.else15:                                    ; preds = %choice.exit
  call void @"lsp::send_result"(ptr %0, ptr @str.35.struct)
  br label %choice.exit16

choice.exit16:                                    ; preds = %choice.else15, %b.grow_done604
  ret void

b.buf.len18:                                      ; preds = %choice.exit
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 513)
  store i8 0, ptr %b.buf, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.buf, ptr align 1 @str.257, i64 1, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.buf, i64 1
  store i8 0, ptr %b.app.nul, align 1
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %call.res11, i32 0, i32 3
  %fld.load = load ptr, ptr %fld.gep, align 8
  %arr.cycle.len39 = load i64, ptr %fld.load, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 1
  %arr.cycle.data40 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.972

loop.header.972:                                  ; preds = %choice.exit47, %b.buf.len18
  %builder.new.salloc.sroa.0.0 = phi i64 [ 1, %b.buf.len18 ], [ %builder.new.salloc.sroa.0.1, %choice.exit47 ]
  %builder.new.salloc.sroa.45.1 = phi ptr [ %b.buf, %b.buf.len18 ], [ %builder.new.salloc.sroa.45.2, %choice.exit47 ]
  %builder.new.salloc.sroa.90.1 = phi i64 [ 512, %b.buf.len18 ], [ %builder.new.salloc.sroa.90.2, %choice.exit47 ]
  %"var.emitted'.0" = phi i64 [ 0, %b.buf.len18 ], [ %"var.emitted'.1", %choice.exit47 ]
  %loop.idx.972.0 = phi i64 [ 0, %b.buf.len18 ], [ %loop.next, %choice.exit47 ]
  %loop.cond = icmp slt i64 %loop.idx.972.0, %arr.cycle.len39
  br i1 %loop.cond, label %loop.body.972, label %loop.exit.972

loop.body.972:                                    ; preds = %loop.header.972
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data40, i64 %loop.idx.972.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.gep44 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 8
  %fld.load45 = load i1, ptr %fld.gep44, align 1
  %nottmp = xor i1 %fld.load45, true
  br i1 %nottmp, label %choice.then46, label %choice.exit47

loop.exit.972:                                    ; preds = %loop.header.972
  %b.app.new.len593 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 1)
  %sum594 = extractvalue { i64, i1 } %b.app.new.len593, 0
  %ovf595 = extractvalue { i64, i1 } %b.app.new.len593, 1
  br i1 %ovf595, label %str_overflow_abort597, label %b.app.new.len596

choice.then46:                                    ; preds = %loop.body.972
  %cmptmp = icmp sgt i64 %"var.emitted'.0", 0
  br i1 %cmptmp, label %choice.then49, label %choice.exit50

choice.exit47:                                    ; preds = %b.grow_done560, %loop.body.972
  %builder.new.salloc.sroa.0.1 = phi i64 [ %sum550, %b.grow_done560 ], [ %builder.new.salloc.sroa.0.0, %loop.body.972 ]
  %builder.new.salloc.sroa.45.2 = phi ptr [ %builder.new.salloc.sroa.45.15, %b.grow_done560 ], [ %builder.new.salloc.sroa.45.1, %loop.body.972 ]
  %builder.new.salloc.sroa.90.2 = phi i64 [ %builder.new.salloc.sroa.90.15, %b.grow_done560 ], [ %builder.new.salloc.sroa.90.1, %loop.body.972 ]
  %"var.emitted'.1" = phi i64 [ %addtmp, %b.grow_done560 ], [ %"var.emitted'.0", %loop.body.972 ]
  %loop.next = add i64 %loop.idx.972.0, 1
  br label %loop.header.972

choice.then49:                                    ; preds = %choice.then46
  %b.app.new.len57 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 1)
  %sum58 = extractvalue { i64, i1 } %b.app.new.len57, 0
  %ovf59 = extractvalue { i64, i1 } %b.app.new.len57, 1
  br i1 %ovf59, label %str_overflow_abort61, label %b.app.new.len60

choice.exit50:                                    ; preds = %b.grow_done68, %choice.then46
  %builder.new.salloc.sroa.0.2 = phi i64 [ %sum58, %b.grow_done68 ], [ %builder.new.salloc.sroa.0.0, %choice.then46 ]
  %builder.new.salloc.sroa.45.3 = phi ptr [ %builder.new.salloc.sroa.45.4, %b.grow_done68 ], [ %builder.new.salloc.sroa.45.1, %choice.then46 ]
  %builder.new.salloc.sroa.90.3 = phi i64 [ %builder.new.salloc.sroa.90.4, %b.grow_done68 ], [ %builder.new.salloc.sroa.90.1, %choice.then46 ]
  %fld.gep95 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 3
  %fld.load96 = load i64, ptr %fld.gep95, align 8
  %fld.gep98 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 4
  %fld.load99 = load i64, ptr %fld.gep98, align 8
  %fld.gep101 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 5
  %fld.load102 = load i64, ptr %fld.gep101, align 8
  %fld.gep104 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 6
  %fld.load105 = load i64, ptr %fld.gep104, align 8
  %call.res106 = call { i64, ptr } @"lsp::lsp_range_json"(i64 %fld.load96, i64 %fld.load99, i64 %fld.load102, i64 %fld.load105)
  %call.res106.fca.0.extract = extractvalue { i64, ptr } %call.res106, 0
  %call.res106.fca.1.extract = extractvalue { i64, ptr } %call.res106, 1
  %b.app.new.len113 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.2, i64 8)
  %sum114 = extractvalue { i64, i1 } %b.app.new.len113, 0
  %ovf115 = extractvalue { i64, i1 } %b.app.new.len113, 1
  br i1 %ovf115, label %str_overflow_abort117, label %b.app.new.len116

b.app.new.len60:                                  ; preds = %choice.then49
  %b.need.grow65 = icmp slt i64 %builder.new.salloc.sroa.90.1, %sum58
  br i1 %b.need.grow65, label %b.grow266, label %b.grow_done68

str_overflow_abort61:                             ; preds = %choice.then49
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow266:                                        ; preds = %b.app.new.len60
  %b.cap269 = mul i64 %builder.new.salloc.sroa.90.1, 2
  %b.cap.small70 = icmp slt i64 %b.cap269, 16
  %b.cap.grow71 = select i1 %b.cap.small70, i64 16, i64 %b.cap269
  %b.cap.need72 = icmp slt i64 %b.cap.grow71, %sum58
  %b.new.cap73 = select i1 %b.cap.need72, i64 %sum58, i64 %b.cap.grow71
  %b.new.buf.len278 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap73, i64 1)
  %sum79 = extractvalue { i64, i1 } %b.new.buf.len278, 0
  %ovf80 = extractvalue { i64, i1 } %b.new.buf.len278, 1
  br i1 %ovf80, label %str_overflow_abort82, label %b.new.buf.len281

b.grow_done68:                                    ; preds = %b.app.new.len60, %b.new.buf.len281
  %builder.new.salloc.sroa.45.4 = phi ptr [ %b.new.buf285, %b.new.buf.len281 ], [ %builder.new.salloc.sroa.45.1, %b.app.new.len60 ]
  %builder.new.salloc.sroa.90.4 = phi i64 [ %b.new.cap73, %b.new.buf.len281 ], [ %builder.new.salloc.sroa.90.1, %b.app.new.len60 ]
  %b.app.dst91 = getelementptr i8, ptr %builder.new.salloc.sroa.45.4, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst91, ptr align 1 @str.68, i64 1, i1 false)
  %b.app.nul92 = getelementptr i8, ptr %builder.new.salloc.sroa.45.4, i64 %sum58
  store i8 0, ptr %b.app.nul92, align 1
  br label %choice.exit50

b.new.buf.len281:                                 ; preds = %b.grow266
  %arena.cur84 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf285 = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 %sum79)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf285, ptr align 1 %builder.new.salloc.sroa.45.1, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul86 = getelementptr i8, ptr %b.new.buf285, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul86, align 1
  br label %b.grow_done68

str_overflow_abort82:                             ; preds = %b.grow266
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len116:                                 ; preds = %choice.exit50
  %b.need.grow121 = icmp slt i64 %builder.new.salloc.sroa.90.3, %sum114
  br i1 %b.need.grow121, label %b.grow2122, label %b.grow_done124

str_overflow_abort117:                            ; preds = %choice.exit50
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2122:                                       ; preds = %b.app.new.len116
  %b.cap2125 = mul i64 %builder.new.salloc.sroa.90.3, 2
  %b.cap.small126 = icmp slt i64 %b.cap2125, 16
  %b.cap.grow127 = select i1 %b.cap.small126, i64 16, i64 %b.cap2125
  %b.cap.need128 = icmp slt i64 %b.cap.grow127, %sum114
  %b.new.cap129 = select i1 %b.cap.need128, i64 %sum114, i64 %b.cap.grow127
  %b.new.buf.len2134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap129, i64 1)
  %sum135 = extractvalue { i64, i1 } %b.new.buf.len2134, 0
  %ovf136 = extractvalue { i64, i1 } %b.new.buf.len2134, 1
  br i1 %ovf136, label %str_overflow_abort138, label %b.new.buf.len2137

b.grow_done124:                                   ; preds = %b.app.new.len116, %b.new.buf.len2137
  %builder.new.salloc.sroa.45.5 = phi ptr [ %b.new.buf2141, %b.new.buf.len2137 ], [ %builder.new.salloc.sroa.45.3, %b.app.new.len116 ]
  %builder.new.salloc.sroa.90.5 = phi i64 [ %b.new.cap129, %b.new.buf.len2137 ], [ %builder.new.salloc.sroa.90.3, %b.app.new.len116 ]
  %b.app.dst147 = getelementptr i8, ptr %builder.new.salloc.sroa.45.5, i64 %builder.new.salloc.sroa.0.2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst147, ptr align 1 @str.258, i64 8, i1 false)
  %b.app.nul148 = getelementptr i8, ptr %builder.new.salloc.sroa.45.5, i64 %sum114
  store i8 0, ptr %b.app.nul148, align 1
  %fld.load152 = load ptr, ptr %slot.i2p, align 8
  %call.res153 = call { i64, ptr } @"json::escape_string"(ptr %fld.load152)
  %arena.cur154 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur154, i64 16)
  store { i64, ptr } %call.res153, ptr %ret.ub.alloc, align 8
  %app.str.len156 = load i64, ptr %ret.ub.alloc, align 8
  %app.str.len157 = and i64 %app.str.len156, 281474976710655
  %app.str.data158 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data159 = load ptr, ptr %app.str.data158, align 8
  %b.app.new.len162 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum114, i64 %app.str.len157)
  %sum163 = extractvalue { i64, i1 } %b.app.new.len162, 0
  %ovf164 = extractvalue { i64, i1 } %b.app.new.len162, 1
  br i1 %ovf164, label %str_overflow_abort166, label %b.app.new.len165

b.new.buf.len2137:                                ; preds = %b.grow2122
  %arena.cur140 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 %sum135)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2141, ptr align 1 %builder.new.salloc.sroa.45.3, i64 %builder.new.salloc.sroa.0.2, i1 false)
  %b.grow2.nul142 = getelementptr i8, ptr %b.new.buf2141, i64 %builder.new.salloc.sroa.0.2
  store i8 0, ptr %b.grow2.nul142, align 1
  br label %b.grow_done124

str_overflow_abort138:                            ; preds = %b.grow2122
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len165:                                 ; preds = %b.grow_done124
  %b.need.grow170 = icmp slt i64 %builder.new.salloc.sroa.90.5, %sum163
  br i1 %b.need.grow170, label %b.grow2171, label %b.grow_done173

str_overflow_abort166:                            ; preds = %b.grow_done124
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2171:                                       ; preds = %b.app.new.len165
  %b.cap2174 = mul i64 %builder.new.salloc.sroa.90.5, 2
  %b.cap.small175 = icmp slt i64 %b.cap2174, 16
  %b.cap.grow176 = select i1 %b.cap.small175, i64 16, i64 %b.cap2174
  %b.cap.need177 = icmp slt i64 %b.cap.grow176, %sum163
  %b.new.cap178 = select i1 %b.cap.need177, i64 %sum163, i64 %b.cap.grow176
  %b.new.buf.len2183 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap178, i64 1)
  %sum184 = extractvalue { i64, i1 } %b.new.buf.len2183, 0
  %ovf185 = extractvalue { i64, i1 } %b.new.buf.len2183, 1
  br i1 %ovf185, label %str_overflow_abort187, label %b.new.buf.len2186

b.grow_done173:                                   ; preds = %b.app.new.len165, %b.new.buf.len2186
  %builder.new.salloc.sroa.45.6 = phi ptr [ %b.new.buf2190, %b.new.buf.len2186 ], [ %builder.new.salloc.sroa.45.5, %b.app.new.len165 ]
  %builder.new.salloc.sroa.90.6 = phi i64 [ %b.new.cap178, %b.new.buf.len2186 ], [ %builder.new.salloc.sroa.90.5, %b.app.new.len165 ]
  %b.app.dst196 = getelementptr i8, ptr %builder.new.salloc.sroa.45.6, i64 %sum114
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst196, ptr align 1 %app.str.data159, i64 %app.str.len157, i1 false)
  %b.app.nul197 = getelementptr i8, ptr %builder.new.salloc.sroa.45.6, i64 %sum163
  store i8 0, ptr %b.app.nul197, align 1
  %b.app.new.len204 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum163, i64 10)
  %sum205 = extractvalue { i64, i1 } %b.app.new.len204, 0
  %ovf206 = extractvalue { i64, i1 } %b.app.new.len204, 1
  br i1 %ovf206, label %str_overflow_abort208, label %b.app.new.len207

b.new.buf.len2186:                                ; preds = %b.grow2171
  %arena.cur189 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2190 = call ptr @dva_arena_alloc(ptr %arena.cur189, i64 %sum184)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2190, ptr align 1 %builder.new.salloc.sroa.45.5, i64 %sum114, i1 false)
  %b.grow2.nul191 = getelementptr i8, ptr %b.new.buf2190, i64 %sum114
  store i8 0, ptr %b.grow2.nul191, align 1
  br label %b.grow_done173

str_overflow_abort187:                            ; preds = %b.grow2171
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len207:                                 ; preds = %b.grow_done173
  %b.need.grow212 = icmp slt i64 %builder.new.salloc.sroa.90.6, %sum205
  br i1 %b.need.grow212, label %b.grow2213, label %b.grow_done215

str_overflow_abort208:                            ; preds = %b.grow_done173
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2213:                                       ; preds = %b.app.new.len207
  %b.cap2216 = mul i64 %builder.new.salloc.sroa.90.6, 2
  %b.cap.small217 = icmp slt i64 %b.cap2216, 16
  %b.cap.grow218 = select i1 %b.cap.small217, i64 16, i64 %b.cap2216
  %b.cap.need219 = icmp slt i64 %b.cap.grow218, %sum205
  %b.new.cap220 = select i1 %b.cap.need219, i64 %sum205, i64 %b.cap.grow218
  %b.new.buf.len2225 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap220, i64 1)
  %sum226 = extractvalue { i64, i1 } %b.new.buf.len2225, 0
  %ovf227 = extractvalue { i64, i1 } %b.new.buf.len2225, 1
  br i1 %ovf227, label %str_overflow_abort229, label %b.new.buf.len2228

b.grow_done215:                                   ; preds = %b.app.new.len207, %b.new.buf.len2228
  %builder.new.salloc.sroa.45.7 = phi ptr [ %b.new.buf2232, %b.new.buf.len2228 ], [ %builder.new.salloc.sroa.45.6, %b.app.new.len207 ]
  %builder.new.salloc.sroa.90.7 = phi i64 [ %b.new.cap220, %b.new.buf.len2228 ], [ %builder.new.salloc.sroa.90.6, %b.app.new.len207 ]
  %b.app.dst238 = getelementptr i8, ptr %builder.new.salloc.sroa.45.7, i64 %sum163
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst238, ptr align 1 @str.259, i64 10, i1 false)
  %b.app.nul239 = getelementptr i8, ptr %builder.new.salloc.sroa.45.7, i64 %sum205
  store i8 0, ptr %b.app.nul239, align 1
  %fld.gep242 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 1
  %fld.load243 = load ptr, ptr %fld.gep242, align 8
  %call.res244 = call { i64, ptr } @"json::escape_string"(ptr %fld.load243)
  %arena.cur245 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc246 = call ptr @dva_arena_alloc(ptr %arena.cur245, i64 16)
  store { i64, ptr } %call.res244, ptr %ret.ub.alloc246, align 8
  %app.str.len248 = load i64, ptr %ret.ub.alloc246, align 8
  %app.str.len249 = and i64 %app.str.len248, 281474976710655
  %app.str.data250 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc246, i32 0, i32 1
  %app.str.data251 = load ptr, ptr %app.str.data250, align 8
  %b.app.new.len254 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum205, i64 %app.str.len249)
  %sum255 = extractvalue { i64, i1 } %b.app.new.len254, 0
  %ovf256 = extractvalue { i64, i1 } %b.app.new.len254, 1
  br i1 %ovf256, label %str_overflow_abort258, label %b.app.new.len257

b.new.buf.len2228:                                ; preds = %b.grow2213
  %arena.cur231 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2232 = call ptr @dva_arena_alloc(ptr %arena.cur231, i64 %sum226)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2232, ptr align 1 %builder.new.salloc.sroa.45.6, i64 %sum163, i1 false)
  %b.grow2.nul233 = getelementptr i8, ptr %b.new.buf2232, i64 %sum163
  store i8 0, ptr %b.grow2.nul233, align 1
  br label %b.grow_done215

str_overflow_abort229:                            ; preds = %b.grow2213
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len257:                                 ; preds = %b.grow_done215
  %b.need.grow262 = icmp slt i64 %builder.new.salloc.sroa.90.7, %sum255
  br i1 %b.need.grow262, label %b.grow2263, label %b.grow_done265

str_overflow_abort258:                            ; preds = %b.grow_done215
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2263:                                       ; preds = %b.app.new.len257
  %b.cap2266 = mul i64 %builder.new.salloc.sroa.90.7, 2
  %b.cap.small267 = icmp slt i64 %b.cap2266, 16
  %b.cap.grow268 = select i1 %b.cap.small267, i64 16, i64 %b.cap2266
  %b.cap.need269 = icmp slt i64 %b.cap.grow268, %sum255
  %b.new.cap270 = select i1 %b.cap.need269, i64 %sum255, i64 %b.cap.grow268
  %b.new.buf.len2275 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap270, i64 1)
  %sum276 = extractvalue { i64, i1 } %b.new.buf.len2275, 0
  %ovf277 = extractvalue { i64, i1 } %b.new.buf.len2275, 1
  br i1 %ovf277, label %str_overflow_abort279, label %b.new.buf.len2278

b.grow_done265:                                   ; preds = %b.app.new.len257, %b.new.buf.len2278
  %builder.new.salloc.sroa.45.8 = phi ptr [ %b.new.buf2282, %b.new.buf.len2278 ], [ %builder.new.salloc.sroa.45.7, %b.app.new.len257 ]
  %builder.new.salloc.sroa.90.8 = phi i64 [ %b.new.cap270, %b.new.buf.len2278 ], [ %builder.new.salloc.sroa.90.7, %b.app.new.len257 ]
  %b.app.dst288 = getelementptr i8, ptr %builder.new.salloc.sroa.45.8, i64 %sum205
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst288, ptr align 1 %app.str.data251, i64 %app.str.len249, i1 false)
  %b.app.nul289 = getelementptr i8, ptr %builder.new.salloc.sroa.45.8, i64 %sum255
  store i8 0, ptr %b.app.nul289, align 1
  %b.app.new.len296 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum255, i64 8)
  %sum297 = extractvalue { i64, i1 } %b.app.new.len296, 0
  %ovf298 = extractvalue { i64, i1 } %b.app.new.len296, 1
  br i1 %ovf298, label %str_overflow_abort300, label %b.app.new.len299

b.new.buf.len2278:                                ; preds = %b.grow2263
  %arena.cur281 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2282 = call ptr @dva_arena_alloc(ptr %arena.cur281, i64 %sum276)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2282, ptr align 1 %builder.new.salloc.sroa.45.7, i64 %sum205, i1 false)
  %b.grow2.nul283 = getelementptr i8, ptr %b.new.buf2282, i64 %sum205
  store i8 0, ptr %b.grow2.nul283, align 1
  br label %b.grow_done265

str_overflow_abort279:                            ; preds = %b.grow2263
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len299:                                 ; preds = %b.grow_done265
  %b.need.grow304 = icmp slt i64 %builder.new.salloc.sroa.90.8, %sum297
  br i1 %b.need.grow304, label %b.grow2305, label %b.grow_done307

str_overflow_abort300:                            ; preds = %b.grow_done265
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2305:                                       ; preds = %b.app.new.len299
  %b.cap2308 = mul i64 %builder.new.salloc.sroa.90.8, 2
  %b.cap.small309 = icmp slt i64 %b.cap2308, 16
  %b.cap.grow310 = select i1 %b.cap.small309, i64 16, i64 %b.cap2308
  %b.cap.need311 = icmp slt i64 %b.cap.grow310, %sum297
  %b.new.cap312 = select i1 %b.cap.need311, i64 %sum297, i64 %b.cap.grow310
  %b.new.buf.len2317 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap312, i64 1)
  %sum318 = extractvalue { i64, i1 } %b.new.buf.len2317, 0
  %ovf319 = extractvalue { i64, i1 } %b.new.buf.len2317, 1
  br i1 %ovf319, label %str_overflow_abort321, label %b.new.buf.len2320

b.grow_done307:                                   ; preds = %b.app.new.len299, %b.new.buf.len2320
  %builder.new.salloc.sroa.45.9 = phi ptr [ %b.new.buf2324, %b.new.buf.len2320 ], [ %builder.new.salloc.sroa.45.8, %b.app.new.len299 ]
  %builder.new.salloc.sroa.90.9 = phi i64 [ %b.new.cap312, %b.new.buf.len2320 ], [ %builder.new.salloc.sroa.90.8, %b.app.new.len299 ]
  %b.app.dst330 = getelementptr i8, ptr %builder.new.salloc.sroa.45.9, i64 %sum255
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst330, ptr align 1 @str.260, i64 8, i1 false)
  %b.app.nul331 = getelementptr i8, ptr %builder.new.salloc.sroa.45.9, i64 %sum297
  store i8 0, ptr %b.app.nul331, align 1
  %fld.gep334 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 2
  %fld.load335 = load i64, ptr %fld.gep334, align 8
  %b.int.cap = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum297, i64 24)
  %sum337 = extractvalue { i64, i1 } %b.int.cap, 0
  %ovf338 = extractvalue { i64, i1 } %b.int.cap, 1
  br i1 %ovf338, label %str_overflow_abort340, label %b.int.cap339

b.new.buf.len2320:                                ; preds = %b.grow2305
  %arena.cur323 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2324 = call ptr @dva_arena_alloc(ptr %arena.cur323, i64 %sum318)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2324, ptr align 1 %builder.new.salloc.sroa.45.8, i64 %sum255, i1 false)
  %b.grow2.nul325 = getelementptr i8, ptr %b.new.buf2324, i64 %sum255
  store i8 0, ptr %b.grow2.nul325, align 1
  br label %b.grow_done307

str_overflow_abort321:                            ; preds = %b.grow2305
  call void @dva_abort_str_overflow_msg()
  unreachable

b.int.cap339:                                     ; preds = %b.grow_done307
  %b.need.grow344 = icmp slt i64 %builder.new.salloc.sroa.90.9, %sum337
  br i1 %b.need.grow344, label %b.grow2345, label %b.grow_done347

str_overflow_abort340:                            ; preds = %b.grow_done307
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2345:                                       ; preds = %b.int.cap339
  %b.cap2348 = mul i64 %builder.new.salloc.sroa.90.9, 2
  %b.cap.small349 = icmp slt i64 %b.cap2348, 16
  %b.cap.grow350 = select i1 %b.cap.small349, i64 16, i64 %b.cap2348
  %b.cap.need351 = icmp slt i64 %b.cap.grow350, %sum337
  %b.new.cap352 = select i1 %b.cap.need351, i64 %sum337, i64 %b.cap.grow350
  %b.new.buf.len2357 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap352, i64 1)
  %sum358 = extractvalue { i64, i1 } %b.new.buf.len2357, 0
  %ovf359 = extractvalue { i64, i1 } %b.new.buf.len2357, 1
  br i1 %ovf359, label %str_overflow_abort361, label %b.new.buf.len2360

b.grow_done347:                                   ; preds = %b.int.cap339, %b.new.buf.len2360
  %builder.new.salloc.sroa.45.10 = phi ptr [ %b.new.buf2364, %b.new.buf.len2360 ], [ %builder.new.salloc.sroa.45.9, %b.int.cap339 ]
  %builder.new.salloc.sroa.90.10 = phi i64 [ %b.new.cap352, %b.new.buf.len2360 ], [ %builder.new.salloc.sroa.90.9, %b.int.cap339 ]
  %b.int.dst = getelementptr i8, ptr %builder.new.salloc.sroa.45.10, i64 %sum297
  %b.int.len = call i64 @dva_fmt_i64_buf(ptr %b.int.dst, i64 %fld.load335, i1 false)
  %b.int.new.len = add i64 %sum297, %b.int.len
  %b.app.new.len375 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.int.new.len, i64 9)
  %sum376 = extractvalue { i64, i1 } %b.app.new.len375, 0
  %ovf377 = extractvalue { i64, i1 } %b.app.new.len375, 1
  br i1 %ovf377, label %str_overflow_abort379, label %b.app.new.len378

b.new.buf.len2360:                                ; preds = %b.grow2345
  %arena.cur363 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2364 = call ptr @dva_arena_alloc(ptr %arena.cur363, i64 %sum358)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2364, ptr align 1 %builder.new.salloc.sroa.45.9, i64 %sum297, i1 false)
  %b.grow2.nul365 = getelementptr i8, ptr %b.new.buf2364, i64 %sum297
  store i8 0, ptr %b.grow2.nul365, align 1
  br label %b.grow_done347

str_overflow_abort361:                            ; preds = %b.grow2345
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len378:                                 ; preds = %b.grow_done347
  %b.need.grow383 = icmp slt i64 %builder.new.salloc.sroa.90.10, %sum376
  br i1 %b.need.grow383, label %b.grow2384, label %b.grow_done386

str_overflow_abort379:                            ; preds = %b.grow_done347
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2384:                                       ; preds = %b.app.new.len378
  %b.cap2387 = mul i64 %builder.new.salloc.sroa.90.10, 2
  %b.cap.small388 = icmp slt i64 %b.cap2387, 16
  %b.cap.grow389 = select i1 %b.cap.small388, i64 16, i64 %b.cap2387
  %b.cap.need390 = icmp slt i64 %b.cap.grow389, %sum376
  %b.new.cap391 = select i1 %b.cap.need390, i64 %sum376, i64 %b.cap.grow389
  %b.new.buf.len2396 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap391, i64 1)
  %sum397 = extractvalue { i64, i1 } %b.new.buf.len2396, 0
  %ovf398 = extractvalue { i64, i1 } %b.new.buf.len2396, 1
  br i1 %ovf398, label %str_overflow_abort400, label %b.new.buf.len2399

b.grow_done386:                                   ; preds = %b.app.new.len378, %b.new.buf.len2399
  %builder.new.salloc.sroa.45.11 = phi ptr [ %b.new.buf2403, %b.new.buf.len2399 ], [ %builder.new.salloc.sroa.45.10, %b.app.new.len378 ]
  %builder.new.salloc.sroa.90.11 = phi i64 [ %b.new.cap391, %b.new.buf.len2399 ], [ %builder.new.salloc.sroa.90.10, %b.app.new.len378 ]
  %b.app.dst409 = getelementptr i8, ptr %builder.new.salloc.sroa.45.11, i64 %b.int.new.len
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst409, ptr align 1 @str.256, i64 9, i1 false)
  %b.app.nul410 = getelementptr i8, ptr %builder.new.salloc.sroa.45.11, i64 %sum376
  store i8 0, ptr %b.app.nul410, align 1
  %app.str.len415 = and i64 %call.res106.fca.0.extract, 281474976710655
  %b.app.new.len420 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum376, i64 %app.str.len415)
  %sum421 = extractvalue { i64, i1 } %b.app.new.len420, 0
  %ovf422 = extractvalue { i64, i1 } %b.app.new.len420, 1
  br i1 %ovf422, label %str_overflow_abort424, label %b.app.new.len423

b.new.buf.len2399:                                ; preds = %b.grow2384
  %arena.cur402 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2403 = call ptr @dva_arena_alloc(ptr %arena.cur402, i64 %sum397)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2403, ptr align 1 %builder.new.salloc.sroa.45.10, i64 %b.int.new.len, i1 false)
  %b.grow2.nul404 = getelementptr i8, ptr %b.new.buf2403, i64 %b.int.new.len
  store i8 0, ptr %b.grow2.nul404, align 1
  br label %b.grow_done386

str_overflow_abort400:                            ; preds = %b.grow2384
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len423:                                 ; preds = %b.grow_done386
  %b.need.grow428 = icmp slt i64 %builder.new.salloc.sroa.90.11, %sum421
  br i1 %b.need.grow428, label %b.grow2429, label %b.grow_done431

str_overflow_abort424:                            ; preds = %b.grow_done386
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2429:                                       ; preds = %b.app.new.len423
  %b.cap2432 = mul i64 %builder.new.salloc.sroa.90.11, 2
  %b.cap.small433 = icmp slt i64 %b.cap2432, 16
  %b.cap.grow434 = select i1 %b.cap.small433, i64 16, i64 %b.cap2432
  %b.cap.need435 = icmp slt i64 %b.cap.grow434, %sum421
  %b.new.cap436 = select i1 %b.cap.need435, i64 %sum421, i64 %b.cap.grow434
  %b.new.buf.len2441 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap436, i64 1)
  %sum442 = extractvalue { i64, i1 } %b.new.buf.len2441, 0
  %ovf443 = extractvalue { i64, i1 } %b.new.buf.len2441, 1
  br i1 %ovf443, label %str_overflow_abort445, label %b.new.buf.len2444

b.grow_done431:                                   ; preds = %b.app.new.len423, %b.new.buf.len2444
  %builder.new.salloc.sroa.45.12 = phi ptr [ %b.new.buf2448, %b.new.buf.len2444 ], [ %builder.new.salloc.sroa.45.11, %b.app.new.len423 ]
  %builder.new.salloc.sroa.90.12 = phi i64 [ %b.new.cap436, %b.new.buf.len2444 ], [ %builder.new.salloc.sroa.90.11, %b.app.new.len423 ]
  %b.app.dst454 = getelementptr i8, ptr %builder.new.salloc.sroa.45.12, i64 %sum376
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst454, ptr align 1 %call.res106.fca.1.extract, i64 %app.str.len415, i1 false)
  %b.app.nul455 = getelementptr i8, ptr %builder.new.salloc.sroa.45.12, i64 %sum421
  store i8 0, ptr %b.app.nul455, align 1
  %b.app.new.len462 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum421, i64 18)
  %sum463 = extractvalue { i64, i1 } %b.app.new.len462, 0
  %ovf464 = extractvalue { i64, i1 } %b.app.new.len462, 1
  br i1 %ovf464, label %str_overflow_abort466, label %b.app.new.len465

b.new.buf.len2444:                                ; preds = %b.grow2429
  %arena.cur447 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2448 = call ptr @dva_arena_alloc(ptr %arena.cur447, i64 %sum442)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2448, ptr align 1 %builder.new.salloc.sroa.45.11, i64 %sum376, i1 false)
  %b.grow2.nul449 = getelementptr i8, ptr %b.new.buf2448, i64 %sum376
  store i8 0, ptr %b.grow2.nul449, align 1
  br label %b.grow_done431

str_overflow_abort445:                            ; preds = %b.grow2429
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len465:                                 ; preds = %b.grow_done431
  %b.need.grow470 = icmp slt i64 %builder.new.salloc.sroa.90.12, %sum463
  br i1 %b.need.grow470, label %b.grow2471, label %b.grow_done473

str_overflow_abort466:                            ; preds = %b.grow_done431
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2471:                                       ; preds = %b.app.new.len465
  %b.cap2474 = mul i64 %builder.new.salloc.sroa.90.12, 2
  %b.cap.small475 = icmp slt i64 %b.cap2474, 16
  %b.cap.grow476 = select i1 %b.cap.small475, i64 16, i64 %b.cap2474
  %b.cap.need477 = icmp slt i64 %b.cap.grow476, %sum463
  %b.new.cap478 = select i1 %b.cap.need477, i64 %sum463, i64 %b.cap.grow476
  %b.new.buf.len2483 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap478, i64 1)
  %sum484 = extractvalue { i64, i1 } %b.new.buf.len2483, 0
  %ovf485 = extractvalue { i64, i1 } %b.new.buf.len2483, 1
  br i1 %ovf485, label %str_overflow_abort487, label %b.new.buf.len2486

b.grow_done473:                                   ; preds = %b.app.new.len465, %b.new.buf.len2486
  %builder.new.salloc.sroa.45.13 = phi ptr [ %b.new.buf2490, %b.new.buf.len2486 ], [ %builder.new.salloc.sroa.45.12, %b.app.new.len465 ]
  %builder.new.salloc.sroa.90.13 = phi i64 [ %b.new.cap478, %b.new.buf.len2486 ], [ %builder.new.salloc.sroa.90.12, %b.app.new.len465 ]
  %b.app.dst496 = getelementptr i8, ptr %builder.new.salloc.sroa.45.13, i64 %sum421
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst496, ptr align 1 @str.261, i64 18, i1 false)
  %b.app.nul497 = getelementptr i8, ptr %builder.new.salloc.sroa.45.13, i64 %sum463
  store i8 0, ptr %b.app.nul497, align 1
  %b.app.new.len507 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum463, i64 %app.str.len415)
  %sum508 = extractvalue { i64, i1 } %b.app.new.len507, 0
  %ovf509 = extractvalue { i64, i1 } %b.app.new.len507, 1
  br i1 %ovf509, label %str_overflow_abort511, label %b.app.new.len510

b.new.buf.len2486:                                ; preds = %b.grow2471
  %arena.cur489 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2490 = call ptr @dva_arena_alloc(ptr %arena.cur489, i64 %sum484)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2490, ptr align 1 %builder.new.salloc.sroa.45.12, i64 %sum421, i1 false)
  %b.grow2.nul491 = getelementptr i8, ptr %b.new.buf2490, i64 %sum421
  store i8 0, ptr %b.grow2.nul491, align 1
  br label %b.grow_done473

str_overflow_abort487:                            ; preds = %b.grow2471
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len510:                                 ; preds = %b.grow_done473
  %b.need.grow515 = icmp slt i64 %builder.new.salloc.sroa.90.13, %sum508
  br i1 %b.need.grow515, label %b.grow2516, label %b.grow_done518

str_overflow_abort511:                            ; preds = %b.grow_done473
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2516:                                       ; preds = %b.app.new.len510
  %b.cap2519 = mul i64 %builder.new.salloc.sroa.90.13, 2
  %b.cap.small520 = icmp slt i64 %b.cap2519, 16
  %b.cap.grow521 = select i1 %b.cap.small520, i64 16, i64 %b.cap2519
  %b.cap.need522 = icmp slt i64 %b.cap.grow521, %sum508
  %b.new.cap523 = select i1 %b.cap.need522, i64 %sum508, i64 %b.cap.grow521
  %b.new.buf.len2528 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap523, i64 1)
  %sum529 = extractvalue { i64, i1 } %b.new.buf.len2528, 0
  %ovf530 = extractvalue { i64, i1 } %b.new.buf.len2528, 1
  br i1 %ovf530, label %str_overflow_abort532, label %b.new.buf.len2531

b.grow_done518:                                   ; preds = %b.app.new.len510, %b.new.buf.len2531
  %builder.new.salloc.sroa.45.14 = phi ptr [ %b.new.buf2535, %b.new.buf.len2531 ], [ %builder.new.salloc.sroa.45.13, %b.app.new.len510 ]
  %builder.new.salloc.sroa.90.14 = phi i64 [ %b.new.cap523, %b.new.buf.len2531 ], [ %builder.new.salloc.sroa.90.13, %b.app.new.len510 ]
  %b.app.dst541 = getelementptr i8, ptr %builder.new.salloc.sroa.45.14, i64 %sum463
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst541, ptr align 1 %call.res106.fca.1.extract, i64 %app.str.len415, i1 false)
  %b.app.nul542 = getelementptr i8, ptr %builder.new.salloc.sroa.45.14, i64 %sum508
  store i8 0, ptr %b.app.nul542, align 1
  %b.app.new.len549 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum508, i64 1)
  %sum550 = extractvalue { i64, i1 } %b.app.new.len549, 0
  %ovf551 = extractvalue { i64, i1 } %b.app.new.len549, 1
  br i1 %ovf551, label %str_overflow_abort553, label %b.app.new.len552

b.new.buf.len2531:                                ; preds = %b.grow2516
  %arena.cur534 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2535 = call ptr @dva_arena_alloc(ptr %arena.cur534, i64 %sum529)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2535, ptr align 1 %builder.new.salloc.sroa.45.13, i64 %sum463, i1 false)
  %b.grow2.nul536 = getelementptr i8, ptr %b.new.buf2535, i64 %sum463
  store i8 0, ptr %b.grow2.nul536, align 1
  br label %b.grow_done518

str_overflow_abort532:                            ; preds = %b.grow2516
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len552:                                 ; preds = %b.grow_done518
  %b.need.grow557 = icmp slt i64 %builder.new.salloc.sroa.90.14, %sum550
  br i1 %b.need.grow557, label %b.grow2558, label %b.grow_done560

str_overflow_abort553:                            ; preds = %b.grow_done518
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2558:                                       ; preds = %b.app.new.len552
  %b.cap2561 = mul i64 %builder.new.salloc.sroa.90.14, 2
  %b.cap.small562 = icmp slt i64 %b.cap2561, 16
  %b.cap.grow563 = select i1 %b.cap.small562, i64 16, i64 %b.cap2561
  %b.cap.need564 = icmp slt i64 %b.cap.grow563, %sum550
  %b.new.cap565 = select i1 %b.cap.need564, i64 %sum550, i64 %b.cap.grow563
  %b.new.buf.len2570 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap565, i64 1)
  %sum571 = extractvalue { i64, i1 } %b.new.buf.len2570, 0
  %ovf572 = extractvalue { i64, i1 } %b.new.buf.len2570, 1
  br i1 %ovf572, label %str_overflow_abort574, label %b.new.buf.len2573

b.grow_done560:                                   ; preds = %b.app.new.len552, %b.new.buf.len2573
  %builder.new.salloc.sroa.45.15 = phi ptr [ %b.new.buf2577, %b.new.buf.len2573 ], [ %builder.new.salloc.sroa.45.14, %b.app.new.len552 ]
  %builder.new.salloc.sroa.90.15 = phi i64 [ %b.new.cap565, %b.new.buf.len2573 ], [ %builder.new.salloc.sroa.90.14, %b.app.new.len552 ]
  %b.app.dst583 = getelementptr i8, ptr %builder.new.salloc.sroa.45.15, i64 %sum508
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst583, ptr align 1 @str.44, i64 1, i1 false)
  %b.app.nul584 = getelementptr i8, ptr %builder.new.salloc.sroa.45.15, i64 %sum550
  store i8 0, ptr %b.app.nul584, align 1
  %addtmp = add i64 %"var.emitted'.0", 1
  br label %choice.exit47

b.new.buf.len2573:                                ; preds = %b.grow2558
  %arena.cur576 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2577 = call ptr @dva_arena_alloc(ptr %arena.cur576, i64 %sum571)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2577, ptr align 1 %builder.new.salloc.sroa.45.14, i64 %sum508, i1 false)
  %b.grow2.nul578 = getelementptr i8, ptr %b.new.buf2577, i64 %sum508
  store i8 0, ptr %b.grow2.nul578, align 1
  br label %b.grow_done560

str_overflow_abort574:                            ; preds = %b.grow2558
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len596:                                 ; preds = %loop.exit.972
  %b.need.grow601 = icmp slt i64 %builder.new.salloc.sroa.90.1, %sum594
  br i1 %b.need.grow601, label %b.grow2602, label %b.grow_done604

str_overflow_abort597:                            ; preds = %loop.exit.972
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2602:                                       ; preds = %b.app.new.len596
  %b.cap2605 = mul i64 %builder.new.salloc.sroa.90.1, 2
  %b.cap.small606 = icmp slt i64 %b.cap2605, 16
  %b.cap.grow607 = select i1 %b.cap.small606, i64 16, i64 %b.cap2605
  %b.cap.need608 = icmp slt i64 %b.cap.grow607, %sum594
  %b.new.cap609 = select i1 %b.cap.need608, i64 %sum594, i64 %b.cap.grow607
  %b.new.buf.len2614 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap609, i64 1)
  %sum615 = extractvalue { i64, i1 } %b.new.buf.len2614, 0
  %ovf616 = extractvalue { i64, i1 } %b.new.buf.len2614, 1
  br i1 %ovf616, label %str_overflow_abort618, label %b.new.buf.len2617

b.grow_done604:                                   ; preds = %b.app.new.len596, %b.new.buf.len2617
  %builder.new.salloc.sroa.45.16 = phi ptr [ %b.new.buf2621, %b.new.buf.len2617 ], [ %builder.new.salloc.sroa.45.1, %b.app.new.len596 ]
  %b.app.dst627 = getelementptr i8, ptr %builder.new.salloc.sroa.45.16, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst627, ptr align 1 @str.262, i64 1, i1 false)
  %b.app.nul628 = getelementptr i8, ptr %builder.new.salloc.sroa.45.16, i64 %sum594
  store i8 0, ptr %b.app.nul628, align 1
  store i64 %sum594, ptr %builder.freeze, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %builder.new.salloc.sroa.45.16, ptr %str.build.data.gep, align 8
  call void @"lsp::send_result"(ptr %0, ptr %builder.freeze)
  br label %choice.exit16

b.new.buf.len2617:                                ; preds = %b.grow2602
  %arena.cur620 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2621 = call ptr @dva_arena_alloc(ptr %arena.cur620, i64 %sum615)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2621, ptr align 1 %builder.new.salloc.sroa.45.1, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul622 = getelementptr i8, ptr %b.new.buf2621, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul622, align 1
  br label %b.grow_done604

str_overflow_abort618:                            ; preds = %b.grow2602
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define void @"lsp::handle_formatting"(ptr %0, ptr %1) #3 {
entry:
  %call.res = call { i1, i64 } @"json::get"(ptr %1, ptr @str.245.struct)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 3, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ %enum.alloc, %choice.else ]
  %call.res3 = call { i64, ptr } @"json::get_str"(ptr %choice.res, ptr @str.247.struct)
  %ret.niche.data = extractvalue { i64, ptr } %call.res3, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

ret.niche.alloc:                                  ; preds = %choice.exit
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 16)
  store { i64, ptr } %call.res3, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %choice.exit
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %choice.exit ]
  %niche.ne.null = icmp ne ptr %ret.niche.ptr, null
  %ret.niche.ptr.str.0.struct = select i1 %niche.ne.null, ptr %ret.niche.ptr, ptr @str.0.struct
  %call.res12 = call ptr @"lsp::get_doc"(ptr %ret.niche.ptr.str.0.struct)
  %niche.ne.null14 = icmp ne ptr %call.res12, null
  br i1 %niche.ne.null14, label %choice.then15, label %choice.else16

choice.then15:                                    ; preds = %ret.niche.done
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %call.res12, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  %fld.gep21 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %call.res12, i32 0, i32 1
  %fld.load22 = load ptr, ptr %fld.gep21, align 8
  %call.res23 = call { i1, i64 } @"formatter::format_source"(ptr %fld.load, ptr %fld.load22)
  %call.res23.fca.0.extract = extractvalue { i1, i64 } %call.res23, 0
  %call.res23.fca.1.extract = extractvalue { i1, i64 } %call.res23, 1
  br i1 %call.res23.fca.0.extract, label %choice.then26, label %choice.else27

choice.else16:                                    ; preds = %ret.niche.done
  call void @"lsp::send_result"(ptr %0, ptr @str.35.struct)
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.then49, %str_ok81, %choice.else27, %choice.else16
  ret void

choice.then26:                                    ; preds = %choice.then15
  %pay.ptr30 = inttoptr i64 %call.res23.fca.1.extract to ptr
  %fld.load35 = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len36 = load i64, ptr %pay.ptr30, align 8
  %eq.lhs.len37 = and i64 %eq.lhs.len36, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len36, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.else27:                                    ; preds = %choice.then15
  call void @"lsp::send_result"(ptr %0, ptr @str.35.struct)
  br label %choice.exit17

str_ok:                                           ; preds = %tag.slow_check, %choice.then26
  %eq.rhs.len38 = load i64, ptr %fld.load35, align 8
  %eq.rhs.len39 = and i64 %eq.rhs.len38, 281474976710655
  %str.tag40 = lshr i64 %eq.rhs.len38, 48
  %tag.immortal42 = icmp eq i64 %str.tag40, 0
  %active.gen43 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current44 = icmp eq i64 %str.tag40, %active.gen43
  %tag.fast.ok45 = or i1 %tag.immortal42, %tag.current44
  br i1 %tag.fast.ok45, label %str_ok41, label %tag.slow_check46

tag.slow_check:                                   ; preds = %choice.then26
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok41:                                         ; preds = %tag.slow_check46, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len37, %eq.rhs.len39
  br i1 %eq.len, label %str.eq.then, label %choice.else50

tag.slow_check46:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag40)
  br label %str_ok41

str.eq.then:                                      ; preds = %str_ok41
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %pay.ptr30, i32 0, i32 1
  %eq.lhs.data47 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load35, i32 0, i32 1
  %eq.rhs.data48 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data47, ptr %eq.rhs.data48, i64 %eq.lhs.len37)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then49, label %choice.else50

choice.then49:                                    ; preds = %str.eq.then
  call void @"lsp::send_result"(ptr %0, ptr @str.35.struct)
  br label %choice.exit17

choice.else50:                                    ; preds = %str_ok41, %str.eq.then
  %fld.load55 = load ptr, ptr %fld.gep, align 8
  %call.res56 = call i64 @"lsp::count_doc_lines"(ptr %fld.load55)
  %addtmp = add i64 %call.res56, 1
  %call.res58 = call { i64, ptr } @"lsp::lsp_range_json"(i64 1, i64 1, i64 %addtmp, i64 1)
  %arena.cur59 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 16)
  store { i64, ptr } %call.res58, ptr %ret.ub.alloc, align 8
  %cat.seg61 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg62 = and i64 %cat.seg61, 281474976710655
  %str.tag63 = lshr i64 %cat.seg61, 48
  %tag.immortal65 = icmp eq i64 %str.tag63, 0
  %active.gen66 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current67 = icmp eq i64 %str.tag63, %active.gen66
  %tag.fast.ok68 = or i1 %tag.immortal65, %tag.current67
  br i1 %tag.fast.ok68, label %str_ok64, label %tag.slow_check69

str_ok64:                                         ; preds = %tag.slow_check69, %choice.else50
  %cat.seg70 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg71 = load ptr, ptr %cat.seg70, align 8
  %call.res74 = call { i64, ptr } @"json::escape_string"(ptr %pay.ptr30)
  %arena.cur75 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc76 = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 16)
  store { i64, ptr } %call.res74, ptr %ret.ub.alloc76, align 8
  %cat.seg78 = load i64, ptr %ret.ub.alloc76, align 8
  %cat.seg79 = and i64 %cat.seg78, 281474976710655
  %str.tag80 = lshr i64 %cat.seg78, 48
  %tag.immortal82 = icmp eq i64 %str.tag80, 0
  %active.gen83 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current84 = icmp eq i64 %str.tag80, %active.gen83
  %tag.fast.ok85 = or i1 %tag.immortal82, %tag.current84
  br i1 %tag.fast.ok85, label %str_ok81, label %tag.slow_check86

tag.slow_check69:                                 ; preds = %choice.else50
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag63)
  br label %str_ok64

str_ok81:                                         ; preds = %tag.slow_check86, %str_ok64
  %cat.seg87 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc76, i32 0, i32 1
  %cat.seg88 = load ptr, ptr %cat.seg87, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 10, i64 %cat.seg62)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %cat.sum.len91 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 11)
  %sum92 = extractvalue { i64, i1 } %cat.sum.len91, 0
  %cat.sum.len97 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum92, i64 %cat.seg79)
  %sum98 = extractvalue { i64, i1 } %cat.sum.len97, 0
  %cat.sum.len103 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum98, i64 2)
  %sum104 = extractvalue { i64, i1 } %cat.sum.len103, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum104, i64 1)
  %sum109 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur114 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 %sum109)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.263, i64 10, i1 false)
  %cat.dst115 = getelementptr i8, ptr %concat.buf, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst115, ptr align 1 %cat.seg71, i64 %cat.seg62, i1 false)
  %cat.off = add nuw nsw i64 10, %cat.seg62
  %cat.dst116 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst116, ptr align 1 @str.264, i64 11, i1 false)
  %cat.off117 = add nuw nsw i64 %cat.off, 11
  %cat.dst118 = getelementptr i8, ptr %concat.buf, i64 %cat.off117
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst118, ptr align 1 %cat.seg88, i64 %cat.seg79, i1 false)
  %cat.off119 = add nuw nsw i64 %cat.off117, %cat.seg79
  %cat.dst120 = getelementptr i8, ptr %concat.buf, i64 %cat.off119
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst120, ptr align 1 @str.265, i64 2, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum104
  store i8 0, ptr %concat.nul, align 1
  %arena.cur121 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur121, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum104, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  call void @"lsp::send_result"(ptr %0, ptr %concat.str)
  br label %choice.exit17

tag.slow_check86:                                 ; preds = %str_ok64
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag80)
  br label %str_ok81
}

declare { i1, i64 } @"formatter::format_source"(ptr, ptr) #3

define void @"lsp::handle_completion"(ptr %0, ptr %1) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %ret.niche.salloc = alloca { i64, ptr }, align 8
  %call.res = call { i1, i64 } @"json::get"(ptr %1, ptr @str.245.struct)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 3, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ %enum.alloc, %choice.else ]
  %call.res3 = call { i64, ptr } @"json::get_str"(ptr %choice.res, ptr @str.247.struct)
  %ret.niche.data = extractvalue { i64, ptr } %call.res3, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  %call.res3.fca.0.extract = extractvalue { i64, ptr } %call.res3, 0
  store i64 %call.res3.fca.0.extract, ptr %ret.niche.salloc, align 8
  %call.res3.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.niche.salloc, i32 0, i32 1
  store ptr %ret.niche.data, ptr %call.res3.fca.1.gep, align 8
  %ret.niche.sel = select i1 %ret.niche.ok, ptr %ret.niche.salloc, ptr null
  %ret.niche.sel.str.0.struct = select i1 %ret.niche.ok, ptr %ret.niche.sel, ptr @str.0.struct
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 513)
  store i8 0, ptr %b.buf, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.buf, ptr align 1 @str.257, i64 1, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.buf, i64 1
  store i8 0, ptr %b.app.nul, align 1
  %call.res31 = call ptr @"lsp::get_doc"(ptr %ret.niche.sel.str.0.struct)
  %niche.ne.null33 = icmp ne ptr %call.res31, null
  br i1 %niche.ne.null33, label %choice.then34, label %choice.exit35

choice.then34:                                    ; preds = %choice.exit
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %call.res31, i32 0, i32 3
  %fld.load = load ptr, ptr %fld.gep, align 8
  %arr.cycle.len38 = load i64, ptr %fld.load, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 1
  %arr.cycle.data39 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.973

choice.exit35:                                    ; preds = %loop.header.973, %choice.exit
  %builder.new.salloc.sroa.66.1 = phi i64 [ 512, %choice.exit ], [ %builder.new.salloc.sroa.66.2, %loop.header.973 ]
  %builder.new.salloc.sroa.33.1 = phi ptr [ %b.buf, %choice.exit ], [ %builder.new.salloc.sroa.33.2, %loop.header.973 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 1, %choice.exit ], [ %builder.new.salloc.sroa.0.1, %loop.header.973 ]
  %b.app.new.len421 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 1)
  %sum422 = extractvalue { i64, i1 } %b.app.new.len421, 0
  %ovf423 = extractvalue { i64, i1 } %b.app.new.len421, 1
  br i1 %ovf423, label %str_overflow_abort425, label %b.app.new.len424

loop.header.973:                                  ; preds = %choice.exit46, %choice.then34
  %builder.new.salloc.sroa.66.2 = phi i64 [ 512, %choice.then34 ], [ %builder.new.salloc.sroa.66.3, %choice.exit46 ]
  %builder.new.salloc.sroa.33.2 = phi ptr [ %b.buf, %choice.then34 ], [ %builder.new.salloc.sroa.33.3, %choice.exit46 ]
  %builder.new.salloc.sroa.0.1 = phi i64 [ 1, %choice.then34 ], [ %builder.new.salloc.sroa.0.2, %choice.exit46 ]
  %"var.count'.0" = phi i64 [ 0, %choice.then34 ], [ %"var.count'.1", %choice.exit46 ]
  %loop.idx.973.0 = phi i64 [ 0, %choice.then34 ], [ %loop.next, %choice.exit46 ]
  %loop.cond = icmp slt i64 %loop.idx.973.0, %arr.cycle.len38
  br i1 %loop.cond, label %loop.body.973, label %choice.exit35

loop.body.973:                                    ; preds = %loop.header.973
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data39, i64 %loop.idx.973.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.gep43 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 8
  %fld.load44 = load i1, ptr %fld.gep43, align 1
  %nottmp = xor i1 %fld.load44, true
  br i1 %nottmp, label %choice.then45, label %choice.exit46

choice.then45:                                    ; preds = %loop.body.973
  %cmptmp = icmp sgt i64 %"var.count'.0", 0
  br i1 %cmptmp, label %choice.then48, label %choice.exit49

choice.exit46:                                    ; preds = %b.grow_done388, %loop.body.973
  %builder.new.salloc.sroa.66.3 = phi i64 [ %builder.new.salloc.sroa.66.12, %b.grow_done388 ], [ %builder.new.salloc.sroa.66.2, %loop.body.973 ]
  %builder.new.salloc.sroa.33.3 = phi ptr [ %builder.new.salloc.sroa.33.12, %b.grow_done388 ], [ %builder.new.salloc.sroa.33.2, %loop.body.973 ]
  %builder.new.salloc.sroa.0.2 = phi i64 [ %sum378, %b.grow_done388 ], [ %builder.new.salloc.sroa.0.1, %loop.body.973 ]
  %"var.count'.1" = phi i64 [ %addtmp, %b.grow_done388 ], [ %"var.count'.0", %loop.body.973 ]
  %loop.next = add i64 %loop.idx.973.0, 1
  br label %loop.header.973

choice.then48:                                    ; preds = %choice.then45
  %b.app.new.len56 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.1, i64 1)
  %sum57 = extractvalue { i64, i1 } %b.app.new.len56, 0
  %ovf58 = extractvalue { i64, i1 } %b.app.new.len56, 1
  br i1 %ovf58, label %str_overflow_abort60, label %b.app.new.len59

choice.exit49:                                    ; preds = %b.grow_done67, %choice.then45
  %builder.new.salloc.sroa.66.4 = phi i64 [ %builder.new.salloc.sroa.66.5, %b.grow_done67 ], [ %builder.new.salloc.sroa.66.2, %choice.then45 ]
  %builder.new.salloc.sroa.33.4 = phi ptr [ %builder.new.salloc.sroa.33.5, %b.grow_done67 ], [ %builder.new.salloc.sroa.33.2, %choice.then45 ]
  %builder.new.salloc.sroa.0.3 = phi i64 [ %sum57, %b.grow_done67 ], [ %builder.new.salloc.sroa.0.1, %choice.then45 ]
  %fld.gep94 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 2
  %fld.load95 = load i64, ptr %fld.gep94, align 8
  %var.load96 = load i64, ptr @"var.lsp::SYM_FUNCTION", align 8
  %cmptmp97 = icmp eq i64 %fld.load95, %var.load96
  %var.load104 = load i64, ptr @"var.lsp::SYM_STRUCT", align 8
  %cmptmp105 = icmp eq i64 %fld.load95, %var.load104
  %. = select i1 %cmptmp105, i64 22, i64 6
  %choice.res110 = select i1 %cmptmp97, i64 3, i64 %.
  %b.app.new.len117 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.3, i64 9)
  %sum118 = extractvalue { i64, i1 } %b.app.new.len117, 0
  %ovf119 = extractvalue { i64, i1 } %b.app.new.len117, 1
  br i1 %ovf119, label %str_overflow_abort121, label %b.app.new.len120

b.app.new.len59:                                  ; preds = %choice.then48
  %b.need.grow64 = icmp slt i64 %builder.new.salloc.sroa.66.2, %sum57
  br i1 %b.need.grow64, label %b.grow265, label %b.grow_done67

str_overflow_abort60:                             ; preds = %choice.then48
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow265:                                        ; preds = %b.app.new.len59
  %b.cap268 = mul i64 %builder.new.salloc.sroa.66.2, 2
  %b.cap.small69 = icmp slt i64 %b.cap268, 16
  %b.cap.grow70 = select i1 %b.cap.small69, i64 16, i64 %b.cap268
  %b.cap.need71 = icmp slt i64 %b.cap.grow70, %sum57
  %b.new.cap72 = select i1 %b.cap.need71, i64 %sum57, i64 %b.cap.grow70
  %b.new.buf.len277 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap72, i64 1)
  %sum78 = extractvalue { i64, i1 } %b.new.buf.len277, 0
  %ovf79 = extractvalue { i64, i1 } %b.new.buf.len277, 1
  br i1 %ovf79, label %str_overflow_abort81, label %b.new.buf.len280

b.grow_done67:                                    ; preds = %b.app.new.len59, %b.new.buf.len280
  %builder.new.salloc.sroa.66.5 = phi i64 [ %b.new.cap72, %b.new.buf.len280 ], [ %builder.new.salloc.sroa.66.2, %b.app.new.len59 ]
  %builder.new.salloc.sroa.33.5 = phi ptr [ %b.new.buf284, %b.new.buf.len280 ], [ %builder.new.salloc.sroa.33.2, %b.app.new.len59 ]
  %b.app.dst90 = getelementptr i8, ptr %builder.new.salloc.sroa.33.5, i64 %builder.new.salloc.sroa.0.1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst90, ptr align 1 @str.68, i64 1, i1 false)
  %b.app.nul91 = getelementptr i8, ptr %builder.new.salloc.sroa.33.5, i64 %sum57
  store i8 0, ptr %b.app.nul91, align 1
  br label %choice.exit49

b.new.buf.len280:                                 ; preds = %b.grow265
  %arena.cur83 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf284 = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 %sum78)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf284, ptr align 1 %builder.new.salloc.sroa.33.2, i64 %builder.new.salloc.sroa.0.1, i1 false)
  %b.grow2.nul85 = getelementptr i8, ptr %b.new.buf284, i64 %builder.new.salloc.sroa.0.1
  store i8 0, ptr %b.grow2.nul85, align 1
  br label %b.grow_done67

str_overflow_abort81:                             ; preds = %b.grow265
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len120:                                 ; preds = %choice.exit49
  %b.need.grow125 = icmp slt i64 %builder.new.salloc.sroa.66.4, %sum118
  br i1 %b.need.grow125, label %b.grow2126, label %b.grow_done128

str_overflow_abort121:                            ; preds = %choice.exit49
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2126:                                       ; preds = %b.app.new.len120
  %b.cap2129 = mul i64 %builder.new.salloc.sroa.66.4, 2
  %b.cap.small130 = icmp slt i64 %b.cap2129, 16
  %b.cap.grow131 = select i1 %b.cap.small130, i64 16, i64 %b.cap2129
  %b.cap.need132 = icmp slt i64 %b.cap.grow131, %sum118
  %b.new.cap133 = select i1 %b.cap.need132, i64 %sum118, i64 %b.cap.grow131
  %b.new.buf.len2138 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap133, i64 1)
  %sum139 = extractvalue { i64, i1 } %b.new.buf.len2138, 0
  %ovf140 = extractvalue { i64, i1 } %b.new.buf.len2138, 1
  br i1 %ovf140, label %str_overflow_abort142, label %b.new.buf.len2141

b.grow_done128:                                   ; preds = %b.app.new.len120, %b.new.buf.len2141
  %builder.new.salloc.sroa.66.6 = phi i64 [ %b.new.cap133, %b.new.buf.len2141 ], [ %builder.new.salloc.sroa.66.4, %b.app.new.len120 ]
  %builder.new.salloc.sroa.33.6 = phi ptr [ %b.new.buf2145, %b.new.buf.len2141 ], [ %builder.new.salloc.sroa.33.4, %b.app.new.len120 ]
  %b.app.dst151 = getelementptr i8, ptr %builder.new.salloc.sroa.33.6, i64 %builder.new.salloc.sroa.0.3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst151, ptr align 1 @str.266, i64 9, i1 false)
  %b.app.nul152 = getelementptr i8, ptr %builder.new.salloc.sroa.33.6, i64 %sum118
  store i8 0, ptr %b.app.nul152, align 1
  %fld.load156 = load ptr, ptr %slot.i2p, align 8
  %call.res157 = call { i64, ptr } @"json::escape_string"(ptr %fld.load156)
  %arena.cur158 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 16)
  store { i64, ptr } %call.res157, ptr %ret.ub.alloc, align 8
  %app.str.len160 = load i64, ptr %ret.ub.alloc, align 8
  %app.str.len161 = and i64 %app.str.len160, 281474976710655
  %app.str.data162 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data163 = load ptr, ptr %app.str.data162, align 8
  %b.app.new.len166 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum118, i64 %app.str.len161)
  %sum167 = extractvalue { i64, i1 } %b.app.new.len166, 0
  %ovf168 = extractvalue { i64, i1 } %b.app.new.len166, 1
  br i1 %ovf168, label %str_overflow_abort170, label %b.app.new.len169

b.new.buf.len2141:                                ; preds = %b.grow2126
  %arena.cur144 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2145 = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 %sum139)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2145, ptr align 1 %builder.new.salloc.sroa.33.4, i64 %builder.new.salloc.sroa.0.3, i1 false)
  %b.grow2.nul146 = getelementptr i8, ptr %b.new.buf2145, i64 %builder.new.salloc.sroa.0.3
  store i8 0, ptr %b.grow2.nul146, align 1
  br label %b.grow_done128

str_overflow_abort142:                            ; preds = %b.grow2126
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len169:                                 ; preds = %b.grow_done128
  %b.need.grow174 = icmp slt i64 %builder.new.salloc.sroa.66.6, %sum167
  br i1 %b.need.grow174, label %b.grow2175, label %b.grow_done177

str_overflow_abort170:                            ; preds = %b.grow_done128
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2175:                                       ; preds = %b.app.new.len169
  %b.cap2178 = mul i64 %builder.new.salloc.sroa.66.6, 2
  %b.cap.small179 = icmp slt i64 %b.cap2178, 16
  %b.cap.grow180 = select i1 %b.cap.small179, i64 16, i64 %b.cap2178
  %b.cap.need181 = icmp slt i64 %b.cap.grow180, %sum167
  %b.new.cap182 = select i1 %b.cap.need181, i64 %sum167, i64 %b.cap.grow180
  %b.new.buf.len2187 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap182, i64 1)
  %sum188 = extractvalue { i64, i1 } %b.new.buf.len2187, 0
  %ovf189 = extractvalue { i64, i1 } %b.new.buf.len2187, 1
  br i1 %ovf189, label %str_overflow_abort191, label %b.new.buf.len2190

b.grow_done177:                                   ; preds = %b.app.new.len169, %b.new.buf.len2190
  %builder.new.salloc.sroa.66.7 = phi i64 [ %b.new.cap182, %b.new.buf.len2190 ], [ %builder.new.salloc.sroa.66.6, %b.app.new.len169 ]
  %builder.new.salloc.sroa.33.7 = phi ptr [ %b.new.buf2194, %b.new.buf.len2190 ], [ %builder.new.salloc.sroa.33.6, %b.app.new.len169 ]
  %b.app.dst200 = getelementptr i8, ptr %builder.new.salloc.sroa.33.7, i64 %sum118
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst200, ptr align 1 %app.str.data163, i64 %app.str.len161, i1 false)
  %b.app.nul201 = getelementptr i8, ptr %builder.new.salloc.sroa.33.7, i64 %sum167
  store i8 0, ptr %b.app.nul201, align 1
  %b.app.new.len208 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum167, i64 8)
  %sum209 = extractvalue { i64, i1 } %b.app.new.len208, 0
  %ovf210 = extractvalue { i64, i1 } %b.app.new.len208, 1
  br i1 %ovf210, label %str_overflow_abort212, label %b.app.new.len211

b.new.buf.len2190:                                ; preds = %b.grow2175
  %arena.cur193 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2194 = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 %sum188)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2194, ptr align 1 %builder.new.salloc.sroa.33.6, i64 %sum118, i1 false)
  %b.grow2.nul195 = getelementptr i8, ptr %b.new.buf2194, i64 %sum118
  store i8 0, ptr %b.grow2.nul195, align 1
  br label %b.grow_done177

str_overflow_abort191:                            ; preds = %b.grow2175
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len211:                                 ; preds = %b.grow_done177
  %b.need.grow216 = icmp slt i64 %builder.new.salloc.sroa.66.7, %sum209
  br i1 %b.need.grow216, label %b.grow2217, label %b.grow_done219

str_overflow_abort212:                            ; preds = %b.grow_done177
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2217:                                       ; preds = %b.app.new.len211
  %b.cap2220 = mul i64 %builder.new.salloc.sroa.66.7, 2
  %b.cap.small221 = icmp slt i64 %b.cap2220, 16
  %b.cap.grow222 = select i1 %b.cap.small221, i64 16, i64 %b.cap2220
  %b.cap.need223 = icmp slt i64 %b.cap.grow222, %sum209
  %b.new.cap224 = select i1 %b.cap.need223, i64 %sum209, i64 %b.cap.grow222
  %b.new.buf.len2229 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap224, i64 1)
  %sum230 = extractvalue { i64, i1 } %b.new.buf.len2229, 0
  %ovf231 = extractvalue { i64, i1 } %b.new.buf.len2229, 1
  br i1 %ovf231, label %str_overflow_abort233, label %b.new.buf.len2232

b.grow_done219:                                   ; preds = %b.app.new.len211, %b.new.buf.len2232
  %builder.new.salloc.sroa.66.8 = phi i64 [ %b.new.cap224, %b.new.buf.len2232 ], [ %builder.new.salloc.sroa.66.7, %b.app.new.len211 ]
  %builder.new.salloc.sroa.33.8 = phi ptr [ %b.new.buf2236, %b.new.buf.len2232 ], [ %builder.new.salloc.sroa.33.7, %b.app.new.len211 ]
  %b.app.dst242 = getelementptr i8, ptr %builder.new.salloc.sroa.33.8, i64 %sum167
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst242, ptr align 1 @str.260, i64 8, i1 false)
  %b.app.nul243 = getelementptr i8, ptr %builder.new.salloc.sroa.33.8, i64 %sum209
  store i8 0, ptr %b.app.nul243, align 1
  %b.int.cap = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum209, i64 24)
  %sum247 = extractvalue { i64, i1 } %b.int.cap, 0
  %ovf248 = extractvalue { i64, i1 } %b.int.cap, 1
  br i1 %ovf248, label %str_overflow_abort250, label %b.int.cap249

b.new.buf.len2232:                                ; preds = %b.grow2217
  %arena.cur235 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2236 = call ptr @dva_arena_alloc(ptr %arena.cur235, i64 %sum230)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2236, ptr align 1 %builder.new.salloc.sroa.33.7, i64 %sum167, i1 false)
  %b.grow2.nul237 = getelementptr i8, ptr %b.new.buf2236, i64 %sum167
  store i8 0, ptr %b.grow2.nul237, align 1
  br label %b.grow_done219

str_overflow_abort233:                            ; preds = %b.grow2217
  call void @dva_abort_str_overflow_msg()
  unreachable

b.int.cap249:                                     ; preds = %b.grow_done219
  %b.need.grow254 = icmp slt i64 %builder.new.salloc.sroa.66.8, %sum247
  br i1 %b.need.grow254, label %b.grow2255, label %b.grow_done257

str_overflow_abort250:                            ; preds = %b.grow_done219
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2255:                                       ; preds = %b.int.cap249
  %b.cap2258 = mul i64 %builder.new.salloc.sroa.66.8, 2
  %b.cap.small259 = icmp slt i64 %b.cap2258, 16
  %b.cap.grow260 = select i1 %b.cap.small259, i64 16, i64 %b.cap2258
  %b.cap.need261 = icmp slt i64 %b.cap.grow260, %sum247
  %b.new.cap262 = select i1 %b.cap.need261, i64 %sum247, i64 %b.cap.grow260
  %b.new.buf.len2267 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap262, i64 1)
  %sum268 = extractvalue { i64, i1 } %b.new.buf.len2267, 0
  %ovf269 = extractvalue { i64, i1 } %b.new.buf.len2267, 1
  br i1 %ovf269, label %str_overflow_abort271, label %b.new.buf.len2270

b.grow_done257:                                   ; preds = %b.int.cap249, %b.new.buf.len2270
  %builder.new.salloc.sroa.66.9 = phi i64 [ %b.new.cap262, %b.new.buf.len2270 ], [ %builder.new.salloc.sroa.66.8, %b.int.cap249 ]
  %builder.new.salloc.sroa.33.9 = phi ptr [ %b.new.buf2274, %b.new.buf.len2270 ], [ %builder.new.salloc.sroa.33.8, %b.int.cap249 ]
  %b.int.dst = getelementptr i8, ptr %builder.new.salloc.sroa.33.9, i64 %sum209
  %b.int.len = call i64 @dva_fmt_i64_buf(ptr %b.int.dst, i64 %choice.res110, i1 false)
  %b.int.new.len = add i64 %sum209, %b.int.len
  %b.app.new.len285 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.int.new.len, i64 10)
  %sum286 = extractvalue { i64, i1 } %b.app.new.len285, 0
  %ovf287 = extractvalue { i64, i1 } %b.app.new.len285, 1
  br i1 %ovf287, label %str_overflow_abort289, label %b.app.new.len288

b.new.buf.len2270:                                ; preds = %b.grow2255
  %arena.cur273 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2274 = call ptr @dva_arena_alloc(ptr %arena.cur273, i64 %sum268)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2274, ptr align 1 %builder.new.salloc.sroa.33.8, i64 %sum209, i1 false)
  %b.grow2.nul275 = getelementptr i8, ptr %b.new.buf2274, i64 %sum209
  store i8 0, ptr %b.grow2.nul275, align 1
  br label %b.grow_done257

str_overflow_abort271:                            ; preds = %b.grow2255
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len288:                                 ; preds = %b.grow_done257
  %b.need.grow293 = icmp slt i64 %builder.new.salloc.sroa.66.9, %sum286
  br i1 %b.need.grow293, label %b.grow2294, label %b.grow_done296

str_overflow_abort289:                            ; preds = %b.grow_done257
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2294:                                       ; preds = %b.app.new.len288
  %b.cap2297 = mul i64 %builder.new.salloc.sroa.66.9, 2
  %b.cap.small298 = icmp slt i64 %b.cap2297, 16
  %b.cap.grow299 = select i1 %b.cap.small298, i64 16, i64 %b.cap2297
  %b.cap.need300 = icmp slt i64 %b.cap.grow299, %sum286
  %b.new.cap301 = select i1 %b.cap.need300, i64 %sum286, i64 %b.cap.grow299
  %b.new.buf.len2306 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap301, i64 1)
  %sum307 = extractvalue { i64, i1 } %b.new.buf.len2306, 0
  %ovf308 = extractvalue { i64, i1 } %b.new.buf.len2306, 1
  br i1 %ovf308, label %str_overflow_abort310, label %b.new.buf.len2309

b.grow_done296:                                   ; preds = %b.app.new.len288, %b.new.buf.len2309
  %builder.new.salloc.sroa.66.10 = phi i64 [ %b.new.cap301, %b.new.buf.len2309 ], [ %builder.new.salloc.sroa.66.9, %b.app.new.len288 ]
  %builder.new.salloc.sroa.33.10 = phi ptr [ %b.new.buf2313, %b.new.buf.len2309 ], [ %builder.new.salloc.sroa.33.9, %b.app.new.len288 ]
  %b.app.dst319 = getelementptr i8, ptr %builder.new.salloc.sroa.33.10, i64 %b.int.new.len
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst319, ptr align 1 @str.259, i64 10, i1 false)
  %b.app.nul320 = getelementptr i8, ptr %builder.new.salloc.sroa.33.10, i64 %sum286
  store i8 0, ptr %b.app.nul320, align 1
  %fld.gep323 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 1
  %fld.load324 = load ptr, ptr %fld.gep323, align 8
  %call.res325 = call { i64, ptr } @"json::escape_string"(ptr %fld.load324)
  %arena.cur326 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc327 = call ptr @dva_arena_alloc(ptr %arena.cur326, i64 16)
  store { i64, ptr } %call.res325, ptr %ret.ub.alloc327, align 8
  %app.str.len329 = load i64, ptr %ret.ub.alloc327, align 8
  %app.str.len330 = and i64 %app.str.len329, 281474976710655
  %app.str.data331 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc327, i32 0, i32 1
  %app.str.data332 = load ptr, ptr %app.str.data331, align 8
  %b.app.new.len335 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum286, i64 %app.str.len330)
  %sum336 = extractvalue { i64, i1 } %b.app.new.len335, 0
  %ovf337 = extractvalue { i64, i1 } %b.app.new.len335, 1
  br i1 %ovf337, label %str_overflow_abort339, label %b.app.new.len338

b.new.buf.len2309:                                ; preds = %b.grow2294
  %arena.cur312 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2313 = call ptr @dva_arena_alloc(ptr %arena.cur312, i64 %sum307)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2313, ptr align 1 %builder.new.salloc.sroa.33.9, i64 %b.int.new.len, i1 false)
  %b.grow2.nul314 = getelementptr i8, ptr %b.new.buf2313, i64 %b.int.new.len
  store i8 0, ptr %b.grow2.nul314, align 1
  br label %b.grow_done296

str_overflow_abort310:                            ; preds = %b.grow2294
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len338:                                 ; preds = %b.grow_done296
  %b.need.grow343 = icmp slt i64 %builder.new.salloc.sroa.66.10, %sum336
  br i1 %b.need.grow343, label %b.grow2344, label %b.grow_done346

str_overflow_abort339:                            ; preds = %b.grow_done296
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2344:                                       ; preds = %b.app.new.len338
  %b.cap2347 = mul i64 %builder.new.salloc.sroa.66.10, 2
  %b.cap.small348 = icmp slt i64 %b.cap2347, 16
  %b.cap.grow349 = select i1 %b.cap.small348, i64 16, i64 %b.cap2347
  %b.cap.need350 = icmp slt i64 %b.cap.grow349, %sum336
  %b.new.cap351 = select i1 %b.cap.need350, i64 %sum336, i64 %b.cap.grow349
  %b.new.buf.len2356 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap351, i64 1)
  %sum357 = extractvalue { i64, i1 } %b.new.buf.len2356, 0
  %ovf358 = extractvalue { i64, i1 } %b.new.buf.len2356, 1
  br i1 %ovf358, label %str_overflow_abort360, label %b.new.buf.len2359

b.grow_done346:                                   ; preds = %b.app.new.len338, %b.new.buf.len2359
  %builder.new.salloc.sroa.66.11 = phi i64 [ %b.new.cap351, %b.new.buf.len2359 ], [ %builder.new.salloc.sroa.66.10, %b.app.new.len338 ]
  %builder.new.salloc.sroa.33.11 = phi ptr [ %b.new.buf2363, %b.new.buf.len2359 ], [ %builder.new.salloc.sroa.33.10, %b.app.new.len338 ]
  %b.app.dst369 = getelementptr i8, ptr %builder.new.salloc.sroa.33.11, i64 %sum286
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst369, ptr align 1 %app.str.data332, i64 %app.str.len330, i1 false)
  %b.app.nul370 = getelementptr i8, ptr %builder.new.salloc.sroa.33.11, i64 %sum336
  store i8 0, ptr %b.app.nul370, align 1
  %b.app.new.len377 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum336, i64 1)
  %sum378 = extractvalue { i64, i1 } %b.app.new.len377, 0
  %ovf379 = extractvalue { i64, i1 } %b.app.new.len377, 1
  br i1 %ovf379, label %str_overflow_abort381, label %b.app.new.len380

b.new.buf.len2359:                                ; preds = %b.grow2344
  %arena.cur362 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2363 = call ptr @dva_arena_alloc(ptr %arena.cur362, i64 %sum357)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2363, ptr align 1 %builder.new.salloc.sroa.33.10, i64 %sum286, i1 false)
  %b.grow2.nul364 = getelementptr i8, ptr %b.new.buf2363, i64 %sum286
  store i8 0, ptr %b.grow2.nul364, align 1
  br label %b.grow_done346

str_overflow_abort360:                            ; preds = %b.grow2344
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len380:                                 ; preds = %b.grow_done346
  %b.need.grow385 = icmp slt i64 %builder.new.salloc.sroa.66.11, %sum378
  br i1 %b.need.grow385, label %b.grow2386, label %b.grow_done388

str_overflow_abort381:                            ; preds = %b.grow_done346
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2386:                                       ; preds = %b.app.new.len380
  %b.cap2389 = mul i64 %builder.new.salloc.sroa.66.11, 2
  %b.cap.small390 = icmp slt i64 %b.cap2389, 16
  %b.cap.grow391 = select i1 %b.cap.small390, i64 16, i64 %b.cap2389
  %b.cap.need392 = icmp slt i64 %b.cap.grow391, %sum378
  %b.new.cap393 = select i1 %b.cap.need392, i64 %sum378, i64 %b.cap.grow391
  %b.new.buf.len2398 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap393, i64 1)
  %sum399 = extractvalue { i64, i1 } %b.new.buf.len2398, 0
  %ovf400 = extractvalue { i64, i1 } %b.new.buf.len2398, 1
  br i1 %ovf400, label %str_overflow_abort402, label %b.new.buf.len2401

b.grow_done388:                                   ; preds = %b.app.new.len380, %b.new.buf.len2401
  %builder.new.salloc.sroa.66.12 = phi i64 [ %b.new.cap393, %b.new.buf.len2401 ], [ %builder.new.salloc.sroa.66.11, %b.app.new.len380 ]
  %builder.new.salloc.sroa.33.12 = phi ptr [ %b.new.buf2405, %b.new.buf.len2401 ], [ %builder.new.salloc.sroa.33.11, %b.app.new.len380 ]
  %b.app.dst411 = getelementptr i8, ptr %builder.new.salloc.sroa.33.12, i64 %sum336
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst411, ptr align 1 @str.44, i64 1, i1 false)
  %b.app.nul412 = getelementptr i8, ptr %builder.new.salloc.sroa.33.12, i64 %sum378
  store i8 0, ptr %b.app.nul412, align 1
  %addtmp = add i64 %"var.count'.0", 1
  br label %choice.exit46

b.new.buf.len2401:                                ; preds = %b.grow2386
  %arena.cur404 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2405 = call ptr @dva_arena_alloc(ptr %arena.cur404, i64 %sum399)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2405, ptr align 1 %builder.new.salloc.sroa.33.11, i64 %sum336, i1 false)
  %b.grow2.nul406 = getelementptr i8, ptr %b.new.buf2405, i64 %sum336
  store i8 0, ptr %b.grow2.nul406, align 1
  br label %b.grow_done388

str_overflow_abort402:                            ; preds = %b.grow2386
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len424:                                 ; preds = %choice.exit35
  %b.need.grow429 = icmp slt i64 %builder.new.salloc.sroa.66.1, %sum422
  br i1 %b.need.grow429, label %b.grow2430, label %b.grow_done432

str_overflow_abort425:                            ; preds = %choice.exit35
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2430:                                       ; preds = %b.app.new.len424
  %b.cap2433 = mul i64 %builder.new.salloc.sroa.66.1, 2
  %b.cap.small434 = icmp slt i64 %b.cap2433, 16
  %b.cap.grow435 = select i1 %b.cap.small434, i64 16, i64 %b.cap2433
  %b.cap.need436 = icmp slt i64 %b.cap.grow435, %sum422
  %b.new.cap437 = select i1 %b.cap.need436, i64 %sum422, i64 %b.cap.grow435
  %b.new.buf.len2442 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap437, i64 1)
  %sum443 = extractvalue { i64, i1 } %b.new.buf.len2442, 0
  %ovf444 = extractvalue { i64, i1 } %b.new.buf.len2442, 1
  br i1 %ovf444, label %str_overflow_abort446, label %b.new.buf.len2445

b.grow_done432:                                   ; preds = %b.app.new.len424, %b.new.buf.len2445
  %builder.new.salloc.sroa.33.13 = phi ptr [ %b.new.buf2449, %b.new.buf.len2445 ], [ %builder.new.salloc.sroa.33.1, %b.app.new.len424 ]
  %b.app.dst455 = getelementptr i8, ptr %builder.new.salloc.sroa.33.13, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst455, ptr align 1 @str.262, i64 1, i1 false)
  %b.app.nul456 = getelementptr i8, ptr %builder.new.salloc.sroa.33.13, i64 %sum422
  store i8 0, ptr %b.app.nul456, align 1
  store i64 %sum422, ptr %builder.freeze, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %builder.new.salloc.sroa.33.13, ptr %str.build.data.gep, align 8
  call void @"lsp::send_result"(ptr %0, ptr %builder.freeze)
  ret void

b.new.buf.len2445:                                ; preds = %b.grow2430
  %arena.cur448 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2449 = call ptr @dva_arena_alloc(ptr %arena.cur448, i64 %sum443)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2449, ptr align 1 %builder.new.salloc.sroa.33.1, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul450 = getelementptr i8, ptr %b.new.buf2449, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul450, align 1
  br label %b.grow_done432

str_overflow_abort446:                            ; preds = %b.grow2430
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define void @"lsp::handle_inlay_hint"(ptr %0, ptr %1) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %ret.niche.salloc = alloca { i64, ptr }, align 8
  %call.res = call { i1, i64 } @"json::get"(ptr %1, ptr @str.245.struct)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 3, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ %enum.alloc, %choice.else ]
  %call.res3 = call { i64, ptr } @"json::get_str"(ptr %choice.res, ptr @str.247.struct)
  %ret.niche.data = extractvalue { i64, ptr } %call.res3, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  %call.res3.fca.0.extract = extractvalue { i64, ptr } %call.res3, 0
  store i64 %call.res3.fca.0.extract, ptr %ret.niche.salloc, align 8
  %call.res3.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.niche.salloc, i32 0, i32 1
  store ptr %ret.niche.data, ptr %call.res3.fca.1.gep, align 8
  %ret.niche.sel = select i1 %ret.niche.ok, ptr %ret.niche.salloc, ptr null
  %ret.niche.sel.str.0.struct = select i1 %ret.niche.ok, ptr %ret.niche.sel, ptr @str.0.struct
  %call.res11 = call { i1, i64 } @"json::get"(ptr %1, ptr @str.267.struct)
  %ram.tag12 = extractvalue { i1, i64 } %call.res11, 0
  br i1 %ram.tag12, label %choice.then13, label %choice.else14

choice.then13:                                    ; preds = %choice.exit
  %ram.pay16 = extractvalue { i1, i64 } %call.res11, 1
  %pay.ptr17 = inttoptr i64 %ram.pay16 to ptr
  br label %choice.exit15

choice.else14:                                    ; preds = %choice.exit
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 16)
  store i64 3, ptr %enum.alloc22, align 8
  %pay.gep24 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc22, i32 0, i32 1
  store ptr null, ptr %pay.gep24, align 8
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.else14, %choice.then13
  %choice.res25 = phi ptr [ %pay.ptr17, %choice.then13 ], [ %enum.alloc22, %choice.else14 ]
  %call.res27 = call { i1, i64 } @"json::get"(ptr %choice.res25, ptr @str.268.struct)
  %ram.tag28 = extractvalue { i1, i64 } %call.res27, 0
  br i1 %ram.tag28, label %choice.then29, label %choice.else30

choice.then29:                                    ; preds = %choice.exit15
  %ram.pay32 = extractvalue { i1, i64 } %call.res27, 1
  %pay.ptr33 = inttoptr i64 %ram.pay32 to ptr
  br label %choice.exit31

choice.else30:                                    ; preds = %choice.exit15
  %arena.cur37 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc38 = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 16)
  store i64 3, ptr %enum.alloc38, align 8
  %pay.gep40 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc38, i32 0, i32 1
  store ptr null, ptr %pay.gep40, align 8
  br label %choice.exit31

choice.exit31:                                    ; preds = %choice.else30, %choice.then29
  %choice.res41 = phi ptr [ %pay.ptr33, %choice.then29 ], [ %enum.alloc38, %choice.else30 ]
  %call.res43 = call { i1, i64 } @"json::get"(ptr %choice.res25, ptr @str.269.struct)
  %ram.tag44 = extractvalue { i1, i64 } %call.res43, 0
  br i1 %ram.tag44, label %choice.then45, label %choice.else46

choice.then45:                                    ; preds = %choice.exit31
  %ram.pay48 = extractvalue { i1, i64 } %call.res43, 1
  %pay.ptr49 = inttoptr i64 %ram.pay48 to ptr
  br label %choice.exit47

choice.else46:                                    ; preds = %choice.exit31
  %arena.cur53 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 16)
  store i64 3, ptr %enum.alloc54, align 8
  %pay.gep56 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc54, i32 0, i32 1
  store ptr null, ptr %pay.gep56, align 8
  br label %choice.exit47

choice.exit47:                                    ; preds = %choice.else46, %choice.then45
  %choice.res57 = phi ptr [ %pay.ptr49, %choice.then45 ], [ %enum.alloc54, %choice.else46 ]
  %call.res59 = call { i1, i64 } @"json::get_int"(ptr %choice.res41, ptr @str.248.struct)
  %ram.tag60 = extractvalue { i1, i64 } %call.res59, 0
  %ram.pay64 = extractvalue { i1, i64 } %call.res59, 1
  %choice.res67 = select i1 %ram.tag60, i64 %ram.pay64, i64 0
  %call.res69 = call { i1, i64 } @"json::get_int"(ptr %choice.res57, ptr @str.248.struct)
  %ram.tag70 = extractvalue { i1, i64 } %call.res69, 0
  %ram.pay74 = extractvalue { i1, i64 } %call.res69, 1
  %choice.res78 = select i1 %ram.tag70, i64 %ram.pay74, i64 1000000
  %arena.cur80 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 513)
  store i8 0, ptr %b.buf, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.buf, ptr align 1 @str.257, i64 1, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.buf, i64 1
  store i8 0, ptr %b.app.nul, align 1
  %call.res100 = call ptr @"lsp::get_doc"(ptr %ret.niche.sel.str.0.struct)
  %niche.ne.null102 = icmp ne ptr %call.res100, null
  br i1 %niche.ne.null102, label %choice.then103, label %choice.exit104

choice.then103:                                   ; preds = %choice.exit47
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %call.res100, i32 0, i32 3
  %fld.load = load ptr, ptr %fld.gep, align 8
  %arr.cycle.len107 = load i64, ptr %fld.load, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 1
  %arr.cycle.data108 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.974

choice.exit104:                                   ; preds = %loop.header.974, %choice.exit47
  %builder.new.salloc.sroa.0.0 = phi i64 [ 1, %choice.exit47 ], [ %builder.new.salloc.sroa.0.1, %loop.header.974 ]
  %builder.new.salloc.sroa.36.1 = phi ptr [ %b.buf, %choice.exit47 ], [ %builder.new.salloc.sroa.36.2, %loop.header.974 ]
  %builder.new.salloc.sroa.72.1 = phi i64 [ 512, %choice.exit47 ], [ %builder.new.salloc.sroa.72.2, %loop.header.974 ]
  %b.app.new.len743 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 1)
  %sum744 = extractvalue { i64, i1 } %b.app.new.len743, 0
  %ovf745 = extractvalue { i64, i1 } %b.app.new.len743, 1
  br i1 %ovf745, label %str_overflow_abort747, label %b.app.new.len746

loop.header.974:                                  ; preds = %choice.exit231, %choice.then103
  %builder.new.salloc.sroa.0.1 = phi i64 [ 1, %choice.then103 ], [ %builder.new.salloc.sroa.0.2, %choice.exit231 ]
  %builder.new.salloc.sroa.36.2 = phi ptr [ %b.buf, %choice.then103 ], [ %builder.new.salloc.sroa.36.3, %choice.exit231 ]
  %builder.new.salloc.sroa.72.2 = phi i64 [ 512, %choice.then103 ], [ %builder.new.salloc.sroa.72.3, %choice.exit231 ]
  %"var.emitted'.0" = phi i64 [ 0, %choice.then103 ], [ %"var.emitted'.1", %choice.exit231 ]
  %loop.idx.974.0 = phi i64 [ 0, %choice.then103 ], [ %loop.next, %choice.exit231 ]
  %loop.cond = icmp slt i64 %loop.idx.974.0, %arr.cycle.len107
  br i1 %loop.cond, label %loop.body.974, label %choice.exit104

loop.body.974:                                    ; preds = %loop.header.974
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data108, i64 %loop.idx.974.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.gep112 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 3
  %fld.load113 = load i64, ptr %fld.gep112, align 8
  %subtmp = sub i64 %fld.load113, 1
  %fld.gep115 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 6
  %fld.load116 = load i64, ptr %fld.gep115, align 8
  %subtmp117 = sub i64 %fld.load116, 1
  %cmptmp = icmp sgt i64 %fld.load113, 0
  %cmptmp123 = icmp sge i64 %subtmp, %choice.res67
  %and.975.phi = select i1 %cmptmp, i1 %cmptmp123, i1 false
  %cmptmp126 = icmp sle i64 %subtmp, %choice.res78
  %spec.select828 = select i1 %and.975.phi, i1 %cmptmp126, i1 %and.975.phi
  %fld.load129 = load ptr, ptr %slot.i2p, align 8
  %cat.seg130 = load i64, ptr %fld.load129, align 8
  %cat.seg131 = and i64 %cat.seg130, 281474976710655
  %cat.seg132 = getelementptr inbounds { i64, ptr }, ptr %fld.load129, i32 0, i32 1
  %cat.seg133 = load ptr, ptr %cat.seg132, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg131, i64 2)
  %sum134 = extractvalue { i64, i1 } %cat.sum.len, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum134, i64 1)
  %sum139 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur144 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 %sum139)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %cat.seg133, i64 %cat.seg131, i1 false)
  %cat.dst145 = getelementptr i8, ptr %concat.buf, i64 %cat.seg131
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst145, ptr align 1 @str.6, i64 2, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum134
  store i8 0, ptr %concat.nul, align 1
  %fld.gep147 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 1
  %fld.load148 = load ptr, ptr %fld.gep147, align 8
  %str.len.query149 = load i64, ptr %fld.load148, align 8
  %str.len.query150 = and i64 %str.len.query149, 281474976710655
  %str.len.query154 = and i64 %sum134, 281474976710655
  %cmptmp155 = icmp sgt i64 %str.len.query150, %str.len.query154
  br i1 %cmptmp155, label %and.977.then, label %and.977.exit

and.977.then:                                     ; preds = %loop.body.974
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load148, i32 0, i32 1
  %s.read.data161 = load ptr, ptr %s.read.data, align 8
  %view.empty = icmp sle i64 %str.len.query154, 0
  %view.len = select i1 %view.empty, i64 0, i64 %str.len.query154
  %eq.memcmp = call i32 @memcmp(ptr %s.read.data161, ptr %concat.buf, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %and.977.exit

and.977.exit:                                     ; preds = %loop.body.974, %and.977.then
  %and.977.phi = phi i1 [ %eq.cmp.zero, %and.977.then ], [ false, %loop.body.974 ]
  %fld.load173 = load ptr, ptr %fld.gep147, align 8
  %str.len.query175 = load i64, ptr %fld.load173, align 8
  %str.len.query176 = and i64 %str.len.query175, 281474976710655
  %cmptmp177 = icmp slt i64 %str.len.query176, 3
  br i1 %cmptmp177, label %or.978.exit, label %or.978.else

or.978.else:                                      ; preds = %and.977.exit
  %s.read.data184 = getelementptr inbounds { i64, ptr }, ptr %fld.load173, i32 0, i32 1
  %s.read.data185 = load ptr, ptr %s.read.data184, align 8
  %subtmp192 = sub nuw nsw i64 %str.len.query176, 3
  %rel.start193 = add nuw nsw i64 %str.len.query176, %subtmp192
  %norm.start194 = select i1 false, i64 %rel.start193, i64 %subtmp192
  %c.start.0196 = select i1 false, i64 0, i64 %norm.start194
  %start.gt.len197 = icmp sgt i64 %c.start.0196, %str.len.query176
  %final.start198 = select i1 %start.gt.len197, i64 %str.len.query176, i64 %c.start.0196
  %view.empty206 = icmp sle i64 %str.len.query176, %final.start198
  %view.len.sub207 = sub nsw i64 %str.len.query176, %final.start198
  %view.len208 = select i1 %view.empty206, i64 0, i64 %view.len.sub207
  %view.data209 = getelementptr i8, ptr %s.read.data185, i64 %final.start198
  %eq.len213 = icmp eq i64 %view.len208, 3
  br i1 %eq.len213, label %str.eq.then214, label %str.eq.merge216

or.978.exit:                                      ; preds = %and.977.exit, %str.eq.merge216
  %or.978.phi = phi i1 [ %sl.neq, %str.eq.merge216 ], [ true, %and.977.exit ]
  %fld.gep221 = getelementptr inbounds { ptr, ptr, i64, i64, i64, i64, i64, i1, i1 }, ptr %slot.i2p, i32 0, i32 7
  %fld.load222 = load i1, ptr %fld.gep221, align 1
  %nottmp = xor i1 %fld.load222, true
  %and.976.phi. = select i1 %nottmp, i1 %spec.select828, i1 false
  %spec.select = select i1 %and.976.phi., i1 %and.977.phi, i1 %and.976.phi.
  %or.978.phi.and.980.phi = select i1 %spec.select, i1 %or.978.phi, i1 %spec.select
  br i1 %or.978.phi.and.980.phi, label %and.982.then, label %choice.exit231

str.eq.then214:                                   ; preds = %or.978.else
  %eq.memcmp217 = call i32 @memcmp(ptr %view.data209, ptr @str.5, i64 3)
  %eq.cmp.zero218 = icmp eq i32 %eq.memcmp217, 0
  br label %str.eq.merge216

str.eq.merge216:                                  ; preds = %or.978.else, %str.eq.then214
  %str.eq.result219 = phi i1 [ %eq.cmp.zero218, %str.eq.then214 ], [ false, %or.978.else ]
  %sl.neq = xor i1 %str.eq.result219, true
  br label %or.978.exit

and.982.then:                                     ; preds = %or.978.exit
  %fld.load228 = load i64, ptr %fld.gep115, align 8
  %cmptmp229 = icmp sgt i64 %fld.load228, 0
  br i1 %cmptmp229, label %choice.then230, label %choice.exit231

choice.then230:                                   ; preds = %and.982.then
  %fld.load234 = load ptr, ptr %fld.gep147, align 8
  %s.read.len236 = load i64, ptr %fld.load234, align 8
  %s.read.len237 = and i64 %s.read.len236, 281474976710655
  %s.read.data238 = getelementptr inbounds { i64, ptr }, ptr %fld.load234, i32 0, i32 1
  %s.read.data239 = load ptr, ptr %s.read.data238, align 8
  %start.gt.len249 = icmp sgt i64 %str.len.query154, %s.read.len237
  %final.start250 = select i1 %start.gt.len249, i64 %s.read.len237, i64 %str.len.query154
  %view.empty258 = icmp sle i64 %s.read.len237, %final.start250
  %view.len.sub259 = sub nsw i64 %s.read.len237, %final.start250
  %view.len260 = select i1 %view.empty258, i64 0, i64 %view.len.sub259
  %view.data261 = getelementptr i8, ptr %s.read.data239, i64 %final.start250
  %eq.lhs.len266 = and i64 %view.len260, 281474976710655
  %eq.len268 = icmp eq i64 %eq.lhs.len266, 0
  br i1 %eq.len268, label %str.eq.then269, label %str.eq.merge271

choice.exit231:                                   ; preds = %str.eq.merge302, %str.eq.merge271, %str.eq.merge285, %or.978.exit, %str.eq.merge319, %b.grow_done710, %and.982.then
  %builder.new.salloc.sroa.0.2 = phi i64 [ %builder.new.salloc.sroa.0.1, %and.982.then ], [ %sum700, %b.grow_done710 ], [ %builder.new.salloc.sroa.0.1, %str.eq.merge319 ], [ %builder.new.salloc.sroa.0.1, %or.978.exit ], [ %builder.new.salloc.sroa.0.1, %str.eq.merge285 ], [ %builder.new.salloc.sroa.0.1, %str.eq.merge271 ], [ %builder.new.salloc.sroa.0.1, %str.eq.merge302 ]
  %builder.new.salloc.sroa.36.3 = phi ptr [ %builder.new.salloc.sroa.36.2, %and.982.then ], [ %builder.new.salloc.sroa.36.14, %b.grow_done710 ], [ %builder.new.salloc.sroa.36.2, %str.eq.merge319 ], [ %builder.new.salloc.sroa.36.2, %or.978.exit ], [ %builder.new.salloc.sroa.36.2, %str.eq.merge285 ], [ %builder.new.salloc.sroa.36.2, %str.eq.merge271 ], [ %builder.new.salloc.sroa.36.2, %str.eq.merge302 ]
  %builder.new.salloc.sroa.72.3 = phi i64 [ %builder.new.salloc.sroa.72.2, %and.982.then ], [ %builder.new.salloc.sroa.72.14, %b.grow_done710 ], [ %builder.new.salloc.sroa.72.2, %str.eq.merge319 ], [ %builder.new.salloc.sroa.72.2, %or.978.exit ], [ %builder.new.salloc.sroa.72.2, %str.eq.merge285 ], [ %builder.new.salloc.sroa.72.2, %str.eq.merge271 ], [ %builder.new.salloc.sroa.72.2, %str.eq.merge302 ]
  %"var.emitted'.1" = phi i64 [ %"var.emitted'.0", %and.982.then ], [ %addtmp, %b.grow_done710 ], [ %"var.emitted'.0", %str.eq.merge319 ], [ %"var.emitted'.0", %or.978.exit ], [ %"var.emitted'.0", %str.eq.merge285 ], [ %"var.emitted'.0", %str.eq.merge271 ], [ %"var.emitted'.0", %str.eq.merge302 ]
  %loop.next = add i64 %loop.idx.974.0, 1
  br label %loop.header.974

str.eq.then269:                                   ; preds = %choice.then230
  %eq.memcmp273 = call i32 @memcmp(ptr %view.data261, ptr @str.0, i64 0)
  %eq.cmp.zero274 = icmp eq i32 %eq.memcmp273, 0
  br label %str.eq.merge271

str.eq.merge271:                                  ; preds = %choice.then230, %str.eq.then269
  %str.eq.result275 = phi i1 [ %eq.cmp.zero274, %str.eq.then269 ], [ false, %choice.then230 ]
  %str.neq = xor i1 %str.eq.result275, true
  br i1 %str.neq, label %and.983.then, label %choice.exit231

and.983.then:                                     ; preds = %str.eq.merge271
  %eq.len282 = icmp eq i64 %eq.lhs.len266, 1
  br i1 %eq.len282, label %str.eq.then283, label %str.eq.merge285

str.eq.then283:                                   ; preds = %and.983.then
  %eq.memcmp289 = call i32 @memcmp(ptr %view.data261, ptr @str.7, i64 1)
  %eq.cmp.zero290 = icmp eq i32 %eq.memcmp289, 0
  br label %str.eq.merge285

str.eq.merge285:                                  ; preds = %and.983.then, %str.eq.then283
  %str.eq.result291 = phi i1 [ %eq.cmp.zero290, %str.eq.then283 ], [ false, %and.983.then ]
  %str.neq292 = xor i1 %str.eq.result291, true
  br i1 %str.neq292, label %and.984.then, label %choice.exit231

and.984.then:                                     ; preds = %str.eq.merge285
  %eq.len299 = icmp eq i64 %eq.lhs.len266, 1
  br i1 %eq.len299, label %str.eq.then300, label %str.eq.merge302

str.eq.then300:                                   ; preds = %and.984.then
  %eq.memcmp306 = call i32 @memcmp(ptr %view.data261, ptr @str.1, i64 1)
  %eq.cmp.zero307 = icmp eq i32 %eq.memcmp306, 0
  br label %str.eq.merge302

str.eq.merge302:                                  ; preds = %and.984.then, %str.eq.then300
  %str.eq.result308 = phi i1 [ %eq.cmp.zero307, %str.eq.then300 ], [ false, %and.984.then ]
  %str.neq309 = xor i1 %str.eq.result308, true
  br i1 %str.neq309, label %and.985.then, label %choice.exit231

and.985.then:                                     ; preds = %str.eq.merge302
  %eq.len316 = icmp eq i64 %eq.lhs.len266, 2
  br i1 %eq.len316, label %str.eq.then317, label %str.eq.merge319

str.eq.then317:                                   ; preds = %and.985.then
  %eq.memcmp323 = call i32 @memcmp(ptr %view.data261, ptr @str.9, i64 2)
  %eq.cmp.zero324 = icmp eq i32 %eq.memcmp323, 0
  br label %str.eq.merge319

str.eq.merge319:                                  ; preds = %and.985.then, %str.eq.then317
  %str.eq.result325 = phi i1 [ %eq.cmp.zero324, %str.eq.then317 ], [ false, %and.985.then ]
  %str.neq326 = xor i1 %str.eq.result325, true
  br i1 %str.neq326, label %choice.then327, label %choice.exit231

choice.then327:                                   ; preds = %str.eq.merge319
  %cmptmp330 = icmp sgt i64 %"var.emitted'.0", 0
  br i1 %cmptmp330, label %choice.then331, label %choice.exit332

choice.then331:                                   ; preds = %choice.then327
  %b.app.new.len339 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.1, i64 1)
  %sum340 = extractvalue { i64, i1 } %b.app.new.len339, 0
  %ovf341 = extractvalue { i64, i1 } %b.app.new.len339, 1
  br i1 %ovf341, label %str_overflow_abort343, label %b.app.new.len342

choice.exit332:                                   ; preds = %b.grow_done350, %choice.then327
  %builder.new.salloc.sroa.0.4 = phi i64 [ %sum340, %b.grow_done350 ], [ %builder.new.salloc.sroa.0.1, %choice.then327 ]
  %builder.new.salloc.sroa.36.5 = phi ptr [ %builder.new.salloc.sroa.36.6, %b.grow_done350 ], [ %builder.new.salloc.sroa.36.2, %choice.then327 ]
  %builder.new.salloc.sroa.72.5 = phi i64 [ %builder.new.salloc.sroa.72.6, %b.grow_done350 ], [ %builder.new.salloc.sroa.72.2, %choice.then327 ]
  %b.app.new.len382 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.4, i64 20)
  %sum383 = extractvalue { i64, i1 } %b.app.new.len382, 0
  %ovf384 = extractvalue { i64, i1 } %b.app.new.len382, 1
  br i1 %ovf384, label %str_overflow_abort386, label %b.app.new.len385

b.app.new.len342:                                 ; preds = %choice.then331
  %b.need.grow347 = icmp slt i64 %builder.new.salloc.sroa.72.2, %sum340
  br i1 %b.need.grow347, label %b.grow2348, label %b.grow_done350

str_overflow_abort343:                            ; preds = %choice.then331
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2348:                                       ; preds = %b.app.new.len342
  %b.cap2351 = mul i64 %builder.new.salloc.sroa.72.2, 2
  %b.cap.small352 = icmp slt i64 %b.cap2351, 16
  %b.cap.grow353 = select i1 %b.cap.small352, i64 16, i64 %b.cap2351
  %b.cap.need354 = icmp slt i64 %b.cap.grow353, %sum340
  %b.new.cap355 = select i1 %b.cap.need354, i64 %sum340, i64 %b.cap.grow353
  %b.new.buf.len2360 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap355, i64 1)
  %sum361 = extractvalue { i64, i1 } %b.new.buf.len2360, 0
  %ovf362 = extractvalue { i64, i1 } %b.new.buf.len2360, 1
  br i1 %ovf362, label %str_overflow_abort364, label %b.new.buf.len2363

b.grow_done350:                                   ; preds = %b.app.new.len342, %b.new.buf.len2363
  %builder.new.salloc.sroa.36.6 = phi ptr [ %b.new.buf2367, %b.new.buf.len2363 ], [ %builder.new.salloc.sroa.36.2, %b.app.new.len342 ]
  %builder.new.salloc.sroa.72.6 = phi i64 [ %b.new.cap355, %b.new.buf.len2363 ], [ %builder.new.salloc.sroa.72.2, %b.app.new.len342 ]
  %b.app.dst373 = getelementptr i8, ptr %builder.new.salloc.sroa.36.6, i64 %builder.new.salloc.sroa.0.1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst373, ptr align 1 @str.68, i64 1, i1 false)
  %b.app.nul374 = getelementptr i8, ptr %builder.new.salloc.sroa.36.6, i64 %sum340
  store i8 0, ptr %b.app.nul374, align 1
  br label %choice.exit332

b.new.buf.len2363:                                ; preds = %b.grow2348
  %arena.cur366 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2367 = call ptr @dva_arena_alloc(ptr %arena.cur366, i64 %sum361)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2367, ptr align 1 %builder.new.salloc.sroa.36.2, i64 %builder.new.salloc.sroa.0.1, i1 false)
  %b.grow2.nul368 = getelementptr i8, ptr %b.new.buf2367, i64 %builder.new.salloc.sroa.0.1
  store i8 0, ptr %b.grow2.nul368, align 1
  br label %b.grow_done350

str_overflow_abort364:                            ; preds = %b.grow2348
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len385:                                 ; preds = %choice.exit332
  %b.need.grow390 = icmp slt i64 %builder.new.salloc.sroa.72.5, %sum383
  br i1 %b.need.grow390, label %b.grow2391, label %b.grow_done393

str_overflow_abort386:                            ; preds = %choice.exit332
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2391:                                       ; preds = %b.app.new.len385
  %b.cap2394 = mul i64 %builder.new.salloc.sroa.72.5, 2
  %b.cap.small395 = icmp slt i64 %b.cap2394, 16
  %b.cap.grow396 = select i1 %b.cap.small395, i64 16, i64 %b.cap2394
  %b.cap.need397 = icmp slt i64 %b.cap.grow396, %sum383
  %b.new.cap398 = select i1 %b.cap.need397, i64 %sum383, i64 %b.cap.grow396
  %b.new.buf.len2403 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap398, i64 1)
  %sum404 = extractvalue { i64, i1 } %b.new.buf.len2403, 0
  %ovf405 = extractvalue { i64, i1 } %b.new.buf.len2403, 1
  br i1 %ovf405, label %str_overflow_abort407, label %b.new.buf.len2406

b.grow_done393:                                   ; preds = %b.app.new.len385, %b.new.buf.len2406
  %builder.new.salloc.sroa.36.7 = phi ptr [ %b.new.buf2410, %b.new.buf.len2406 ], [ %builder.new.salloc.sroa.36.5, %b.app.new.len385 ]
  %builder.new.salloc.sroa.72.7 = phi i64 [ %b.new.cap398, %b.new.buf.len2406 ], [ %builder.new.salloc.sroa.72.5, %b.app.new.len385 ]
  %b.app.dst416 = getelementptr i8, ptr %builder.new.salloc.sroa.36.7, i64 %builder.new.salloc.sroa.0.4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst416, ptr align 1 @str.270, i64 20, i1 false)
  %b.app.nul417 = getelementptr i8, ptr %builder.new.salloc.sroa.36.7, i64 %sum383
  store i8 0, ptr %b.app.nul417, align 1
  %b.int.cap = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum383, i64 24)
  %sum421 = extractvalue { i64, i1 } %b.int.cap, 0
  %ovf422 = extractvalue { i64, i1 } %b.int.cap, 1
  br i1 %ovf422, label %str_overflow_abort424, label %b.int.cap423

b.new.buf.len2406:                                ; preds = %b.grow2391
  %arena.cur409 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2410 = call ptr @dva_arena_alloc(ptr %arena.cur409, i64 %sum404)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2410, ptr align 1 %builder.new.salloc.sroa.36.5, i64 %builder.new.salloc.sroa.0.4, i1 false)
  %b.grow2.nul411 = getelementptr i8, ptr %b.new.buf2410, i64 %builder.new.salloc.sroa.0.4
  store i8 0, ptr %b.grow2.nul411, align 1
  br label %b.grow_done393

str_overflow_abort407:                            ; preds = %b.grow2391
  call void @dva_abort_str_overflow_msg()
  unreachable

b.int.cap423:                                     ; preds = %b.grow_done393
  %b.need.grow428 = icmp slt i64 %builder.new.salloc.sroa.72.7, %sum421
  br i1 %b.need.grow428, label %b.grow2429, label %b.grow_done431

str_overflow_abort424:                            ; preds = %b.grow_done393
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2429:                                       ; preds = %b.int.cap423
  %b.cap2432 = mul i64 %builder.new.salloc.sroa.72.7, 2
  %b.cap.small433 = icmp slt i64 %b.cap2432, 16
  %b.cap.grow434 = select i1 %b.cap.small433, i64 16, i64 %b.cap2432
  %b.cap.need435 = icmp slt i64 %b.cap.grow434, %sum421
  %b.new.cap436 = select i1 %b.cap.need435, i64 %sum421, i64 %b.cap.grow434
  %b.new.buf.len2441 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap436, i64 1)
  %sum442 = extractvalue { i64, i1 } %b.new.buf.len2441, 0
  %ovf443 = extractvalue { i64, i1 } %b.new.buf.len2441, 1
  br i1 %ovf443, label %str_overflow_abort445, label %b.new.buf.len2444

b.grow_done431:                                   ; preds = %b.int.cap423, %b.new.buf.len2444
  %builder.new.salloc.sroa.36.8 = phi ptr [ %b.new.buf2448, %b.new.buf.len2444 ], [ %builder.new.salloc.sroa.36.7, %b.int.cap423 ]
  %builder.new.salloc.sroa.72.8 = phi i64 [ %b.new.cap436, %b.new.buf.len2444 ], [ %builder.new.salloc.sroa.72.7, %b.int.cap423 ]
  %b.int.dst = getelementptr i8, ptr %builder.new.salloc.sroa.36.8, i64 %sum383
  %b.int.len = call i64 @dva_fmt_i64_buf(ptr %b.int.dst, i64 %subtmp, i1 false)
  %b.int.new.len = add i64 %sum383, %b.int.len
  %b.app.new.len459 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.int.new.len, i64 13)
  %sum460 = extractvalue { i64, i1 } %b.app.new.len459, 0
  %ovf461 = extractvalue { i64, i1 } %b.app.new.len459, 1
  br i1 %ovf461, label %str_overflow_abort463, label %b.app.new.len462

b.new.buf.len2444:                                ; preds = %b.grow2429
  %arena.cur447 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2448 = call ptr @dva_arena_alloc(ptr %arena.cur447, i64 %sum442)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2448, ptr align 1 %builder.new.salloc.sroa.36.7, i64 %sum383, i1 false)
  %b.grow2.nul449 = getelementptr i8, ptr %b.new.buf2448, i64 %sum383
  store i8 0, ptr %b.grow2.nul449, align 1
  br label %b.grow_done431

str_overflow_abort445:                            ; preds = %b.grow2429
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len462:                                 ; preds = %b.grow_done431
  %b.need.grow467 = icmp slt i64 %builder.new.salloc.sroa.72.8, %sum460
  br i1 %b.need.grow467, label %b.grow2468, label %b.grow_done470

str_overflow_abort463:                            ; preds = %b.grow_done431
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2468:                                       ; preds = %b.app.new.len462
  %b.cap2471 = mul i64 %builder.new.salloc.sroa.72.8, 2
  %b.cap.small472 = icmp slt i64 %b.cap2471, 16
  %b.cap.grow473 = select i1 %b.cap.small472, i64 16, i64 %b.cap2471
  %b.cap.need474 = icmp slt i64 %b.cap.grow473, %sum460
  %b.new.cap475 = select i1 %b.cap.need474, i64 %sum460, i64 %b.cap.grow473
  %b.new.buf.len2480 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap475, i64 1)
  %sum481 = extractvalue { i64, i1 } %b.new.buf.len2480, 0
  %ovf482 = extractvalue { i64, i1 } %b.new.buf.len2480, 1
  br i1 %ovf482, label %str_overflow_abort484, label %b.new.buf.len2483

b.grow_done470:                                   ; preds = %b.app.new.len462, %b.new.buf.len2483
  %builder.new.salloc.sroa.36.9 = phi ptr [ %b.new.buf2487, %b.new.buf.len2483 ], [ %builder.new.salloc.sroa.36.8, %b.app.new.len462 ]
  %builder.new.salloc.sroa.72.9 = phi i64 [ %b.new.cap475, %b.new.buf.len2483 ], [ %builder.new.salloc.sroa.72.8, %b.app.new.len462 ]
  %b.app.dst493 = getelementptr i8, ptr %builder.new.salloc.sroa.36.9, i64 %b.int.new.len
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst493, ptr align 1 @str.56, i64 13, i1 false)
  %b.app.nul494 = getelementptr i8, ptr %builder.new.salloc.sroa.36.9, i64 %sum460
  store i8 0, ptr %b.app.nul494, align 1
  %b.int.cap499 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum460, i64 24)
  %sum500 = extractvalue { i64, i1 } %b.int.cap499, 0
  %ovf501 = extractvalue { i64, i1 } %b.int.cap499, 1
  br i1 %ovf501, label %str_overflow_abort503, label %b.int.cap502

b.new.buf.len2483:                                ; preds = %b.grow2468
  %arena.cur486 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2487 = call ptr @dva_arena_alloc(ptr %arena.cur486, i64 %sum481)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2487, ptr align 1 %builder.new.salloc.sroa.36.8, i64 %b.int.new.len, i1 false)
  %b.grow2.nul488 = getelementptr i8, ptr %b.new.buf2487, i64 %b.int.new.len
  store i8 0, ptr %b.grow2.nul488, align 1
  br label %b.grow_done470

str_overflow_abort484:                            ; preds = %b.grow2468
  call void @dva_abort_str_overflow_msg()
  unreachable

b.int.cap502:                                     ; preds = %b.grow_done470
  %b.need.grow507 = icmp slt i64 %builder.new.salloc.sroa.72.9, %sum500
  br i1 %b.need.grow507, label %b.grow2508, label %b.grow_done510

str_overflow_abort503:                            ; preds = %b.grow_done470
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2508:                                       ; preds = %b.int.cap502
  %b.cap2511 = mul i64 %builder.new.salloc.sroa.72.9, 2
  %b.cap.small512 = icmp slt i64 %b.cap2511, 16
  %b.cap.grow513 = select i1 %b.cap.small512, i64 16, i64 %b.cap2511
  %b.cap.need514 = icmp slt i64 %b.cap.grow513, %sum500
  %b.new.cap515 = select i1 %b.cap.need514, i64 %sum500, i64 %b.cap.grow513
  %b.new.buf.len2520 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap515, i64 1)
  %sum521 = extractvalue { i64, i1 } %b.new.buf.len2520, 0
  %ovf522 = extractvalue { i64, i1 } %b.new.buf.len2520, 1
  br i1 %ovf522, label %str_overflow_abort524, label %b.new.buf.len2523

b.grow_done510:                                   ; preds = %b.int.cap502, %b.new.buf.len2523
  %builder.new.salloc.sroa.36.10 = phi ptr [ %b.new.buf2527, %b.new.buf.len2523 ], [ %builder.new.salloc.sroa.36.9, %b.int.cap502 ]
  %builder.new.salloc.sroa.72.10 = phi i64 [ %b.new.cap515, %b.new.buf.len2523 ], [ %builder.new.salloc.sroa.72.9, %b.int.cap502 ]
  %b.int.dst533 = getelementptr i8, ptr %builder.new.salloc.sroa.36.10, i64 %sum460
  %b.int.len534 = call i64 @dva_fmt_i64_buf(ptr %b.int.dst533, i64 %subtmp117, i1 false)
  %b.int.new.len535 = add i64 %sum460, %b.int.len534
  %b.app.new.len542 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.int.new.len535, i64 1)
  %sum543 = extractvalue { i64, i1 } %b.app.new.len542, 0
  %ovf544 = extractvalue { i64, i1 } %b.app.new.len542, 1
  br i1 %ovf544, label %str_overflow_abort546, label %b.app.new.len545

b.new.buf.len2523:                                ; preds = %b.grow2508
  %arena.cur526 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2527 = call ptr @dva_arena_alloc(ptr %arena.cur526, i64 %sum521)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2527, ptr align 1 %builder.new.salloc.sroa.36.9, i64 %sum460, i1 false)
  %b.grow2.nul528 = getelementptr i8, ptr %b.new.buf2527, i64 %sum460
  store i8 0, ptr %b.grow2.nul528, align 1
  br label %b.grow_done510

str_overflow_abort524:                            ; preds = %b.grow2508
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len545:                                 ; preds = %b.grow_done510
  %b.need.grow550 = icmp slt i64 %builder.new.salloc.sroa.72.10, %sum543
  br i1 %b.need.grow550, label %b.grow2551, label %b.grow_done553

str_overflow_abort546:                            ; preds = %b.grow_done510
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2551:                                       ; preds = %b.app.new.len545
  %b.cap2554 = mul i64 %builder.new.salloc.sroa.72.10, 2
  %b.cap.small555 = icmp slt i64 %b.cap2554, 16
  %b.cap.grow556 = select i1 %b.cap.small555, i64 16, i64 %b.cap2554
  %b.cap.need557 = icmp slt i64 %b.cap.grow556, %sum543
  %b.new.cap558 = select i1 %b.cap.need557, i64 %sum543, i64 %b.cap.grow556
  %b.new.buf.len2563 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap558, i64 1)
  %sum564 = extractvalue { i64, i1 } %b.new.buf.len2563, 0
  %ovf565 = extractvalue { i64, i1 } %b.new.buf.len2563, 1
  br i1 %ovf565, label %str_overflow_abort567, label %b.new.buf.len2566

b.grow_done553:                                   ; preds = %b.app.new.len545, %b.new.buf.len2566
  %builder.new.salloc.sroa.36.11 = phi ptr [ %b.new.buf2570, %b.new.buf.len2566 ], [ %builder.new.salloc.sroa.36.10, %b.app.new.len545 ]
  %builder.new.salloc.sroa.72.11 = phi i64 [ %b.new.cap558, %b.new.buf.len2566 ], [ %builder.new.salloc.sroa.72.10, %b.app.new.len545 ]
  %b.app.dst576 = getelementptr i8, ptr %builder.new.salloc.sroa.36.11, i64 %b.int.new.len535
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst576, ptr align 1 @str.44, i64 1, i1 false)
  %b.app.nul577 = getelementptr i8, ptr %builder.new.salloc.sroa.36.11, i64 %sum543
  store i8 0, ptr %b.app.nul577, align 1
  %b.app.new.len585 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum543, i64 9)
  %sum586 = extractvalue { i64, i1 } %b.app.new.len585, 0
  %ovf587 = extractvalue { i64, i1 } %b.app.new.len585, 1
  br i1 %ovf587, label %str_overflow_abort589, label %b.app.new.len588

b.new.buf.len2566:                                ; preds = %b.grow2551
  %arena.cur569 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2570 = call ptr @dva_arena_alloc(ptr %arena.cur569, i64 %sum564)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2570, ptr align 1 %builder.new.salloc.sroa.36.10, i64 %b.int.new.len535, i1 false)
  %b.grow2.nul571 = getelementptr i8, ptr %b.new.buf2570, i64 %b.int.new.len535
  store i8 0, ptr %b.grow2.nul571, align 1
  br label %b.grow_done553

str_overflow_abort567:                            ; preds = %b.grow2551
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len588:                                 ; preds = %b.grow_done553
  %b.need.grow593 = icmp slt i64 %builder.new.salloc.sroa.72.11, %sum586
  br i1 %b.need.grow593, label %b.grow2594, label %b.grow_done596

str_overflow_abort589:                            ; preds = %b.grow_done553
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2594:                                       ; preds = %b.app.new.len588
  %b.cap2597 = mul i64 %builder.new.salloc.sroa.72.11, 2
  %b.cap.small598 = icmp slt i64 %b.cap2597, 16
  %b.cap.grow599 = select i1 %b.cap.small598, i64 16, i64 %b.cap2597
  %b.cap.need600 = icmp slt i64 %b.cap.grow599, %sum586
  %b.new.cap601 = select i1 %b.cap.need600, i64 %sum586, i64 %b.cap.grow599
  %b.new.buf.len2606 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap601, i64 1)
  %sum607 = extractvalue { i64, i1 } %b.new.buf.len2606, 0
  %ovf608 = extractvalue { i64, i1 } %b.new.buf.len2606, 1
  br i1 %ovf608, label %str_overflow_abort610, label %b.new.buf.len2609

b.grow_done596:                                   ; preds = %b.app.new.len588, %b.new.buf.len2609
  %builder.new.salloc.sroa.36.12 = phi ptr [ %b.new.buf2613, %b.new.buf.len2609 ], [ %builder.new.salloc.sroa.36.11, %b.app.new.len588 ]
  %builder.new.salloc.sroa.72.12 = phi i64 [ %b.new.cap601, %b.new.buf.len2609 ], [ %builder.new.salloc.sroa.72.11, %b.app.new.len588 ]
  %b.app.dst619 = getelementptr i8, ptr %builder.new.salloc.sroa.36.12, i64 %sum543
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst619, ptr align 1 @str.271, i64 9, i1 false)
  %b.app.nul620 = getelementptr i8, ptr %builder.new.salloc.sroa.36.12, i64 %sum586
  store i8 0, ptr %b.app.nul620, align 1
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 2, i64 %eq.lhs.len266)
  %sum629 = extractvalue { i64, i1 } %concat.sum.len, 0
  %concat.tot.len634 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum629, i64 1)
  %sum635 = extractvalue { i64, i1 } %concat.tot.len634, 0
  %arena.cur640 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf641 = call ptr @dva_arena_alloc(ptr %arena.cur640, i64 %sum635)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf641, ptr align 1 @str.6, i64 2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf641, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %view.data261, i64 %eq.lhs.len266, i1 false)
  %concat.nul642 = getelementptr i8, ptr %concat.buf641, i64 %sum629
  store i8 0, ptr %concat.nul642, align 1
  %arena.cur643 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str644 = call ptr @dva_arena_alloc(ptr %arena.cur643, i64 16)
  store i64 %sum629, ptr %concat.str644, align 8
  %str.build.data.gep646 = getelementptr inbounds { i64, ptr }, ptr %concat.str644, i32 0, i32 1
  store ptr %concat.buf641, ptr %str.build.data.gep646, align 8
  %call.res647 = call { i64, ptr } @"json::escape_string"(ptr %concat.str644)
  %arena.cur648 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur648, i64 16)
  store { i64, ptr } %call.res647, ptr %ret.ub.alloc, align 8
  %app.str.len650 = load i64, ptr %ret.ub.alloc, align 8
  %app.str.len651 = and i64 %app.str.len650, 281474976710655
  %app.str.data652 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data653 = load ptr, ptr %app.str.data652, align 8
  %b.app.new.len656 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum586, i64 %app.str.len651)
  %sum657 = extractvalue { i64, i1 } %b.app.new.len656, 0
  %ovf658 = extractvalue { i64, i1 } %b.app.new.len656, 1
  br i1 %ovf658, label %str_overflow_abort660, label %b.app.new.len659

b.new.buf.len2609:                                ; preds = %b.grow2594
  %arena.cur612 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2613 = call ptr @dva_arena_alloc(ptr %arena.cur612, i64 %sum607)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2613, ptr align 1 %builder.new.salloc.sroa.36.11, i64 %sum543, i1 false)
  %b.grow2.nul614 = getelementptr i8, ptr %b.new.buf2613, i64 %sum543
  store i8 0, ptr %b.grow2.nul614, align 1
  br label %b.grow_done596

str_overflow_abort610:                            ; preds = %b.grow2594
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len659:                                 ; preds = %b.grow_done596
  %b.need.grow664 = icmp slt i64 %builder.new.salloc.sroa.72.12, %sum657
  br i1 %b.need.grow664, label %b.grow2665, label %b.grow_done667

str_overflow_abort660:                            ; preds = %b.grow_done596
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2665:                                       ; preds = %b.app.new.len659
  %b.cap2668 = mul i64 %builder.new.salloc.sroa.72.12, 2
  %b.cap.small669 = icmp slt i64 %b.cap2668, 16
  %b.cap.grow670 = select i1 %b.cap.small669, i64 16, i64 %b.cap2668
  %b.cap.need671 = icmp slt i64 %b.cap.grow670, %sum657
  %b.new.cap672 = select i1 %b.cap.need671, i64 %sum657, i64 %b.cap.grow670
  %b.new.buf.len2677 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap672, i64 1)
  %sum678 = extractvalue { i64, i1 } %b.new.buf.len2677, 0
  %ovf679 = extractvalue { i64, i1 } %b.new.buf.len2677, 1
  br i1 %ovf679, label %str_overflow_abort681, label %b.new.buf.len2680

b.grow_done667:                                   ; preds = %b.app.new.len659, %b.new.buf.len2680
  %builder.new.salloc.sroa.36.13 = phi ptr [ %b.new.buf2684, %b.new.buf.len2680 ], [ %builder.new.salloc.sroa.36.12, %b.app.new.len659 ]
  %builder.new.salloc.sroa.72.13 = phi i64 [ %b.new.cap672, %b.new.buf.len2680 ], [ %builder.new.salloc.sroa.72.12, %b.app.new.len659 ]
  %b.app.dst690 = getelementptr i8, ptr %builder.new.salloc.sroa.36.13, i64 %sum586
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst690, ptr align 1 %app.str.data653, i64 %app.str.len651, i1 false)
  %b.app.nul691 = getelementptr i8, ptr %builder.new.salloc.sroa.36.13, i64 %sum657
  store i8 0, ptr %b.app.nul691, align 1
  %b.app.new.len699 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum657, i64 50)
  %sum700 = extractvalue { i64, i1 } %b.app.new.len699, 0
  %ovf701 = extractvalue { i64, i1 } %b.app.new.len699, 1
  br i1 %ovf701, label %str_overflow_abort703, label %b.app.new.len702

b.new.buf.len2680:                                ; preds = %b.grow2665
  %arena.cur683 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2684 = call ptr @dva_arena_alloc(ptr %arena.cur683, i64 %sum678)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2684, ptr align 1 %builder.new.salloc.sroa.36.12, i64 %sum586, i1 false)
  %b.grow2.nul685 = getelementptr i8, ptr %b.new.buf2684, i64 %sum586
  store i8 0, ptr %b.grow2.nul685, align 1
  br label %b.grow_done667

str_overflow_abort681:                            ; preds = %b.grow2665
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len702:                                 ; preds = %b.grow_done667
  %b.need.grow707 = icmp slt i64 %builder.new.salloc.sroa.72.13, %sum700
  br i1 %b.need.grow707, label %b.grow2708, label %b.grow_done710

str_overflow_abort703:                            ; preds = %b.grow_done667
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2708:                                       ; preds = %b.app.new.len702
  %b.cap2711 = mul i64 %builder.new.salloc.sroa.72.13, 2
  %b.cap.small712 = icmp slt i64 %b.cap2711, 16
  %b.cap.grow713 = select i1 %b.cap.small712, i64 16, i64 %b.cap2711
  %b.cap.need714 = icmp slt i64 %b.cap.grow713, %sum700
  %b.new.cap715 = select i1 %b.cap.need714, i64 %sum700, i64 %b.cap.grow713
  %b.new.buf.len2720 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap715, i64 1)
  %sum721 = extractvalue { i64, i1 } %b.new.buf.len2720, 0
  %ovf722 = extractvalue { i64, i1 } %b.new.buf.len2720, 1
  br i1 %ovf722, label %str_overflow_abort724, label %b.new.buf.len2723

b.grow_done710:                                   ; preds = %b.app.new.len702, %b.new.buf.len2723
  %builder.new.salloc.sroa.36.14 = phi ptr [ %b.new.buf2727, %b.new.buf.len2723 ], [ %builder.new.salloc.sroa.36.13, %b.app.new.len702 ]
  %builder.new.salloc.sroa.72.14 = phi i64 [ %b.new.cap715, %b.new.buf.len2723 ], [ %builder.new.salloc.sroa.72.13, %b.app.new.len702 ]
  %b.app.dst733 = getelementptr i8, ptr %builder.new.salloc.sroa.36.14, i64 %sum657
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst733, ptr align 1 @str.272, i64 50, i1 false)
  %b.app.nul734 = getelementptr i8, ptr %builder.new.salloc.sroa.36.14, i64 %sum700
  store i8 0, ptr %b.app.nul734, align 1
  %addtmp = add i64 %"var.emitted'.0", 1
  br label %choice.exit231

b.new.buf.len2723:                                ; preds = %b.grow2708
  %arena.cur726 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2727 = call ptr @dva_arena_alloc(ptr %arena.cur726, i64 %sum721)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2727, ptr align 1 %builder.new.salloc.sroa.36.13, i64 %sum657, i1 false)
  %b.grow2.nul728 = getelementptr i8, ptr %b.new.buf2727, i64 %sum657
  store i8 0, ptr %b.grow2.nul728, align 1
  br label %b.grow_done710

str_overflow_abort724:                            ; preds = %b.grow2708
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len746:                                 ; preds = %choice.exit104
  %b.need.grow751 = icmp slt i64 %builder.new.salloc.sroa.72.1, %sum744
  br i1 %b.need.grow751, label %b.grow2752, label %b.grow_done754

str_overflow_abort747:                            ; preds = %choice.exit104
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2752:                                       ; preds = %b.app.new.len746
  %b.cap2755 = mul i64 %builder.new.salloc.sroa.72.1, 2
  %b.cap.small756 = icmp slt i64 %b.cap2755, 16
  %b.cap.grow757 = select i1 %b.cap.small756, i64 16, i64 %b.cap2755
  %b.cap.need758 = icmp slt i64 %b.cap.grow757, %sum744
  %b.new.cap759 = select i1 %b.cap.need758, i64 %sum744, i64 %b.cap.grow757
  %b.new.buf.len2764 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap759, i64 1)
  %sum765 = extractvalue { i64, i1 } %b.new.buf.len2764, 0
  %ovf766 = extractvalue { i64, i1 } %b.new.buf.len2764, 1
  br i1 %ovf766, label %str_overflow_abort768, label %b.new.buf.len2767

b.grow_done754:                                   ; preds = %b.app.new.len746, %b.new.buf.len2767
  %builder.new.salloc.sroa.36.15 = phi ptr [ %b.new.buf2771, %b.new.buf.len2767 ], [ %builder.new.salloc.sroa.36.1, %b.app.new.len746 ]
  %b.app.dst777 = getelementptr i8, ptr %builder.new.salloc.sroa.36.15, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst777, ptr align 1 @str.262, i64 1, i1 false)
  %b.app.nul778 = getelementptr i8, ptr %builder.new.salloc.sroa.36.15, i64 %sum744
  store i8 0, ptr %b.app.nul778, align 1
  store i64 %sum744, ptr %builder.freeze, align 8
  %str.build.data.gep785 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %builder.new.salloc.sroa.36.15, ptr %str.build.data.gep785, align 8
  call void @"lsp::send_result"(ptr %0, ptr %builder.freeze)
  ret void

b.new.buf.len2767:                                ; preds = %b.grow2752
  %arena.cur770 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2771 = call ptr @dva_arena_alloc(ptr %arena.cur770, i64 %sum765)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2771, ptr align 1 %builder.new.salloc.sroa.36.1, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul772 = getelementptr i8, ptr %b.new.buf2771, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul772, align 1
  br label %b.grow_done754

str_overflow_abort768:                            ; preds = %b.grow2752
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define void @"lsp::handle_did_open"(ptr %0, ptr %1) #3 {
entry:
  %call.res = call { i1, i64 } @"json::get"(ptr %0, ptr @str.245.struct)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 3, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ %enum.alloc, %choice.else ]
  %call.res3 = call { i64, ptr } @"json::get_str"(ptr %choice.res, ptr @str.247.struct)
  %ret.niche.data = extractvalue { i64, ptr } %call.res3, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

ret.niche.alloc:                                  ; preds = %choice.exit
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 16)
  store { i64, ptr } %call.res3, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %choice.exit
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %choice.exit ]
  %niche.ne.null = icmp ne ptr %ret.niche.ptr, null
  %ret.niche.ptr.str.0.struct = select i1 %niche.ne.null, ptr %ret.niche.ptr, ptr @str.0.struct
  %call.res12 = call { i64, ptr } @"json::get_str"(ptr %choice.res, ptr @str.273.struct)
  %ret.niche.data13 = extractvalue { i64, ptr } %call.res12, 1
  %ret.niche.ok14 = icmp ne ptr %ret.niche.data13, null
  br i1 %ret.niche.ok14, label %ret.niche.alloc15, label %ret.niche.done16

ret.niche.alloc15:                                ; preds = %ret.niche.done
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 16)
  store { i64, ptr } %call.res12, ptr %ret.niche.buf18, align 8
  br label %ret.niche.done16

ret.niche.done16:                                 ; preds = %ret.niche.alloc15, %ret.niche.done
  %ret.niche.ptr19 = phi ptr [ %ret.niche.buf18, %ret.niche.alloc15 ], [ null, %ret.niche.done ]
  %niche.ne.null20 = icmp ne ptr %ret.niche.ptr19, null
  %ret.niche.ptr19.str.0.struct = select i1 %niche.ne.null20, ptr %ret.niche.ptr19, ptr @str.0.struct
  %eq.lhs.len29 = load i64, ptr %ret.niche.ptr.str.0.struct, align 8
  %eq.lhs.len30 = and i64 %eq.lhs.len29, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len29, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %ret.niche.done16
  %eq.len = icmp eq i64 %eq.lhs.len30, 0
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

tag.slow_check:                                   ; preds = %ret.niche.done16
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %ret.niche.ptr.str.0.struct, i32 0, i32 1
  %eq.lhs.data32 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data32, ptr @str.0, i64 0)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str_ok, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str_ok ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then33, label %choice.exit34

choice.then33:                                    ; preds = %str.eq.merge
  call void @"lsp::analyze_document"(ptr %ret.niche.ptr.str.0.struct, ptr %ret.niche.ptr19.str.0.struct, ptr %1)
  br label %choice.exit34

choice.exit34:                                    ; preds = %choice.then33, %str.eq.merge
  ret void
}

define void @"lsp::handle_did_change"(ptr %0, ptr %1) #3 {
entry:
  %call.res = call { i1, i64 } @"json::get"(ptr %0, ptr @str.245.struct)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 3, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ %enum.alloc, %choice.else ]
  %call.res3 = call { i64, ptr } @"json::get_str"(ptr %choice.res, ptr @str.247.struct)
  %ret.niche.data = extractvalue { i64, ptr } %call.res3, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

ret.niche.alloc:                                  ; preds = %choice.exit
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 16)
  store { i64, ptr } %call.res3, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %choice.exit
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %choice.exit ]
  %niche.ne.null = icmp ne ptr %ret.niche.ptr, null
  %ret.niche.ptr.str.0.struct = select i1 %niche.ne.null, ptr %ret.niche.ptr, ptr @str.0.struct
  %call.res12 = call { i1, i64 } @"json::get"(ptr %0, ptr @str.274.struct)
  %ram.tag13 = extractvalue { i1, i64 } %call.res12, 0
  br i1 %ram.tag13, label %choice.then14, label %choice.else15

choice.then14:                                    ; preds = %ret.niche.done
  %ram.pay17 = extractvalue { i1, i64 } %call.res12, 1
  %pay.ptr18 = inttoptr i64 %ram.pay17 to ptr
  br label %choice.exit16

choice.else15:                                    ; preds = %ret.niche.done
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc23 = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 16)
  store i64 3, ptr %enum.alloc23, align 8
  %pay.gep25 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc23, i32 0, i32 1
  store ptr null, ptr %pay.gep25, align 8
  br label %choice.exit16

choice.exit16:                                    ; preds = %choice.else15, %choice.then14
  %choice.res26 = phi ptr [ %pay.ptr18, %choice.then14 ], [ %enum.alloc23, %choice.else15 ]
  %call.res28 = call i64 @"json::array_len"(ptr %choice.res26)
  %eq.lhs.len30 = load i64, ptr %ret.niche.ptr.str.0.struct, align 8
  %eq.lhs.len31 = and i64 %eq.lhs.len30, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len30, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %choice.exit16
  %eq.len = icmp eq i64 %eq.lhs.len31, 0
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

tag.slow_check:                                   ; preds = %choice.exit16
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %ret.niche.ptr.str.0.struct, i32 0, i32 1
  %eq.lhs.data33 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data33, ptr @str.0, i64 0)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str_ok, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str_ok ]
  %str.neq = xor i1 %str.eq.result, true
  %cmptmp = icmp sgt i64 %call.res28, 0
  %or.cond = select i1 %str.neq, i1 %cmptmp, i1 false
  br i1 %or.cond, label %choice.then35, label %choice.exit36

choice.then35:                                    ; preds = %str.eq.merge
  %subtmp = sub nuw nsw i64 %call.res28, 1
  %call.res39 = call ptr @"json::array_at"(ptr %choice.res26, i64 %subtmp)
  %call.res41 = call { i64, ptr } @"json::get_str"(ptr %call.res39, ptr @str.273.struct)
  %ret.niche.data42 = extractvalue { i64, ptr } %call.res41, 1
  %ret.niche.ok43 = icmp ne ptr %ret.niche.data42, null
  br i1 %ret.niche.ok43, label %ret.niche.alloc44, label %ret.niche.done45

choice.exit36:                                    ; preds = %str.eq.merge, %ret.niche.done45
  ret void

ret.niche.alloc44:                                ; preds = %choice.then35
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 16)
  store { i64, ptr } %call.res41, ptr %ret.niche.buf47, align 8
  br label %ret.niche.done45

ret.niche.done45:                                 ; preds = %ret.niche.alloc44, %choice.then35
  %ret.niche.ptr48 = phi ptr [ %ret.niche.buf47, %ret.niche.alloc44 ], [ null, %choice.then35 ]
  %niche.ne.null49 = icmp ne ptr %ret.niche.ptr48, null
  %ret.niche.ptr48.str.0.struct = select i1 %niche.ne.null49, ptr %ret.niche.ptr48, ptr @str.0.struct
  call void @"lsp::analyze_document"(ptr %ret.niche.ptr.str.0.struct, ptr %ret.niche.ptr48.str.0.struct, ptr %1)
  br label %choice.exit36
}

declare i64 @"json::array_len"(ptr) #3

declare ptr @"json::array_at"(ptr, i64) #3

define void @"lsp::handle_did_save"(ptr %0, ptr %1) #3 {
entry:
  %call.res = call { i1, i64 } @"json::get"(ptr %0, ptr @str.245.struct)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 3, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ %enum.alloc, %choice.else ]
  %call.res3 = call { i64, ptr } @"json::get_str"(ptr %choice.res, ptr @str.247.struct)
  %ret.niche.data = extractvalue { i64, ptr } %call.res3, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

ret.niche.alloc:                                  ; preds = %choice.exit
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 16)
  store { i64, ptr } %call.res3, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %choice.exit
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %choice.exit ]
  %niche.ne.null = icmp ne ptr %ret.niche.ptr, null
  %ret.niche.ptr.str.0.struct = select i1 %niche.ne.null, ptr %ret.niche.ptr, ptr @str.0.struct
  %call.res12 = call { i64, ptr } @"json::get_str"(ptr %0, ptr @str.273.struct)
  %ret.niche.data13 = extractvalue { i64, ptr } %call.res12, 1
  %ret.niche.ok14 = icmp ne ptr %ret.niche.data13, null
  br i1 %ret.niche.ok14, label %ret.niche.alloc15, label %ret.niche.done16

ret.niche.alloc15:                                ; preds = %ret.niche.done
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 16)
  store { i64, ptr } %call.res12, ptr %ret.niche.buf18, align 8
  br label %ret.niche.done16

ret.niche.done16:                                 ; preds = %ret.niche.alloc15, %ret.niche.done
  %ret.niche.ptr19 = phi ptr [ %ret.niche.buf18, %ret.niche.alloc15 ], [ null, %ret.niche.done ]
  %niche.ne.null21 = icmp ne ptr %ret.niche.ptr19, null
  br i1 %niche.ne.null21, label %choice.then22, label %choice.else23

choice.then22:                                    ; preds = %ret.niche.done16
  %eq.lhs.len27 = load i64, ptr %ret.niche.ptr.str.0.struct, align 8
  %eq.lhs.len28 = and i64 %eq.lhs.len27, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len27, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.else23:                                    ; preds = %ret.niche.done16
  %call.res37 = call { i64, ptr } @"lsp::uri_to_path"(ptr %ret.niche.ptr.str.0.struct)
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 16)
  store { i64, ptr } %call.res37, ptr %ret.ub.alloc, align 8
  %call.res40 = call { i64, ptr } @"fs::read_to_string"(ptr %ret.ub.alloc)
  %ret.niche.data41 = extractvalue { i64, ptr } %call.res40, 1
  %ret.niche.ok42 = icmp ne ptr %ret.niche.data41, null
  br i1 %ret.niche.ok42, label %ret.niche.alloc43, label %ret.niche.done44

choice.exit24:                                    ; preds = %ret.niche.done44, %choice.then49, %str.eq.merge, %choice.then31
  ret void

str_ok:                                           ; preds = %tag.slow_check, %choice.then22
  %eq.len = icmp eq i64 %eq.lhs.len28, 0
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

tag.slow_check:                                   ; preds = %choice.then22
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %ret.niche.ptr.str.0.struct, i32 0, i32 1
  %eq.lhs.data30 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data30, ptr @str.0, i64 0)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str_ok, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str_ok ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then31, label %choice.exit24

choice.then31:                                    ; preds = %str.eq.merge
  call void @"lsp::analyze_document"(ptr %ret.niche.ptr.str.0.struct, ptr %ret.niche.ptr19, ptr %1)
  br label %choice.exit24

ret.niche.alloc43:                                ; preds = %choice.else23
  %arena.cur45 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 16)
  store { i64, ptr } %call.res40, ptr %ret.niche.buf46, align 8
  br label %ret.niche.done44

ret.niche.done44:                                 ; preds = %ret.niche.alloc43, %choice.else23
  %ret.niche.ptr47 = phi ptr [ %ret.niche.buf46, %ret.niche.alloc43 ], [ null, %choice.else23 ]
  %niche.ne.null48 = icmp ne ptr %ret.niche.ptr47, null
  br i1 %niche.ne.null48, label %choice.then49, label %choice.exit24

choice.then49:                                    ; preds = %ret.niche.done44
  call void @"lsp::analyze_document"(ptr %ret.niche.ptr.str.0.struct, ptr %ret.niche.ptr47, ptr %1)
  br label %choice.exit24
}

define void @"lsp::handle_did_close"(ptr %0) #3 {
entry:
  %call.res = call { i1, i64 } @"json::get"(ptr %0, ptr @str.245.struct)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 3, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ %enum.alloc, %choice.else ]
  %call.res3 = call { i64, ptr } @"json::get_str"(ptr %choice.res, ptr @str.247.struct)
  %ret.niche.data = extractvalue { i64, ptr } %call.res3, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

ret.niche.alloc:                                  ; preds = %choice.exit
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 16)
  store { i64, ptr } %call.res3, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %choice.exit
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %choice.exit ]
  %niche.ne.null = icmp ne ptr %ret.niche.ptr, null
  %ret.niche.ptr.str.0.struct = select i1 %niche.ne.null, ptr %ret.niche.ptr, ptr @str.0.struct
  %eq.lhs.len12 = load i64, ptr %ret.niche.ptr.str.0.struct, align 8
  %eq.lhs.len13 = and i64 %eq.lhs.len12, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len12, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %ret.niche.done
  %eq.len = icmp eq i64 %eq.lhs.len13, 0
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

tag.slow_check:                                   ; preds = %ret.niche.done
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %ret.niche.ptr.str.0.struct, i32 0, i32 1
  %eq.lhs.data15 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data15, ptr @str.0, i64 0)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str_ok, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str_ok ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then16, label %choice.exit17

choice.then16:                                    ; preds = %str.eq.merge
  call void @"lsp::remove_doc"(ptr %ret.niche.ptr.str.0.struct)
  %arena.cur20 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 24)
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  call void @"lsp::publish_diagnostics"(ptr %ret.niche.ptr.str.0.struct, ptr %a.new)
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.then16, %str.eq.merge
  ret void
}

define i64 @"lsp::main"(ptr %0, ptr %1) #3 {
entry:
  %clo.salloc = alloca { ptr, ptr }, align 8
  %env.salloc = alloca { ptr }, align 8
  call void @"log::set_fd"(i64 2)
  call void @"log::set_timestamps"(i1 false)
  call void @"lsp::set_stdlib_dir"(ptr %0)
  %call.res = call { ptr, i64 } @"mem::arena"(i64 4194304)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  store { ptr, i64 } %call.res, ptr %ret.ub.alloc, align 8
  br label %loop.header.987

loop.header.987:                                  ; preds = %choice.exit8, %entry
  %"var.shutdown_requested'.0" = phi i1 [ false, %entry ], [ %"var.shutdown_requested'.1", %choice.exit8 ]
  %loop.idx.987.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit8 ]
  store ptr %1, ptr %env.salloc, align 8
  store ptr @"$anon_fn.181", ptr %clo.salloc, align 8
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.salloc, i32 0, i32 1
  store ptr %env.salloc, ptr %clo.env.gep, align 8
  %ret.ub.alloc.val = load ptr, ptr %ret.ub.alloc, align 8
  %call.res2 = call i64 @"mem::with_value$Int"(ptr %ret.ub.alloc.val, ptr %clo.salloc)
  call void @"mem::reset"(ptr %ret.ub.alloc)
  %cmptmp = icmp eq i64 %call.res2, 1
  %"var.shutdown_requested'.1" = select i1 %cmptmp, i1 true, i1 %"var.shutdown_requested'.0"
  %cmptmp6 = icmp eq i64 %call.res2, 2
  br i1 %cmptmp6, label %choice.then7, label %choice.exit8

choice.then7:                                     ; preds = %loop.header.987
  call void @"mem::destroy"(ptr %ret.ub.alloc)
  ret i64 0

choice.exit8:                                     ; preds = %loop.header.987
  %loop.next = add i64 %loop.idx.987.0, 1
  br label %loop.header.987
}

declare void @"log::set_fd"(i64) #3

declare void @"log::set_timestamps"(i1) #3

declare { ptr, i64 } @"mem::arena"(i64) #3

define internal i64 @"$anon_fn.181"(ptr %0) #3 {
entry:
  %call.res = call { i64, ptr } @"lsp::read_rpc_message"()
  %ret.niche.data = extractvalue { i64, ptr } %call.res, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

ret.niche.alloc:                                  ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %entry
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %entry ]
  %niche.ne.null = icmp ne ptr %ret.niche.ptr, null
  br i1 %niche.ne.null, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %ret.niche.done
  %call.res2 = call { i1, i64 } @"json::parse"(ptr %ret.niche.ptr)
  %call.res2.fca.0.extract = extractvalue { i1, i64 } %call.res2, 0
  %call.res2.fca.1.extract = extractvalue { i1, i64 } %call.res2, 1
  br i1 %call.res2.fca.0.extract, label %choice.then4, label %choice.exit

choice.exit:                                      ; preds = %choice.next281, %str_ok309, %str.eq.then101, %str.eq.then66, %choice.case, %choice.case75, %choice.case110, %choice.case129, %choice.case148, %choice.case167, %choice.case185, %choice.case204, %choice.case223, %choice.case242, %choice.case261, %choice.case280, %choice.then, %ret.niche.done
  %choice.res340 = phi i64 [ 2, %ret.niche.done ], [ 0, %choice.then ], [ 0, %choice.case ], [ 1, %choice.case75 ], [ 0, %choice.case110 ], [ 0, %choice.case129 ], [ 0, %choice.case148 ], [ 0, %choice.case167 ], [ 0, %choice.case185 ], [ 0, %choice.case204 ], [ 0, %choice.case223 ], [ 0, %choice.case242 ], [ 0, %choice.case261 ], [ 0, %choice.case280 ], [ 0, %str.eq.then66 ], [ 2, %str.eq.then101 ], [ 0, %str_ok309 ], [ 0, %choice.next281 ]
  ret i64 %choice.res340

choice.then4:                                     ; preds = %choice.then
  %pay.ptr = inttoptr i64 %call.res2.fca.1.extract to ptr
  %call.res9 = call { i64, ptr } @"json::get_str"(ptr %pay.ptr, ptr @str.275.struct)
  %ret.niche.data10 = extractvalue { i64, ptr } %call.res9, 1
  %ret.niche.ok11 = icmp ne ptr %ret.niche.data10, null
  br i1 %ret.niche.ok11, label %ret.niche.alloc12, label %ret.niche.done13

ret.niche.alloc12:                                ; preds = %choice.then4
  %arena.cur14 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf15 = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 16)
  store { i64, ptr } %call.res9, ptr %ret.niche.buf15, align 8
  br label %ret.niche.done13

ret.niche.done13:                                 ; preds = %ret.niche.alloc12, %choice.then4
  %ret.niche.ptr16 = phi ptr [ %ret.niche.buf15, %ret.niche.alloc12 ], [ null, %choice.then4 ]
  %niche.ne.null17 = icmp ne ptr %ret.niche.ptr16, null
  %ret.niche.ptr16.str.0.struct = select i1 %niche.ne.null17, ptr %ret.niche.ptr16, ptr @str.0.struct
  %call.res24 = call { i1, i64 } @"json::get"(ptr %pay.ptr, ptr @str.276.struct)
  %ram.tag25 = extractvalue { i1, i64 } %call.res24, 0
  br i1 %ram.tag25, label %choice.then26, label %choice.else27

choice.then26:                                    ; preds = %ret.niche.done13
  %ram.pay29 = extractvalue { i1, i64 } %call.res24, 1
  %pay.ptr30 = inttoptr i64 %ram.pay29 to ptr
  br label %choice.exit28

choice.else27:                                    ; preds = %ret.niche.done13
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 16)
  store i64 3, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  br label %choice.exit28

choice.exit28:                                    ; preds = %choice.else27, %choice.then26
  %choice.res34 = phi ptr [ %pay.ptr30, %choice.then26 ], [ %enum.alloc, %choice.else27 ]
  %call.res36 = call { i1, i64 } @"json::get"(ptr %pay.ptr, ptr @str.277.struct)
  %ram.tag37 = extractvalue { i1, i64 } %call.res36, 0
  br i1 %ram.tag37, label %choice.then38, label %choice.else39

choice.then38:                                    ; preds = %choice.exit28
  %ram.pay41 = extractvalue { i1, i64 } %call.res36, 1
  %pay.ptr42 = inttoptr i64 %ram.pay41 to ptr
  br label %choice.exit40

choice.else39:                                    ; preds = %choice.exit28
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 16)
  store i64 3, ptr %enum.alloc47, align 8
  %pay.gep49 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc47, i32 0, i32 1
  store ptr null, ptr %pay.gep49, align 8
  br label %choice.exit40

choice.exit40:                                    ; preds = %choice.else39, %choice.then38
  %choice.res50 = phi ptr [ %pay.ptr42, %choice.then38 ], [ %enum.alloc47, %choice.else39 ]
  %eq.lhs.len53 = load i64, ptr %ret.niche.ptr16.str.0.struct, align 8
  %eq.lhs.len54 = and i64 %eq.lhs.len53, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len53, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.case:                                      ; preds = %str.eq.then
  call void @"lsp::handle_initialize"(ptr %choice.res34)
  br label %choice.exit

choice.next:                                      ; preds = %str_ok, %str.eq.then
  %eq.lhs.len61 = load i64, ptr %ret.niche.ptr16.str.0.struct, align 8
  %eq.lhs.len62 = and i64 %eq.lhs.len61, 281474976710655
  %eq.len65 = icmp eq i64 %eq.lhs.len62, 11
  br i1 %eq.len65, label %str.eq.then66, label %choice.next59

str_ok:                                           ; preds = %tag.slow_check, %choice.exit40
  %eq.len = icmp eq i64 %eq.lhs.len54, 10
  br i1 %eq.len, label %str.eq.then, label %choice.next

tag.slow_check:                                   ; preds = %choice.exit40
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %ret.niche.ptr16.str.0.struct, i32 0, i32 1
  %eq.lhs.data56 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data56, ptr @str.278, i64 10)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.case, label %choice.next

choice.next59:                                    ; preds = %choice.next, %str.eq.then66
  %eq.lhs.len78 = load i64, ptr %ret.niche.ptr16.str.0.struct, align 8
  %eq.lhs.len79 = and i64 %eq.lhs.len78, 281474976710655
  %eq.len82 = icmp eq i64 %eq.lhs.len79, 8
  br i1 %eq.len82, label %str.eq.then83, label %choice.next76

str.eq.then66:                                    ; preds = %choice.next
  %eq.lhs.data69 = getelementptr inbounds { i64, ptr }, ptr %ret.niche.ptr16.str.0.struct, i32 0, i32 1
  %eq.lhs.data70 = load ptr, ptr %eq.lhs.data69, align 8
  %eq.memcmp72 = call i32 @memcmp(ptr %eq.lhs.data70, ptr @str.279, i64 11)
  %eq.cmp.zero73 = icmp eq i32 %eq.memcmp72, 0
  br i1 %eq.cmp.zero73, label %choice.exit, label %choice.next59

choice.case75:                                    ; preds = %str.eq.then83
  call void @"lsp::send_result"(ptr %choice.res34, ptr @str.233.struct)
  br label %choice.exit

choice.next76:                                    ; preds = %choice.next59, %str.eq.then83
  %eq.lhs.len96 = load i64, ptr %ret.niche.ptr16.str.0.struct, align 8
  %eq.lhs.len97 = and i64 %eq.lhs.len96, 281474976710655
  %eq.len100 = icmp eq i64 %eq.lhs.len97, 4
  br i1 %eq.len100, label %str.eq.then101, label %choice.next94

str.eq.then83:                                    ; preds = %choice.next59
  %eq.lhs.data86 = getelementptr inbounds { i64, ptr }, ptr %ret.niche.ptr16.str.0.struct, i32 0, i32 1
  %eq.lhs.data87 = load ptr, ptr %eq.lhs.data86, align 8
  %eq.memcmp89 = call i32 @memcmp(ptr %eq.lhs.data87, ptr @str.280, i64 8)
  %eq.cmp.zero90 = icmp eq i32 %eq.memcmp89, 0
  br i1 %eq.cmp.zero90, label %choice.case75, label %choice.next76

choice.next94:                                    ; preds = %choice.next76, %str.eq.then101
  %eq.lhs.len113 = load i64, ptr %ret.niche.ptr16.str.0.struct, align 8
  %eq.lhs.len114 = and i64 %eq.lhs.len113, 281474976710655
  %eq.len117 = icmp eq i64 %eq.lhs.len114, 20
  br i1 %eq.len117, label %str.eq.then118, label %choice.next111

str.eq.then101:                                   ; preds = %choice.next76
  %eq.lhs.data104 = getelementptr inbounds { i64, ptr }, ptr %ret.niche.ptr16.str.0.struct, i32 0, i32 1
  %eq.lhs.data105 = load ptr, ptr %eq.lhs.data104, align 8
  %eq.memcmp107 = call i32 @memcmp(ptr %eq.lhs.data105, ptr @str.281, i64 4)
  %eq.cmp.zero108 = icmp eq i32 %eq.memcmp107, 0
  br i1 %eq.cmp.zero108, label %choice.exit, label %choice.next94

choice.case110:                                   ; preds = %str.eq.then118
  %var.load128 = load ptr, ptr %0, align 8
  call void @"lsp::handle_did_open"(ptr %choice.res50, ptr %var.load128)
  br label %choice.exit

choice.next111:                                   ; preds = %choice.next94, %str.eq.then118
  %eq.lhs.len132 = load i64, ptr %ret.niche.ptr16.str.0.struct, align 8
  %eq.lhs.len133 = and i64 %eq.lhs.len132, 281474976710655
  %eq.len136 = icmp eq i64 %eq.lhs.len133, 22
  br i1 %eq.len136, label %str.eq.then137, label %choice.next130

str.eq.then118:                                   ; preds = %choice.next94
  %eq.lhs.data121 = getelementptr inbounds { i64, ptr }, ptr %ret.niche.ptr16.str.0.struct, i32 0, i32 1
  %eq.lhs.data122 = load ptr, ptr %eq.lhs.data121, align 8
  %eq.memcmp124 = call i32 @memcmp(ptr %eq.lhs.data122, ptr @str.282, i64 20)
  %eq.cmp.zero125 = icmp eq i32 %eq.memcmp124, 0
  br i1 %eq.cmp.zero125, label %choice.case110, label %choice.next111

choice.case129:                                   ; preds = %str.eq.then137
  %var.load147 = load ptr, ptr %0, align 8
  call void @"lsp::handle_did_change"(ptr %choice.res50, ptr %var.load147)
  br label %choice.exit

choice.next130:                                   ; preds = %choice.next111, %str.eq.then137
  %eq.lhs.len151 = load i64, ptr %ret.niche.ptr16.str.0.struct, align 8
  %eq.lhs.len152 = and i64 %eq.lhs.len151, 281474976710655
  %eq.len155 = icmp eq i64 %eq.lhs.len152, 20
  br i1 %eq.len155, label %str.eq.then156, label %choice.next149

str.eq.then137:                                   ; preds = %choice.next111
  %eq.lhs.data140 = getelementptr inbounds { i64, ptr }, ptr %ret.niche.ptr16.str.0.struct, i32 0, i32 1
  %eq.lhs.data141 = load ptr, ptr %eq.lhs.data140, align 8
  %eq.memcmp143 = call i32 @memcmp(ptr %eq.lhs.data141, ptr @str.283, i64 22)
  %eq.cmp.zero144 = icmp eq i32 %eq.memcmp143, 0
  br i1 %eq.cmp.zero144, label %choice.case129, label %choice.next130

choice.case148:                                   ; preds = %str.eq.then156
  %var.load166 = load ptr, ptr %0, align 8
  call void @"lsp::handle_did_save"(ptr %choice.res50, ptr %var.load166)
  br label %choice.exit

choice.next149:                                   ; preds = %choice.next130, %str.eq.then156
  %eq.lhs.len170 = load i64, ptr %ret.niche.ptr16.str.0.struct, align 8
  %eq.lhs.len171 = and i64 %eq.lhs.len170, 281474976710655
  %eq.len174 = icmp eq i64 %eq.lhs.len171, 21
  br i1 %eq.len174, label %str.eq.then175, label %choice.next168

str.eq.then156:                                   ; preds = %choice.next130
  %eq.lhs.data159 = getelementptr inbounds { i64, ptr }, ptr %ret.niche.ptr16.str.0.struct, i32 0, i32 1
  %eq.lhs.data160 = load ptr, ptr %eq.lhs.data159, align 8
  %eq.memcmp162 = call i32 @memcmp(ptr %eq.lhs.data160, ptr @str.284, i64 20)
  %eq.cmp.zero163 = icmp eq i32 %eq.memcmp162, 0
  br i1 %eq.cmp.zero163, label %choice.case148, label %choice.next149

choice.case167:                                   ; preds = %str.eq.then175
  call void @"lsp::handle_did_close"(ptr %choice.res50)
  br label %choice.exit

choice.next168:                                   ; preds = %choice.next149, %str.eq.then175
  %eq.lhs.len188 = load i64, ptr %ret.niche.ptr16.str.0.struct, align 8
  %eq.lhs.len189 = and i64 %eq.lhs.len188, 281474976710655
  %eq.len192 = icmp eq i64 %eq.lhs.len189, 18
  br i1 %eq.len192, label %str.eq.then193, label %choice.next186

str.eq.then175:                                   ; preds = %choice.next149
  %eq.lhs.data178 = getelementptr inbounds { i64, ptr }, ptr %ret.niche.ptr16.str.0.struct, i32 0, i32 1
  %eq.lhs.data179 = load ptr, ptr %eq.lhs.data178, align 8
  %eq.memcmp181 = call i32 @memcmp(ptr %eq.lhs.data179, ptr @str.285, i64 21)
  %eq.cmp.zero182 = icmp eq i32 %eq.memcmp181, 0
  br i1 %eq.cmp.zero182, label %choice.case167, label %choice.next168

choice.case185:                                   ; preds = %str.eq.then193
  call void @"lsp::handle_hover"(ptr %choice.res34, ptr %choice.res50)
  br label %choice.exit

choice.next186:                                   ; preds = %choice.next168, %str.eq.then193
  %eq.lhs.len207 = load i64, ptr %ret.niche.ptr16.str.0.struct, align 8
  %eq.lhs.len208 = and i64 %eq.lhs.len207, 281474976710655
  %eq.len211 = icmp eq i64 %eq.lhs.len208, 23
  br i1 %eq.len211, label %str.eq.then212, label %choice.next205

str.eq.then193:                                   ; preds = %choice.next168
  %eq.lhs.data196 = getelementptr inbounds { i64, ptr }, ptr %ret.niche.ptr16.str.0.struct, i32 0, i32 1
  %eq.lhs.data197 = load ptr, ptr %eq.lhs.data196, align 8
  %eq.memcmp199 = call i32 @memcmp(ptr %eq.lhs.data197, ptr @str.286, i64 18)
  %eq.cmp.zero200 = icmp eq i32 %eq.memcmp199, 0
  br i1 %eq.cmp.zero200, label %choice.case185, label %choice.next186

choice.case204:                                   ; preds = %str.eq.then212
  call void @"lsp::handle_definition"(ptr %choice.res34, ptr %choice.res50)
  br label %choice.exit

choice.next205:                                   ; preds = %choice.next186, %str.eq.then212
  %eq.lhs.len226 = load i64, ptr %ret.niche.ptr16.str.0.struct, align 8
  %eq.lhs.len227 = and i64 %eq.lhs.len226, 281474976710655
  %eq.len230 = icmp eq i64 %eq.lhs.len227, 27
  br i1 %eq.len230, label %str.eq.then231, label %choice.next224

str.eq.then212:                                   ; preds = %choice.next186
  %eq.lhs.data215 = getelementptr inbounds { i64, ptr }, ptr %ret.niche.ptr16.str.0.struct, i32 0, i32 1
  %eq.lhs.data216 = load ptr, ptr %eq.lhs.data215, align 8
  %eq.memcmp218 = call i32 @memcmp(ptr %eq.lhs.data216, ptr @str.287, i64 23)
  %eq.cmp.zero219 = icmp eq i32 %eq.memcmp218, 0
  br i1 %eq.cmp.zero219, label %choice.case204, label %choice.next205

choice.case223:                                   ; preds = %str.eq.then231
  call void @"lsp::handle_document_symbol"(ptr %choice.res34, ptr %choice.res50)
  br label %choice.exit

choice.next224:                                   ; preds = %choice.next205, %str.eq.then231
  %eq.lhs.len245 = load i64, ptr %ret.niche.ptr16.str.0.struct, align 8
  %eq.lhs.len246 = and i64 %eq.lhs.len245, 281474976710655
  %eq.len249 = icmp eq i64 %eq.lhs.len246, 23
  br i1 %eq.len249, label %str.eq.then250, label %choice.next243

str.eq.then231:                                   ; preds = %choice.next205
  %eq.lhs.data234 = getelementptr inbounds { i64, ptr }, ptr %ret.niche.ptr16.str.0.struct, i32 0, i32 1
  %eq.lhs.data235 = load ptr, ptr %eq.lhs.data234, align 8
  %eq.memcmp237 = call i32 @memcmp(ptr %eq.lhs.data235, ptr @str.288, i64 27)
  %eq.cmp.zero238 = icmp eq i32 %eq.memcmp237, 0
  br i1 %eq.cmp.zero238, label %choice.case223, label %choice.next224

choice.case242:                                   ; preds = %str.eq.then250
  call void @"lsp::handle_formatting"(ptr %choice.res34, ptr %choice.res50)
  br label %choice.exit

choice.next243:                                   ; preds = %choice.next224, %str.eq.then250
  %eq.lhs.len264 = load i64, ptr %ret.niche.ptr16.str.0.struct, align 8
  %eq.lhs.len265 = and i64 %eq.lhs.len264, 281474976710655
  %eq.len268 = icmp eq i64 %eq.lhs.len265, 23
  br i1 %eq.len268, label %str.eq.then269, label %choice.next262

str.eq.then250:                                   ; preds = %choice.next224
  %eq.lhs.data253 = getelementptr inbounds { i64, ptr }, ptr %ret.niche.ptr16.str.0.struct, i32 0, i32 1
  %eq.lhs.data254 = load ptr, ptr %eq.lhs.data253, align 8
  %eq.memcmp256 = call i32 @memcmp(ptr %eq.lhs.data254, ptr @str.289, i64 23)
  %eq.cmp.zero257 = icmp eq i32 %eq.memcmp256, 0
  br i1 %eq.cmp.zero257, label %choice.case242, label %choice.next243

choice.case261:                                   ; preds = %str.eq.then269
  call void @"lsp::handle_completion"(ptr %choice.res34, ptr %choice.res50)
  br label %choice.exit

choice.next262:                                   ; preds = %choice.next243, %str.eq.then269
  %eq.lhs.len283 = load i64, ptr %ret.niche.ptr16.str.0.struct, align 8
  %eq.lhs.len284 = and i64 %eq.lhs.len283, 281474976710655
  %eq.len287 = icmp eq i64 %eq.lhs.len284, 22
  br i1 %eq.len287, label %str.eq.then288, label %choice.next281

str.eq.then269:                                   ; preds = %choice.next243
  %eq.lhs.data272 = getelementptr inbounds { i64, ptr }, ptr %ret.niche.ptr16.str.0.struct, i32 0, i32 1
  %eq.lhs.data273 = load ptr, ptr %eq.lhs.data272, align 8
  %eq.memcmp275 = call i32 @memcmp(ptr %eq.lhs.data273, ptr @str.290, i64 23)
  %eq.cmp.zero276 = icmp eq i32 %eq.memcmp275, 0
  br i1 %eq.cmp.zero276, label %choice.case261, label %choice.next262

choice.case280:                                   ; preds = %str.eq.then288
  call void @"lsp::handle_inlay_hint"(ptr %choice.res34, ptr %choice.res50)
  br label %choice.exit

choice.next281:                                   ; preds = %choice.next262, %str.eq.then288
  %call.res300 = call i1 @"json::has"(ptr %pay.ptr, ptr @str.276.struct)
  br i1 %call.res300, label %choice.then301, label %choice.exit

str.eq.then288:                                   ; preds = %choice.next262
  %eq.lhs.data291 = getelementptr inbounds { i64, ptr }, ptr %ret.niche.ptr16.str.0.struct, i32 0, i32 1
  %eq.lhs.data292 = load ptr, ptr %eq.lhs.data291, align 8
  %eq.memcmp294 = call i32 @memcmp(ptr %eq.lhs.data292, ptr @str.291, i64 22)
  %eq.cmp.zero295 = icmp eq i32 %eq.memcmp294, 0
  br i1 %eq.cmp.zero295, label %choice.case280, label %choice.next281

choice.then301:                                   ; preds = %choice.next281
  %call.res304 = call { i64, ptr } @"lsp::format_id_json"(ptr %choice.res34)
  %arena.cur305 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur305, i64 16)
  store { i64, ptr } %call.res304, ptr %ret.ub.alloc, align 8
  %cat.seg306 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg307 = and i64 %cat.seg306, 281474976710655
  %str.tag308 = lshr i64 %cat.seg306, 48
  %tag.immortal310 = icmp eq i64 %str.tag308, 0
  %active.gen311 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current312 = icmp eq i64 %str.tag308, %active.gen311
  %tag.fast.ok313 = or i1 %tag.immortal310, %tag.current312
  br i1 %tag.fast.ok313, label %str_ok309, label %tag.slow_check314

str_ok309:                                        ; preds = %tag.slow_check314, %choice.then301
  %cat.seg315 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg316 = load ptr, ptr %cat.seg315, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 22, i64 %cat.seg307)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %cat.sum.len319 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 54)
  %sum320 = extractvalue { i64, i1 } %cat.sum.len319, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum320, i64 1)
  %sum325 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur330 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur330, i64 %sum325)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.234, i64 22, i1 false)
  %cat.dst331 = getelementptr i8, ptr %concat.buf, i64 22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst331, ptr align 1 %cat.seg316, i64 %cat.seg307, i1 false)
  %cat.off = add nuw nsw i64 22, %cat.seg307
  %cat.dst332 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst332, ptr align 1 @str.292, i64 54, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum320
  store i8 0, ptr %concat.nul, align 1
  %arena.cur333 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur333, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum320, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  call void @"lsp::send_rpc_payload"(ptr %concat.str)
  br label %choice.exit

tag.slow_check314:                                ; preds = %choice.then301
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag308)
  br label %str_ok309
}

declare { i1, i64 } @"json::parse"(ptr) #3

declare i1 @"json::has"(ptr, ptr) #3

define internal i64 @"mem::with_value$Int"(ptr %.0.val, ptr %0) #3 {
entry:
  %call.res = call ptr @"mem::set_current"(ptr %.0.val)
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %0, i32 0, i32 1
  %clo.fn.load = load ptr, ptr %0, align 8
  %clo.env.load = load ptr, ptr %clo.env.gep, align 8
  %clo.is_cap = icmp ne ptr %clo.env.load, null
  br i1 %clo.is_cap, label %clo.cap, label %clo.plain

clo.cap:                                          ; preds = %entry
  %clo.cap.res = call i64 %clo.fn.load(ptr %clo.env.load)
  br label %clo.merge

clo.plain:                                        ; preds = %entry
  %clo.plain.res = call i64 %clo.fn.load()
  br label %clo.merge

clo.merge:                                        ; preds = %clo.plain, %clo.cap
  %clo.res = phi i64 [ %clo.cap.res, %clo.cap ], [ %clo.plain.res, %clo.plain ]
  %call.res2 = call ptr @"mem::set_current"(ptr %call.res)
  ret i64 %clo.res
}

declare ptr @"mem::set_current"(ptr) #3

declare void @"mem::reset"(ptr) #3

declare void @"mem::destroy"(ptr) #3

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noinline "nounwind" }

!0 = !{i64 -1, i64 256}
