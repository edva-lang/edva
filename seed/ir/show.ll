; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dva_active_gen_tls = external thread_local global i64
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@detached_builder = internal unnamed_addr constant [93 x i8] c"E4013: Builder buffer was detached by freeze. Append data or create a new Builder before &b\0A\00"
@clo.const = internal constant { ptr, ptr } { ptr @"show::#print", ptr null }
@"var.show::#print" = global ptr null
@str.0 = internal unnamed_addr constant [5 x i8] c"Int(\00"
@str.1 = internal unnamed_addr constant [2 x i8] c")\00"
@str.2 = internal unnamed_addr constant [6 x i8] c"Rune(\00"
@str.3 = internal unnamed_addr constant [7 x i8] c"Float(\00"
@str.4 = internal unnamed_addr constant [6 x i8] c"Str(\22\00"
@str.5 = internal unnamed_addr constant [3 x i8] c"\22)\00"
@str.6 = internal unnamed_addr constant [5 x i8] c"Var(\00"
@str.7 = internal unnamed_addr constant [5 x i8] c"Bin(\00"
@str.8 = internal unnamed_addr constant [2 x i8] c"+\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.8 }
@str.9 = internal unnamed_addr constant [2 x i8] c"-\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.9 }
@str.10 = internal unnamed_addr constant [2 x i8] c"*\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.10 }
@str.11 = internal unnamed_addr constant [2 x i8] c"/\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.11 }
@str.12 = internal unnamed_addr constant [2 x i8] c"%\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.12 }
@str.13 = internal unnamed_addr constant [2 x i8] c">\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.13 }
@str.14 = internal unnamed_addr constant [2 x i8] c"<\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.14 }
@str.15 = internal unnamed_addr constant [3 x i8] c"==\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.15 }
@str.16 = internal unnamed_addr constant [3 x i8] c"!=\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.16 }
@str.17 = internal unnamed_addr constant [3 x i8] c"!<\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.17 }
@str.18 = internal unnamed_addr constant [3 x i8] c"!>\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.18 }
@str.19 = internal unnamed_addr constant [3 x i8] c"&&\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.19 }
@str.20 = internal unnamed_addr constant [3 x i8] c"||\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.20 }
@str.21 = internal unnamed_addr constant [3 x i8] c"$>\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.21 }
@str.22 = internal unnamed_addr constant [4 x i8] c"$>>\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.22 }
@str.23 = internal unnamed_addr constant [4 x i8] c"$+>\00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.23 }
@str.24 = internal unnamed_addr constant [4 x i8] c"$->\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.24 }
@str.25 = internal unnamed_addr constant [3 x i8] c".>\00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.25 }
@str.26 = internal unnamed_addr constant [2 x i8] c"$\00"
@str.26.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.26 }
@str.27 = internal unnamed_addr constant [4 x i8] c".&.\00"
@str.27.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.27 }
@str.28 = internal unnamed_addr constant [4 x i8] c".|.\00"
@str.28.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.28 }
@str.29 = internal unnamed_addr constant [4 x i8] c".^.\00"
@str.29.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.29 }
@str.30 = internal unnamed_addr constant [4 x i8] c".<.\00"
@str.30.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.30 }
@str.31 = internal unnamed_addr constant [4 x i8] c".>.\00"
@str.31.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.31 }
@str.32 = internal unnamed_addr constant [2 x i8] c";\00"
@str.32.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.32 }
@str.33 = internal unnamed_addr constant [2 x i8] c"?\00"
@str.33.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.33 }
@clo.const.1 = internal constant { ptr, ptr } { ptr @"show::show_op", ptr null }
@str.34 = internal unnamed_addr constant [2 x i8] c" \00"
@str.34.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.34 }
@str.35 = internal unnamed_addr constant [7 x i8] c"Unary(\00"
@str.36 = internal unnamed_addr constant [2 x i8] c"!\00"
@str.36.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.36 }
@str.37 = internal unnamed_addr constant [4 x i8] c".!.\00"
@str.37.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.37 }
@str.38 = internal unnamed_addr constant [2 x i8] c"&\00"
@str.38.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.38 }
@str.39 = internal unnamed_addr constant [3 x i8] c"!!\00"
@str.39.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.39 }
@str.40 = internal unnamed_addr constant [4 x i8] c"--!\00"
@str.40.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.40 }
@str.41 = internal unnamed_addr constant [3 x i8] c"??\00"
@str.41.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.41 }
@clo.const.2 = internal constant { ptr, ptr } { ptr @"show::show_unop", ptr null }
@str.42 = internal unnamed_addr constant [9 x i8] c"Variant(\00"
@str.43 = internal unnamed_addr constant [9 x i8] c"Positive\00"
@str.43.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.43 }
@str.44 = internal unnamed_addr constant [9 x i8] c"Negative\00"
@str.44.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.44 }
@str.45 = internal unnamed_addr constant [5 x i8] c"Some\00"
@str.45.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.45 }
@str.46 = internal unnamed_addr constant [4 x i8] c"Err\00"
@str.46.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.46 }
@str.47 = internal unnamed_addr constant [5 x i8] c"Succ\00"
@str.47.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.47 }
@str.48 = internal unnamed_addr constant [5 x i8] c"Noth\00"
@str.48.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.48 }
@clo.const.3 = internal constant { ptr, ptr } { ptr @"show::show_tag", ptr null }
@str.49 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.49.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.49 }
@clo.const.4 = internal constant { ptr, ptr } { ptr @"show::show_exprs", ptr null }
@str.50 = internal unnamed_addr constant [11 x i8] c"CycleJump(\00"
@str.51 = internal unnamed_addr constant [6 x i8] c"break\00"
@str.51.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.51 }
@str.52 = internal unnamed_addr constant [5 x i8] c"cont\00"
@str.52.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.52 }
@str.53 = internal unnamed_addr constant [8 x i8] c"Return(\00"
@str.54 = internal unnamed_addr constant [4 x i8] c"Fn(\00"
@str.55 = internal unnamed_addr constant [6 x i8] c"Copy(\00"
@str.56 = internal unnamed_addr constant [9 x i8] c"Builder(\00"
@str.57 = internal unnamed_addr constant [13 x i8] c"ArrayCreate(\00"
@str.58 = internal unnamed_addr constant [8 x i8] c"Assign(\00"
@str.59 = internal unnamed_addr constant [4 x i8] c"+= \00"
@str.59.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.59 }
@str.60 = internal unnamed_addr constant [3 x i8] c"= \00"
@str.60.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.60 }
@str.61 = internal unnamed_addr constant [6 x i8] c"<fwd>\00"
@str.61.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.61 }
@clo.const.5 = internal constant { ptr, ptr } { ptr @"show::show_fwd_name", ptr null }
@clo.const.6 = internal constant { ptr, ptr } { ptr @"show::show_fwd_rhs", ptr null }
@str.62 = internal unnamed_addr constant [8 x i8] c"Choice(\00"
@str.63 = internal unnamed_addr constant [4 x i8] c" | \00"
@str.63.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.63 }
@str.64 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.64.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.64 }
@str.65 = internal unnamed_addr constant [9 x i8] c"show.dva\00"
@str.65.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.65 }
@str.66 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.66.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.66 }
@clo.const.7 = internal constant { ptr, ptr } { ptr @"show::show_var", ptr null }
@str.67 = internal unnamed_addr constant [5 x i8] c"pred\00"
@str.67.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.67 }
@clo.const.8 = internal constant { ptr, ptr } { ptr @"show::show_single", ptr null }
@clo.const.9 = internal constant { ptr, ptr } { ptr @"show::show_val", ptr null }
@str.68 = internal unnamed_addr constant [3 x i8] c"[]\00"
@str.68.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.68 }
@str.69 = internal unnamed_addr constant [2 x i8] c":\00"
@clo.const.10 = internal constant { ptr, ptr } { ptr @"show::show_branch", ptr null }
@clo.const.11 = internal constant { ptr, ptr } { ptr @"show::show_branches", ptr null }
@str.70 = internal unnamed_addr constant [7 x i8] c"Block(\00"
@str.71 = internal unnamed_addr constant [6 x i8] c"Call(\00"
@str.72 = internal unnamed_addr constant [7 x i8] c"Range(\00"
@str.73 = internal unnamed_addr constant [2 x i8] c"_\00"
@str.73.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.73 }
@str.74 = internal unnamed_addr constant [4 x i8] c"...\00"
@str.74.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.74 }
@str.75 = internal unnamed_addr constant [3 x i8] c"..\00"
@str.75.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.75 }
@str.76 = internal unnamed_addr constant [11 x i8] c"CycleExpr(\00"
@str.76.struct = internal unnamed_addr constant { i64, ptr } { i64 10, ptr @str.76 }
@str.77 = internal unnamed_addr constant [7 x i8] c"Cycle(\00"
@str.77.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.77 }
@str.78 = internal unnamed_addr constant [13 x i8] c"CycleEscape(\00"
@str.79 = internal unnamed_addr constant [8 x i8] c"Member(\00"
@str.80 = internal unnamed_addr constant [3 x i8] c"::\00"
@str.80.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.80 }
@str.81 = internal unnamed_addr constant [2 x i8] c".\00"
@str.81.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.81 }
@clo.const.12 = internal constant { ptr, ptr } { ptr @"show::show_member_suffix", ptr null }
@str.82 = internal unnamed_addr constant [5 x i8] c"Key(\00"
@str.83 = internal unnamed_addr constant [2 x i8] c"^\00"
@str.84 = internal unnamed_addr constant [6 x i8] c"Cast(\00"
@str.85 = internal unnamed_addr constant [8 x i8] c"Record(\00"
@str.86 = internal unnamed_addr constant [3 x i8] c", \00"
@str.86.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.86 }
@str.87 = internal unnamed_addr constant [2 x i8] c"=\00"
@str.87.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.87 }
@clo.const.13 = internal constant { ptr, ptr } { ptr @"show::show_fields", ptr null }
@str.88 = internal unnamed_addr constant [5 x i8] c"Map(\00"
@str.89 = internal unnamed_addr constant [3 x i8] c"^=\00"
@clo.const.14 = internal constant { ptr, ptr } { ptr @"show::show_map_pairs", ptr null }
@str.90 = internal unnamed_addr constant [5 x i8] c"Raw(\00"
@str.91 = internal unnamed_addr constant [6 x i8] c"Size(\00"
@str.92 = internal unnamed_addr constant [4 x i8] c"Int\00"
@str.92.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.92 }
@str.93 = internal unnamed_addr constant [7 x i8] c"String\00"
@str.93.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.93 }
@str.94 = internal unnamed_addr constant [6 x i8] c"Float\00"
@str.94.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.94 }
@str.95 = internal unnamed_addr constant [4 x i8] c"Ram\00"
@str.95.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.95 }
@str.96 = internal unnamed_addr constant [7 x i8] c"Record\00"
@str.96.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.96 }
@str.97 = internal unnamed_addr constant [3 x i8] c"vt\00"
@str.97.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.97 }
@clo.const.15 = internal constant { ptr, ptr } { ptr @"show::show_vt", ptr null }
@str.98 = internal unnamed_addr constant [7 x i8] c"Align(\00"
@str.99 = internal unnamed_addr constant [10 x i8] c"NamedArg(\00"
@str.100 = internal unnamed_addr constant [8 x i8] c"Import(\00"
@str.101 = internal unnamed_addr constant [10 x i8] c"ModParam(\00"
@str.102 = internal unnamed_addr constant [9 x i8] c"Foreign(\00"
@str.103 = internal unnamed_addr constant [10 x i8] c"TypeDecl(\00"
@str.104 = internal unnamed_addr constant [4 x i8] c"Fp(\00"
@str.105 = internal unnamed_addr constant [4 x i8] c"all\00"
@str.105.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.105 }
@str.106 = internal unnamed_addr constant [5 x i8] c"none\00"
@str.106.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.106 }
@str.107 = internal unnamed_addr constant [9 x i8] c"Swizzle(\00"
@str.108 = internal unnamed_addr constant [6 x i8] c"Warn(\00"
@str.108.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.108 }
@str.109 = internal unnamed_addr constant [7 x i8] c"Error(\00"
@str.109.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.109 }
@clo.const.16 = internal constant { ptr, ptr } { ptr @"show::show_expr", ptr null }
@"var.show::show_expr" = global ptr null
@"var.show::show_fwd_rhs" = global ptr null
@"var.show::show_fwd_name" = global ptr null
@"var.show::show_vt" = global ptr null
@"var.show::show_branches" = global ptr null
@"var.show::show_member_suffix" = global ptr null
@"var.show::show_branch" = global ptr null
@"var.show::show_var" = global ptr null
@"var.show::show_val" = global ptr null
@"var.show::show_single" = global ptr null
@"var.show::show_map_pairs" = global ptr null
@"var.show::show_fields" = global ptr null
@"var.show::show_exprs" = global ptr null
@"var.show::show_tag" = global ptr null
@"var.show::show_op" = global ptr null
@"var.show::show_unop" = global ptr null
@str.110 = internal unnamed_addr constant [3 x i8] c"  \00"
@clo.const.17 = internal constant { ptr, ptr } { ptr @"show::show_indent", ptr null }
@"var.show::show_indent" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"show::show_names", ptr null }
@"var.show::show_names" = global ptr null
@str.111 = internal unnamed_addr constant [2 x i8] c"\0A\00"
@str.111.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.111 }
@str.112 = internal unnamed_addr constant [3 x i8] c"+=\00"
@str.112.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.112 }
@str.113 = internal unnamed_addr constant [3 x i8] c")\0A\00"
@str.114 = internal unnamed_addr constant [6 x i8] c" =>)\0A\00"
@str.115 = internal unnamed_addr constant [7 x i8] c"Block\0A\00"
@str.116 = internal unnamed_addr constant [8 x i8] c"Choice\0A\00"
@str.117 = internal unnamed_addr constant [9 x i8] c"  Cond:\0A\00"
@str.118 = internal unnamed_addr constant [13 x i8] c"  Branches:\0A\00"
@str.119 = internal unnamed_addr constant [2 x i8] c"[\00"
@str.120 = internal unnamed_addr constant [3 x i8] c"]\0A\00"
@clo.const.19 = internal constant { ptr, ptr } { ptr @"show::show_tree_branches", ptr null }
@clo.const.20 = internal constant { ptr, ptr } { ptr @"show::show_tree", ptr null }
@clo.const.21 = internal constant { ptr, ptr } { ptr @"show::show_tree_exprs", ptr null }
@"var.show::show_tree_exprs" = global ptr null
@"var.show::show_tree_branches" = global ptr null
@"var.show::show_tree" = global ptr null
@str.121 = internal unnamed_addr constant [3 x i8] c": \00"
@str.122 = internal unnamed_addr constant [8 x i8] c"LitInt(\00"
@str.123 = internal unnamed_addr constant [10 x i8] c"LitFloat(\00"
@str.124 = internal unnamed_addr constant [9 x i8] c"LitStr(\22\00"
@str.125 = internal unnamed_addr constant [9 x i8] c"LitRune(\00"
@str.126 = internal unnamed_addr constant [9 x i8] c"LitFlag(\00"
@str.127 = internal unnamed_addr constant [4 x i8] c"<+>\00"
@str.127.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.127 }
@str.128 = internal unnamed_addr constant [4 x i8] c"<->\00"
@str.128.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.128 }
@str.129 = internal unnamed_addr constant [8 x i8] c"LitUnit\00"
@clo.const.22 = internal constant { ptr, ptr } { ptr @"show::show_typed_exprs", ptr null }
@clo.const.23 = internal constant { ptr, ptr } { ptr @"show::show_typed_fields", ptr null }
@str.130 = internal unnamed_addr constant [13 x i8] c"MemberWrite(\00"
@str.131 = internal unnamed_addr constant [4 x i8] c" = \00"
@str.132 = internal unnamed_addr constant [7 x i8] c"Index(\00"
@str.133 = internal unnamed_addr constant [2 x i8] c"(\00"
@str.134 = internal unnamed_addr constant [3 x i8] c"))\00"
@str.135 = internal unnamed_addr constant [12 x i8] c"IndexWrite(\00"
@str.136 = internal unnamed_addr constant [5 x i8] c") = \00"
@str.137 = internal unnamed_addr constant [8 x i8] c"Lambda(\00"
@str.138 = internal unnamed_addr constant [5 x i8] c" => \00"
@str.139 = internal unnamed_addr constant [4 x i8] c":= \00"
@str.139.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.139 }
@str.140 = internal unnamed_addr constant [5 x i8] c"Ram(\00"
@str.141 = internal unnamed_addr constant [6 x i8] c"Enum(\00"
@str.142 = internal unnamed_addr constant [12 x i8] c"BuilderNew(\00"
@str.143 = internal unnamed_addr constant [10 x i8] c"ArrayNew(\00"
@str.144 = internal unnamed_addr constant [13 x i8] c"PoisonError(\00"
@str.145 = internal unnamed_addr constant [4 x i8] c", \22\00"
@clo.const.24 = internal constant { ptr, ptr } { ptr @"show::show_typed_expr", ptr null }
@clo.const.25 = internal constant { ptr, ptr } { ptr @"show::show_typed_target", ptr null }
@"var.show::show_typed_target" = global ptr null
@"var.show::show_typed_exprs" = global ptr null
@"var.show::show_typed_fields" = global ptr null
@"var.show::show_typed_expr" = global ptr null
@str.146 = internal unnamed_addr constant [3 x i8] c" [\00"
@str.147 = internal unnamed_addr constant [3 x i8] c"B]\00"
@str.148 = internal unnamed_addr constant [5 x i8] c" =>)\00"
@str.149 = internal unnamed_addr constant [6 x i8] c"Block\00"
@str.150 = internal unnamed_addr constant [7 x i8] c"Choice\00"
@clo.const.26 = internal constant { ptr, ptr } { ptr @"show::show_typed_tree_branches", ptr null }
@str.151 = internal unnamed_addr constant [9 x i8] c"Member(.\00"
@str.152 = internal unnamed_addr constant [14 x i8] c"MemberWrite(.\00"
@str.153 = internal unnamed_addr constant [6 x i8] c"Index\00"
@str.154 = internal unnamed_addr constant [11 x i8] c"IndexWrite\00"
@str.155 = internal unnamed_addr constant [6 x i8] c"Cycle\00"
@str.156 = internal unnamed_addr constant [5 x i8] c"Copy\00"
@str.157 = internal unnamed_addr constant [11 x i8] c"BuilderNew\00"
@str.158 = internal unnamed_addr constant [10 x i8] c"RawMemory\00"
@clo.const.27 = internal constant { ptr, ptr } { ptr @"show::show_typed_tree", ptr null }
@clo.const.28 = internal constant { ptr, ptr } { ptr @"show::show_typed_tree_exprs", ptr null }
@"var.show::show_typed_tree_exprs" = global ptr null
@"var.show::show_typed_tree_branches" = global ptr null
@"var.show::show_typed_tree" = global ptr null
@str.159 = internal unnamed_addr constant [6 x i8] c" ::= \00"
@str.160 = internal unnamed_addr constant [6 x i8] c"type \00"
@clo.const.29 = internal constant { ptr, ptr } { ptr @"show::show_typed_stmt", ptr null }
@"var.show::show_typed_stmt" = global ptr null
@str.161 = internal unnamed_addr constant [9 x i8] c"Binding(\00"
@str.162 = internal unnamed_addr constant [15 x i8] c"GlobalBinding(\00"
@clo.const.30 = internal constant { ptr, ptr } { ptr @"show::show_typed_tree_stmt", ptr null }
@"var.show::show_typed_tree_stmt" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"show::dump_typed_program", ptr null }
@"var.show::dump_typed_program" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_show, ptr null }]

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
  %last = sub i64 %nc, 1
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

define internal void @__dva_global_init_show() #3 {
entry:
  store ptr @clo.const, ptr @"var.show::#print", align 8
  store ptr @clo.const.16, ptr @"var.show::show_expr", align 8
  store ptr @clo.const.6, ptr @"var.show::show_fwd_rhs", align 8
  store ptr @clo.const.5, ptr @"var.show::show_fwd_name", align 8
  store ptr @clo.const.15, ptr @"var.show::show_vt", align 8
  store ptr @clo.const.11, ptr @"var.show::show_branches", align 8
  store ptr @clo.const.12, ptr @"var.show::show_member_suffix", align 8
  store ptr @clo.const.10, ptr @"var.show::show_branch", align 8
  store ptr @clo.const.7, ptr @"var.show::show_var", align 8
  store ptr @clo.const.9, ptr @"var.show::show_val", align 8
  store ptr @clo.const.8, ptr @"var.show::show_single", align 8
  store ptr @clo.const.14, ptr @"var.show::show_map_pairs", align 8
  store ptr @clo.const.13, ptr @"var.show::show_fields", align 8
  store ptr @clo.const.4, ptr @"var.show::show_exprs", align 8
  store ptr @clo.const.3, ptr @"var.show::show_tag", align 8
  store ptr @clo.const.1, ptr @"var.show::show_op", align 8
  store ptr @clo.const.2, ptr @"var.show::show_unop", align 8
  store ptr @clo.const.17, ptr @"var.show::show_indent", align 8
  store ptr @clo.const.18, ptr @"var.show::show_names", align 8
  store ptr @clo.const.21, ptr @"var.show::show_tree_exprs", align 8
  store ptr @clo.const.19, ptr @"var.show::show_tree_branches", align 8
  store ptr @clo.const.20, ptr @"var.show::show_tree", align 8
  store ptr @clo.const.25, ptr @"var.show::show_typed_target", align 8
  store ptr @clo.const.22, ptr @"var.show::show_typed_exprs", align 8
  store ptr @clo.const.23, ptr @"var.show::show_typed_fields", align 8
  store ptr @clo.const.24, ptr @"var.show::show_typed_expr", align 8
  store ptr @clo.const.28, ptr @"var.show::show_typed_tree_exprs", align 8
  store ptr @clo.const.26, ptr @"var.show::show_typed_tree_branches", align 8
  store ptr @clo.const.27, ptr @"var.show::show_typed_tree", align 8
  store ptr @clo.const.29, ptr @"var.show::show_typed_stmt", align 8
  store ptr @clo.const.30, ptr @"var.show::show_typed_tree_stmt", align 8
  store ptr @clo.const.31, ptr @"var.show::dump_typed_program", align 8
  ret void
}

declare i64 @write(i32, ptr, i64)

define internal i64 @"show::#print"(ptr %0) #3 {
entry:
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %addtmp = add i64 %str.len.query2, 1
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %addtmp, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len3

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

b.buf.len3:                                       ; preds = %str_ok
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 %sum)
  store i8 0, ptr %b.buf, align 1
  store i64 0, ptr %builder.new, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %addtmp, ptr %b.cap.gep, align 8
  %app.str.len6 = load i64, ptr %0, align 8
  %app.str.len7 = and i64 %app.str.len6, 281474976710655
  %str.tag8 = lshr i64 %app.str.len6, 48
  %tag.immortal10 = icmp eq i64 %str.tag8, 0
  %active.gen11 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current12 = icmp eq i64 %str.tag8, %active.gen11
  %tag.fast.ok13 = or i1 %tag.immortal10, %tag.current12
  br i1 %tag.fast.ok13, label %str_ok9, label %tag.slow_check14

str_overflow_abort:                               ; preds = %str_ok
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok9:                                          ; preds = %tag.slow_check14, %b.buf.len3
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %app.str.data15 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len16 = load i64, ptr %builder.new, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len16, i64 %app.str.len7)
  %sum17 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf18 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf18, label %str_overflow_abort20, label %b.app.new.len19

tag.slow_check14:                                 ; preds = %b.buf.len3
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag8)
  br label %str_ok9

b.app.new.len19:                                  ; preds = %str_ok9
  %b.cap22 = load i64, ptr %b.cap.gep, align 8
  %b.need.grow = icmp slt i64 %b.cap22, %sum17
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort20:                             ; preds = %str_ok9
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len19
  %b.cap2 = mul i64 %b.cap22, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum17
  %b.new.cap = select i1 %b.cap.need, i64 %sum17, i64 %b.cap.grow
  %b.cur.len223 = load i64, ptr %builder.new, align 8
  %b.cur.data224 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum25 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf26 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf26, label %str_overflow_abort28, label %b.new.buf.len227

b.grow_done:                                      ; preds = %b.app.new.len19, %b.new.buf.len227
  %b.app.data31 = load ptr, ptr %b.data.gep, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data31, i64 %b.app.cur.len16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data15, i64 %app.str.len7, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data31, i64 %sum17
  store i8 0, ptr %b.app.nul, align 1
  store i64 %sum17, ptr %builder.new, align 8
  %b.len35 = load i64, ptr %builder.new, align 8
  %b.cap37 = load i64, ptr %b.cap.gep, align 8
  %b.data38 = load ptr, ptr %b.data.gep, align 8
  %b.needs.grow = icmp eq i64 %b.len35, %b.cap37
  br i1 %b.needs.grow, label %b.grow, label %b.push_done

b.new.buf.len227:                                 ; preds = %b.grow2
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 %sum25)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data224, i64 %b.cur.len223, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len223
  store i8 0, ptr %b.grow2.nul, align 1
  store ptr %b.new.buf2, ptr %b.data.gep, align 8
  store i64 %b.new.cap, ptr %b.cap.gep, align 8
  br label %b.grow_done

str_overflow_abort28:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow:                                           ; preds = %b.grow_done
  %b.cap239 = mul i64 %b.cap37, 2
  %b.cap.small40 = icmp slt i64 %b.cap239, 16
  %b.new.cap41 = select i1 %b.cap.small40, i64 16, i64 %b.cap239
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap41, i64 1)
  %sum42 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf43 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf43, label %str_overflow_abort45, label %b.new.buf.len44

b.push_done:                                      ; preds = %b.grow_done, %b.new.buf.len44
  %b.cur.data48 = load ptr, ptr %b.data.gep, align 8
  %b.cur.len49 = load i64, ptr %builder.new, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data48, i64 %b.cur.len49
  store i8 10, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len49, 1
  %b.nul = getelementptr i8, ptr %b.cur.data48, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  store i64 %b.next.len, ptr %builder.new, align 8
  %b.ptr52 = load ptr, ptr %b.data.gep, align 8
  %1 = icmp eq ptr %b.ptr52, null
  br i1 %1, label %b.detached, label %b.writable

b.new.buf.len44:                                  ; preds = %b.grow
  %arena.cur47 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 %sum42)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data38, i64 %b.len35, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len35
  store i8 0, ptr %b.grow.nul, align 1
  store ptr %b.new.buf, ptr %b.data.gep, align 8
  store i64 %b.new.cap41, ptr %b.cap.gep, align 8
  br label %b.push_done

str_overflow_abort45:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

b.detached:                                       ; preds = %b.push_done
  call void @dva_abort_detached_builder()
  unreachable

b.writable:                                       ; preds = %b.push_done
  %addr.tag.int = ptrtoint ptr %b.ptr52 to i64
  %addr.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %addr.tag.shift = shl i64 %addr.tag.gen, 48
  %addr.tagged = or i64 %addr.tag.int, %addr.tag.shift
  %addr.tagged.ptr = inttoptr i64 %addr.tagged to ptr
  %addr.ffi.masked = and i64 %addr.tagged, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call i64 @write(i32 1, ptr %addr.ffi.clean, i64 %b.next.len)
  ret i64 %call.res
}

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_str_msg(i64 %0) #4 {
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

; Function Attrs: cold noreturn
declare void @exit(i32) #6

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_detached_builder() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @detached_builder, i64 92)
  call void @exit(i32 1)
  unreachable
}

define { i64, ptr } @"show::show_expr"(ptr %0) #3 {
entry:
  %concat.str2201 = alloca { i64, ptr }, align 8
  %concat.str2141 = alloca { i64, ptr }, align 8
  %concat.str2096 = alloca { i64, ptr }, align 8
  %concat.str2032 = alloca { i64, ptr }, align 8
  %concat.str1985 = alloca { i64, ptr }, align 8
  %concat.str1938 = alloca { i64, ptr }, align 8
  %concat.str1891 = alloca { i64, ptr }, align 8
  %concat.str1844 = alloca { i64, ptr }, align 8
  %concat.str1770 = alloca { i64, ptr }, align 8
  %concat.str1721 = alloca { i64, ptr }, align 8
  %concat.str1672 = alloca { i64, ptr }, align 8
  %ret.ub.salloc1625 = alloca { i64, ptr }, align 8
  %concat.str1599 = alloca { i64, ptr }, align 8
  %concat.str1550 = alloca { i64, ptr }, align 8
  %concat.str1501 = alloca { i64, ptr }, align 8
  %concat.str1425 = alloca { i64, ptr }, align 8
  %concat.str1360 = alloca { i64, ptr }, align 8
  %concat.str1284 = alloca { i64, ptr }, align 8
  %concat.str1196 = alloca { i64, ptr }, align 8
  %concat.str1093 = alloca { i64, ptr }, align 8
  %concat.str988 = alloca { i64, ptr }, align 8
  %concat.str938 = alloca { i64, ptr }, align 8
  %concat.str862 = alloca { i64, ptr }, align 8
  %concat.str768 = alloca { i64, ptr }, align 8
  %cat.ibuf740 = alloca [24 x i8], align 1
  %concat.str725 = alloca { i64, ptr }, align 8
  %concat.str678 = alloca { i64, ptr }, align 8
  %concat.str631 = alloca { i64, ptr }, align 8
  %concat.str582 = alloca { i64, ptr }, align 8
  %concat.str527 = alloca { i64, ptr }, align 8
  %cat.ibuf483 = alloca [24 x i8], align 1
  %concat.str454 = alloca { i64, ptr }, align 8
  %concat.str369 = alloca { i64, ptr }, align 8
  %concat.str293 = alloca { i64, ptr }, align 8
  %concat.str193 = alloca { i64, ptr }, align 8
  %concat.str149 = alloca { i64, ptr }, align 8
  %concat.str105 = alloca { i64, ptr }, align 8
  %concat.str62 = alloca { i64, ptr }, align 8
  %cat.ibuf34 = alloca [24 x i8], align 1
  %concat.str = alloca { i64, ptr }, align 8
  %cat.ibuf = alloca [24 x i8], align 1
  %tag.id = load i64, ptr %0, align 8
  switch i64 %tag.id, label %choice.exit [
    i64 0, label %choice.case
    i64 4, label %choice.case17
    i64 1, label %choice.case65
    i64 2, label %choice.case108
    i64 3, label %choice.case152
    i64 5, label %choice.case196
    i64 24, label %choice.case296
    i64 18, label %choice.case372
    i64 10, label %choice.case457
    i64 37, label %choice.case530
    i64 14, label %choice.case585
    i64 25, label %choice.case634
    i64 27, label %choice.case681
    i64 28, label %choice.case728
    i64 6, label %choice.case771
    i64 7, label %choice.case865
    i64 8, label %choice.case941
    i64 9, label %choice.case991
    i64 13, label %choice.case1096
    i64 12, label %choice.case1199
    i64 11, label %choice.case1287
    i64 16, label %choice.case1363
    i64 17, label %choice.case1428
    i64 22, label %choice.case1504
    i64 15, label %choice.case1553
    i64 29, label %choice.case1602
    i64 19, label %choice.case1626
    i64 26, label %choice.case1675
    i64 39, label %choice.case1724
    i64 36, label %choice.case1773
    i64 20, label %choice.case1847
    i64 40, label %choice.case1894
    i64 21, label %choice.case1941
    i64 23, label %choice.case1988
    i64 34, label %choice.case2035
    i64 35, label %choice.case2099
    i64 38, label %choice.case2144
  ]

choice.exit:                                      ; preds = %entry, %concat.tot.len2190, %concat.tot.len2131, %concat.tot.len2086, %concat.tot.len2022, %concat.tot.len1975, %concat.tot.len1928, %concat.tot.len1881, %concat.tot.len1830, %concat.tot.len1760, %concat.tot.len1711, %concat.tot.len1662, %a.after1615, %concat.tot.len1589, %concat.tot.len1540, %concat.tot.len1487, %concat.tot.len1413, %concat.tot.len1346, %concat.tot.len1269, %concat.tot.len1182, %concat.tot.len1079, %concat.tot.len978, %concat.tot.len924, %concat.tot.len846, %concat.tot.len758, %concat.tot.len715, %concat.tot.len668, %concat.tot.len621, %concat.tot.len572, %concat.tot.len513, %concat.tot.len440, %concat.tot.len355, %concat.tot.len275, %concat.tot.len183, %concat.tot.len139, %concat.tot.len95, %concat.tot.len52, %concat.tot.len12
  %choice.res2204 = phi ptr [ %concat.str, %concat.tot.len12 ], [ %concat.str62, %concat.tot.len52 ], [ %concat.str105, %concat.tot.len95 ], [ %concat.str149, %concat.tot.len139 ], [ %concat.str193, %concat.tot.len183 ], [ %concat.str293, %concat.tot.len275 ], [ %concat.str369, %concat.tot.len355 ], [ %concat.str454, %concat.tot.len440 ], [ %concat.str527, %concat.tot.len513 ], [ %concat.str582, %concat.tot.len572 ], [ %concat.str631, %concat.tot.len621 ], [ %concat.str678, %concat.tot.len668 ], [ %concat.str725, %concat.tot.len715 ], [ %concat.str768, %concat.tot.len758 ], [ %concat.str862, %concat.tot.len846 ], [ %concat.str938, %concat.tot.len924 ], [ %concat.str988, %concat.tot.len978 ], [ %concat.str1093, %concat.tot.len1079 ], [ %concat.str1196, %concat.tot.len1182 ], [ %concat.str1284, %concat.tot.len1269 ], [ %concat.str1360, %concat.tot.len1346 ], [ %concat.str1425, %concat.tot.len1413 ], [ %concat.str1501, %concat.tot.len1487 ], [ %concat.str1550, %concat.tot.len1540 ], [ %concat.str1599, %concat.tot.len1589 ], [ %ret.ub.salloc1625, %a.after1615 ], [ %concat.str1672, %concat.tot.len1662 ], [ %concat.str1721, %concat.tot.len1711 ], [ %concat.str1770, %concat.tot.len1760 ], [ %concat.str1844, %concat.tot.len1830 ], [ %concat.str1891, %concat.tot.len1881 ], [ %concat.str1938, %concat.tot.len1928 ], [ %concat.str1985, %concat.tot.len1975 ], [ %concat.str2032, %concat.tot.len2022 ], [ %concat.str2096, %concat.tot.len2086 ], [ %concat.str2141, %concat.tot.len2131 ], [ %concat.str2201, %concat.tot.len2190 ], [ @str.33.struct, %entry ]
  %ret.pack.fca.0.load = load i64, ptr %choice.res2204, align 8
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.pack.fca.0.load, 0
  %ret.pack.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %choice.res2204, i32 0, i32 1
  %ret.pack.fca.1.load = load ptr, ptr %ret.pack.fca.1.gep, align 8
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %ret.pack.fca.1.load, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.int.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.int.null, label %pay.int.merge, label %pay.int.load

pay.int.load:                                     ; preds = %choice.case
  %pay.int.val = load i64, ptr %payload.ptr, align 8
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %choice.case, %pay.int.load
  %pay.int.phi = phi i64 [ %pay.int.val, %pay.int.load ], [ 0, %choice.case ]
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %pay.int.phi, i1 false)
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4, i64 %cat.ilen)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len3

cat.sum.len3:                                     ; preds = %pay.int.merge
  %cat.sum.len4 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum5 = extractvalue { i64, i1 } %cat.sum.len4, 0
  %ovf6 = extractvalue { i64, i1 } %cat.sum.len4, 1
  br i1 %ovf6, label %str_overflow_abort8, label %cat.sum.len7

str_overflow_abort:                               ; preds = %pay.int.merge
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len7:                                     ; preds = %cat.sum.len3
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum5, i64 1)
  %sum10 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf11 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf11, label %str_overflow_abort13, label %concat.tot.len12

str_overflow_abort8:                              ; preds = %cat.sum.len3
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len12:                                 ; preds = %cat.sum.len7
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum10)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.0, i64 4, i1 false)
  %cat.dst15 = getelementptr i8, ptr %concat.buf, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst15, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %cat.off = add i64 4, %cat.ilen
  %cat.dst16 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst16, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum5
  store i8 0, ptr %concat.nul, align 1
  store i64 %sum5, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_overflow_abort13:                             ; preds = %cat.sum.len7
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case17:                                    ; preds = %entry
  %pay.gep22 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr23 = load ptr, ptr %pay.gep22, align 8
  %pay.int.null24 = icmp eq ptr %payload.ptr23, null
  br i1 %pay.int.null24, label %pay.int.merge27, label %pay.int.load25

pay.int.load25:                                   ; preds = %choice.case17
  %pay.int.val28 = load i64, ptr %payload.ptr23, align 8
  br label %pay.int.merge27

pay.int.merge27:                                  ; preds = %choice.case17, %pay.int.load25
  %pay.int.phi29 = phi i64 [ %pay.int.val28, %pay.int.load25 ], [ 0, %choice.case17 ]
  %cat.ilen35 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf34, i64 %pay.int.phi29, i1 false)
  %cat.sum.len37 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 5, i64 %cat.ilen35)
  %sum38 = extractvalue { i64, i1 } %cat.sum.len37, 0
  %ovf39 = extractvalue { i64, i1 } %cat.sum.len37, 1
  br i1 %ovf39, label %str_overflow_abort41, label %cat.sum.len40

cat.sum.len40:                                    ; preds = %pay.int.merge27
  %cat.sum.len43 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum38, i64 1)
  %sum44 = extractvalue { i64, i1 } %cat.sum.len43, 0
  %ovf45 = extractvalue { i64, i1 } %cat.sum.len43, 1
  br i1 %ovf45, label %str_overflow_abort47, label %cat.sum.len46

str_overflow_abort41:                             ; preds = %pay.int.merge27
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len46:                                    ; preds = %cat.sum.len40
  %concat.tot.len49 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum44, i64 1)
  %sum50 = extractvalue { i64, i1 } %concat.tot.len49, 0
  %ovf51 = extractvalue { i64, i1 } %concat.tot.len49, 1
  br i1 %ovf51, label %str_overflow_abort53, label %concat.tot.len52

str_overflow_abort47:                             ; preds = %cat.sum.len40
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len52:                                 ; preds = %cat.sum.len46
  %arena.cur55 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf56 = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 %sum50)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf56, ptr align 1 @str.2, i64 5, i1 false)
  %cat.dst58 = getelementptr i8, ptr %concat.buf56, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst58, ptr align 1 %cat.ibuf34, i64 %cat.ilen35, i1 false)
  %cat.off59 = add i64 5, %cat.ilen35
  %cat.dst60 = getelementptr i8, ptr %concat.buf56, i64 %cat.off59
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst60, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul61 = getelementptr i8, ptr %concat.buf56, i64 %sum44
  store i8 0, ptr %concat.nul61, align 1
  store i64 %sum44, ptr %concat.str62, align 8
  %str.build.data.gep64 = getelementptr inbounds { i64, ptr }, ptr %concat.str62, i32 0, i32 1
  store ptr %concat.buf56, ptr %str.build.data.gep64, align 8
  br label %choice.exit

str_overflow_abort53:                             ; preds = %cat.sum.len46
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case65:                                    ; preds = %entry
  %pay.gep70 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr71 = load ptr, ptr %pay.gep70, align 8
  %pay.float.null = icmp eq ptr %payload.ptr71, null
  br i1 %pay.float.null, label %pay.float.merge, label %pay.float.load

pay.float.load:                                   ; preds = %choice.case65
  %pay.float.val = load double, ptr %payload.ptr71, align 8
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %choice.case65, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %choice.case65 ]
  %call.res = call { i64, ptr } @"str::from_float"(double %pay.float.phi)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %cat.seg76 = and i64 %call.res.fca.0.extract, 281474976710655
  %cat.sum.len80 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 6, i64 %cat.seg76)
  %sum81 = extractvalue { i64, i1 } %cat.sum.len80, 0
  %ovf82 = extractvalue { i64, i1 } %cat.sum.len80, 1
  br i1 %ovf82, label %str_overflow_abort84, label %cat.sum.len83

cat.sum.len83:                                    ; preds = %pay.float.merge
  %cat.sum.len86 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum81, i64 1)
  %sum87 = extractvalue { i64, i1 } %cat.sum.len86, 0
  %ovf88 = extractvalue { i64, i1 } %cat.sum.len86, 1
  br i1 %ovf88, label %str_overflow_abort90, label %cat.sum.len89

str_overflow_abort84:                             ; preds = %pay.float.merge
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len89:                                    ; preds = %cat.sum.len83
  %concat.tot.len92 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum87, i64 1)
  %sum93 = extractvalue { i64, i1 } %concat.tot.len92, 0
  %ovf94 = extractvalue { i64, i1 } %concat.tot.len92, 1
  br i1 %ovf94, label %str_overflow_abort96, label %concat.tot.len95

str_overflow_abort90:                             ; preds = %cat.sum.len83
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len95:                                 ; preds = %cat.sum.len89
  %arena.cur98 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf99 = call ptr @dva_arena_alloc(ptr %arena.cur98, i64 %sum93)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf99, ptr align 1 @str.3, i64 6, i1 false)
  %cat.dst101 = getelementptr i8, ptr %concat.buf99, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst101, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg76, i1 false)
  %cat.off102 = add i64 6, %cat.seg76
  %cat.dst103 = getelementptr i8, ptr %concat.buf99, i64 %cat.off102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst103, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul104 = getelementptr i8, ptr %concat.buf99, i64 %sum87
  store i8 0, ptr %concat.nul104, align 1
  store i64 %sum87, ptr %concat.str105, align 8
  %str.build.data.gep107 = getelementptr inbounds { i64, ptr }, ptr %concat.str105, i32 0, i32 1
  store ptr %concat.buf99, ptr %str.build.data.gep107, align 8
  br label %choice.exit

str_overflow_abort96:                             ; preds = %cat.sum.len89
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case108:                                   ; preds = %entry
  %pay.gep113 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr114 = load ptr, ptr %pay.gep113, align 8
  %cat.seg119 = load i64, ptr %payload.ptr114, align 8
  %cat.seg120 = and i64 %cat.seg119, 281474976710655
  %cat.seg121 = getelementptr inbounds { i64, ptr }, ptr %payload.ptr114, i32 0, i32 1
  %cat.seg122 = load ptr, ptr %cat.seg121, align 8
  %cat.sum.len124 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 5, i64 %cat.seg120)
  %sum125 = extractvalue { i64, i1 } %cat.sum.len124, 0
  %ovf126 = extractvalue { i64, i1 } %cat.sum.len124, 1
  br i1 %ovf126, label %str_overflow_abort128, label %cat.sum.len127

cat.sum.len127:                                   ; preds = %choice.case108
  %cat.sum.len130 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum125, i64 2)
  %sum131 = extractvalue { i64, i1 } %cat.sum.len130, 0
  %ovf132 = extractvalue { i64, i1 } %cat.sum.len130, 1
  br i1 %ovf132, label %str_overflow_abort134, label %cat.sum.len133

str_overflow_abort128:                            ; preds = %choice.case108
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len133:                                   ; preds = %cat.sum.len127
  %concat.tot.len136 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum131, i64 1)
  %sum137 = extractvalue { i64, i1 } %concat.tot.len136, 0
  %ovf138 = extractvalue { i64, i1 } %concat.tot.len136, 1
  br i1 %ovf138, label %str_overflow_abort140, label %concat.tot.len139

str_overflow_abort134:                            ; preds = %cat.sum.len127
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len139:                                ; preds = %cat.sum.len133
  %arena.cur142 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 %sum137)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf143, ptr align 1 @str.4, i64 5, i1 false)
  %cat.dst145 = getelementptr i8, ptr %concat.buf143, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst145, ptr align 1 %cat.seg122, i64 %cat.seg120, i1 false)
  %cat.off146 = add i64 5, %cat.seg120
  %cat.dst147 = getelementptr i8, ptr %concat.buf143, i64 %cat.off146
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst147, ptr align 1 @str.5, i64 2, i1 false)
  %concat.nul148 = getelementptr i8, ptr %concat.buf143, i64 %sum131
  store i8 0, ptr %concat.nul148, align 1
  store i64 %sum131, ptr %concat.str149, align 8
  %str.build.data.gep151 = getelementptr inbounds { i64, ptr }, ptr %concat.str149, i32 0, i32 1
  store ptr %concat.buf143, ptr %str.build.data.gep151, align 8
  br label %choice.exit

str_overflow_abort140:                            ; preds = %cat.sum.len133
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case152:                                   ; preds = %entry
  %pay.gep157 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr158 = load ptr, ptr %pay.gep157, align 8
  %cat.seg163 = load i64, ptr %payload.ptr158, align 8
  %cat.seg164 = and i64 %cat.seg163, 281474976710655
  %cat.seg165 = getelementptr inbounds { i64, ptr }, ptr %payload.ptr158, i32 0, i32 1
  %cat.seg166 = load ptr, ptr %cat.seg165, align 8
  %cat.sum.len168 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4, i64 %cat.seg164)
  %sum169 = extractvalue { i64, i1 } %cat.sum.len168, 0
  %ovf170 = extractvalue { i64, i1 } %cat.sum.len168, 1
  br i1 %ovf170, label %str_overflow_abort172, label %cat.sum.len171

cat.sum.len171:                                   ; preds = %choice.case152
  %cat.sum.len174 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum169, i64 1)
  %sum175 = extractvalue { i64, i1 } %cat.sum.len174, 0
  %ovf176 = extractvalue { i64, i1 } %cat.sum.len174, 1
  br i1 %ovf176, label %str_overflow_abort178, label %cat.sum.len177

str_overflow_abort172:                            ; preds = %choice.case152
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len177:                                   ; preds = %cat.sum.len171
  %concat.tot.len180 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum175, i64 1)
  %sum181 = extractvalue { i64, i1 } %concat.tot.len180, 0
  %ovf182 = extractvalue { i64, i1 } %concat.tot.len180, 1
  br i1 %ovf182, label %str_overflow_abort184, label %concat.tot.len183

str_overflow_abort178:                            ; preds = %cat.sum.len171
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len183:                                ; preds = %cat.sum.len177
  %arena.cur186 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf187 = call ptr @dva_arena_alloc(ptr %arena.cur186, i64 %sum181)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf187, ptr align 1 @str.6, i64 4, i1 false)
  %cat.dst189 = getelementptr i8, ptr %concat.buf187, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst189, ptr align 1 %cat.seg166, i64 %cat.seg164, i1 false)
  %cat.off190 = add i64 4, %cat.seg164
  %cat.dst191 = getelementptr i8, ptr %concat.buf187, i64 %cat.off190
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst191, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul192 = getelementptr i8, ptr %concat.buf187, i64 %sum175
  store i8 0, ptr %concat.nul192, align 1
  store i64 %sum175, ptr %concat.str193, align 8
  %str.build.data.gep195 = getelementptr inbounds { i64, ptr }, ptr %concat.str193, i32 0, i32 1
  store ptr %concat.buf187, ptr %str.build.data.gep195, align 8
  br label %choice.exit

str_overflow_abort184:                            ; preds = %cat.sum.len177
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case196:                                   ; preds = %entry
  %pay.gep201 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr202 = load ptr, ptr %pay.gep201, align 8
  %fld.load = load ptr, ptr %payload.ptr202, align 8
  %call.res206 = call { i64, ptr } @"show::show_op"(ptr %fld.load)
  %call.res206.fca.0.extract = extractvalue { i64, ptr } %call.res206, 0
  %call.res206.fca.1.extract = extractvalue { i64, ptr } %call.res206, 1
  %cat.seg210 = and i64 %call.res206.fca.0.extract, 281474976710655
  %fld.gep215 = getelementptr inbounds { ptr, ptr, ptr }, ptr %payload.ptr202, i32 0, i32 1
  %fld.load216 = load ptr, ptr %fld.gep215, align 8
  %call.res217 = call { i64, ptr } @"show::show_expr"(ptr %fld.load216)
  %call.res217.fca.0.extract = extractvalue { i64, ptr } %call.res217, 0
  %call.res217.fca.1.extract = extractvalue { i64, ptr } %call.res217, 1
  %cat.seg221 = and i64 %call.res217.fca.0.extract, 281474976710655
  %fld.gep226 = getelementptr inbounds { ptr, ptr, ptr }, ptr %payload.ptr202, i32 0, i32 2
  %fld.load227 = load ptr, ptr %fld.gep226, align 8
  %call.res228 = call { i64, ptr } @"show::show_expr"(ptr %fld.load227)
  %call.res228.fca.0.extract = extractvalue { i64, ptr } %call.res228, 0
  %call.res228.fca.1.extract = extractvalue { i64, ptr } %call.res228, 1
  %cat.seg232 = and i64 %call.res228.fca.0.extract, 281474976710655
  %cat.sum.len236 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4, i64 %cat.seg210)
  %sum237 = extractvalue { i64, i1 } %cat.sum.len236, 0
  %ovf238 = extractvalue { i64, i1 } %cat.sum.len236, 1
  br i1 %ovf238, label %str_overflow_abort240, label %cat.sum.len239

cat.sum.len239:                                   ; preds = %choice.case196
  %cat.sum.len242 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum237, i64 1)
  %sum243 = extractvalue { i64, i1 } %cat.sum.len242, 0
  %ovf244 = extractvalue { i64, i1 } %cat.sum.len242, 1
  br i1 %ovf244, label %str_overflow_abort246, label %cat.sum.len245

str_overflow_abort240:                            ; preds = %choice.case196
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len245:                                   ; preds = %cat.sum.len239
  %cat.sum.len248 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum243, i64 %cat.seg221)
  %sum249 = extractvalue { i64, i1 } %cat.sum.len248, 0
  %ovf250 = extractvalue { i64, i1 } %cat.sum.len248, 1
  br i1 %ovf250, label %str_overflow_abort252, label %cat.sum.len251

str_overflow_abort246:                            ; preds = %cat.sum.len239
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len251:                                   ; preds = %cat.sum.len245
  %cat.sum.len254 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum249, i64 1)
  %sum255 = extractvalue { i64, i1 } %cat.sum.len254, 0
  %ovf256 = extractvalue { i64, i1 } %cat.sum.len254, 1
  br i1 %ovf256, label %str_overflow_abort258, label %cat.sum.len257

str_overflow_abort252:                            ; preds = %cat.sum.len245
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len257:                                   ; preds = %cat.sum.len251
  %cat.sum.len260 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum255, i64 %cat.seg232)
  %sum261 = extractvalue { i64, i1 } %cat.sum.len260, 0
  %ovf262 = extractvalue { i64, i1 } %cat.sum.len260, 1
  br i1 %ovf262, label %str_overflow_abort264, label %cat.sum.len263

str_overflow_abort258:                            ; preds = %cat.sum.len251
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len263:                                   ; preds = %cat.sum.len257
  %cat.sum.len266 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum261, i64 1)
  %sum267 = extractvalue { i64, i1 } %cat.sum.len266, 0
  %ovf268 = extractvalue { i64, i1 } %cat.sum.len266, 1
  br i1 %ovf268, label %str_overflow_abort270, label %cat.sum.len269

str_overflow_abort264:                            ; preds = %cat.sum.len257
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len269:                                   ; preds = %cat.sum.len263
  %concat.tot.len272 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum267, i64 1)
  %sum273 = extractvalue { i64, i1 } %concat.tot.len272, 0
  %ovf274 = extractvalue { i64, i1 } %concat.tot.len272, 1
  br i1 %ovf274, label %str_overflow_abort276, label %concat.tot.len275

str_overflow_abort270:                            ; preds = %cat.sum.len263
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len275:                                ; preds = %cat.sum.len269
  %arena.cur278 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf279 = call ptr @dva_arena_alloc(ptr %arena.cur278, i64 %sum273)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf279, ptr align 1 @str.7, i64 4, i1 false)
  %cat.dst281 = getelementptr i8, ptr %concat.buf279, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst281, ptr align 1 %call.res206.fca.1.extract, i64 %cat.seg210, i1 false)
  %cat.off282 = add i64 4, %cat.seg210
  %cat.dst283 = getelementptr i8, ptr %concat.buf279, i64 %cat.off282
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst283, ptr align 1 @str.34, i64 1, i1 false)
  %cat.off284 = add i64 %cat.off282, 1
  %cat.dst285 = getelementptr i8, ptr %concat.buf279, i64 %cat.off284
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst285, ptr align 1 %call.res217.fca.1.extract, i64 %cat.seg221, i1 false)
  %cat.off286 = add i64 %cat.off284, %cat.seg221
  %cat.dst287 = getelementptr i8, ptr %concat.buf279, i64 %cat.off286
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst287, ptr align 1 @str.34, i64 1, i1 false)
  %cat.off288 = add i64 %cat.off286, 1
  %cat.dst289 = getelementptr i8, ptr %concat.buf279, i64 %cat.off288
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst289, ptr align 1 %call.res228.fca.1.extract, i64 %cat.seg232, i1 false)
  %cat.off290 = add i64 %cat.off288, %cat.seg232
  %cat.dst291 = getelementptr i8, ptr %concat.buf279, i64 %cat.off290
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst291, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul292 = getelementptr i8, ptr %concat.buf279, i64 %sum267
  store i8 0, ptr %concat.nul292, align 1
  store i64 %sum267, ptr %concat.str293, align 8
  %str.build.data.gep295 = getelementptr inbounds { i64, ptr }, ptr %concat.str293, i32 0, i32 1
  store ptr %concat.buf279, ptr %str.build.data.gep295, align 8
  br label %choice.exit

str_overflow_abort276:                            ; preds = %cat.sum.len269
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case296:                                   ; preds = %entry
  %pay.gep301 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr302 = load ptr, ptr %pay.gep301, align 8
  %fld.load308 = load ptr, ptr %payload.ptr302, align 8
  %call.res309 = call { i64, ptr } @"show::show_unop"(ptr %fld.load308)
  %call.res309.fca.0.extract = extractvalue { i64, ptr } %call.res309, 0
  %call.res309.fca.1.extract = extractvalue { i64, ptr } %call.res309, 1
  %cat.seg313 = and i64 %call.res309.fca.0.extract, 281474976710655
  %fld.gep318 = getelementptr inbounds { ptr, ptr }, ptr %payload.ptr302, i32 0, i32 1
  %fld.load319 = load ptr, ptr %fld.gep318, align 8
  %call.res320 = call { i64, ptr } @"show::show_expr"(ptr %fld.load319)
  %call.res320.fca.0.extract = extractvalue { i64, ptr } %call.res320, 0
  %call.res320.fca.1.extract = extractvalue { i64, ptr } %call.res320, 1
  %cat.seg324 = and i64 %call.res320.fca.0.extract, 281474976710655
  %cat.sum.len328 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 6, i64 %cat.seg313)
  %sum329 = extractvalue { i64, i1 } %cat.sum.len328, 0
  %ovf330 = extractvalue { i64, i1 } %cat.sum.len328, 1
  br i1 %ovf330, label %str_overflow_abort332, label %cat.sum.len331

cat.sum.len331:                                   ; preds = %choice.case296
  %cat.sum.len334 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum329, i64 1)
  %sum335 = extractvalue { i64, i1 } %cat.sum.len334, 0
  %ovf336 = extractvalue { i64, i1 } %cat.sum.len334, 1
  br i1 %ovf336, label %str_overflow_abort338, label %cat.sum.len337

str_overflow_abort332:                            ; preds = %choice.case296
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len337:                                   ; preds = %cat.sum.len331
  %cat.sum.len340 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum335, i64 %cat.seg324)
  %sum341 = extractvalue { i64, i1 } %cat.sum.len340, 0
  %ovf342 = extractvalue { i64, i1 } %cat.sum.len340, 1
  br i1 %ovf342, label %str_overflow_abort344, label %cat.sum.len343

str_overflow_abort338:                            ; preds = %cat.sum.len331
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len343:                                   ; preds = %cat.sum.len337
  %cat.sum.len346 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum341, i64 1)
  %sum347 = extractvalue { i64, i1 } %cat.sum.len346, 0
  %ovf348 = extractvalue { i64, i1 } %cat.sum.len346, 1
  br i1 %ovf348, label %str_overflow_abort350, label %cat.sum.len349

str_overflow_abort344:                            ; preds = %cat.sum.len337
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len349:                                   ; preds = %cat.sum.len343
  %concat.tot.len352 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum347, i64 1)
  %sum353 = extractvalue { i64, i1 } %concat.tot.len352, 0
  %ovf354 = extractvalue { i64, i1 } %concat.tot.len352, 1
  br i1 %ovf354, label %str_overflow_abort356, label %concat.tot.len355

str_overflow_abort350:                            ; preds = %cat.sum.len343
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len355:                                ; preds = %cat.sum.len349
  %arena.cur358 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf359 = call ptr @dva_arena_alloc(ptr %arena.cur358, i64 %sum353)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf359, ptr align 1 @str.35, i64 6, i1 false)
  %cat.dst361 = getelementptr i8, ptr %concat.buf359, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst361, ptr align 1 %call.res309.fca.1.extract, i64 %cat.seg313, i1 false)
  %cat.off362 = add i64 6, %cat.seg313
  %cat.dst363 = getelementptr i8, ptr %concat.buf359, i64 %cat.off362
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst363, ptr align 1 @str.34, i64 1, i1 false)
  %cat.off364 = add i64 %cat.off362, 1
  %cat.dst365 = getelementptr i8, ptr %concat.buf359, i64 %cat.off364
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst365, ptr align 1 %call.res320.fca.1.extract, i64 %cat.seg324, i1 false)
  %cat.off366 = add i64 %cat.off364, %cat.seg324
  %cat.dst367 = getelementptr i8, ptr %concat.buf359, i64 %cat.off366
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst367, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul368 = getelementptr i8, ptr %concat.buf359, i64 %sum347
  store i8 0, ptr %concat.nul368, align 1
  store i64 %sum347, ptr %concat.str369, align 8
  %str.build.data.gep371 = getelementptr inbounds { i64, ptr }, ptr %concat.str369, i32 0, i32 1
  store ptr %concat.buf359, ptr %str.build.data.gep371, align 8
  br label %choice.exit

str_overflow_abort356:                            ; preds = %cat.sum.len349
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case372:                                   ; preds = %entry
  %pay.gep377 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr378 = load ptr, ptr %pay.gep377, align 8
  %fld.load384 = load ptr, ptr %payload.ptr378, align 8
  %call.res385 = call { i64, ptr } @"show::show_tag"(ptr %fld.load384)
  %call.res385.fca.0.extract = extractvalue { i64, ptr } %call.res385, 0
  %call.res385.fca.1.extract = extractvalue { i64, ptr } %call.res385, 1
  %cat.seg389 = and i64 %call.res385.fca.0.extract, 281474976710655
  %fld.gep393 = getelementptr inbounds { ptr, ptr }, ptr %payload.ptr378, i32 0, i32 1
  %fld.load394 = load ptr, ptr %fld.gep393, align 8
  %a.len.query395 = load i64, ptr %fld.load394, align 8
  %cmptmp = icmp slt i64 0, %a.len.query395
  %str.34.struct.str.49.struct = select i1 %cmptmp, ptr @str.34.struct, ptr @str.49.struct
  %cat.seg398 = load i64, ptr %str.34.struct.str.49.struct, align 8
  %cat.seg399 = and i64 %cat.seg398, 281474976710655
  %cat.seg400 = getelementptr inbounds { i64, ptr }, ptr %str.34.struct.str.49.struct, i32 0, i32 1
  %cat.seg401 = load ptr, ptr %cat.seg400, align 8
  %fld.load404 = load ptr, ptr %fld.gep393, align 8
  %call.res405 = call { i64, ptr } @"show::show_exprs"(ptr %fld.load404)
  %call.res405.fca.0.extract = extractvalue { i64, ptr } %call.res405, 0
  %call.res405.fca.1.extract = extractvalue { i64, ptr } %call.res405, 1
  %cat.seg409 = and i64 %call.res405.fca.0.extract, 281474976710655
  %cat.sum.len413 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 8, i64 %cat.seg389)
  %sum414 = extractvalue { i64, i1 } %cat.sum.len413, 0
  %ovf415 = extractvalue { i64, i1 } %cat.sum.len413, 1
  br i1 %ovf415, label %str_overflow_abort417, label %cat.sum.len416

cat.sum.len416:                                   ; preds = %choice.case372
  %cat.sum.len419 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum414, i64 %cat.seg399)
  %sum420 = extractvalue { i64, i1 } %cat.sum.len419, 0
  %ovf421 = extractvalue { i64, i1 } %cat.sum.len419, 1
  br i1 %ovf421, label %str_overflow_abort423, label %cat.sum.len422

str_overflow_abort417:                            ; preds = %choice.case372
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len422:                                   ; preds = %cat.sum.len416
  %cat.sum.len425 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum420, i64 %cat.seg409)
  %sum426 = extractvalue { i64, i1 } %cat.sum.len425, 0
  %ovf427 = extractvalue { i64, i1 } %cat.sum.len425, 1
  br i1 %ovf427, label %str_overflow_abort429, label %cat.sum.len428

str_overflow_abort423:                            ; preds = %cat.sum.len416
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len428:                                   ; preds = %cat.sum.len422
  %cat.sum.len431 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum426, i64 1)
  %sum432 = extractvalue { i64, i1 } %cat.sum.len431, 0
  %ovf433 = extractvalue { i64, i1 } %cat.sum.len431, 1
  br i1 %ovf433, label %str_overflow_abort435, label %cat.sum.len434

str_overflow_abort429:                            ; preds = %cat.sum.len422
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len434:                                   ; preds = %cat.sum.len428
  %concat.tot.len437 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum432, i64 1)
  %sum438 = extractvalue { i64, i1 } %concat.tot.len437, 0
  %ovf439 = extractvalue { i64, i1 } %concat.tot.len437, 1
  br i1 %ovf439, label %str_overflow_abort441, label %concat.tot.len440

str_overflow_abort435:                            ; preds = %cat.sum.len428
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len440:                                ; preds = %cat.sum.len434
  %arena.cur443 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf444 = call ptr @dva_arena_alloc(ptr %arena.cur443, i64 %sum438)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf444, ptr align 1 @str.42, i64 8, i1 false)
  %cat.dst446 = getelementptr i8, ptr %concat.buf444, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst446, ptr align 1 %call.res385.fca.1.extract, i64 %cat.seg389, i1 false)
  %cat.off447 = add i64 8, %cat.seg389
  %cat.dst448 = getelementptr i8, ptr %concat.buf444, i64 %cat.off447
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst448, ptr align 1 %cat.seg401, i64 %cat.seg399, i1 false)
  %cat.off449 = add i64 %cat.off447, %cat.seg399
  %cat.dst450 = getelementptr i8, ptr %concat.buf444, i64 %cat.off449
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst450, ptr align 1 %call.res405.fca.1.extract, i64 %cat.seg409, i1 false)
  %cat.off451 = add i64 %cat.off449, %cat.seg409
  %cat.dst452 = getelementptr i8, ptr %concat.buf444, i64 %cat.off451
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst452, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul453 = getelementptr i8, ptr %concat.buf444, i64 %sum432
  store i8 0, ptr %concat.nul453, align 1
  store i64 %sum432, ptr %concat.str454, align 8
  %str.build.data.gep456 = getelementptr inbounds { i64, ptr }, ptr %concat.str454, i32 0, i32 1
  store ptr %concat.buf444, ptr %str.build.data.gep456, align 8
  br label %choice.exit

str_overflow_abort441:                            ; preds = %cat.sum.len434
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case457:                                   ; preds = %entry
  %pay.gep462 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr463 = load ptr, ptr %pay.gep462, align 8
  %fld.load469 = load i1, ptr %payload.ptr463, align 1
  %str.51.struct.str.52.struct = select i1 %fld.load469, ptr @str.51.struct, ptr @str.52.struct
  %cat.seg475 = load i64, ptr %str.51.struct.str.52.struct, align 8
  %cat.seg476 = and i64 %cat.seg475, 281474976710655
  %cat.seg477 = getelementptr inbounds { i64, ptr }, ptr %str.51.struct.str.52.struct, i32 0, i32 1
  %cat.seg478 = load ptr, ptr %cat.seg477, align 8
  %fld.gep481 = getelementptr inbounds { i1, i64 }, ptr %payload.ptr463, i32 0, i32 1
  %fld.load482 = load i64, ptr %fld.gep481, align 8
  %cat.ilen484 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf483, i64 %fld.load482, i1 false)
  %cat.sum.len486 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 10, i64 %cat.seg476)
  %sum487 = extractvalue { i64, i1 } %cat.sum.len486, 0
  %ovf488 = extractvalue { i64, i1 } %cat.sum.len486, 1
  br i1 %ovf488, label %str_overflow_abort490, label %cat.sum.len489

cat.sum.len489:                                   ; preds = %choice.case457
  %cat.sum.len492 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum487, i64 1)
  %sum493 = extractvalue { i64, i1 } %cat.sum.len492, 0
  %ovf494 = extractvalue { i64, i1 } %cat.sum.len492, 1
  br i1 %ovf494, label %str_overflow_abort496, label %cat.sum.len495

str_overflow_abort490:                            ; preds = %choice.case457
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len495:                                   ; preds = %cat.sum.len489
  %cat.sum.len498 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum493, i64 %cat.ilen484)
  %sum499 = extractvalue { i64, i1 } %cat.sum.len498, 0
  %ovf500 = extractvalue { i64, i1 } %cat.sum.len498, 1
  br i1 %ovf500, label %str_overflow_abort502, label %cat.sum.len501

str_overflow_abort496:                            ; preds = %cat.sum.len489
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len501:                                   ; preds = %cat.sum.len495
  %cat.sum.len504 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum499, i64 1)
  %sum505 = extractvalue { i64, i1 } %cat.sum.len504, 0
  %ovf506 = extractvalue { i64, i1 } %cat.sum.len504, 1
  br i1 %ovf506, label %str_overflow_abort508, label %cat.sum.len507

str_overflow_abort502:                            ; preds = %cat.sum.len495
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len507:                                   ; preds = %cat.sum.len501
  %concat.tot.len510 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum505, i64 1)
  %sum511 = extractvalue { i64, i1 } %concat.tot.len510, 0
  %ovf512 = extractvalue { i64, i1 } %concat.tot.len510, 1
  br i1 %ovf512, label %str_overflow_abort514, label %concat.tot.len513

str_overflow_abort508:                            ; preds = %cat.sum.len501
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len513:                                ; preds = %cat.sum.len507
  %arena.cur516 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf517 = call ptr @dva_arena_alloc(ptr %arena.cur516, i64 %sum511)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf517, ptr align 1 @str.50, i64 10, i1 false)
  %cat.dst519 = getelementptr i8, ptr %concat.buf517, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst519, ptr align 1 %cat.seg478, i64 %cat.seg476, i1 false)
  %cat.off520 = add i64 10, %cat.seg476
  %cat.dst521 = getelementptr i8, ptr %concat.buf517, i64 %cat.off520
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst521, ptr align 1 @str.34, i64 1, i1 false)
  %cat.off522 = add i64 %cat.off520, 1
  %cat.dst523 = getelementptr i8, ptr %concat.buf517, i64 %cat.off522
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst523, ptr align 1 %cat.ibuf483, i64 %cat.ilen484, i1 false)
  %cat.off524 = add i64 %cat.off522, %cat.ilen484
  %cat.dst525 = getelementptr i8, ptr %concat.buf517, i64 %cat.off524
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst525, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul526 = getelementptr i8, ptr %concat.buf517, i64 %sum505
  store i8 0, ptr %concat.nul526, align 1
  store i64 %sum505, ptr %concat.str527, align 8
  %str.build.data.gep529 = getelementptr inbounds { i64, ptr }, ptr %concat.str527, i32 0, i32 1
  store ptr %concat.buf517, ptr %str.build.data.gep529, align 8
  br label %choice.exit

str_overflow_abort514:                            ; preds = %cat.sum.len507
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case530:                                   ; preds = %entry
  %pay.gep535 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr536 = load ptr, ptr %pay.gep535, align 8
  %fld.load541 = load i1, ptr %payload.ptr536, align 1
  br i1 %fld.load541, label %choice.then542, label %choice.exit544

choice.then542:                                   ; preds = %choice.case530
  %fld.gep546 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %payload.ptr536, i32 0, i32 1
  %fld.load547 = load ptr, ptr %fld.gep546, align 8
  %call.res548 = call { i64, ptr } @"show::show_expr"(ptr %fld.load547)
  %arena.cur549 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur549, i64 16)
  store { i64, ptr } %call.res548, ptr %ret.ub.alloc, align 8
  br label %choice.exit544

choice.exit544:                                   ; preds = %choice.case530, %choice.then542
  %choice.res550 = phi ptr [ %ret.ub.alloc, %choice.then542 ], [ @str.49.struct, %choice.case530 ]
  %cat.seg552 = load i64, ptr %choice.res550, align 8
  %cat.seg553 = and i64 %cat.seg552, 281474976710655
  %cat.seg554 = getelementptr inbounds { i64, ptr }, ptr %choice.res550, i32 0, i32 1
  %cat.seg555 = load ptr, ptr %cat.seg554, align 8
  %cat.sum.len557 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 7, i64 %cat.seg553)
  %sum558 = extractvalue { i64, i1 } %cat.sum.len557, 0
  %ovf559 = extractvalue { i64, i1 } %cat.sum.len557, 1
  br i1 %ovf559, label %str_overflow_abort561, label %cat.sum.len560

cat.sum.len560:                                   ; preds = %choice.exit544
  %cat.sum.len563 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum558, i64 1)
  %sum564 = extractvalue { i64, i1 } %cat.sum.len563, 0
  %ovf565 = extractvalue { i64, i1 } %cat.sum.len563, 1
  br i1 %ovf565, label %str_overflow_abort567, label %cat.sum.len566

str_overflow_abort561:                            ; preds = %choice.exit544
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len566:                                   ; preds = %cat.sum.len560
  %concat.tot.len569 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum564, i64 1)
  %sum570 = extractvalue { i64, i1 } %concat.tot.len569, 0
  %ovf571 = extractvalue { i64, i1 } %concat.tot.len569, 1
  br i1 %ovf571, label %str_overflow_abort573, label %concat.tot.len572

str_overflow_abort567:                            ; preds = %cat.sum.len560
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len572:                                ; preds = %cat.sum.len566
  %arena.cur575 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf576 = call ptr @dva_arena_alloc(ptr %arena.cur575, i64 %sum570)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf576, ptr align 1 @str.53, i64 7, i1 false)
  %cat.dst578 = getelementptr i8, ptr %concat.buf576, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst578, ptr align 1 %cat.seg555, i64 %cat.seg553, i1 false)
  %cat.off579 = add i64 7, %cat.seg553
  %cat.dst580 = getelementptr i8, ptr %concat.buf576, i64 %cat.off579
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst580, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul581 = getelementptr i8, ptr %concat.buf576, i64 %sum564
  store i8 0, ptr %concat.nul581, align 1
  store i64 %sum564, ptr %concat.str582, align 8
  %str.build.data.gep584 = getelementptr inbounds { i64, ptr }, ptr %concat.str582, i32 0, i32 1
  store ptr %concat.buf576, ptr %str.build.data.gep584, align 8
  br label %choice.exit

str_overflow_abort573:                            ; preds = %cat.sum.len566
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case585:                                   ; preds = %entry
  %pay.gep590 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr591 = load ptr, ptr %pay.gep590, align 8
  %fld.gep596 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %payload.ptr591, i32 0, i32 2
  %fld.load597 = load ptr, ptr %fld.gep596, align 8
  %call.res598 = call { i64, ptr } @"show::show_expr"(ptr %fld.load597)
  %call.res598.fca.0.extract = extractvalue { i64, ptr } %call.res598, 0
  %call.res598.fca.1.extract = extractvalue { i64, ptr } %call.res598, 1
  %cat.seg602 = and i64 %call.res598.fca.0.extract, 281474976710655
  %cat.sum.len606 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 3, i64 %cat.seg602)
  %sum607 = extractvalue { i64, i1 } %cat.sum.len606, 0
  %ovf608 = extractvalue { i64, i1 } %cat.sum.len606, 1
  br i1 %ovf608, label %str_overflow_abort610, label %cat.sum.len609

cat.sum.len609:                                   ; preds = %choice.case585
  %cat.sum.len612 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum607, i64 1)
  %sum613 = extractvalue { i64, i1 } %cat.sum.len612, 0
  %ovf614 = extractvalue { i64, i1 } %cat.sum.len612, 1
  br i1 %ovf614, label %str_overflow_abort616, label %cat.sum.len615

str_overflow_abort610:                            ; preds = %choice.case585
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len615:                                   ; preds = %cat.sum.len609
  %concat.tot.len618 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum613, i64 1)
  %sum619 = extractvalue { i64, i1 } %concat.tot.len618, 0
  %ovf620 = extractvalue { i64, i1 } %concat.tot.len618, 1
  br i1 %ovf620, label %str_overflow_abort622, label %concat.tot.len621

str_overflow_abort616:                            ; preds = %cat.sum.len609
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len621:                                ; preds = %cat.sum.len615
  %arena.cur624 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf625 = call ptr @dva_arena_alloc(ptr %arena.cur624, i64 %sum619)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf625, ptr align 1 @str.54, i64 3, i1 false)
  %cat.dst627 = getelementptr i8, ptr %concat.buf625, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst627, ptr align 1 %call.res598.fca.1.extract, i64 %cat.seg602, i1 false)
  %cat.off628 = add i64 3, %cat.seg602
  %cat.dst629 = getelementptr i8, ptr %concat.buf625, i64 %cat.off628
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst629, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul630 = getelementptr i8, ptr %concat.buf625, i64 %sum613
  store i8 0, ptr %concat.nul630, align 1
  store i64 %sum613, ptr %concat.str631, align 8
  %str.build.data.gep633 = getelementptr inbounds { i64, ptr }, ptr %concat.str631, i32 0, i32 1
  store ptr %concat.buf625, ptr %str.build.data.gep633, align 8
  br label %choice.exit

str_overflow_abort622:                            ; preds = %cat.sum.len615
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case634:                                   ; preds = %entry
  %pay.gep639 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr640 = load ptr, ptr %pay.gep639, align 8
  %call.res645 = call { i64, ptr } @"show::show_expr"(ptr %payload.ptr640)
  %call.res645.fca.0.extract = extractvalue { i64, ptr } %call.res645, 0
  %call.res645.fca.1.extract = extractvalue { i64, ptr } %call.res645, 1
  %cat.seg649 = and i64 %call.res645.fca.0.extract, 281474976710655
  %cat.sum.len653 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 5, i64 %cat.seg649)
  %sum654 = extractvalue { i64, i1 } %cat.sum.len653, 0
  %ovf655 = extractvalue { i64, i1 } %cat.sum.len653, 1
  br i1 %ovf655, label %str_overflow_abort657, label %cat.sum.len656

cat.sum.len656:                                   ; preds = %choice.case634
  %cat.sum.len659 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum654, i64 1)
  %sum660 = extractvalue { i64, i1 } %cat.sum.len659, 0
  %ovf661 = extractvalue { i64, i1 } %cat.sum.len659, 1
  br i1 %ovf661, label %str_overflow_abort663, label %cat.sum.len662

str_overflow_abort657:                            ; preds = %choice.case634
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len662:                                   ; preds = %cat.sum.len656
  %concat.tot.len665 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum660, i64 1)
  %sum666 = extractvalue { i64, i1 } %concat.tot.len665, 0
  %ovf667 = extractvalue { i64, i1 } %concat.tot.len665, 1
  br i1 %ovf667, label %str_overflow_abort669, label %concat.tot.len668

str_overflow_abort663:                            ; preds = %cat.sum.len656
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len668:                                ; preds = %cat.sum.len662
  %arena.cur671 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf672 = call ptr @dva_arena_alloc(ptr %arena.cur671, i64 %sum666)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf672, ptr align 1 @str.55, i64 5, i1 false)
  %cat.dst674 = getelementptr i8, ptr %concat.buf672, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst674, ptr align 1 %call.res645.fca.1.extract, i64 %cat.seg649, i1 false)
  %cat.off675 = add i64 5, %cat.seg649
  %cat.dst676 = getelementptr i8, ptr %concat.buf672, i64 %cat.off675
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst676, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul677 = getelementptr i8, ptr %concat.buf672, i64 %sum660
  store i8 0, ptr %concat.nul677, align 1
  store i64 %sum660, ptr %concat.str678, align 8
  %str.build.data.gep680 = getelementptr inbounds { i64, ptr }, ptr %concat.str678, i32 0, i32 1
  store ptr %concat.buf672, ptr %str.build.data.gep680, align 8
  br label %choice.exit

str_overflow_abort669:                            ; preds = %cat.sum.len662
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case681:                                   ; preds = %entry
  %pay.gep686 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr687 = load ptr, ptr %pay.gep686, align 8
  %call.res692 = call { i64, ptr } @"show::show_expr"(ptr %payload.ptr687)
  %call.res692.fca.0.extract = extractvalue { i64, ptr } %call.res692, 0
  %call.res692.fca.1.extract = extractvalue { i64, ptr } %call.res692, 1
  %cat.seg696 = and i64 %call.res692.fca.0.extract, 281474976710655
  %cat.sum.len700 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 8, i64 %cat.seg696)
  %sum701 = extractvalue { i64, i1 } %cat.sum.len700, 0
  %ovf702 = extractvalue { i64, i1 } %cat.sum.len700, 1
  br i1 %ovf702, label %str_overflow_abort704, label %cat.sum.len703

cat.sum.len703:                                   ; preds = %choice.case681
  %cat.sum.len706 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum701, i64 1)
  %sum707 = extractvalue { i64, i1 } %cat.sum.len706, 0
  %ovf708 = extractvalue { i64, i1 } %cat.sum.len706, 1
  br i1 %ovf708, label %str_overflow_abort710, label %cat.sum.len709

str_overflow_abort704:                            ; preds = %choice.case681
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len709:                                   ; preds = %cat.sum.len703
  %concat.tot.len712 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum707, i64 1)
  %sum713 = extractvalue { i64, i1 } %concat.tot.len712, 0
  %ovf714 = extractvalue { i64, i1 } %concat.tot.len712, 1
  br i1 %ovf714, label %str_overflow_abort716, label %concat.tot.len715

str_overflow_abort710:                            ; preds = %cat.sum.len703
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len715:                                ; preds = %cat.sum.len709
  %arena.cur718 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf719 = call ptr @dva_arena_alloc(ptr %arena.cur718, i64 %sum713)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf719, ptr align 1 @str.56, i64 8, i1 false)
  %cat.dst721 = getelementptr i8, ptr %concat.buf719, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst721, ptr align 1 %call.res692.fca.1.extract, i64 %cat.seg696, i1 false)
  %cat.off722 = add i64 8, %cat.seg696
  %cat.dst723 = getelementptr i8, ptr %concat.buf719, i64 %cat.off722
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst723, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul724 = getelementptr i8, ptr %concat.buf719, i64 %sum707
  store i8 0, ptr %concat.nul724, align 1
  store i64 %sum707, ptr %concat.str725, align 8
  %str.build.data.gep727 = getelementptr inbounds { i64, ptr }, ptr %concat.str725, i32 0, i32 1
  store ptr %concat.buf719, ptr %str.build.data.gep727, align 8
  br label %choice.exit

str_overflow_abort716:                            ; preds = %cat.sum.len709
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case728:                                   ; preds = %entry
  %pay.gep733 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr734 = load ptr, ptr %pay.gep733, align 8
  %fld.gep738 = getelementptr inbounds { ptr, i64 }, ptr %payload.ptr734, i32 0, i32 1
  %fld.load739 = load i64, ptr %fld.gep738, align 8
  %cat.ilen741 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf740, i64 %fld.load739, i1 false)
  %cat.sum.len743 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 12, i64 %cat.ilen741)
  %sum744 = extractvalue { i64, i1 } %cat.sum.len743, 0
  %ovf745 = extractvalue { i64, i1 } %cat.sum.len743, 1
  br i1 %ovf745, label %str_overflow_abort747, label %cat.sum.len746

cat.sum.len746:                                   ; preds = %choice.case728
  %cat.sum.len749 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum744, i64 1)
  %sum750 = extractvalue { i64, i1 } %cat.sum.len749, 0
  %ovf751 = extractvalue { i64, i1 } %cat.sum.len749, 1
  br i1 %ovf751, label %str_overflow_abort753, label %cat.sum.len752

str_overflow_abort747:                            ; preds = %choice.case728
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len752:                                   ; preds = %cat.sum.len746
  %concat.tot.len755 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum750, i64 1)
  %sum756 = extractvalue { i64, i1 } %concat.tot.len755, 0
  %ovf757 = extractvalue { i64, i1 } %concat.tot.len755, 1
  br i1 %ovf757, label %str_overflow_abort759, label %concat.tot.len758

str_overflow_abort753:                            ; preds = %cat.sum.len746
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len758:                                ; preds = %cat.sum.len752
  %arena.cur761 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf762 = call ptr @dva_arena_alloc(ptr %arena.cur761, i64 %sum756)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf762, ptr align 1 @str.57, i64 12, i1 false)
  %cat.dst764 = getelementptr i8, ptr %concat.buf762, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst764, ptr align 1 %cat.ibuf740, i64 %cat.ilen741, i1 false)
  %cat.off765 = add i64 12, %cat.ilen741
  %cat.dst766 = getelementptr i8, ptr %concat.buf762, i64 %cat.off765
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst766, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul767 = getelementptr i8, ptr %concat.buf762, i64 %sum750
  store i8 0, ptr %concat.nul767, align 1
  store i64 %sum750, ptr %concat.str768, align 8
  %str.build.data.gep770 = getelementptr inbounds { i64, ptr }, ptr %concat.str768, i32 0, i32 1
  store ptr %concat.buf762, ptr %str.build.data.gep770, align 8
  br label %choice.exit

str_overflow_abort759:                            ; preds = %cat.sum.len752
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case771:                                   ; preds = %entry
  %pay.gep776 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr777 = load ptr, ptr %pay.gep776, align 8
  %fld.load783 = load ptr, ptr %payload.ptr777, align 8
  %cat.seg785 = load i64, ptr %fld.load783, align 8
  %cat.seg786 = and i64 %cat.seg785, 281474976710655
  %cat.seg787 = getelementptr inbounds { i64, ptr }, ptr %fld.load783, i32 0, i32 1
  %cat.seg788 = load ptr, ptr %cat.seg787, align 8
  %fld.gep791 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %payload.ptr777, i32 0, i32 2
  %fld.load792 = load i1, ptr %fld.gep791, align 1
  %str.59.struct.str.60.struct = select i1 %fld.load792, ptr @str.59.struct, ptr @str.60.struct
  %cat.seg798 = load i64, ptr %str.59.struct.str.60.struct, align 8
  %cat.seg799 = and i64 %cat.seg798, 281474976710655
  %cat.seg800 = getelementptr inbounds { i64, ptr }, ptr %str.59.struct.str.60.struct, i32 0, i32 1
  %cat.seg801 = load ptr, ptr %cat.seg800, align 8
  %fld.gep803 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %payload.ptr777, i32 0, i32 5
  %fld.load804 = load ptr, ptr %fld.gep803, align 8
  %call.res805 = call { i64, ptr } @"show::show_fwd_rhs"(ptr %fld.load804)
  %call.res805.fca.0.extract = extractvalue { i64, ptr } %call.res805, 0
  %call.res805.fca.1.extract = extractvalue { i64, ptr } %call.res805, 1
  %cat.seg809 = and i64 %call.res805.fca.0.extract, 281474976710655
  %cat.sum.len813 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 7, i64 %cat.seg786)
  %sum814 = extractvalue { i64, i1 } %cat.sum.len813, 0
  %ovf815 = extractvalue { i64, i1 } %cat.sum.len813, 1
  br i1 %ovf815, label %str_overflow_abort817, label %cat.sum.len816

cat.sum.len816:                                   ; preds = %choice.case771
  %cat.sum.len819 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum814, i64 1)
  %sum820 = extractvalue { i64, i1 } %cat.sum.len819, 0
  %ovf821 = extractvalue { i64, i1 } %cat.sum.len819, 1
  br i1 %ovf821, label %str_overflow_abort823, label %cat.sum.len822

str_overflow_abort817:                            ; preds = %choice.case771
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len822:                                   ; preds = %cat.sum.len816
  %cat.sum.len825 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum820, i64 %cat.seg799)
  %sum826 = extractvalue { i64, i1 } %cat.sum.len825, 0
  %ovf827 = extractvalue { i64, i1 } %cat.sum.len825, 1
  br i1 %ovf827, label %str_overflow_abort829, label %cat.sum.len828

str_overflow_abort823:                            ; preds = %cat.sum.len816
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len828:                                   ; preds = %cat.sum.len822
  %cat.sum.len831 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum826, i64 %cat.seg809)
  %sum832 = extractvalue { i64, i1 } %cat.sum.len831, 0
  %ovf833 = extractvalue { i64, i1 } %cat.sum.len831, 1
  br i1 %ovf833, label %str_overflow_abort835, label %cat.sum.len834

str_overflow_abort829:                            ; preds = %cat.sum.len822
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len834:                                   ; preds = %cat.sum.len828
  %cat.sum.len837 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum832, i64 1)
  %sum838 = extractvalue { i64, i1 } %cat.sum.len837, 0
  %ovf839 = extractvalue { i64, i1 } %cat.sum.len837, 1
  br i1 %ovf839, label %str_overflow_abort841, label %cat.sum.len840

str_overflow_abort835:                            ; preds = %cat.sum.len828
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len840:                                   ; preds = %cat.sum.len834
  %concat.tot.len843 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum838, i64 1)
  %sum844 = extractvalue { i64, i1 } %concat.tot.len843, 0
  %ovf845 = extractvalue { i64, i1 } %concat.tot.len843, 1
  br i1 %ovf845, label %str_overflow_abort847, label %concat.tot.len846

str_overflow_abort841:                            ; preds = %cat.sum.len834
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len846:                                ; preds = %cat.sum.len840
  %arena.cur849 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf850 = call ptr @dva_arena_alloc(ptr %arena.cur849, i64 %sum844)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf850, ptr align 1 @str.58, i64 7, i1 false)
  %cat.dst852 = getelementptr i8, ptr %concat.buf850, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst852, ptr align 1 %cat.seg788, i64 %cat.seg786, i1 false)
  %cat.off853 = add i64 7, %cat.seg786
  %cat.dst854 = getelementptr i8, ptr %concat.buf850, i64 %cat.off853
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst854, ptr align 1 @str.34, i64 1, i1 false)
  %cat.off855 = add i64 %cat.off853, 1
  %cat.dst856 = getelementptr i8, ptr %concat.buf850, i64 %cat.off855
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst856, ptr align 1 %cat.seg801, i64 %cat.seg799, i1 false)
  %cat.off857 = add i64 %cat.off855, %cat.seg799
  %cat.dst858 = getelementptr i8, ptr %concat.buf850, i64 %cat.off857
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst858, ptr align 1 %call.res805.fca.1.extract, i64 %cat.seg809, i1 false)
  %cat.off859 = add i64 %cat.off857, %cat.seg809
  %cat.dst860 = getelementptr i8, ptr %concat.buf850, i64 %cat.off859
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst860, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul861 = getelementptr i8, ptr %concat.buf850, i64 %sum838
  store i8 0, ptr %concat.nul861, align 1
  store i64 %sum838, ptr %concat.str862, align 8
  %str.build.data.gep864 = getelementptr inbounds { i64, ptr }, ptr %concat.str862, i32 0, i32 1
  store ptr %concat.buf850, ptr %str.build.data.gep864, align 8
  br label %choice.exit

str_overflow_abort847:                            ; preds = %cat.sum.len840
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case865:                                   ; preds = %entry
  %pay.gep870 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr871 = load ptr, ptr %pay.gep870, align 8
  %fld.load877 = load ptr, ptr %payload.ptr871, align 8
  %call.res878 = call { i64, ptr } @"show::show_expr"(ptr %fld.load877)
  %call.res878.fca.0.extract = extractvalue { i64, ptr } %call.res878, 0
  %call.res878.fca.1.extract = extractvalue { i64, ptr } %call.res878, 1
  %cat.seg882 = and i64 %call.res878.fca.0.extract, 281474976710655
  %fld.gep887 = getelementptr inbounds { ptr, i1, ptr }, ptr %payload.ptr871, i32 0, i32 2
  %fld.load888 = load ptr, ptr %fld.gep887, align 8
  %call.res889 = call { i64, ptr } @"show::show_branches"(ptr %fld.load888)
  %call.res889.fca.0.extract = extractvalue { i64, ptr } %call.res889, 0
  %call.res889.fca.1.extract = extractvalue { i64, ptr } %call.res889, 1
  %cat.seg893 = and i64 %call.res889.fca.0.extract, 281474976710655
  %cat.sum.len897 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 7, i64 %cat.seg882)
  %sum898 = extractvalue { i64, i1 } %cat.sum.len897, 0
  %ovf899 = extractvalue { i64, i1 } %cat.sum.len897, 1
  br i1 %ovf899, label %str_overflow_abort901, label %cat.sum.len900

cat.sum.len900:                                   ; preds = %choice.case865
  %cat.sum.len903 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum898, i64 1)
  %sum904 = extractvalue { i64, i1 } %cat.sum.len903, 0
  %ovf905 = extractvalue { i64, i1 } %cat.sum.len903, 1
  br i1 %ovf905, label %str_overflow_abort907, label %cat.sum.len906

str_overflow_abort901:                            ; preds = %choice.case865
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len906:                                   ; preds = %cat.sum.len900
  %cat.sum.len909 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum904, i64 %cat.seg893)
  %sum910 = extractvalue { i64, i1 } %cat.sum.len909, 0
  %ovf911 = extractvalue { i64, i1 } %cat.sum.len909, 1
  br i1 %ovf911, label %str_overflow_abort913, label %cat.sum.len912

str_overflow_abort907:                            ; preds = %cat.sum.len900
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len912:                                   ; preds = %cat.sum.len906
  %cat.sum.len915 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum910, i64 1)
  %sum916 = extractvalue { i64, i1 } %cat.sum.len915, 0
  %ovf917 = extractvalue { i64, i1 } %cat.sum.len915, 1
  br i1 %ovf917, label %str_overflow_abort919, label %cat.sum.len918

str_overflow_abort913:                            ; preds = %cat.sum.len906
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len918:                                   ; preds = %cat.sum.len912
  %concat.tot.len921 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum916, i64 1)
  %sum922 = extractvalue { i64, i1 } %concat.tot.len921, 0
  %ovf923 = extractvalue { i64, i1 } %concat.tot.len921, 1
  br i1 %ovf923, label %str_overflow_abort925, label %concat.tot.len924

str_overflow_abort919:                            ; preds = %cat.sum.len912
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len924:                                ; preds = %cat.sum.len918
  %arena.cur927 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf928 = call ptr @dva_arena_alloc(ptr %arena.cur927, i64 %sum922)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf928, ptr align 1 @str.62, i64 7, i1 false)
  %cat.dst930 = getelementptr i8, ptr %concat.buf928, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst930, ptr align 1 %call.res878.fca.1.extract, i64 %cat.seg882, i1 false)
  %cat.off931 = add i64 7, %cat.seg882
  %cat.dst932 = getelementptr i8, ptr %concat.buf928, i64 %cat.off931
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst932, ptr align 1 @str.34, i64 1, i1 false)
  %cat.off933 = add i64 %cat.off931, 1
  %cat.dst934 = getelementptr i8, ptr %concat.buf928, i64 %cat.off933
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst934, ptr align 1 %call.res889.fca.1.extract, i64 %cat.seg893, i1 false)
  %cat.off935 = add i64 %cat.off933, %cat.seg893
  %cat.dst936 = getelementptr i8, ptr %concat.buf928, i64 %cat.off935
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst936, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul937 = getelementptr i8, ptr %concat.buf928, i64 %sum916
  store i8 0, ptr %concat.nul937, align 1
  store i64 %sum916, ptr %concat.str938, align 8
  %str.build.data.gep940 = getelementptr inbounds { i64, ptr }, ptr %concat.str938, i32 0, i32 1
  store ptr %concat.buf928, ptr %str.build.data.gep940, align 8
  br label %choice.exit

str_overflow_abort925:                            ; preds = %cat.sum.len918
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case941:                                   ; preds = %entry
  %pay.gep946 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr947 = load ptr, ptr %pay.gep946, align 8
  %a.null = icmp eq ptr %payload.ptr947, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %choice.case941
  %arena.cur952 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create953 = call ptr @dva_arena_alloc(ptr %arena.cur952, i64 24)
  %arena.cur954 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur954, i64 128)
  store i64 0, ptr %a.create953, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create953, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create953, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case941
  %var.t949.0 = phi ptr [ %a.create953, %a.create ], [ %payload.ptr947, %choice.case941 ]
  %call.res955 = call { i64, ptr } @"show::show_exprs"(ptr %var.t949.0)
  %call.res955.fca.0.extract = extractvalue { i64, ptr } %call.res955, 0
  %call.res955.fca.1.extract = extractvalue { i64, ptr } %call.res955, 1
  %cat.seg959 = and i64 %call.res955.fca.0.extract, 281474976710655
  %cat.sum.len963 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 6, i64 %cat.seg959)
  %sum964 = extractvalue { i64, i1 } %cat.sum.len963, 0
  %ovf965 = extractvalue { i64, i1 } %cat.sum.len963, 1
  br i1 %ovf965, label %str_overflow_abort967, label %cat.sum.len966

cat.sum.len966:                                   ; preds = %a.after
  %cat.sum.len969 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum964, i64 1)
  %sum970 = extractvalue { i64, i1 } %cat.sum.len969, 0
  %ovf971 = extractvalue { i64, i1 } %cat.sum.len969, 1
  br i1 %ovf971, label %str_overflow_abort973, label %cat.sum.len972

str_overflow_abort967:                            ; preds = %a.after
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len972:                                   ; preds = %cat.sum.len966
  %concat.tot.len975 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum970, i64 1)
  %sum976 = extractvalue { i64, i1 } %concat.tot.len975, 0
  %ovf977 = extractvalue { i64, i1 } %concat.tot.len975, 1
  br i1 %ovf977, label %str_overflow_abort979, label %concat.tot.len978

str_overflow_abort973:                            ; preds = %cat.sum.len966
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len978:                                ; preds = %cat.sum.len972
  %arena.cur981 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf982 = call ptr @dva_arena_alloc(ptr %arena.cur981, i64 %sum976)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf982, ptr align 1 @str.70, i64 6, i1 false)
  %cat.dst984 = getelementptr i8, ptr %concat.buf982, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst984, ptr align 1 %call.res955.fca.1.extract, i64 %cat.seg959, i1 false)
  %cat.off985 = add i64 6, %cat.seg959
  %cat.dst986 = getelementptr i8, ptr %concat.buf982, i64 %cat.off985
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst986, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul987 = getelementptr i8, ptr %concat.buf982, i64 %sum970
  store i8 0, ptr %concat.nul987, align 1
  store i64 %sum970, ptr %concat.str988, align 8
  %str.build.data.gep990 = getelementptr inbounds { i64, ptr }, ptr %concat.str988, i32 0, i32 1
  store ptr %concat.buf982, ptr %str.build.data.gep990, align 8
  br label %choice.exit

str_overflow_abort979:                            ; preds = %cat.sum.len972
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case991:                                   ; preds = %entry
  %pay.gep996 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr997 = load ptr, ptr %pay.gep996, align 8
  %fld.load1003 = load ptr, ptr %payload.ptr997, align 8
  %eq.lhs.len1004 = load i64, ptr %fld.load1003, align 8
  %eq.lhs.len1005 = and i64 %eq.lhs.len1004, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len1005, 0
  br i1 %eq.len, label %str.eq.then, label %choice.else1009

str.eq.then:                                      ; preds = %choice.case991
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load1003, i32 0, i32 1
  %eq.lhs.data1007 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data1007, ptr @str.49, i64 %eq.lhs.len1005)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then1008, label %choice.else1009

choice.then1008:                                  ; preds = %str.eq.then
  %fld.gep1012 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %payload.ptr997, i32 0, i32 1
  %fld.load1013 = load ptr, ptr %fld.gep1012, align 8
  %call.res1014 = call { i64, ptr } @"show::show_expr"(ptr %fld.load1013)
  %arena.cur1015 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1016 = call ptr @dva_arena_alloc(ptr %arena.cur1015, i64 16)
  store { i64, ptr } %call.res1014, ptr %ret.ub.alloc1016, align 8
  br label %choice.exit1010

choice.else1009:                                  ; preds = %choice.case991, %str.eq.then
  %fld.load1019 = load ptr, ptr %payload.ptr997, align 8
  br label %choice.exit1010

choice.exit1010:                                  ; preds = %choice.else1009, %choice.then1008
  %choice.res1020 = phi ptr [ %ret.ub.alloc1016, %choice.then1008 ], [ %fld.load1019, %choice.else1009 ]
  %cat.seg1022 = load i64, ptr %choice.res1020, align 8
  %cat.seg1023 = and i64 %cat.seg1022, 281474976710655
  %cat.seg1024 = getelementptr inbounds { i64, ptr }, ptr %choice.res1020, i32 0, i32 1
  %cat.seg1025 = load ptr, ptr %cat.seg1024, align 8
  %fld.gep1027 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %payload.ptr997, i32 0, i32 2
  %fld.load1028 = load ptr, ptr %fld.gep1027, align 8
  %a.len.query1030 = load i64, ptr %fld.load1028, align 8
  %cmptmp1031 = icmp slt i64 0, %a.len.query1030
  %str.34.struct.str.49.struct2205 = select i1 %cmptmp1031, ptr @str.34.struct, ptr @str.49.struct
  %cat.seg1037 = load i64, ptr %str.34.struct.str.49.struct2205, align 8
  %cat.seg1038 = and i64 %cat.seg1037, 281474976710655
  %cat.seg1039 = getelementptr inbounds { i64, ptr }, ptr %str.34.struct.str.49.struct2205, i32 0, i32 1
  %cat.seg1040 = load ptr, ptr %cat.seg1039, align 8
  %fld.load1043 = load ptr, ptr %fld.gep1027, align 8
  %call.res1044 = call { i64, ptr } @"show::show_exprs"(ptr %fld.load1043)
  %call.res1044.fca.0.extract = extractvalue { i64, ptr } %call.res1044, 0
  %call.res1044.fca.1.extract = extractvalue { i64, ptr } %call.res1044, 1
  %cat.seg1048 = and i64 %call.res1044.fca.0.extract, 281474976710655
  %cat.sum.len1052 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 5, i64 %cat.seg1023)
  %sum1053 = extractvalue { i64, i1 } %cat.sum.len1052, 0
  %ovf1054 = extractvalue { i64, i1 } %cat.sum.len1052, 1
  br i1 %ovf1054, label %str_overflow_abort1056, label %cat.sum.len1055

cat.sum.len1055:                                  ; preds = %choice.exit1010
  %cat.sum.len1058 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1053, i64 %cat.seg1038)
  %sum1059 = extractvalue { i64, i1 } %cat.sum.len1058, 0
  %ovf1060 = extractvalue { i64, i1 } %cat.sum.len1058, 1
  br i1 %ovf1060, label %str_overflow_abort1062, label %cat.sum.len1061

str_overflow_abort1056:                           ; preds = %choice.exit1010
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1061:                                  ; preds = %cat.sum.len1055
  %cat.sum.len1064 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1059, i64 %cat.seg1048)
  %sum1065 = extractvalue { i64, i1 } %cat.sum.len1064, 0
  %ovf1066 = extractvalue { i64, i1 } %cat.sum.len1064, 1
  br i1 %ovf1066, label %str_overflow_abort1068, label %cat.sum.len1067

str_overflow_abort1062:                           ; preds = %cat.sum.len1055
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1067:                                  ; preds = %cat.sum.len1061
  %cat.sum.len1070 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1065, i64 1)
  %sum1071 = extractvalue { i64, i1 } %cat.sum.len1070, 0
  %ovf1072 = extractvalue { i64, i1 } %cat.sum.len1070, 1
  br i1 %ovf1072, label %str_overflow_abort1074, label %cat.sum.len1073

str_overflow_abort1068:                           ; preds = %cat.sum.len1061
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1073:                                  ; preds = %cat.sum.len1067
  %concat.tot.len1076 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1071, i64 1)
  %sum1077 = extractvalue { i64, i1 } %concat.tot.len1076, 0
  %ovf1078 = extractvalue { i64, i1 } %concat.tot.len1076, 1
  br i1 %ovf1078, label %str_overflow_abort1080, label %concat.tot.len1079

str_overflow_abort1074:                           ; preds = %cat.sum.len1067
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1079:                               ; preds = %cat.sum.len1073
  %arena.cur1082 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1083 = call ptr @dva_arena_alloc(ptr %arena.cur1082, i64 %sum1077)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1083, ptr align 1 @str.71, i64 5, i1 false)
  %cat.dst1085 = getelementptr i8, ptr %concat.buf1083, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1085, ptr align 1 %cat.seg1025, i64 %cat.seg1023, i1 false)
  %cat.off1086 = add i64 5, %cat.seg1023
  %cat.dst1087 = getelementptr i8, ptr %concat.buf1083, i64 %cat.off1086
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1087, ptr align 1 %cat.seg1040, i64 %cat.seg1038, i1 false)
  %cat.off1088 = add i64 %cat.off1086, %cat.seg1038
  %cat.dst1089 = getelementptr i8, ptr %concat.buf1083, i64 %cat.off1088
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1089, ptr align 1 %call.res1044.fca.1.extract, i64 %cat.seg1048, i1 false)
  %cat.off1090 = add i64 %cat.off1088, %cat.seg1048
  %cat.dst1091 = getelementptr i8, ptr %concat.buf1083, i64 %cat.off1090
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1091, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul1092 = getelementptr i8, ptr %concat.buf1083, i64 %sum1071
  store i8 0, ptr %concat.nul1092, align 1
  store i64 %sum1071, ptr %concat.str1093, align 8
  %str.build.data.gep1095 = getelementptr inbounds { i64, ptr }, ptr %concat.str1093, i32 0, i32 1
  store ptr %concat.buf1083, ptr %str.build.data.gep1095, align 8
  br label %choice.exit

str_overflow_abort1080:                           ; preds = %cat.sum.len1073
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1096:                                  ; preds = %entry
  %pay.gep1101 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr1102 = load ptr, ptr %pay.gep1101, align 8
  %fld.load1108 = load i1, ptr %payload.ptr1102, align 1
  br i1 %fld.load1108, label %choice.then1109, label %choice.exit1111

choice.then1109:                                  ; preds = %choice.case1096
  %fld.gep1113 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %payload.ptr1102, i32 0, i32 2
  %fld.load1114 = load ptr, ptr %fld.gep1113, align 8
  %call.res1115 = call { i64, ptr } @"show::show_expr"(ptr %fld.load1114)
  %arena.cur1116 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1117 = call ptr @dva_arena_alloc(ptr %arena.cur1116, i64 16)
  store { i64, ptr } %call.res1115, ptr %ret.ub.alloc1117, align 8
  br label %choice.exit1111

choice.exit1111:                                  ; preds = %choice.case1096, %choice.then1109
  %choice.res1118 = phi ptr [ %ret.ub.alloc1117, %choice.then1109 ], [ @str.73.struct, %choice.case1096 ]
  %cat.seg1120 = load i64, ptr %choice.res1118, align 8
  %cat.seg1121 = and i64 %cat.seg1120, 281474976710655
  %cat.seg1122 = getelementptr inbounds { i64, ptr }, ptr %choice.res1118, i32 0, i32 1
  %cat.seg1123 = load ptr, ptr %cat.seg1122, align 8
  %fld.gep1125 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %payload.ptr1102, i32 0, i32 4
  %fld.load1126 = load i1, ptr %fld.gep1125, align 1
  %str.74.struct.str.75.struct = select i1 %fld.load1126, ptr @str.74.struct, ptr @str.75.struct
  %cat.seg1132 = load i64, ptr %str.74.struct.str.75.struct, align 8
  %cat.seg1133 = and i64 %cat.seg1132, 281474976710655
  %cat.seg1134 = getelementptr inbounds { i64, ptr }, ptr %str.74.struct.str.75.struct, i32 0, i32 1
  %cat.seg1135 = load ptr, ptr %cat.seg1134, align 8
  %fld.gep1137 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %payload.ptr1102, i32 0, i32 1
  %fld.load1138 = load i1, ptr %fld.gep1137, align 1
  br i1 %fld.load1138, label %choice.then1139, label %choice.exit1141

choice.then1139:                                  ; preds = %choice.exit1111
  %fld.gep1143 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %payload.ptr1102, i32 0, i32 3
  %fld.load1144 = load ptr, ptr %fld.gep1143, align 8
  %call.res1145 = call { i64, ptr } @"show::show_expr"(ptr %fld.load1144)
  %arena.cur1146 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1147 = call ptr @dva_arena_alloc(ptr %arena.cur1146, i64 16)
  store { i64, ptr } %call.res1145, ptr %ret.ub.alloc1147, align 8
  br label %choice.exit1141

choice.exit1141:                                  ; preds = %choice.exit1111, %choice.then1139
  %choice.res1148 = phi ptr [ %ret.ub.alloc1147, %choice.then1139 ], [ @str.73.struct, %choice.exit1111 ]
  %cat.seg1150 = load i64, ptr %choice.res1148, align 8
  %cat.seg1151 = and i64 %cat.seg1150, 281474976710655
  %cat.seg1152 = getelementptr inbounds { i64, ptr }, ptr %choice.res1148, i32 0, i32 1
  %cat.seg1153 = load ptr, ptr %cat.seg1152, align 8
  %cat.sum.len1155 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 6, i64 %cat.seg1121)
  %sum1156 = extractvalue { i64, i1 } %cat.sum.len1155, 0
  %ovf1157 = extractvalue { i64, i1 } %cat.sum.len1155, 1
  br i1 %ovf1157, label %str_overflow_abort1159, label %cat.sum.len1158

cat.sum.len1158:                                  ; preds = %choice.exit1141
  %cat.sum.len1161 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1156, i64 %cat.seg1133)
  %sum1162 = extractvalue { i64, i1 } %cat.sum.len1161, 0
  %ovf1163 = extractvalue { i64, i1 } %cat.sum.len1161, 1
  br i1 %ovf1163, label %str_overflow_abort1165, label %cat.sum.len1164

str_overflow_abort1159:                           ; preds = %choice.exit1141
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1164:                                  ; preds = %cat.sum.len1158
  %cat.sum.len1167 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1162, i64 %cat.seg1151)
  %sum1168 = extractvalue { i64, i1 } %cat.sum.len1167, 0
  %ovf1169 = extractvalue { i64, i1 } %cat.sum.len1167, 1
  br i1 %ovf1169, label %str_overflow_abort1171, label %cat.sum.len1170

str_overflow_abort1165:                           ; preds = %cat.sum.len1158
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1170:                                  ; preds = %cat.sum.len1164
  %cat.sum.len1173 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1168, i64 1)
  %sum1174 = extractvalue { i64, i1 } %cat.sum.len1173, 0
  %ovf1175 = extractvalue { i64, i1 } %cat.sum.len1173, 1
  br i1 %ovf1175, label %str_overflow_abort1177, label %cat.sum.len1176

str_overflow_abort1171:                           ; preds = %cat.sum.len1164
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1176:                                  ; preds = %cat.sum.len1170
  %concat.tot.len1179 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1174, i64 1)
  %sum1180 = extractvalue { i64, i1 } %concat.tot.len1179, 0
  %ovf1181 = extractvalue { i64, i1 } %concat.tot.len1179, 1
  br i1 %ovf1181, label %str_overflow_abort1183, label %concat.tot.len1182

str_overflow_abort1177:                           ; preds = %cat.sum.len1170
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1182:                               ; preds = %cat.sum.len1176
  %arena.cur1185 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1186 = call ptr @dva_arena_alloc(ptr %arena.cur1185, i64 %sum1180)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1186, ptr align 1 @str.72, i64 6, i1 false)
  %cat.dst1188 = getelementptr i8, ptr %concat.buf1186, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1188, ptr align 1 %cat.seg1123, i64 %cat.seg1121, i1 false)
  %cat.off1189 = add i64 6, %cat.seg1121
  %cat.dst1190 = getelementptr i8, ptr %concat.buf1186, i64 %cat.off1189
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1190, ptr align 1 %cat.seg1135, i64 %cat.seg1133, i1 false)
  %cat.off1191 = add i64 %cat.off1189, %cat.seg1133
  %cat.dst1192 = getelementptr i8, ptr %concat.buf1186, i64 %cat.off1191
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1192, ptr align 1 %cat.seg1153, i64 %cat.seg1151, i1 false)
  %cat.off1193 = add i64 %cat.off1191, %cat.seg1151
  %cat.dst1194 = getelementptr i8, ptr %concat.buf1186, i64 %cat.off1193
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1194, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul1195 = getelementptr i8, ptr %concat.buf1186, i64 %sum1174
  store i8 0, ptr %concat.nul1195, align 1
  store i64 %sum1174, ptr %concat.str1196, align 8
  %str.build.data.gep1198 = getelementptr inbounds { i64, ptr }, ptr %concat.str1196, i32 0, i32 1
  store ptr %concat.buf1186, ptr %str.build.data.gep1198, align 8
  br label %choice.exit

str_overflow_abort1183:                           ; preds = %cat.sum.len1176
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1199:                                  ; preds = %entry
  %pay.gep1204 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr1205 = load ptr, ptr %pay.gep1204, align 8
  %fld.gep1209 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %payload.ptr1205, i32 0, i32 3
  %fld.load1210 = load i1, ptr %fld.gep1209, align 1
  %str.76.struct.str.77.struct = select i1 %fld.load1210, ptr @str.76.struct, ptr @str.77.struct
  %cat.seg1216 = load i64, ptr %str.76.struct.str.77.struct, align 8
  %cat.seg1217 = and i64 %cat.seg1216, 281474976710655
  %cat.seg1218 = getelementptr inbounds { i64, ptr }, ptr %str.76.struct.str.77.struct, i32 0, i32 1
  %cat.seg1219 = load ptr, ptr %cat.seg1218, align 8
  %fld.load1222 = load ptr, ptr %payload.ptr1205, align 8
  %call.res1223 = call { i64, ptr } @"show::show_expr"(ptr %fld.load1222)
  %call.res1223.fca.0.extract = extractvalue { i64, ptr } %call.res1223, 0
  %call.res1223.fca.1.extract = extractvalue { i64, ptr } %call.res1223, 1
  %cat.seg1227 = and i64 %call.res1223.fca.0.extract, 281474976710655
  %fld.gep1232 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %payload.ptr1205, i32 0, i32 1
  %fld.load1233 = load ptr, ptr %fld.gep1232, align 8
  %call.res1234 = call { i64, ptr } @"show::show_expr"(ptr %fld.load1233)
  %call.res1234.fca.0.extract = extractvalue { i64, ptr } %call.res1234, 0
  %call.res1234.fca.1.extract = extractvalue { i64, ptr } %call.res1234, 1
  %cat.seg1238 = and i64 %call.res1234.fca.0.extract, 281474976710655
  %cat.sum.len1242 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg1217, i64 %cat.seg1227)
  %sum1243 = extractvalue { i64, i1 } %cat.sum.len1242, 0
  %ovf1244 = extractvalue { i64, i1 } %cat.sum.len1242, 1
  br i1 %ovf1244, label %str_overflow_abort1246, label %cat.sum.len1245

cat.sum.len1245:                                  ; preds = %choice.case1199
  %cat.sum.len1248 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1243, i64 1)
  %sum1249 = extractvalue { i64, i1 } %cat.sum.len1248, 0
  %ovf1250 = extractvalue { i64, i1 } %cat.sum.len1248, 1
  br i1 %ovf1250, label %str_overflow_abort1252, label %cat.sum.len1251

str_overflow_abort1246:                           ; preds = %choice.case1199
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1251:                                  ; preds = %cat.sum.len1245
  %cat.sum.len1254 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1249, i64 %cat.seg1238)
  %sum1255 = extractvalue { i64, i1 } %cat.sum.len1254, 0
  %ovf1256 = extractvalue { i64, i1 } %cat.sum.len1254, 1
  br i1 %ovf1256, label %str_overflow_abort1258, label %cat.sum.len1257

str_overflow_abort1252:                           ; preds = %cat.sum.len1245
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1257:                                  ; preds = %cat.sum.len1251
  %cat.sum.len1260 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1255, i64 1)
  %sum1261 = extractvalue { i64, i1 } %cat.sum.len1260, 0
  %ovf1262 = extractvalue { i64, i1 } %cat.sum.len1260, 1
  br i1 %ovf1262, label %str_overflow_abort1264, label %cat.sum.len1263

str_overflow_abort1258:                           ; preds = %cat.sum.len1251
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1263:                                  ; preds = %cat.sum.len1257
  %concat.tot.len1266 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1261, i64 1)
  %sum1267 = extractvalue { i64, i1 } %concat.tot.len1266, 0
  %ovf1268 = extractvalue { i64, i1 } %concat.tot.len1266, 1
  br i1 %ovf1268, label %str_overflow_abort1270, label %concat.tot.len1269

str_overflow_abort1264:                           ; preds = %cat.sum.len1257
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1269:                               ; preds = %cat.sum.len1263
  %arena.cur1272 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1273 = call ptr @dva_arena_alloc(ptr %arena.cur1272, i64 %sum1267)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1273, ptr align 1 %cat.seg1219, i64 %cat.seg1217, i1 false)
  %cat.dst1276 = getelementptr i8, ptr %concat.buf1273, i64 %cat.seg1217
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1276, ptr align 1 %call.res1223.fca.1.extract, i64 %cat.seg1227, i1 false)
  %cat.off1277 = add i64 %cat.seg1217, %cat.seg1227
  %cat.dst1278 = getelementptr i8, ptr %concat.buf1273, i64 %cat.off1277
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1278, ptr align 1 @str.34, i64 1, i1 false)
  %cat.off1279 = add i64 %cat.off1277, 1
  %cat.dst1280 = getelementptr i8, ptr %concat.buf1273, i64 %cat.off1279
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1280, ptr align 1 %call.res1234.fca.1.extract, i64 %cat.seg1238, i1 false)
  %cat.off1281 = add i64 %cat.off1279, %cat.seg1238
  %cat.dst1282 = getelementptr i8, ptr %concat.buf1273, i64 %cat.off1281
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1282, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul1283 = getelementptr i8, ptr %concat.buf1273, i64 %sum1261
  store i8 0, ptr %concat.nul1283, align 1
  store i64 %sum1261, ptr %concat.str1284, align 8
  %str.build.data.gep1286 = getelementptr inbounds { i64, ptr }, ptr %concat.str1284, i32 0, i32 1
  store ptr %concat.buf1273, ptr %str.build.data.gep1286, align 8
  br label %choice.exit

str_overflow_abort1270:                           ; preds = %cat.sum.len1263
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1287:                                  ; preds = %entry
  %pay.gep1292 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr1293 = load ptr, ptr %pay.gep1292, align 8
  %fld.load1299 = load ptr, ptr %payload.ptr1293, align 8
  %call.res1300 = call { i64, ptr } @"show::show_expr"(ptr %fld.load1299)
  %call.res1300.fca.0.extract = extractvalue { i64, ptr } %call.res1300, 0
  %call.res1300.fca.1.extract = extractvalue { i64, ptr } %call.res1300, 1
  %cat.seg1304 = and i64 %call.res1300.fca.0.extract, 281474976710655
  %fld.gep1309 = getelementptr inbounds { ptr, ptr }, ptr %payload.ptr1293, i32 0, i32 1
  %fld.load1310 = load ptr, ptr %fld.gep1309, align 8
  %call.res1311 = call { i64, ptr } @"show::show_expr"(ptr %fld.load1310)
  %call.res1311.fca.0.extract = extractvalue { i64, ptr } %call.res1311, 0
  %call.res1311.fca.1.extract = extractvalue { i64, ptr } %call.res1311, 1
  %cat.seg1315 = and i64 %call.res1311.fca.0.extract, 281474976710655
  %cat.sum.len1319 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 12, i64 %cat.seg1304)
  %sum1320 = extractvalue { i64, i1 } %cat.sum.len1319, 0
  %ovf1321 = extractvalue { i64, i1 } %cat.sum.len1319, 1
  br i1 %ovf1321, label %str_overflow_abort1323, label %cat.sum.len1322

cat.sum.len1322:                                  ; preds = %choice.case1287
  %cat.sum.len1325 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1320, i64 1)
  %sum1326 = extractvalue { i64, i1 } %cat.sum.len1325, 0
  %ovf1327 = extractvalue { i64, i1 } %cat.sum.len1325, 1
  br i1 %ovf1327, label %str_overflow_abort1329, label %cat.sum.len1328

str_overflow_abort1323:                           ; preds = %choice.case1287
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1328:                                  ; preds = %cat.sum.len1322
  %cat.sum.len1331 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1326, i64 %cat.seg1315)
  %sum1332 = extractvalue { i64, i1 } %cat.sum.len1331, 0
  %ovf1333 = extractvalue { i64, i1 } %cat.sum.len1331, 1
  br i1 %ovf1333, label %str_overflow_abort1335, label %cat.sum.len1334

str_overflow_abort1329:                           ; preds = %cat.sum.len1322
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1334:                                  ; preds = %cat.sum.len1328
  %cat.sum.len1337 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1332, i64 1)
  %sum1338 = extractvalue { i64, i1 } %cat.sum.len1337, 0
  %ovf1339 = extractvalue { i64, i1 } %cat.sum.len1337, 1
  br i1 %ovf1339, label %str_overflow_abort1341, label %cat.sum.len1340

str_overflow_abort1335:                           ; preds = %cat.sum.len1328
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1340:                                  ; preds = %cat.sum.len1334
  %concat.tot.len1343 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1338, i64 1)
  %sum1344 = extractvalue { i64, i1 } %concat.tot.len1343, 0
  %ovf1345 = extractvalue { i64, i1 } %concat.tot.len1343, 1
  br i1 %ovf1345, label %str_overflow_abort1347, label %concat.tot.len1346

str_overflow_abort1341:                           ; preds = %cat.sum.len1334
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1346:                               ; preds = %cat.sum.len1340
  %arena.cur1349 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1350 = call ptr @dva_arena_alloc(ptr %arena.cur1349, i64 %sum1344)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1350, ptr align 1 @str.78, i64 12, i1 false)
  %cat.dst1352 = getelementptr i8, ptr %concat.buf1350, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1352, ptr align 1 %call.res1300.fca.1.extract, i64 %cat.seg1304, i1 false)
  %cat.off1353 = add i64 12, %cat.seg1304
  %cat.dst1354 = getelementptr i8, ptr %concat.buf1350, i64 %cat.off1353
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1354, ptr align 1 @str.34, i64 1, i1 false)
  %cat.off1355 = add i64 %cat.off1353, 1
  %cat.dst1356 = getelementptr i8, ptr %concat.buf1350, i64 %cat.off1355
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1356, ptr align 1 %call.res1311.fca.1.extract, i64 %cat.seg1315, i1 false)
  %cat.off1357 = add i64 %cat.off1355, %cat.seg1315
  %cat.dst1358 = getelementptr i8, ptr %concat.buf1350, i64 %cat.off1357
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1358, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul1359 = getelementptr i8, ptr %concat.buf1350, i64 %sum1338
  store i8 0, ptr %concat.nul1359, align 1
  store i64 %sum1338, ptr %concat.str1360, align 8
  %str.build.data.gep1362 = getelementptr inbounds { i64, ptr }, ptr %concat.str1360, i32 0, i32 1
  store ptr %concat.buf1350, ptr %str.build.data.gep1362, align 8
  br label %choice.exit

str_overflow_abort1347:                           ; preds = %cat.sum.len1340
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1363:                                  ; preds = %entry
  %pay.gep1368 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr1369 = load ptr, ptr %pay.gep1368, align 8
  %fld.load1375 = load ptr, ptr %payload.ptr1369, align 8
  %call.res1376 = call { i64, ptr } @"show::show_expr"(ptr %fld.load1375)
  %call.res1376.fca.0.extract = extractvalue { i64, ptr } %call.res1376, 0
  %call.res1376.fca.1.extract = extractvalue { i64, ptr } %call.res1376, 1
  %cat.seg1380 = and i64 %call.res1376.fca.0.extract, 281474976710655
  %call.res1384 = call { i64, ptr } @"show::show_member_suffix"(ptr %payload.ptr1369)
  %call.res1384.fca.0.extract = extractvalue { i64, ptr } %call.res1384, 0
  %call.res1384.fca.1.extract = extractvalue { i64, ptr } %call.res1384, 1
  %cat.seg1388 = and i64 %call.res1384.fca.0.extract, 281474976710655
  %cat.sum.len1392 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 7, i64 %cat.seg1380)
  %sum1393 = extractvalue { i64, i1 } %cat.sum.len1392, 0
  %ovf1394 = extractvalue { i64, i1 } %cat.sum.len1392, 1
  br i1 %ovf1394, label %str_overflow_abort1396, label %cat.sum.len1395

cat.sum.len1395:                                  ; preds = %choice.case1363
  %cat.sum.len1398 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1393, i64 %cat.seg1388)
  %sum1399 = extractvalue { i64, i1 } %cat.sum.len1398, 0
  %ovf1400 = extractvalue { i64, i1 } %cat.sum.len1398, 1
  br i1 %ovf1400, label %str_overflow_abort1402, label %cat.sum.len1401

str_overflow_abort1396:                           ; preds = %choice.case1363
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1401:                                  ; preds = %cat.sum.len1395
  %cat.sum.len1404 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1399, i64 1)
  %sum1405 = extractvalue { i64, i1 } %cat.sum.len1404, 0
  %ovf1406 = extractvalue { i64, i1 } %cat.sum.len1404, 1
  br i1 %ovf1406, label %str_overflow_abort1408, label %cat.sum.len1407

str_overflow_abort1402:                           ; preds = %cat.sum.len1395
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1407:                                  ; preds = %cat.sum.len1401
  %concat.tot.len1410 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1405, i64 1)
  %sum1411 = extractvalue { i64, i1 } %concat.tot.len1410, 0
  %ovf1412 = extractvalue { i64, i1 } %concat.tot.len1410, 1
  br i1 %ovf1412, label %str_overflow_abort1414, label %concat.tot.len1413

str_overflow_abort1408:                           ; preds = %cat.sum.len1401
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1413:                               ; preds = %cat.sum.len1407
  %arena.cur1416 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1417 = call ptr @dva_arena_alloc(ptr %arena.cur1416, i64 %sum1411)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1417, ptr align 1 @str.79, i64 7, i1 false)
  %cat.dst1419 = getelementptr i8, ptr %concat.buf1417, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1419, ptr align 1 %call.res1376.fca.1.extract, i64 %cat.seg1380, i1 false)
  %cat.off1420 = add i64 7, %cat.seg1380
  %cat.dst1421 = getelementptr i8, ptr %concat.buf1417, i64 %cat.off1420
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1421, ptr align 1 %call.res1384.fca.1.extract, i64 %cat.seg1388, i1 false)
  %cat.off1422 = add i64 %cat.off1420, %cat.seg1388
  %cat.dst1423 = getelementptr i8, ptr %concat.buf1417, i64 %cat.off1422
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1423, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul1424 = getelementptr i8, ptr %concat.buf1417, i64 %sum1405
  store i8 0, ptr %concat.nul1424, align 1
  store i64 %sum1405, ptr %concat.str1425, align 8
  %str.build.data.gep1427 = getelementptr inbounds { i64, ptr }, ptr %concat.str1425, i32 0, i32 1
  store ptr %concat.buf1417, ptr %str.build.data.gep1427, align 8
  br label %choice.exit

str_overflow_abort1414:                           ; preds = %cat.sum.len1407
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1428:                                  ; preds = %entry
  %pay.gep1433 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr1434 = load ptr, ptr %pay.gep1433, align 8
  %fld.load1440 = load ptr, ptr %payload.ptr1434, align 8
  %call.res1441 = call { i64, ptr } @"show::show_expr"(ptr %fld.load1440)
  %call.res1441.fca.0.extract = extractvalue { i64, ptr } %call.res1441, 0
  %call.res1441.fca.1.extract = extractvalue { i64, ptr } %call.res1441, 1
  %cat.seg1445 = and i64 %call.res1441.fca.0.extract, 281474976710655
  %fld.gep1450 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %payload.ptr1434, i32 0, i32 1
  %fld.load1451 = load ptr, ptr %fld.gep1450, align 8
  %call.res1452 = call { i64, ptr } @"show::show_expr"(ptr %fld.load1451)
  %call.res1452.fca.0.extract = extractvalue { i64, ptr } %call.res1452, 0
  %call.res1452.fca.1.extract = extractvalue { i64, ptr } %call.res1452, 1
  %cat.seg1456 = and i64 %call.res1452.fca.0.extract, 281474976710655
  %cat.sum.len1460 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4, i64 %cat.seg1445)
  %sum1461 = extractvalue { i64, i1 } %cat.sum.len1460, 0
  %ovf1462 = extractvalue { i64, i1 } %cat.sum.len1460, 1
  br i1 %ovf1462, label %str_overflow_abort1464, label %cat.sum.len1463

cat.sum.len1463:                                  ; preds = %choice.case1428
  %cat.sum.len1466 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1461, i64 1)
  %sum1467 = extractvalue { i64, i1 } %cat.sum.len1466, 0
  %ovf1468 = extractvalue { i64, i1 } %cat.sum.len1466, 1
  br i1 %ovf1468, label %str_overflow_abort1470, label %cat.sum.len1469

str_overflow_abort1464:                           ; preds = %choice.case1428
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1469:                                  ; preds = %cat.sum.len1463
  %cat.sum.len1472 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1467, i64 %cat.seg1456)
  %sum1473 = extractvalue { i64, i1 } %cat.sum.len1472, 0
  %ovf1474 = extractvalue { i64, i1 } %cat.sum.len1472, 1
  br i1 %ovf1474, label %str_overflow_abort1476, label %cat.sum.len1475

str_overflow_abort1470:                           ; preds = %cat.sum.len1463
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1475:                                  ; preds = %cat.sum.len1469
  %cat.sum.len1478 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1473, i64 1)
  %sum1479 = extractvalue { i64, i1 } %cat.sum.len1478, 0
  %ovf1480 = extractvalue { i64, i1 } %cat.sum.len1478, 1
  br i1 %ovf1480, label %str_overflow_abort1482, label %cat.sum.len1481

str_overflow_abort1476:                           ; preds = %cat.sum.len1469
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1481:                                  ; preds = %cat.sum.len1475
  %concat.tot.len1484 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1479, i64 1)
  %sum1485 = extractvalue { i64, i1 } %concat.tot.len1484, 0
  %ovf1486 = extractvalue { i64, i1 } %concat.tot.len1484, 1
  br i1 %ovf1486, label %str_overflow_abort1488, label %concat.tot.len1487

str_overflow_abort1482:                           ; preds = %cat.sum.len1475
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1487:                               ; preds = %cat.sum.len1481
  %arena.cur1490 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1491 = call ptr @dva_arena_alloc(ptr %arena.cur1490, i64 %sum1485)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1491, ptr align 1 @str.82, i64 4, i1 false)
  %cat.dst1493 = getelementptr i8, ptr %concat.buf1491, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1493, ptr align 1 %call.res1441.fca.1.extract, i64 %cat.seg1445, i1 false)
  %cat.off1494 = add i64 4, %cat.seg1445
  %cat.dst1495 = getelementptr i8, ptr %concat.buf1491, i64 %cat.off1494
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1495, ptr align 1 @str.83, i64 1, i1 false)
  %cat.off1496 = add i64 %cat.off1494, 1
  %cat.dst1497 = getelementptr i8, ptr %concat.buf1491, i64 %cat.off1496
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1497, ptr align 1 %call.res1452.fca.1.extract, i64 %cat.seg1456, i1 false)
  %cat.off1498 = add i64 %cat.off1496, %cat.seg1456
  %cat.dst1499 = getelementptr i8, ptr %concat.buf1491, i64 %cat.off1498
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1499, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul1500 = getelementptr i8, ptr %concat.buf1491, i64 %sum1479
  store i8 0, ptr %concat.nul1500, align 1
  store i64 %sum1479, ptr %concat.str1501, align 8
  %str.build.data.gep1503 = getelementptr inbounds { i64, ptr }, ptr %concat.str1501, i32 0, i32 1
  store ptr %concat.buf1491, ptr %str.build.data.gep1503, align 8
  br label %choice.exit

str_overflow_abort1488:                           ; preds = %cat.sum.len1481
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1504:                                  ; preds = %entry
  %pay.gep1509 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr1510 = load ptr, ptr %pay.gep1509, align 8
  %fld.gep1515 = getelementptr inbounds { ptr, ptr }, ptr %payload.ptr1510, i32 0, i32 1
  %fld.load1516 = load ptr, ptr %fld.gep1515, align 8
  %call.res1517 = call { i64, ptr } @"show::show_expr"(ptr %fld.load1516)
  %call.res1517.fca.0.extract = extractvalue { i64, ptr } %call.res1517, 0
  %call.res1517.fca.1.extract = extractvalue { i64, ptr } %call.res1517, 1
  %cat.seg1521 = and i64 %call.res1517.fca.0.extract, 281474976710655
  %cat.sum.len1525 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 5, i64 %cat.seg1521)
  %sum1526 = extractvalue { i64, i1 } %cat.sum.len1525, 0
  %ovf1527 = extractvalue { i64, i1 } %cat.sum.len1525, 1
  br i1 %ovf1527, label %str_overflow_abort1529, label %cat.sum.len1528

cat.sum.len1528:                                  ; preds = %choice.case1504
  %cat.sum.len1531 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1526, i64 1)
  %sum1532 = extractvalue { i64, i1 } %cat.sum.len1531, 0
  %ovf1533 = extractvalue { i64, i1 } %cat.sum.len1531, 1
  br i1 %ovf1533, label %str_overflow_abort1535, label %cat.sum.len1534

str_overflow_abort1529:                           ; preds = %choice.case1504
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1534:                                  ; preds = %cat.sum.len1528
  %concat.tot.len1537 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1532, i64 1)
  %sum1538 = extractvalue { i64, i1 } %concat.tot.len1537, 0
  %ovf1539 = extractvalue { i64, i1 } %concat.tot.len1537, 1
  br i1 %ovf1539, label %str_overflow_abort1541, label %concat.tot.len1540

str_overflow_abort1535:                           ; preds = %cat.sum.len1528
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1540:                               ; preds = %cat.sum.len1534
  %arena.cur1543 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1544 = call ptr @dva_arena_alloc(ptr %arena.cur1543, i64 %sum1538)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1544, ptr align 1 @str.84, i64 5, i1 false)
  %cat.dst1546 = getelementptr i8, ptr %concat.buf1544, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1546, ptr align 1 %call.res1517.fca.1.extract, i64 %cat.seg1521, i1 false)
  %cat.off1547 = add i64 5, %cat.seg1521
  %cat.dst1548 = getelementptr i8, ptr %concat.buf1544, i64 %cat.off1547
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1548, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul1549 = getelementptr i8, ptr %concat.buf1544, i64 %sum1532
  store i8 0, ptr %concat.nul1549, align 1
  store i64 %sum1532, ptr %concat.str1550, align 8
  %str.build.data.gep1552 = getelementptr inbounds { i64, ptr }, ptr %concat.str1550, i32 0, i32 1
  store ptr %concat.buf1544, ptr %str.build.data.gep1552, align 8
  br label %choice.exit

str_overflow_abort1541:                           ; preds = %cat.sum.len1534
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1553:                                  ; preds = %entry
  %pay.gep1558 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr1559 = load ptr, ptr %pay.gep1558, align 8
  %fld.load1565 = load ptr, ptr %payload.ptr1559, align 8
  %call.res1566 = call { i64, ptr } @"show::show_fields"(ptr %fld.load1565)
  %call.res1566.fca.0.extract = extractvalue { i64, ptr } %call.res1566, 0
  %call.res1566.fca.1.extract = extractvalue { i64, ptr } %call.res1566, 1
  %cat.seg1570 = and i64 %call.res1566.fca.0.extract, 281474976710655
  %cat.sum.len1574 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 7, i64 %cat.seg1570)
  %sum1575 = extractvalue { i64, i1 } %cat.sum.len1574, 0
  %ovf1576 = extractvalue { i64, i1 } %cat.sum.len1574, 1
  br i1 %ovf1576, label %str_overflow_abort1578, label %cat.sum.len1577

cat.sum.len1577:                                  ; preds = %choice.case1553
  %cat.sum.len1580 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1575, i64 1)
  %sum1581 = extractvalue { i64, i1 } %cat.sum.len1580, 0
  %ovf1582 = extractvalue { i64, i1 } %cat.sum.len1580, 1
  br i1 %ovf1582, label %str_overflow_abort1584, label %cat.sum.len1583

str_overflow_abort1578:                           ; preds = %choice.case1553
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1583:                                  ; preds = %cat.sum.len1577
  %concat.tot.len1586 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1581, i64 1)
  %sum1587 = extractvalue { i64, i1 } %concat.tot.len1586, 0
  %ovf1588 = extractvalue { i64, i1 } %concat.tot.len1586, 1
  br i1 %ovf1588, label %str_overflow_abort1590, label %concat.tot.len1589

str_overflow_abort1584:                           ; preds = %cat.sum.len1577
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1589:                               ; preds = %cat.sum.len1583
  %arena.cur1592 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1593 = call ptr @dva_arena_alloc(ptr %arena.cur1592, i64 %sum1587)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1593, ptr align 1 @str.85, i64 7, i1 false)
  %cat.dst1595 = getelementptr i8, ptr %concat.buf1593, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1595, ptr align 1 %call.res1566.fca.1.extract, i64 %cat.seg1570, i1 false)
  %cat.off1596 = add i64 7, %cat.seg1570
  %cat.dst1597 = getelementptr i8, ptr %concat.buf1593, i64 %cat.off1596
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1597, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul1598 = getelementptr i8, ptr %concat.buf1593, i64 %sum1581
  store i8 0, ptr %concat.nul1598, align 1
  store i64 %sum1581, ptr %concat.str1599, align 8
  %str.build.data.gep1601 = getelementptr inbounds { i64, ptr }, ptr %concat.str1599, i32 0, i32 1
  store ptr %concat.buf1593, ptr %str.build.data.gep1601, align 8
  br label %choice.exit

str_overflow_abort1590:                           ; preds = %cat.sum.len1583
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1602:                                  ; preds = %entry
  %pay.gep1607 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr1608 = load ptr, ptr %pay.gep1607, align 8
  %a.null1613 = icmp eq ptr %payload.ptr1608, null
  br i1 %a.null1613, label %a.create1614, label %a.after1615

a.create1614:                                     ; preds = %choice.case1602
  %arena.cur1616 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1617 = call ptr @dva_arena_alloc(ptr %arena.cur1616, i64 24)
  %arena.cur1618 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1619 = call ptr @dva_arena_alloc(ptr %arena.cur1618, i64 128)
  store i64 0, ptr %a.create1617, align 8
  %a.data.gep1621 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1617, i32 0, i32 1
  store ptr %a.buf1619, ptr %a.data.gep1621, align 8
  %a.cap.gep1622 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1617, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1622, align 8
  br label %a.after1615

a.after1615:                                      ; preds = %a.create1614, %choice.case1602
  %var.t1610.0 = phi ptr [ %a.create1617, %a.create1614 ], [ %payload.ptr1608, %choice.case1602 ]
  %call.res1624 = call { i64, ptr } @"show::show_map_pairs"(ptr %var.t1610.0)
  %call.res1624.fca.0.extract = extractvalue { i64, ptr } %call.res1624, 0
  store i64 %call.res1624.fca.0.extract, ptr %ret.ub.salloc1625, align 8
  %call.res1624.fca.1.extract = extractvalue { i64, ptr } %call.res1624, 1
  %call.res1624.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc1625, i32 0, i32 1
  store ptr %call.res1624.fca.1.extract, ptr %call.res1624.fca.1.gep, align 8
  br label %choice.exit

choice.case1626:                                  ; preds = %entry
  %pay.gep1631 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr1632 = load ptr, ptr %pay.gep1631, align 8
  %fld.load1638 = load ptr, ptr %payload.ptr1632, align 8
  %call.res1639 = call { i64, ptr } @"show::show_expr"(ptr %fld.load1638)
  %call.res1639.fca.0.extract = extractvalue { i64, ptr } %call.res1639, 0
  %call.res1639.fca.1.extract = extractvalue { i64, ptr } %call.res1639, 1
  %cat.seg1643 = and i64 %call.res1639.fca.0.extract, 281474976710655
  %cat.sum.len1647 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4, i64 %cat.seg1643)
  %sum1648 = extractvalue { i64, i1 } %cat.sum.len1647, 0
  %ovf1649 = extractvalue { i64, i1 } %cat.sum.len1647, 1
  br i1 %ovf1649, label %str_overflow_abort1651, label %cat.sum.len1650

cat.sum.len1650:                                  ; preds = %choice.case1626
  %cat.sum.len1653 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1648, i64 1)
  %sum1654 = extractvalue { i64, i1 } %cat.sum.len1653, 0
  %ovf1655 = extractvalue { i64, i1 } %cat.sum.len1653, 1
  br i1 %ovf1655, label %str_overflow_abort1657, label %cat.sum.len1656

str_overflow_abort1651:                           ; preds = %choice.case1626
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1656:                                  ; preds = %cat.sum.len1650
  %concat.tot.len1659 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1654, i64 1)
  %sum1660 = extractvalue { i64, i1 } %concat.tot.len1659, 0
  %ovf1661 = extractvalue { i64, i1 } %concat.tot.len1659, 1
  br i1 %ovf1661, label %str_overflow_abort1663, label %concat.tot.len1662

str_overflow_abort1657:                           ; preds = %cat.sum.len1650
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1662:                               ; preds = %cat.sum.len1656
  %arena.cur1665 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1666 = call ptr @dva_arena_alloc(ptr %arena.cur1665, i64 %sum1660)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1666, ptr align 1 @str.90, i64 4, i1 false)
  %cat.dst1668 = getelementptr i8, ptr %concat.buf1666, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1668, ptr align 1 %call.res1639.fca.1.extract, i64 %cat.seg1643, i1 false)
  %cat.off1669 = add i64 4, %cat.seg1643
  %cat.dst1670 = getelementptr i8, ptr %concat.buf1666, i64 %cat.off1669
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1670, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul1671 = getelementptr i8, ptr %concat.buf1666, i64 %sum1654
  store i8 0, ptr %concat.nul1671, align 1
  store i64 %sum1654, ptr %concat.str1672, align 8
  %str.build.data.gep1674 = getelementptr inbounds { i64, ptr }, ptr %concat.str1672, i32 0, i32 1
  store ptr %concat.buf1666, ptr %str.build.data.gep1674, align 8
  br label %choice.exit

str_overflow_abort1663:                           ; preds = %cat.sum.len1656
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1675:                                  ; preds = %entry
  %pay.gep1680 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr1681 = load ptr, ptr %pay.gep1680, align 8
  %fld.load1687 = load ptr, ptr %payload.ptr1681, align 8
  %call.res1688 = call { i64, ptr } @"show::show_vt"(ptr %fld.load1687)
  %call.res1688.fca.0.extract = extractvalue { i64, ptr } %call.res1688, 0
  %call.res1688.fca.1.extract = extractvalue { i64, ptr } %call.res1688, 1
  %cat.seg1692 = and i64 %call.res1688.fca.0.extract, 281474976710655
  %cat.sum.len1696 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 5, i64 %cat.seg1692)
  %sum1697 = extractvalue { i64, i1 } %cat.sum.len1696, 0
  %ovf1698 = extractvalue { i64, i1 } %cat.sum.len1696, 1
  br i1 %ovf1698, label %str_overflow_abort1700, label %cat.sum.len1699

cat.sum.len1699:                                  ; preds = %choice.case1675
  %cat.sum.len1702 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1697, i64 1)
  %sum1703 = extractvalue { i64, i1 } %cat.sum.len1702, 0
  %ovf1704 = extractvalue { i64, i1 } %cat.sum.len1702, 1
  br i1 %ovf1704, label %str_overflow_abort1706, label %cat.sum.len1705

str_overflow_abort1700:                           ; preds = %choice.case1675
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1705:                                  ; preds = %cat.sum.len1699
  %concat.tot.len1708 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1703, i64 1)
  %sum1709 = extractvalue { i64, i1 } %concat.tot.len1708, 0
  %ovf1710 = extractvalue { i64, i1 } %concat.tot.len1708, 1
  br i1 %ovf1710, label %str_overflow_abort1712, label %concat.tot.len1711

str_overflow_abort1706:                           ; preds = %cat.sum.len1699
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1711:                               ; preds = %cat.sum.len1705
  %arena.cur1714 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1715 = call ptr @dva_arena_alloc(ptr %arena.cur1714, i64 %sum1709)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1715, ptr align 1 @str.91, i64 5, i1 false)
  %cat.dst1717 = getelementptr i8, ptr %concat.buf1715, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1717, ptr align 1 %call.res1688.fca.1.extract, i64 %cat.seg1692, i1 false)
  %cat.off1718 = add i64 5, %cat.seg1692
  %cat.dst1719 = getelementptr i8, ptr %concat.buf1715, i64 %cat.off1718
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1719, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul1720 = getelementptr i8, ptr %concat.buf1715, i64 %sum1703
  store i8 0, ptr %concat.nul1720, align 1
  store i64 %sum1703, ptr %concat.str1721, align 8
  %str.build.data.gep1723 = getelementptr inbounds { i64, ptr }, ptr %concat.str1721, i32 0, i32 1
  store ptr %concat.buf1715, ptr %str.build.data.gep1723, align 8
  br label %choice.exit

str_overflow_abort1712:                           ; preds = %cat.sum.len1705
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1724:                                  ; preds = %entry
  %pay.gep1729 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr1730 = load ptr, ptr %pay.gep1729, align 8
  %fld.load1736 = load ptr, ptr %payload.ptr1730, align 8
  %call.res1737 = call { i64, ptr } @"show::show_vt"(ptr %fld.load1736)
  %call.res1737.fca.0.extract = extractvalue { i64, ptr } %call.res1737, 0
  %call.res1737.fca.1.extract = extractvalue { i64, ptr } %call.res1737, 1
  %cat.seg1741 = and i64 %call.res1737.fca.0.extract, 281474976710655
  %cat.sum.len1745 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 6, i64 %cat.seg1741)
  %sum1746 = extractvalue { i64, i1 } %cat.sum.len1745, 0
  %ovf1747 = extractvalue { i64, i1 } %cat.sum.len1745, 1
  br i1 %ovf1747, label %str_overflow_abort1749, label %cat.sum.len1748

cat.sum.len1748:                                  ; preds = %choice.case1724
  %cat.sum.len1751 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1746, i64 1)
  %sum1752 = extractvalue { i64, i1 } %cat.sum.len1751, 0
  %ovf1753 = extractvalue { i64, i1 } %cat.sum.len1751, 1
  br i1 %ovf1753, label %str_overflow_abort1755, label %cat.sum.len1754

str_overflow_abort1749:                           ; preds = %choice.case1724
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1754:                                  ; preds = %cat.sum.len1748
  %concat.tot.len1757 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1752, i64 1)
  %sum1758 = extractvalue { i64, i1 } %concat.tot.len1757, 0
  %ovf1759 = extractvalue { i64, i1 } %concat.tot.len1757, 1
  br i1 %ovf1759, label %str_overflow_abort1761, label %concat.tot.len1760

str_overflow_abort1755:                           ; preds = %cat.sum.len1748
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1760:                               ; preds = %cat.sum.len1754
  %arena.cur1763 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1764 = call ptr @dva_arena_alloc(ptr %arena.cur1763, i64 %sum1758)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1764, ptr align 1 @str.98, i64 6, i1 false)
  %cat.dst1766 = getelementptr i8, ptr %concat.buf1764, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1766, ptr align 1 %call.res1737.fca.1.extract, i64 %cat.seg1741, i1 false)
  %cat.off1767 = add i64 6, %cat.seg1741
  %cat.dst1768 = getelementptr i8, ptr %concat.buf1764, i64 %cat.off1767
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1768, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul1769 = getelementptr i8, ptr %concat.buf1764, i64 %sum1752
  store i8 0, ptr %concat.nul1769, align 1
  store i64 %sum1752, ptr %concat.str1770, align 8
  %str.build.data.gep1772 = getelementptr inbounds { i64, ptr }, ptr %concat.str1770, i32 0, i32 1
  store ptr %concat.buf1764, ptr %str.build.data.gep1772, align 8
  br label %choice.exit

str_overflow_abort1761:                           ; preds = %cat.sum.len1754
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1773:                                  ; preds = %entry
  %pay.gep1778 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr1779 = load ptr, ptr %pay.gep1778, align 8
  %fld.load1785 = load ptr, ptr %payload.ptr1779, align 8
  %cat.seg1787 = load i64, ptr %fld.load1785, align 8
  %cat.seg1788 = and i64 %cat.seg1787, 281474976710655
  %cat.seg1789 = getelementptr inbounds { i64, ptr }, ptr %fld.load1785, i32 0, i32 1
  %cat.seg1790 = load ptr, ptr %cat.seg1789, align 8
  %fld.gep1793 = getelementptr inbounds { ptr, ptr }, ptr %payload.ptr1779, i32 0, i32 1
  %fld.load1794 = load ptr, ptr %fld.gep1793, align 8
  %call.res1795 = call { i64, ptr } @"show::show_expr"(ptr %fld.load1794)
  %call.res1795.fca.0.extract = extractvalue { i64, ptr } %call.res1795, 0
  %call.res1795.fca.1.extract = extractvalue { i64, ptr } %call.res1795, 1
  %cat.seg1799 = and i64 %call.res1795.fca.0.extract, 281474976710655
  %cat.sum.len1803 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 9, i64 %cat.seg1788)
  %sum1804 = extractvalue { i64, i1 } %cat.sum.len1803, 0
  %ovf1805 = extractvalue { i64, i1 } %cat.sum.len1803, 1
  br i1 %ovf1805, label %str_overflow_abort1807, label %cat.sum.len1806

cat.sum.len1806:                                  ; preds = %choice.case1773
  %cat.sum.len1809 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1804, i64 1)
  %sum1810 = extractvalue { i64, i1 } %cat.sum.len1809, 0
  %ovf1811 = extractvalue { i64, i1 } %cat.sum.len1809, 1
  br i1 %ovf1811, label %str_overflow_abort1813, label %cat.sum.len1812

str_overflow_abort1807:                           ; preds = %choice.case1773
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1812:                                  ; preds = %cat.sum.len1806
  %cat.sum.len1815 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1810, i64 %cat.seg1799)
  %sum1816 = extractvalue { i64, i1 } %cat.sum.len1815, 0
  %ovf1817 = extractvalue { i64, i1 } %cat.sum.len1815, 1
  br i1 %ovf1817, label %str_overflow_abort1819, label %cat.sum.len1818

str_overflow_abort1813:                           ; preds = %cat.sum.len1806
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1818:                                  ; preds = %cat.sum.len1812
  %cat.sum.len1821 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1816, i64 1)
  %sum1822 = extractvalue { i64, i1 } %cat.sum.len1821, 0
  %ovf1823 = extractvalue { i64, i1 } %cat.sum.len1821, 1
  br i1 %ovf1823, label %str_overflow_abort1825, label %cat.sum.len1824

str_overflow_abort1819:                           ; preds = %cat.sum.len1812
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1824:                                  ; preds = %cat.sum.len1818
  %concat.tot.len1827 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1822, i64 1)
  %sum1828 = extractvalue { i64, i1 } %concat.tot.len1827, 0
  %ovf1829 = extractvalue { i64, i1 } %concat.tot.len1827, 1
  br i1 %ovf1829, label %str_overflow_abort1831, label %concat.tot.len1830

str_overflow_abort1825:                           ; preds = %cat.sum.len1818
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1830:                               ; preds = %cat.sum.len1824
  %arena.cur1833 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1834 = call ptr @dva_arena_alloc(ptr %arena.cur1833, i64 %sum1828)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1834, ptr align 1 @str.99, i64 9, i1 false)
  %cat.dst1836 = getelementptr i8, ptr %concat.buf1834, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1836, ptr align 1 %cat.seg1790, i64 %cat.seg1788, i1 false)
  %cat.off1837 = add i64 9, %cat.seg1788
  %cat.dst1838 = getelementptr i8, ptr %concat.buf1834, i64 %cat.off1837
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1838, ptr align 1 @str.34, i64 1, i1 false)
  %cat.off1839 = add i64 %cat.off1837, 1
  %cat.dst1840 = getelementptr i8, ptr %concat.buf1834, i64 %cat.off1839
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1840, ptr align 1 %call.res1795.fca.1.extract, i64 %cat.seg1799, i1 false)
  %cat.off1841 = add i64 %cat.off1839, %cat.seg1799
  %cat.dst1842 = getelementptr i8, ptr %concat.buf1834, i64 %cat.off1841
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1842, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul1843 = getelementptr i8, ptr %concat.buf1834, i64 %sum1822
  store i8 0, ptr %concat.nul1843, align 1
  store i64 %sum1822, ptr %concat.str1844, align 8
  %str.build.data.gep1846 = getelementptr inbounds { i64, ptr }, ptr %concat.str1844, i32 0, i32 1
  store ptr %concat.buf1834, ptr %str.build.data.gep1846, align 8
  br label %choice.exit

str_overflow_abort1831:                           ; preds = %cat.sum.len1824
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1847:                                  ; preds = %entry
  %pay.gep1852 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr1853 = load ptr, ptr %pay.gep1852, align 8
  %fld.load1859 = load ptr, ptr %payload.ptr1853, align 8
  %cat.seg1861 = load i64, ptr %fld.load1859, align 8
  %cat.seg1862 = and i64 %cat.seg1861, 281474976710655
  %cat.seg1863 = getelementptr inbounds { i64, ptr }, ptr %fld.load1859, i32 0, i32 1
  %cat.seg1864 = load ptr, ptr %cat.seg1863, align 8
  %cat.sum.len1866 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 7, i64 %cat.seg1862)
  %sum1867 = extractvalue { i64, i1 } %cat.sum.len1866, 0
  %ovf1868 = extractvalue { i64, i1 } %cat.sum.len1866, 1
  br i1 %ovf1868, label %str_overflow_abort1870, label %cat.sum.len1869

cat.sum.len1869:                                  ; preds = %choice.case1847
  %cat.sum.len1872 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1867, i64 1)
  %sum1873 = extractvalue { i64, i1 } %cat.sum.len1872, 0
  %ovf1874 = extractvalue { i64, i1 } %cat.sum.len1872, 1
  br i1 %ovf1874, label %str_overflow_abort1876, label %cat.sum.len1875

str_overflow_abort1870:                           ; preds = %choice.case1847
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1875:                                  ; preds = %cat.sum.len1869
  %concat.tot.len1878 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1873, i64 1)
  %sum1879 = extractvalue { i64, i1 } %concat.tot.len1878, 0
  %ovf1880 = extractvalue { i64, i1 } %concat.tot.len1878, 1
  br i1 %ovf1880, label %str_overflow_abort1882, label %concat.tot.len1881

str_overflow_abort1876:                           ; preds = %cat.sum.len1869
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1881:                               ; preds = %cat.sum.len1875
  %arena.cur1884 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1885 = call ptr @dva_arena_alloc(ptr %arena.cur1884, i64 %sum1879)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1885, ptr align 1 @str.100, i64 7, i1 false)
  %cat.dst1887 = getelementptr i8, ptr %concat.buf1885, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1887, ptr align 1 %cat.seg1864, i64 %cat.seg1862, i1 false)
  %cat.off1888 = add i64 7, %cat.seg1862
  %cat.dst1889 = getelementptr i8, ptr %concat.buf1885, i64 %cat.off1888
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1889, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul1890 = getelementptr i8, ptr %concat.buf1885, i64 %sum1873
  store i8 0, ptr %concat.nul1890, align 1
  store i64 %sum1873, ptr %concat.str1891, align 8
  %str.build.data.gep1893 = getelementptr inbounds { i64, ptr }, ptr %concat.str1891, i32 0, i32 1
  store ptr %concat.buf1885, ptr %str.build.data.gep1893, align 8
  br label %choice.exit

str_overflow_abort1882:                           ; preds = %cat.sum.len1875
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1894:                                  ; preds = %entry
  %pay.gep1899 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr1900 = load ptr, ptr %pay.gep1899, align 8
  %fld.load1906 = load ptr, ptr %payload.ptr1900, align 8
  %cat.seg1908 = load i64, ptr %fld.load1906, align 8
  %cat.seg1909 = and i64 %cat.seg1908, 281474976710655
  %cat.seg1910 = getelementptr inbounds { i64, ptr }, ptr %fld.load1906, i32 0, i32 1
  %cat.seg1911 = load ptr, ptr %cat.seg1910, align 8
  %cat.sum.len1913 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 9, i64 %cat.seg1909)
  %sum1914 = extractvalue { i64, i1 } %cat.sum.len1913, 0
  %ovf1915 = extractvalue { i64, i1 } %cat.sum.len1913, 1
  br i1 %ovf1915, label %str_overflow_abort1917, label %cat.sum.len1916

cat.sum.len1916:                                  ; preds = %choice.case1894
  %cat.sum.len1919 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1914, i64 1)
  %sum1920 = extractvalue { i64, i1 } %cat.sum.len1919, 0
  %ovf1921 = extractvalue { i64, i1 } %cat.sum.len1919, 1
  br i1 %ovf1921, label %str_overflow_abort1923, label %cat.sum.len1922

str_overflow_abort1917:                           ; preds = %choice.case1894
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1922:                                  ; preds = %cat.sum.len1916
  %concat.tot.len1925 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1920, i64 1)
  %sum1926 = extractvalue { i64, i1 } %concat.tot.len1925, 0
  %ovf1927 = extractvalue { i64, i1 } %concat.tot.len1925, 1
  br i1 %ovf1927, label %str_overflow_abort1929, label %concat.tot.len1928

str_overflow_abort1923:                           ; preds = %cat.sum.len1916
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1928:                               ; preds = %cat.sum.len1922
  %arena.cur1931 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1932 = call ptr @dva_arena_alloc(ptr %arena.cur1931, i64 %sum1926)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1932, ptr align 1 @str.101, i64 9, i1 false)
  %cat.dst1934 = getelementptr i8, ptr %concat.buf1932, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1934, ptr align 1 %cat.seg1911, i64 %cat.seg1909, i1 false)
  %cat.off1935 = add i64 9, %cat.seg1909
  %cat.dst1936 = getelementptr i8, ptr %concat.buf1932, i64 %cat.off1935
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1936, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul1937 = getelementptr i8, ptr %concat.buf1932, i64 %sum1920
  store i8 0, ptr %concat.nul1937, align 1
  store i64 %sum1920, ptr %concat.str1938, align 8
  %str.build.data.gep1940 = getelementptr inbounds { i64, ptr }, ptr %concat.str1938, i32 0, i32 1
  store ptr %concat.buf1932, ptr %str.build.data.gep1940, align 8
  br label %choice.exit

str_overflow_abort1929:                           ; preds = %cat.sum.len1922
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1941:                                  ; preds = %entry
  %pay.gep1946 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr1947 = load ptr, ptr %pay.gep1946, align 8
  %fld.gep1952 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %payload.ptr1947, i32 0, i32 1
  %fld.load1953 = load ptr, ptr %fld.gep1952, align 8
  %cat.seg1955 = load i64, ptr %fld.load1953, align 8
  %cat.seg1956 = and i64 %cat.seg1955, 281474976710655
  %cat.seg1957 = getelementptr inbounds { i64, ptr }, ptr %fld.load1953, i32 0, i32 1
  %cat.seg1958 = load ptr, ptr %cat.seg1957, align 8
  %cat.sum.len1960 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 8, i64 %cat.seg1956)
  %sum1961 = extractvalue { i64, i1 } %cat.sum.len1960, 0
  %ovf1962 = extractvalue { i64, i1 } %cat.sum.len1960, 1
  br i1 %ovf1962, label %str_overflow_abort1964, label %cat.sum.len1963

cat.sum.len1963:                                  ; preds = %choice.case1941
  %cat.sum.len1966 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1961, i64 1)
  %sum1967 = extractvalue { i64, i1 } %cat.sum.len1966, 0
  %ovf1968 = extractvalue { i64, i1 } %cat.sum.len1966, 1
  br i1 %ovf1968, label %str_overflow_abort1970, label %cat.sum.len1969

str_overflow_abort1964:                           ; preds = %choice.case1941
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1969:                                  ; preds = %cat.sum.len1963
  %concat.tot.len1972 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1967, i64 1)
  %sum1973 = extractvalue { i64, i1 } %concat.tot.len1972, 0
  %ovf1974 = extractvalue { i64, i1 } %concat.tot.len1972, 1
  br i1 %ovf1974, label %str_overflow_abort1976, label %concat.tot.len1975

str_overflow_abort1970:                           ; preds = %cat.sum.len1963
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1975:                               ; preds = %cat.sum.len1969
  %arena.cur1978 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1979 = call ptr @dva_arena_alloc(ptr %arena.cur1978, i64 %sum1973)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1979, ptr align 1 @str.102, i64 8, i1 false)
  %cat.dst1981 = getelementptr i8, ptr %concat.buf1979, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1981, ptr align 1 %cat.seg1958, i64 %cat.seg1956, i1 false)
  %cat.off1982 = add i64 8, %cat.seg1956
  %cat.dst1983 = getelementptr i8, ptr %concat.buf1979, i64 %cat.off1982
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1983, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul1984 = getelementptr i8, ptr %concat.buf1979, i64 %sum1967
  store i8 0, ptr %concat.nul1984, align 1
  store i64 %sum1967, ptr %concat.str1985, align 8
  %str.build.data.gep1987 = getelementptr inbounds { i64, ptr }, ptr %concat.str1985, i32 0, i32 1
  store ptr %concat.buf1979, ptr %str.build.data.gep1987, align 8
  br label %choice.exit

str_overflow_abort1976:                           ; preds = %cat.sum.len1969
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1988:                                  ; preds = %entry
  %pay.gep1993 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr1994 = load ptr, ptr %pay.gep1993, align 8
  %fld.load2000 = load ptr, ptr %payload.ptr1994, align 8
  %cat.seg2002 = load i64, ptr %fld.load2000, align 8
  %cat.seg2003 = and i64 %cat.seg2002, 281474976710655
  %cat.seg2004 = getelementptr inbounds { i64, ptr }, ptr %fld.load2000, i32 0, i32 1
  %cat.seg2005 = load ptr, ptr %cat.seg2004, align 8
  %cat.sum.len2007 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 9, i64 %cat.seg2003)
  %sum2008 = extractvalue { i64, i1 } %cat.sum.len2007, 0
  %ovf2009 = extractvalue { i64, i1 } %cat.sum.len2007, 1
  br i1 %ovf2009, label %str_overflow_abort2011, label %cat.sum.len2010

cat.sum.len2010:                                  ; preds = %choice.case1988
  %cat.sum.len2013 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2008, i64 1)
  %sum2014 = extractvalue { i64, i1 } %cat.sum.len2013, 0
  %ovf2015 = extractvalue { i64, i1 } %cat.sum.len2013, 1
  br i1 %ovf2015, label %str_overflow_abort2017, label %cat.sum.len2016

str_overflow_abort2011:                           ; preds = %choice.case1988
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2016:                                  ; preds = %cat.sum.len2010
  %concat.tot.len2019 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2014, i64 1)
  %sum2020 = extractvalue { i64, i1 } %concat.tot.len2019, 0
  %ovf2021 = extractvalue { i64, i1 } %concat.tot.len2019, 1
  br i1 %ovf2021, label %str_overflow_abort2023, label %concat.tot.len2022

str_overflow_abort2017:                           ; preds = %cat.sum.len2010
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2022:                               ; preds = %cat.sum.len2016
  %arena.cur2025 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2026 = call ptr @dva_arena_alloc(ptr %arena.cur2025, i64 %sum2020)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2026, ptr align 1 @str.103, i64 9, i1 false)
  %cat.dst2028 = getelementptr i8, ptr %concat.buf2026, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2028, ptr align 1 %cat.seg2005, i64 %cat.seg2003, i1 false)
  %cat.off2029 = add i64 9, %cat.seg2003
  %cat.dst2030 = getelementptr i8, ptr %concat.buf2026, i64 %cat.off2029
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2030, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul2031 = getelementptr i8, ptr %concat.buf2026, i64 %sum2014
  store i8 0, ptr %concat.nul2031, align 1
  store i64 %sum2014, ptr %concat.str2032, align 8
  %str.build.data.gep2034 = getelementptr inbounds { i64, ptr }, ptr %concat.str2032, i32 0, i32 1
  store ptr %concat.buf2026, ptr %str.build.data.gep2034, align 8
  br label %choice.exit

str_overflow_abort2023:                           ; preds = %cat.sum.len2016
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case2035:                                  ; preds = %entry
  %pay.gep2040 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr2041 = load ptr, ptr %pay.gep2040, align 8
  %eq.lhs.len2050 = load i64, ptr %payload.ptr2041, align 8
  %eq.lhs.len2051 = and i64 %eq.lhs.len2050, 281474976710655
  %eq.len2054 = icmp eq i64 %eq.lhs.len2051, 3
  br i1 %eq.len2054, label %str.eq.then2055, label %str.eq.merge2057

str.eq.then2055:                                  ; preds = %choice.case2035
  %eq.lhs.data2058 = getelementptr inbounds { i64, ptr }, ptr %payload.ptr2041, i32 0, i32 1
  %eq.lhs.data2059 = load ptr, ptr %eq.lhs.data2058, align 8
  %eq.memcmp2061 = call i32 @memcmp(ptr %eq.lhs.data2059, ptr @str.105, i64 %eq.lhs.len2051)
  %eq.cmp.zero2062 = icmp eq i32 %eq.memcmp2061, 0
  br label %str.eq.merge2057

str.eq.merge2057:                                 ; preds = %choice.case2035, %str.eq.then2055
  %str.eq.result2063 = phi i1 [ %eq.cmp.zero2062, %str.eq.then2055 ], [ false, %choice.case2035 ]
  %choice.res2064 = select i1 %str.eq.result2063, ptr @str.105.struct, ptr @str.106.struct
  %cat.seg2066 = load i64, ptr %choice.res2064, align 8
  %cat.seg2067 = and i64 %cat.seg2066, 281474976710655
  %cat.seg2068 = getelementptr inbounds { i64, ptr }, ptr %choice.res2064, i32 0, i32 1
  %cat.seg2069 = load ptr, ptr %cat.seg2068, align 8
  %cat.sum.len2071 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 3, i64 %cat.seg2067)
  %sum2072 = extractvalue { i64, i1 } %cat.sum.len2071, 0
  %ovf2073 = extractvalue { i64, i1 } %cat.sum.len2071, 1
  br i1 %ovf2073, label %str_overflow_abort2075, label %cat.sum.len2074

cat.sum.len2074:                                  ; preds = %str.eq.merge2057
  %cat.sum.len2077 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2072, i64 1)
  %sum2078 = extractvalue { i64, i1 } %cat.sum.len2077, 0
  %ovf2079 = extractvalue { i64, i1 } %cat.sum.len2077, 1
  br i1 %ovf2079, label %str_overflow_abort2081, label %cat.sum.len2080

str_overflow_abort2075:                           ; preds = %str.eq.merge2057
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2080:                                  ; preds = %cat.sum.len2074
  %concat.tot.len2083 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2078, i64 1)
  %sum2084 = extractvalue { i64, i1 } %concat.tot.len2083, 0
  %ovf2085 = extractvalue { i64, i1 } %concat.tot.len2083, 1
  br i1 %ovf2085, label %str_overflow_abort2087, label %concat.tot.len2086

str_overflow_abort2081:                           ; preds = %cat.sum.len2074
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2086:                               ; preds = %cat.sum.len2080
  %arena.cur2089 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2090 = call ptr @dva_arena_alloc(ptr %arena.cur2089, i64 %sum2084)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2090, ptr align 1 @str.104, i64 3, i1 false)
  %cat.dst2092 = getelementptr i8, ptr %concat.buf2090, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2092, ptr align 1 %cat.seg2069, i64 %cat.seg2067, i1 false)
  %cat.off2093 = add i64 3, %cat.seg2067
  %cat.dst2094 = getelementptr i8, ptr %concat.buf2090, i64 %cat.off2093
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2094, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul2095 = getelementptr i8, ptr %concat.buf2090, i64 %sum2078
  store i8 0, ptr %concat.nul2095, align 1
  store i64 %sum2078, ptr %concat.str2096, align 8
  %str.build.data.gep2098 = getelementptr inbounds { i64, ptr }, ptr %concat.str2096, i32 0, i32 1
  store ptr %concat.buf2090, ptr %str.build.data.gep2098, align 8
  br label %choice.exit

str_overflow_abort2087:                           ; preds = %cat.sum.len2080
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case2099:                                  ; preds = %entry
  %pay.gep2104 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr2105 = load ptr, ptr %pay.gep2104, align 8
  %cat.seg2111 = load i64, ptr %payload.ptr2105, align 8
  %cat.seg2112 = and i64 %cat.seg2111, 281474976710655
  %cat.seg2113 = getelementptr inbounds { i64, ptr }, ptr %payload.ptr2105, i32 0, i32 1
  %cat.seg2114 = load ptr, ptr %cat.seg2113, align 8
  %cat.sum.len2116 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 8, i64 %cat.seg2112)
  %sum2117 = extractvalue { i64, i1 } %cat.sum.len2116, 0
  %ovf2118 = extractvalue { i64, i1 } %cat.sum.len2116, 1
  br i1 %ovf2118, label %str_overflow_abort2120, label %cat.sum.len2119

cat.sum.len2119:                                  ; preds = %choice.case2099
  %cat.sum.len2122 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2117, i64 1)
  %sum2123 = extractvalue { i64, i1 } %cat.sum.len2122, 0
  %ovf2124 = extractvalue { i64, i1 } %cat.sum.len2122, 1
  br i1 %ovf2124, label %str_overflow_abort2126, label %cat.sum.len2125

str_overflow_abort2120:                           ; preds = %choice.case2099
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2125:                                  ; preds = %cat.sum.len2119
  %concat.tot.len2128 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2123, i64 1)
  %sum2129 = extractvalue { i64, i1 } %concat.tot.len2128, 0
  %ovf2130 = extractvalue { i64, i1 } %concat.tot.len2128, 1
  br i1 %ovf2130, label %str_overflow_abort2132, label %concat.tot.len2131

str_overflow_abort2126:                           ; preds = %cat.sum.len2119
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2131:                               ; preds = %cat.sum.len2125
  %arena.cur2134 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2135 = call ptr @dva_arena_alloc(ptr %arena.cur2134, i64 %sum2129)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2135, ptr align 1 @str.107, i64 8, i1 false)
  %cat.dst2137 = getelementptr i8, ptr %concat.buf2135, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2137, ptr align 1 %cat.seg2114, i64 %cat.seg2112, i1 false)
  %cat.off2138 = add i64 8, %cat.seg2112
  %cat.dst2139 = getelementptr i8, ptr %concat.buf2135, i64 %cat.off2138
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2139, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul2140 = getelementptr i8, ptr %concat.buf2135, i64 %sum2123
  store i8 0, ptr %concat.nul2140, align 1
  store i64 %sum2123, ptr %concat.str2141, align 8
  %str.build.data.gep2143 = getelementptr inbounds { i64, ptr }, ptr %concat.str2141, i32 0, i32 1
  store ptr %concat.buf2135, ptr %str.build.data.gep2143, align 8
  br label %choice.exit

str_overflow_abort2132:                           ; preds = %cat.sum.len2125
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case2144:                                  ; preds = %entry
  %pay.gep2149 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr2150 = load ptr, ptr %pay.gep2149, align 8
  %fld.load2154 = load i1, ptr %payload.ptr2150, align 1
  %str.108.struct.str.109.struct = select i1 %fld.load2154, ptr @str.108.struct, ptr @str.109.struct
  %cat.seg2160 = load i64, ptr %str.108.struct.str.109.struct, align 8
  %cat.seg2161 = and i64 %cat.seg2160, 281474976710655
  %cat.seg2162 = getelementptr inbounds { i64, ptr }, ptr %str.108.struct.str.109.struct, i32 0, i32 1
  %cat.seg2163 = load ptr, ptr %cat.seg2162, align 8
  %fld.gep2165 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %payload.ptr2150, i32 0, i32 1
  %fld.load2166 = load ptr, ptr %fld.gep2165, align 8
  %call.res2167 = call { i64, ptr } @"show::show_expr"(ptr %fld.load2166)
  %call.res2167.fca.0.extract = extractvalue { i64, ptr } %call.res2167, 0
  %call.res2167.fca.1.extract = extractvalue { i64, ptr } %call.res2167, 1
  %cat.seg2171 = and i64 %call.res2167.fca.0.extract, 281474976710655
  %cat.sum.len2175 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg2161, i64 %cat.seg2171)
  %sum2176 = extractvalue { i64, i1 } %cat.sum.len2175, 0
  %ovf2177 = extractvalue { i64, i1 } %cat.sum.len2175, 1
  br i1 %ovf2177, label %str_overflow_abort2179, label %cat.sum.len2178

cat.sum.len2178:                                  ; preds = %choice.case2144
  %cat.sum.len2181 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2176, i64 1)
  %sum2182 = extractvalue { i64, i1 } %cat.sum.len2181, 0
  %ovf2183 = extractvalue { i64, i1 } %cat.sum.len2181, 1
  br i1 %ovf2183, label %str_overflow_abort2185, label %cat.sum.len2184

str_overflow_abort2179:                           ; preds = %choice.case2144
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2184:                                  ; preds = %cat.sum.len2178
  %concat.tot.len2187 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2182, i64 1)
  %sum2188 = extractvalue { i64, i1 } %concat.tot.len2187, 0
  %ovf2189 = extractvalue { i64, i1 } %concat.tot.len2187, 1
  br i1 %ovf2189, label %str_overflow_abort2191, label %concat.tot.len2190

str_overflow_abort2185:                           ; preds = %cat.sum.len2178
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2190:                               ; preds = %cat.sum.len2184
  %arena.cur2193 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2194 = call ptr @dva_arena_alloc(ptr %arena.cur2193, i64 %sum2188)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2194, ptr align 1 %cat.seg2163, i64 %cat.seg2161, i1 false)
  %cat.dst2197 = getelementptr i8, ptr %concat.buf2194, i64 %cat.seg2161
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2197, ptr align 1 %call.res2167.fca.1.extract, i64 %cat.seg2171, i1 false)
  %cat.off2198 = add i64 %cat.seg2161, %cat.seg2171
  %cat.dst2199 = getelementptr i8, ptr %concat.buf2194, i64 %cat.off2198
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2199, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul2200 = getelementptr i8, ptr %concat.buf2194, i64 %sum2182
  store i8 0, ptr %concat.nul2200, align 1
  store i64 %sum2182, ptr %concat.str2201, align 8
  %str.build.data.gep2203 = getelementptr inbounds { i64, ptr }, ptr %concat.str2201, i32 0, i32 1
  store ptr %concat.buf2194, ptr %str.build.data.gep2203, align 8
  br label %choice.exit

str_overflow_abort2191:                           ; preds = %cat.sum.len2184
  call void @dva_abort_str_overflow_msg()
  unreachable
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
  %fmt.not.u = xor i1 %2, true
  %fmt.is.neg = and i1 %fmt.not.u, %fmt.slt
  %fmt.neg = sub i64 0, %1
  %fmt.abs = select i1 %fmt.is.neg, i64 %fmt.neg, i64 %1
  br label %divloop

divloop:                                          ; preds = %divloop, %nonzero
  %fmt.n = phi i64 [ %fmt.abs, %nonzero ], [ %fmt.quot, %divloop ]
  %fmt.k = phi i64 [ 0, %nonzero ], [ %fmt.k.next, %divloop ]
  %fmt.rem = urem i64 %fmt.n, 10
  %fmt.quot = udiv i64 %fmt.n, 10
  %fmt.r8 = trunc i64 %fmt.rem to i8
  %fmt.dig = add i8 %fmt.r8, 48
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

declare { i64, ptr } @"str::from_float"(double) #3

define { i64, ptr } @"show::show_op"(ptr %0) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  switch i64 %tag.id, label %choice.next117 [
    i64 0, label %choice.exit
    i64 1, label %choice.case1
    i64 2, label %choice.case6
    i64 3, label %choice.case11
    i64 4, label %choice.case16
    i64 5, label %choice.case21
    i64 6, label %choice.case26
    i64 7, label %choice.case31
    i64 10, label %choice.case36
    i64 9, label %choice.case41
    i64 8, label %choice.case46
    i64 11, label %choice.case51
    i64 12, label %choice.case56
    i64 13, label %choice.case61
    i64 15, label %choice.case66
    i64 16, label %choice.case71
    i64 17, label %choice.case76
    i64 18, label %choice.case81
    i64 14, label %choice.case86
    i64 19, label %choice.case91
    i64 20, label %choice.case96
    i64 21, label %choice.case101
    i64 22, label %choice.case106
    i64 23, label %choice.case111
    i64 24, label %choice.case116
  ]

choice.exit:                                      ; preds = %entry, %choice.next117, %choice.case116, %choice.case111, %choice.case106, %choice.case101, %choice.case96, %choice.case91, %choice.case86, %choice.case81, %choice.case76, %choice.case71, %choice.case66, %choice.case61, %choice.case56, %choice.case51, %choice.case46, %choice.case41, %choice.case36, %choice.case31, %choice.case26, %choice.case21, %choice.case16, %choice.case11, %choice.case6, %choice.case1
  %choice.res = phi ptr [ @str.9.struct, %choice.case1 ], [ @str.10.struct, %choice.case6 ], [ @str.11.struct, %choice.case11 ], [ @str.12.struct, %choice.case16 ], [ @str.13.struct, %choice.case21 ], [ @str.14.struct, %choice.case26 ], [ @str.15.struct, %choice.case31 ], [ @str.16.struct, %choice.case36 ], [ @str.17.struct, %choice.case41 ], [ @str.18.struct, %choice.case46 ], [ @str.19.struct, %choice.case51 ], [ @str.20.struct, %choice.case56 ], [ @str.21.struct, %choice.case61 ], [ @str.22.struct, %choice.case66 ], [ @str.23.struct, %choice.case71 ], [ @str.24.struct, %choice.case76 ], [ @str.25.struct, %choice.case81 ], [ @str.26.struct, %choice.case86 ], [ @str.27.struct, %choice.case91 ], [ @str.28.struct, %choice.case96 ], [ @str.29.struct, %choice.case101 ], [ @str.30.struct, %choice.case106 ], [ @str.31.struct, %choice.case111 ], [ @str.32.struct, %choice.case116 ], [ @str.33.struct, %choice.next117 ], [ @str.8.struct, %entry ]
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

choice.case91:                                    ; preds = %entry
  br label %choice.exit

choice.case96:                                    ; preds = %entry
  br label %choice.exit

choice.case101:                                   ; preds = %entry
  br label %choice.exit

choice.case106:                                   ; preds = %entry
  br label %choice.exit

choice.case111:                                   ; preds = %entry
  br label %choice.exit

choice.case116:                                   ; preds = %entry
  br label %choice.exit

choice.next117:                                   ; preds = %entry
  br label %choice.exit
}

define { i64, ptr } @"show::show_unop"(ptr %0) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  switch i64 %tag.id, label %choice.next37 [
    i64 0, label %choice.exit
    i64 1, label %choice.case1
    i64 2, label %choice.case6
    i64 3, label %choice.case11
    i64 4, label %choice.case16
    i64 5, label %choice.case21
    i64 6, label %choice.case26
    i64 7, label %choice.case31
    i64 8, label %choice.case36
  ]

choice.exit:                                      ; preds = %entry, %choice.next37, %choice.case36, %choice.case31, %choice.case26, %choice.case21, %choice.case16, %choice.case11, %choice.case6, %choice.case1
  %choice.res = phi ptr [ @str.37.struct, %choice.case1 ], [ @str.33.struct, %choice.case6 ], [ @str.38.struct, %choice.case11 ], [ @str.8.struct, %choice.case16 ], [ @str.39.struct, %choice.case21 ], [ @str.40.struct, %choice.case26 ], [ @str.41.struct, %choice.case31 ], [ @str.9.struct, %choice.case36 ], [ @str.33.struct, %choice.next37 ], [ @str.36.struct, %entry ]
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

choice.next37:                                    ; preds = %entry
  br label %choice.exit
}

define { i64, ptr } @"show::show_tag"(ptr %0) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  switch i64 %tag.id, label %choice.next22 [
    i64 0, label %choice.exit
    i64 1, label %choice.case1
    i64 2, label %choice.case6
    i64 3, label %choice.case11
    i64 4, label %choice.case16
    i64 5, label %choice.case21
  ]

choice.exit:                                      ; preds = %entry, %choice.next22, %choice.case21, %choice.case16, %choice.case11, %choice.case6, %choice.case1
  %choice.res = phi ptr [ @str.44.struct, %choice.case1 ], [ @str.45.struct, %choice.case6 ], [ @str.46.struct, %choice.case11 ], [ @str.47.struct, %choice.case16 ], [ @str.48.struct, %choice.case21 ], [ @str.33.struct, %choice.next22 ], [ @str.43.struct, %entry ]
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

choice.next22:                                    ; preds = %entry
  br label %choice.exit
}

define { i64, ptr } @"show::show_exprs"(ptr %0) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 17)
  store i8 0, ptr %b.buf, align 1
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.create3, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.xs.0 = phi ptr [ %a.create3, %a.create ], [ %0, %entry ]
  %arr.cycle.len5 = load i64, ptr %var.xs.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.xs.0, i32 0, i32 1
  %arr.cycle.data6 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.171

loop.header.171:                                  ; preds = %b.grow_done49, %a.after
  %builder.new.salloc.sroa.18.0 = phi i64 [ 16, %a.after ], [ %builder.new.salloc.sroa.18.2, %b.grow_done49 ]
  %builder.new.salloc.sroa.9.0 = phi ptr [ %b.buf, %a.after ], [ %builder.new.salloc.sroa.9.2, %b.grow_done49 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 0, %a.after ], [ %sum39, %b.grow_done49 ]
  %loop.idx.171.0 = phi i64 [ 0, %a.after ], [ %loop.next, %b.grow_done49 ]
  %loop.cond = icmp slt i64 %loop.idx.171.0, %arr.cycle.len5
  br i1 %loop.cond, label %loop.body.171, label %loop.exit.171

loop.body.171:                                    ; preds = %loop.header.171
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data6, i64 %loop.idx.171.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %cmptmp = icmp sgt i64 %loop.idx.171.0, 0
  %str.34.struct.str.49.struct = select i1 %cmptmp, ptr @str.34.struct, ptr @str.49.struct
  %app.str.len8 = load i64, ptr %str.34.struct.str.49.struct, align 8
  %app.str.len9 = and i64 %app.str.len8, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.34.struct.str.49.struct, i32 0, i32 1
  %app.str.data10 = load ptr, ptr %app.str.data, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 %app.str.len9)
  %sum12 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf13 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf13, label %str_overflow_abort15, label %b.app.new.len14

loop.exit.171:                                    ; preds = %loop.header.171
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %builder.new.salloc.sroa.0.0, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %builder.new.salloc.sroa.9.0, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

b.app.new.len14:                                  ; preds = %loop.body.171
  %b.need.grow = icmp slt i64 %builder.new.salloc.sroa.18.0, %sum12
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort15:                             ; preds = %loop.body.171
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len14
  %b.cap2 = mul i64 %builder.new.salloc.sroa.18.0, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum12
  %b.new.cap = select i1 %b.cap.need, i64 %sum12, i64 %b.cap.grow
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum20 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf21 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.new.buf.len222

b.grow_done:                                      ; preds = %b.app.new.len14, %b.new.buf.len222
  %builder.new.salloc.sroa.18.1 = phi i64 [ %b.new.cap, %b.new.buf.len222 ], [ %builder.new.salloc.sroa.18.0, %b.app.new.len14 ]
  %builder.new.salloc.sroa.9.1 = phi ptr [ %b.new.buf2, %b.new.buf.len222 ], [ %builder.new.salloc.sroa.9.0, %b.app.new.len14 ]
  %b.app.dst = getelementptr i8, ptr %builder.new.salloc.sroa.9.1, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data10, i64 %app.str.len9, i1 false)
  %b.app.nul = getelementptr i8, ptr %builder.new.salloc.sroa.9.1, i64 %sum12
  store i8 0, ptr %b.app.nul, align 1
  %call.res = call { i64, ptr } @"show::show_expr"(ptr %slot.i2p)
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %app.str.len32 = load i64, ptr %ret.ub.alloc, align 8
  %app.str.len33 = and i64 %app.str.len32, 281474976710655
  %app.str.data34 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data35 = load ptr, ptr %app.str.data34, align 8
  %b.app.new.len38 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum12, i64 %app.str.len33)
  %sum39 = extractvalue { i64, i1 } %b.app.new.len38, 0
  %ovf40 = extractvalue { i64, i1 } %b.app.new.len38, 1
  br i1 %ovf40, label %str_overflow_abort42, label %b.app.new.len41

b.new.buf.len222:                                 ; preds = %b.grow2
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 %sum20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %builder.new.salloc.sroa.9.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul, align 1
  br label %b.grow_done

str_overflow_abort23:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len41:                                  ; preds = %b.grow_done
  %b.need.grow46 = icmp slt i64 %builder.new.salloc.sroa.18.1, %sum39
  br i1 %b.need.grow46, label %b.grow247, label %b.grow_done49

str_overflow_abort42:                             ; preds = %b.grow_done
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow247:                                        ; preds = %b.app.new.len41
  %b.cap250 = mul i64 %builder.new.salloc.sroa.18.1, 2
  %b.cap.small51 = icmp slt i64 %b.cap250, 16
  %b.cap.grow52 = select i1 %b.cap.small51, i64 16, i64 %b.cap250
  %b.cap.need53 = icmp slt i64 %b.cap.grow52, %sum39
  %b.new.cap54 = select i1 %b.cap.need53, i64 %sum39, i64 %b.cap.grow52
  %b.new.buf.len259 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap54, i64 1)
  %sum60 = extractvalue { i64, i1 } %b.new.buf.len259, 0
  %ovf61 = extractvalue { i64, i1 } %b.new.buf.len259, 1
  br i1 %ovf61, label %str_overflow_abort63, label %b.new.buf.len262

b.grow_done49:                                    ; preds = %b.app.new.len41, %b.new.buf.len262
  %builder.new.salloc.sroa.18.2 = phi i64 [ %b.new.cap54, %b.new.buf.len262 ], [ %builder.new.salloc.sroa.18.1, %b.app.new.len41 ]
  %builder.new.salloc.sroa.9.2 = phi ptr [ %b.new.buf266, %b.new.buf.len262 ], [ %builder.new.salloc.sroa.9.1, %b.app.new.len41 ]
  %b.app.dst72 = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %sum12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst72, ptr align 1 %app.str.data35, i64 %app.str.len33, i1 false)
  %b.app.nul73 = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %sum39
  store i8 0, ptr %b.app.nul73, align 1
  %loop.next = add i64 %loop.idx.171.0, 1
  br label %loop.header.171

b.new.buf.len262:                                 ; preds = %b.grow247
  %arena.cur65 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf266 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 %sum60)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf266, ptr align 1 %builder.new.salloc.sroa.9.1, i64 %sum12, i1 false)
  %b.grow2.nul67 = getelementptr i8, ptr %b.new.buf266, i64 %sum12
  store i8 0, ptr %b.grow2.nul67, align 1
  br label %b.grow_done49

str_overflow_abort63:                             ; preds = %b.grow247
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"show::show_fwd_rhs"(ptr %0) #3 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %ret.ub.salloc.sroa.gep7 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  %tag.id = load i64, ptr %0, align 8
  %tag.match = icmp eq i64 %tag.id, 3
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res.sroa.phi.sroa.speculated = phi i64 [ %choice.res.sroa.phi.sroa.speculate.load.choice.case, %choice.case ], [ %call.res4.fca.0.extract, %choice.next ]
  %choice.res.sroa.phi6.sroa.speculated = phi ptr [ %call.res.fca.1.extract, %choice.case ], [ %call.res4.fca.1.extract, %choice.next ]
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %choice.res.sroa.phi.sroa.speculated, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %choice.res.sroa.phi6.sroa.speculated, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %call.res = call { i64, ptr } @"show::show_fwd_name"(ptr %payload.ptr, ptr %0)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  store i64 %call.res.fca.0.extract, ptr %ret.ub.salloc, align 8
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  store ptr %call.res.fca.1.extract, ptr %ret.ub.salloc.sroa.gep7, align 8
  %choice.res.sroa.phi.sroa.speculate.load.choice.case = load i64, ptr %ret.ub.salloc, align 8
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %call.res4 = call { i64, ptr } @"show::show_expr"(ptr %0)
  %call.res4.fca.0.extract = extractvalue { i64, ptr } %call.res4, 0
  %call.res4.fca.1.extract = extractvalue { i64, ptr } %call.res4, 1
  br label %choice.exit
}

define { i64, ptr } @"show::show_fwd_name"(ptr %0, ptr %1) #3 {
entry:
  %ret.ub.salloc15 = alloca { i64, ptr }, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp sgt i64 %str.len.query2, 4
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  %rel.end = add i64 %str.len.query2, 5
  %eq.memcmp = call i32 @memcmp(ptr %s.read.data6, ptr @str.61, i64 5)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.exit, label %choice.else10

choice.else:                                      ; preds = %entry
  %call.res14 = call { i64, ptr } @"show::show_expr"(ptr %1)
  %call.res14.fca.0.extract = extractvalue { i64, ptr } %call.res14, 0
  store i64 %call.res14.fca.0.extract, ptr %ret.ub.salloc15, align 8
  %call.res14.fca.1.extract = extractvalue { i64, ptr } %call.res14, 1
  %call.res14.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc15, i32 0, i32 1
  store ptr %call.res14.fca.1.extract, ptr %call.res14.fca.1.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else10, %choice.then, %choice.else
  %choice.res16 = phi ptr [ %ret.ub.salloc15, %choice.else ], [ %ret.ub.salloc, %choice.else10 ], [ @str.61.struct, %choice.then ]
  %ret.pack.fca.0.load = load i64, ptr %choice.res16, align 8
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.pack.fca.0.load, 0
  %ret.pack.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %choice.res16, i32 0, i32 1
  %ret.pack.fca.1.load = load ptr, ptr %ret.pack.fca.1.gep, align 8
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %ret.pack.fca.1.load, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

choice.else10:                                    ; preds = %choice.then
  %call.res = call { i64, ptr } @"show::show_expr"(ptr %1)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  store i64 %call.res.fca.0.extract, ptr %ret.ub.salloc, align 8
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %call.res.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  store ptr %call.res.fca.1.extract, ptr %call.res.fca.1.gep, align 8
  br label %choice.exit
}

declare i32 @memcmp(ptr, ptr, i64) #3

define { i64, ptr } @"show::show_branches"(ptr %0) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 17)
  store i8 0, ptr %b.buf, align 1
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.create3, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.bs.0 = phi ptr [ %a.create3, %a.create ], [ %0, %entry ]
  %arr.cycle.len5 = load i64, ptr %var.bs.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.bs.0, i32 0, i32 1
  %arr.cycle.data6 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.173

loop.header.173:                                  ; preds = %b.grow_done49, %a.after
  %builder.new.salloc.sroa.18.0 = phi i64 [ 16, %a.after ], [ %builder.new.salloc.sroa.18.2, %b.grow_done49 ]
  %builder.new.salloc.sroa.9.0 = phi ptr [ %b.buf, %a.after ], [ %builder.new.salloc.sroa.9.2, %b.grow_done49 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 0, %a.after ], [ %sum39, %b.grow_done49 ]
  %loop.idx.173.0 = phi i64 [ 0, %a.after ], [ %loop.next, %b.grow_done49 ]
  %loop.cond = icmp slt i64 %loop.idx.173.0, %arr.cycle.len5
  br i1 %loop.cond, label %loop.body.173, label %loop.exit.173

loop.body.173:                                    ; preds = %loop.header.173
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data6, i64 %loop.idx.173.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %cmptmp = icmp sgt i64 %loop.idx.173.0, 0
  %str.63.struct.str.49.struct = select i1 %cmptmp, ptr @str.63.struct, ptr @str.49.struct
  %app.str.len8 = load i64, ptr %str.63.struct.str.49.struct, align 8
  %app.str.len9 = and i64 %app.str.len8, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.63.struct.str.49.struct, i32 0, i32 1
  %app.str.data10 = load ptr, ptr %app.str.data, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 %app.str.len9)
  %sum12 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf13 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf13, label %str_overflow_abort15, label %b.app.new.len14

loop.exit.173:                                    ; preds = %loop.header.173
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %builder.new.salloc.sroa.0.0, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %builder.new.salloc.sroa.9.0, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

b.app.new.len14:                                  ; preds = %loop.body.173
  %b.need.grow = icmp slt i64 %builder.new.salloc.sroa.18.0, %sum12
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort15:                             ; preds = %loop.body.173
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len14
  %b.cap2 = mul i64 %builder.new.salloc.sroa.18.0, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum12
  %b.new.cap = select i1 %b.cap.need, i64 %sum12, i64 %b.cap.grow
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum20 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf21 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.new.buf.len222

b.grow_done:                                      ; preds = %b.app.new.len14, %b.new.buf.len222
  %builder.new.salloc.sroa.18.1 = phi i64 [ %b.new.cap, %b.new.buf.len222 ], [ %builder.new.salloc.sroa.18.0, %b.app.new.len14 ]
  %builder.new.salloc.sroa.9.1 = phi ptr [ %b.new.buf2, %b.new.buf.len222 ], [ %builder.new.salloc.sroa.9.0, %b.app.new.len14 ]
  %b.app.dst = getelementptr i8, ptr %builder.new.salloc.sroa.9.1, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data10, i64 %app.str.len9, i1 false)
  %b.app.nul = getelementptr i8, ptr %builder.new.salloc.sroa.9.1, i64 %sum12
  store i8 0, ptr %b.app.nul, align 1
  %call.res = call { i64, ptr } @"show::show_branch"(ptr %slot.i2p)
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %app.str.len32 = load i64, ptr %ret.ub.alloc, align 8
  %app.str.len33 = and i64 %app.str.len32, 281474976710655
  %app.str.data34 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data35 = load ptr, ptr %app.str.data34, align 8
  %b.app.new.len38 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum12, i64 %app.str.len33)
  %sum39 = extractvalue { i64, i1 } %b.app.new.len38, 0
  %ovf40 = extractvalue { i64, i1 } %b.app.new.len38, 1
  br i1 %ovf40, label %str_overflow_abort42, label %b.app.new.len41

b.new.buf.len222:                                 ; preds = %b.grow2
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 %sum20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %builder.new.salloc.sroa.9.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul, align 1
  br label %b.grow_done

str_overflow_abort23:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len41:                                  ; preds = %b.grow_done
  %b.need.grow46 = icmp slt i64 %builder.new.salloc.sroa.18.1, %sum39
  br i1 %b.need.grow46, label %b.grow247, label %b.grow_done49

str_overflow_abort42:                             ; preds = %b.grow_done
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow247:                                        ; preds = %b.app.new.len41
  %b.cap250 = mul i64 %builder.new.salloc.sroa.18.1, 2
  %b.cap.small51 = icmp slt i64 %b.cap250, 16
  %b.cap.grow52 = select i1 %b.cap.small51, i64 16, i64 %b.cap250
  %b.cap.need53 = icmp slt i64 %b.cap.grow52, %sum39
  %b.new.cap54 = select i1 %b.cap.need53, i64 %sum39, i64 %b.cap.grow52
  %b.new.buf.len259 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap54, i64 1)
  %sum60 = extractvalue { i64, i1 } %b.new.buf.len259, 0
  %ovf61 = extractvalue { i64, i1 } %b.new.buf.len259, 1
  br i1 %ovf61, label %str_overflow_abort63, label %b.new.buf.len262

b.grow_done49:                                    ; preds = %b.app.new.len41, %b.new.buf.len262
  %builder.new.salloc.sroa.18.2 = phi i64 [ %b.new.cap54, %b.new.buf.len262 ], [ %builder.new.salloc.sroa.18.1, %b.app.new.len41 ]
  %builder.new.salloc.sroa.9.2 = phi ptr [ %b.new.buf266, %b.new.buf.len262 ], [ %builder.new.salloc.sroa.9.1, %b.app.new.len41 ]
  %b.app.dst72 = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %sum12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst72, ptr align 1 %app.str.data35, i64 %app.str.len33, i1 false)
  %b.app.nul73 = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %sum39
  store i8 0, ptr %b.app.nul73, align 1
  %loop.next = add i64 %loop.idx.173.0, 1
  br label %loop.header.173

b.new.buf.len262:                                 ; preds = %b.grow247
  %arena.cur65 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf266 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 %sum60)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf266, ptr align 1 %builder.new.salloc.sroa.9.1, i64 %sum12, i1 false)
  %b.grow2.nul67 = getelementptr i8, ptr %b.new.buf266, i64 %sum12
  store i8 0, ptr %b.grow2.nul67, align 1
  br label %b.grow_done49

str_overflow_abort63:                             ; preds = %b.grow247
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"show::show_branch"(ptr %0) #3 {
entry:
  %ret.ub.salloc14 = alloca { i64, ptr }, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %fld.load = load ptr, ptr %0, align 8
  %tag.id = load i64, ptr %fld.load, align 8
  switch i64 %tag.id, label %choice.next16 [
    i64 2, label %choice.case
    i64 1, label %choice.exit
    i64 0, label %choice.case7
    i64 3, label %choice.case15
  ]

choice.exit:                                      ; preds = %entry, %choice.next16, %choice.case15, %choice.case7, %choice.case
  %choice.res = phi ptr [ %ret.ub.salloc, %choice.case ], [ %ret.ub.salloc14, %choice.case7 ], [ @str.68.struct, %choice.case15 ], [ @str.68.struct, %choice.next16 ], [ @str.67.struct, %entry ]
  %cat.seg21 = load i64, ptr %choice.res, align 8
  %cat.seg22 = and i64 %cat.seg21, 281474976710655
  %cat.seg23 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %cat.seg24 = load ptr, ptr %cat.seg23, align 8
  %fld.gep26 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %0, i32 0, i32 6
  %fld.load27 = load ptr, ptr %fld.gep26, align 8
  %call.res28 = call { i64, ptr } @"show::show_expr"(ptr %fld.load27)
  %call.res28.fca.0.extract = extractvalue { i64, ptr } %call.res28, 0
  %call.res28.fca.1.extract = extractvalue { i64, ptr } %call.res28, 1
  %cat.seg32 = and i64 %call.res28.fca.0.extract, 281474976710655
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg22, i64 1)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len35

choice.case:                                      ; preds = %entry
  %call.res = call { i64, ptr } @"show::show_var"(ptr %0)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  store i64 %call.res.fca.0.extract, ptr %ret.ub.salloc, align 8
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %call.res.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  store ptr %call.res.fca.1.extract, ptr %call.res.fca.1.gep, align 8
  br label %choice.exit

choice.case7:                                     ; preds = %entry
  %call.res13 = call { i64, ptr } @"show::show_val"(ptr %0)
  %call.res13.fca.0.extract = extractvalue { i64, ptr } %call.res13, 0
  store i64 %call.res13.fca.0.extract, ptr %ret.ub.salloc14, align 8
  %call.res13.fca.1.extract = extractvalue { i64, ptr } %call.res13, 1
  %call.res13.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc14, i32 0, i32 1
  store ptr %call.res13.fca.1.extract, ptr %call.res13.fca.1.gep, align 8
  br label %choice.exit

choice.case15:                                    ; preds = %entry
  br label %choice.exit

choice.next16:                                    ; preds = %entry
  br label %choice.exit

cat.sum.len35:                                    ; preds = %choice.exit
  %cat.sum.len36 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg32)
  %sum37 = extractvalue { i64, i1 } %cat.sum.len36, 0
  %ovf38 = extractvalue { i64, i1 } %cat.sum.len36, 1
  br i1 %ovf38, label %str_overflow_abort40, label %cat.sum.len39

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len39:                                    ; preds = %cat.sum.len35
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum37, i64 1)
  %sum42 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf43 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf43, label %str_overflow_abort45, label %concat.tot.len44

str_overflow_abort40:                             ; preds = %cat.sum.len35
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len44:                                 ; preds = %cat.sum.len39
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum42)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %cat.seg24, i64 %cat.seg22, i1 false)
  %cat.dst47 = getelementptr i8, ptr %concat.buf, i64 %cat.seg22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst47, ptr align 1 @str.69, i64 1, i1 false)
  %cat.off48 = add i64 %cat.seg22, 1
  %cat.dst49 = getelementptr i8, ptr %concat.buf, i64 %cat.off48
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst49, ptr align 1 %call.res28.fca.1.extract, i64 %cat.seg32, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum37
  store i8 0, ptr %concat.nul, align 1
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %sum37, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %concat.buf, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

str_overflow_abort45:                             ; preds = %cat.sum.len39
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"show::show_var"(ptr %0) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %0, i32 0, i32 3
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %entry
  %a.rd.len1 = load i64, ptr %fld.load, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len1
  br i1 %a.rd.lt, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 1
  %a.rd.data2 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem = load i64, ptr %a.rd.data2, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  store i64 4011, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.64.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.65.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 56)
  store i64 4011, ptr %err.alloc4, align 8
  %err.msg.gep6 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc4, i32 0, i32 1
  store ptr @str.66.struct, ptr %err.msg.gep6, align 8
  %err.file.gep7 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc4, i32 0, i32 2
  store ptr @str.65.struct, ptr %err.file.gep7, align 8
  %err.line.gep8 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc4, i32 0, i32 3
  store i64 0, ptr %err.line.gep8, align 8
  %err.col.gep9 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc4, i32 0, i32 4
  store i64 0, ptr %err.col.gep9, align 8
  %err.ctx.gep10 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc4, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep10, align 8
  %err.ctx1.gep12 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep10, i32 0, i32 1
  store i64 %a.rd.len1, ptr %err.ctx1.gep12, align 8
  %err.p2i13 = ptrtoint ptr %err.alloc4 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i13, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %pay.ptr = inttoptr i64 %a.rd.pay to ptr
  %choice.res = select i1 %a.rd.tag, ptr %pay.ptr, ptr @str.49.struct
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"show::show_val"(ptr %0) #3 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %ret.ub.salloc.sroa.gep11 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %0, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.len.query1 = load i64, ptr %fld.load, align 8
  %cmptmp = icmp sgt i64 %a.len.query1, 1
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %call.res = call { i64, ptr } @"show::show_exprs"(ptr %fld.load)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  store i64 %call.res.fca.0.extract, ptr %ret.ub.salloc, align 8
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  store ptr %call.res.fca.1.extract, ptr %ret.ub.salloc.sroa.gep11, align 8
  %choice.res.sroa.phi.sroa.speculate.load.choice.then = load i64, ptr %ret.ub.salloc, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %call.res8 = call { i64, ptr } @"show::show_single"(ptr %fld.load)
  %call.res8.fca.0.extract = extractvalue { i64, ptr } %call.res8, 0
  %call.res8.fca.1.extract = extractvalue { i64, ptr } %call.res8, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res.sroa.phi.sroa.speculated = phi i64 [ %choice.res.sroa.phi.sroa.speculate.load.choice.then, %choice.then ], [ %call.res8.fca.0.extract, %choice.else ]
  %choice.res.sroa.phi10.sroa.speculated = phi ptr [ %call.res.fca.1.extract, %choice.then ], [ %call.res8.fca.1.extract, %choice.else ]
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %choice.res.sroa.phi.sroa.speculated, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %choice.res.sroa.phi10.sroa.speculated, 1
  ret { i64, ptr } %ret.pack.fca.1.insert
}

define { i64, ptr } @"show::show_single"(ptr %0) #3 {
entry:
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.rd.check

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
  br label %a.rd.check

a.rd.check:                                       ; preds = %entry, %a.create
  %var.xs.0 = phi ptr [ %a.create1, %a.create ], [ %0, %entry ]
  %a.rd.len3 = load i64, ptr %var.xs.0, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len3
  br i1 %a.rd.lt, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.xs.0, i32 0, i32 1
  %a.rd.data4 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem = load i64, ptr %a.rd.data4, align 8
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 56)
  store i64 4011, ptr %err.alloc7, align 8
  %err.msg.gep9 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 1
  store ptr @str.66.struct, ptr %err.msg.gep9, align 8
  %err.file.gep10 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 2
  store ptr @str.65.struct, ptr %err.file.gep10, align 8
  %err.line.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 3
  store i64 153, ptr %err.line.gep11, align 8
  %err.col.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 4
  store i64 20, ptr %err.col.gep12, align 8
  %err.ctx.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep13, align 8
  %err.ctx1.gep15 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep13, i32 0, i32 1
  store i64 %a.rd.len3, ptr %err.ctx1.gep15, align 8
  %err.p2i16 = ptrtoint ptr %err.alloc7 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i16, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  br i1 %a.rd.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %pay.ptr = inttoptr i64 %a.rd.pay to ptr
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 16)
  store i64 3, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr @str.33.struct, ptr %pay.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ %enum.alloc, %choice.else ]
  %call.res = call { i64, ptr } @"show::show_expr"(ptr %choice.res)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  ret { i64, ptr } %call.res
}

define { i64, ptr } @"show::show_member_suffix"(ptr %0) #3 {
entry:
  %concat.str90 = alloca { i64, ptr }, align 8
  %concat.str57 = alloca { i64, ptr }, align 8
  %concat.str = alloca { i64, ptr }, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.id = load i64, ptr %fld.load, align 8
  %tag.match = icmp eq i64 %tag.id, 3
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %concat.tot.len27, %concat.tot.len50, %concat.tot.len83
  %choice.res93 = phi ptr [ %concat.str90, %concat.tot.len83 ], [ %concat.str, %concat.tot.len27 ], [ %concat.str57, %concat.tot.len50 ]
  %ret.pack.fca.0.load = load i64, ptr %choice.res93, align 8
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.pack.fca.0.load, 0
  %ret.pack.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %choice.res93, i32 0, i32 1
  %ret.pack.fca.1.load = load ptr, ptr %ret.pack.fca.1.gep, align 8
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %ret.pack.fca.1.load, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %eq.lhs.len2 = load i64, ptr %payload.ptr, align 8
  %eq.lhs.len3 = and i64 %eq.lhs.len2, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len3, 0
  br i1 %eq.len, label %str.eq.then, label %choice.else

choice.next:                                      ; preds = %entry
  %call.res64 = call { i64, ptr } @"show::show_expr"(ptr %fld.load)
  %call.res64.fca.0.extract = extractvalue { i64, ptr } %call.res64, 0
  %call.res64.fca.1.extract = extractvalue { i64, ptr } %call.res64, 1
  %concat.rhs71 = and i64 %call.res64.fca.0.extract, 281474976710655
  %concat.sum.len74 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 %concat.rhs71)
  %sum75 = extractvalue { i64, i1 } %concat.sum.len74, 0
  %ovf76 = extractvalue { i64, i1 } %concat.sum.len74, 1
  br i1 %ovf76, label %str_overflow_abort78, label %concat.sum.len77

str.eq.then:                                      ; preds = %choice.case
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %payload.ptr, i32 0, i32 1
  %eq.lhs.data5 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data5, ptr @str.49, i64 %eq.lhs.len3)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.then
  %fld.gep8 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load9 = load i1, ptr %fld.gep8, align 1
  %str.80.struct.str.81.struct = select i1 %fld.load9, ptr @str.80.struct, ptr @str.81.struct
  %fld.gep14 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load15 = load ptr, ptr %fld.gep14, align 8
  %concat.lhs16 = load i64, ptr %str.80.struct.str.81.struct, align 8
  %concat.lhs17 = and i64 %concat.lhs16, 281474976710655
  %concat.lhs18 = getelementptr inbounds { i64, ptr }, ptr %str.80.struct.str.81.struct, i32 0, i32 1
  %concat.lhs19 = load ptr, ptr %concat.lhs18, align 8
  %concat.rhs20 = load i64, ptr %fld.load15, align 8
  %concat.rhs21 = and i64 %concat.rhs20, 281474976710655
  %concat.rhs22 = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 1
  %concat.rhs23 = load ptr, ptr %concat.rhs22, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs17, i64 %concat.rhs21)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len24

choice.else:                                      ; preds = %choice.case, %str.eq.then
  %fld.load32 = load ptr, ptr %fld.gep, align 8
  %call.res = call { i64, ptr } @"show::show_expr"(ptr %fld.load32)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %concat.rhs38 = and i64 %call.res.fca.0.extract, 281474976710655
  %concat.sum.len41 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 %concat.rhs38)
  %sum42 = extractvalue { i64, i1 } %concat.sum.len41, 0
  %ovf43 = extractvalue { i64, i1 } %concat.sum.len41, 1
  br i1 %ovf43, label %str_overflow_abort45, label %concat.sum.len44

concat.sum.len24:                                 ; preds = %choice.then
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum25 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf26 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf26, label %str_overflow_abort28, label %concat.tot.len27

str_overflow_abort:                               ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len27:                                 ; preds = %concat.sum.len24
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum25)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs19, i64 %concat.lhs17, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs23, i64 %concat.rhs21, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  store i64 %sum, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_overflow_abort28:                             ; preds = %concat.sum.len24
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.sum.len44:                                 ; preds = %choice.else
  %concat.tot.len47 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum42, i64 1)
  %sum48 = extractvalue { i64, i1 } %concat.tot.len47, 0
  %ovf49 = extractvalue { i64, i1 } %concat.tot.len47, 1
  br i1 %ovf49, label %str_overflow_abort51, label %concat.tot.len50

str_overflow_abort45:                             ; preds = %choice.else
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len50:                                 ; preds = %concat.sum.len44
  %arena.cur53 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 %sum48)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf54, ptr align 1 @str.81, i64 1, i1 false)
  %concat.mid55 = getelementptr i8, ptr %concat.buf54, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid55, ptr align 1 %call.res.fca.1.extract, i64 %concat.rhs38, i1 false)
  %concat.nul56 = getelementptr i8, ptr %concat.buf54, i64 %sum42
  store i8 0, ptr %concat.nul56, align 1
  store i64 %sum42, ptr %concat.str57, align 8
  %str.build.data.gep59 = getelementptr inbounds { i64, ptr }, ptr %concat.str57, i32 0, i32 1
  store ptr %concat.buf54, ptr %str.build.data.gep59, align 8
  br label %choice.exit

str_overflow_abort51:                             ; preds = %concat.sum.len44
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.sum.len77:                                 ; preds = %choice.next
  %concat.tot.len80 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum75, i64 1)
  %sum81 = extractvalue { i64, i1 } %concat.tot.len80, 0
  %ovf82 = extractvalue { i64, i1 } %concat.tot.len80, 1
  br i1 %ovf82, label %str_overflow_abort84, label %concat.tot.len83

str_overflow_abort78:                             ; preds = %choice.next
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len83:                                 ; preds = %concat.sum.len77
  %arena.cur86 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf87 = call ptr @dva_arena_alloc(ptr %arena.cur86, i64 %sum81)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf87, ptr align 1 @str.81, i64 1, i1 false)
  %concat.mid88 = getelementptr i8, ptr %concat.buf87, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid88, ptr align 1 %call.res64.fca.1.extract, i64 %concat.rhs71, i1 false)
  %concat.nul89 = getelementptr i8, ptr %concat.buf87, i64 %sum75
  store i8 0, ptr %concat.nul89, align 1
  store i64 %sum75, ptr %concat.str90, align 8
  %str.build.data.gep92 = getelementptr inbounds { i64, ptr }, ptr %concat.str90, i32 0, i32 1
  store ptr %concat.buf87, ptr %str.build.data.gep92, align 8
  br label %choice.exit

str_overflow_abort84:                             ; preds = %concat.sum.len77
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"show::show_fields"(ptr %0) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 17)
  store i8 0, ptr %b.buf, align 1
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.create3, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.fs.0 = phi ptr [ %a.create3, %a.create ], [ %0, %entry ]
  %arr.cycle.len5 = load i64, ptr %var.fs.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.fs.0, i32 0, i32 1
  %arr.cycle.data6 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.177

loop.header.177:                                  ; preds = %b.grow_done121, %a.after
  %builder.new.salloc.sroa.24.0 = phi i64 [ 16, %a.after ], [ %builder.new.salloc.sroa.24.3, %b.grow_done121 ]
  %builder.new.salloc.sroa.12.0 = phi ptr [ %b.buf, %a.after ], [ %builder.new.salloc.sroa.12.3, %b.grow_done121 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 0, %a.after ], [ %sum111, %b.grow_done121 ]
  %loop.idx.177.0 = phi i64 [ 0, %a.after ], [ %loop.next, %b.grow_done121 ]
  %loop.cond = icmp slt i64 %loop.idx.177.0, %arr.cycle.len5
  br i1 %loop.cond, label %loop.body.177, label %loop.exit.177

loop.body.177:                                    ; preds = %loop.header.177
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data6, i64 %loop.idx.177.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %cmptmp = icmp sgt i64 %loop.idx.177.0, 0
  %str.86.struct.str.49.struct = select i1 %cmptmp, ptr @str.86.struct, ptr @str.49.struct
  %app.str.len8 = load i64, ptr %str.86.struct.str.49.struct, align 8
  %app.str.len9 = and i64 %app.str.len8, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.86.struct.str.49.struct, i32 0, i32 1
  %app.str.data10 = load ptr, ptr %app.str.data, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 %app.str.len9)
  %sum12 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf13 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf13, label %str_overflow_abort15, label %b.app.new.len14

loop.exit.177:                                    ; preds = %loop.header.177
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %builder.new.salloc.sroa.0.0, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %builder.new.salloc.sroa.12.0, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

b.app.new.len14:                                  ; preds = %loop.body.177
  %b.need.grow = icmp slt i64 %builder.new.salloc.sroa.24.0, %sum12
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort15:                             ; preds = %loop.body.177
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len14
  %b.cap2 = mul i64 %builder.new.salloc.sroa.24.0, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum12
  %b.new.cap = select i1 %b.cap.need, i64 %sum12, i64 %b.cap.grow
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum20 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf21 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.new.buf.len222

b.grow_done:                                      ; preds = %b.app.new.len14, %b.new.buf.len222
  %builder.new.salloc.sroa.24.1 = phi i64 [ %b.new.cap, %b.new.buf.len222 ], [ %builder.new.salloc.sroa.24.0, %b.app.new.len14 ]
  %builder.new.salloc.sroa.12.1 = phi ptr [ %b.new.buf2, %b.new.buf.len222 ], [ %builder.new.salloc.sroa.12.0, %b.app.new.len14 ]
  %b.app.dst = getelementptr i8, ptr %builder.new.salloc.sroa.12.1, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data10, i64 %app.str.len9, i1 false)
  %b.app.nul = getelementptr i8, ptr %builder.new.salloc.sroa.12.1, i64 %sum12
  store i8 0, ptr %b.app.nul, align 1
  %fld.load = load i1, ptr %slot.i2p, align 1
  br i1 %fld.load, label %choice.then30, label %choice.exit32

b.new.buf.len222:                                 ; preds = %b.grow2
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 %sum20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %builder.new.salloc.sroa.12.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul, align 1
  br label %b.grow_done

str_overflow_abort23:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then30:                                    ; preds = %b.grow_done
  %fld.gep34 = getelementptr inbounds { i1, ptr, ptr }, ptr %slot.i2p, i32 0, i32 1
  %fld.load35 = load ptr, ptr %fld.gep34, align 8
  %concat.lhs36 = load i64, ptr %fld.load35, align 8
  %concat.lhs37 = and i64 %concat.lhs36, 281474976710655
  %concat.lhs38 = getelementptr inbounds { i64, ptr }, ptr %fld.load35, i32 0, i32 1
  %concat.lhs39 = load ptr, ptr %concat.lhs38, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs37, i64 1)
  %sum42 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf43 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf43, label %str_overflow_abort45, label %concat.sum.len44

choice.exit32:                                    ; preds = %b.grow_done, %concat.tot.len49
  %choice.res54 = phi ptr [ %concat.str, %concat.tot.len49 ], [ @str.49.struct, %b.grow_done ]
  %app.str.len56 = load i64, ptr %choice.res54, align 8
  %app.str.len57 = and i64 %app.str.len56, 281474976710655
  %app.str.data58 = getelementptr inbounds { i64, ptr }, ptr %choice.res54, i32 0, i32 1
  %app.str.data59 = load ptr, ptr %app.str.data58, align 8
  %b.app.new.len62 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum12, i64 %app.str.len57)
  %sum63 = extractvalue { i64, i1 } %b.app.new.len62, 0
  %ovf64 = extractvalue { i64, i1 } %b.app.new.len62, 1
  br i1 %ovf64, label %str_overflow_abort66, label %b.app.new.len65

concat.sum.len44:                                 ; preds = %choice.then30
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum42, i64 1)
  %sum47 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf48 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf48, label %str_overflow_abort50, label %concat.tot.len49

str_overflow_abort45:                             ; preds = %choice.then30
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len49:                                 ; preds = %concat.sum.len44
  %arena.cur52 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 %sum47)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs39, i64 %concat.lhs37, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs37
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 @str.87, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum42
  store i8 0, ptr %concat.nul, align 1
  %arena.cur53 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 16)
  store i64 %sum42, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit32

str_overflow_abort50:                             ; preds = %concat.sum.len44
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len65:                                  ; preds = %choice.exit32
  %b.need.grow70 = icmp slt i64 %builder.new.salloc.sroa.24.1, %sum63
  br i1 %b.need.grow70, label %b.grow271, label %b.grow_done73

str_overflow_abort66:                             ; preds = %choice.exit32
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow271:                                        ; preds = %b.app.new.len65
  %b.cap274 = mul i64 %builder.new.salloc.sroa.24.1, 2
  %b.cap.small75 = icmp slt i64 %b.cap274, 16
  %b.cap.grow76 = select i1 %b.cap.small75, i64 16, i64 %b.cap274
  %b.cap.need77 = icmp slt i64 %b.cap.grow76, %sum63
  %b.new.cap78 = select i1 %b.cap.need77, i64 %sum63, i64 %b.cap.grow76
  %b.new.buf.len283 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap78, i64 1)
  %sum84 = extractvalue { i64, i1 } %b.new.buf.len283, 0
  %ovf85 = extractvalue { i64, i1 } %b.new.buf.len283, 1
  br i1 %ovf85, label %str_overflow_abort87, label %b.new.buf.len286

b.grow_done73:                                    ; preds = %b.app.new.len65, %b.new.buf.len286
  %builder.new.salloc.sroa.24.2 = phi i64 [ %b.new.cap78, %b.new.buf.len286 ], [ %builder.new.salloc.sroa.24.1, %b.app.new.len65 ]
  %builder.new.salloc.sroa.12.2 = phi ptr [ %b.new.buf290, %b.new.buf.len286 ], [ %builder.new.salloc.sroa.12.1, %b.app.new.len65 ]
  %b.app.dst96 = getelementptr i8, ptr %builder.new.salloc.sroa.12.2, i64 %sum12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst96, ptr align 1 %app.str.data59, i64 %app.str.len57, i1 false)
  %b.app.nul97 = getelementptr i8, ptr %builder.new.salloc.sroa.12.2, i64 %sum63
  store i8 0, ptr %b.app.nul97, align 1
  %fld.gep100 = getelementptr inbounds { i1, ptr, ptr }, ptr %slot.i2p, i32 0, i32 2
  %fld.load101 = load ptr, ptr %fld.gep100, align 8
  %call.res = call { i64, ptr } @"show::show_expr"(ptr %fld.load101)
  %arena.cur102 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %app.str.len104 = load i64, ptr %ret.ub.alloc, align 8
  %app.str.len105 = and i64 %app.str.len104, 281474976710655
  %app.str.data106 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data107 = load ptr, ptr %app.str.data106, align 8
  %b.app.new.len110 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum63, i64 %app.str.len105)
  %sum111 = extractvalue { i64, i1 } %b.app.new.len110, 0
  %ovf112 = extractvalue { i64, i1 } %b.app.new.len110, 1
  br i1 %ovf112, label %str_overflow_abort114, label %b.app.new.len113

b.new.buf.len286:                                 ; preds = %b.grow271
  %arena.cur89 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf290 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 %sum84)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf290, ptr align 1 %builder.new.salloc.sroa.12.1, i64 %sum12, i1 false)
  %b.grow2.nul91 = getelementptr i8, ptr %b.new.buf290, i64 %sum12
  store i8 0, ptr %b.grow2.nul91, align 1
  br label %b.grow_done73

str_overflow_abort87:                             ; preds = %b.grow271
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len113:                                 ; preds = %b.grow_done73
  %b.need.grow118 = icmp slt i64 %builder.new.salloc.sroa.24.2, %sum111
  br i1 %b.need.grow118, label %b.grow2119, label %b.grow_done121

str_overflow_abort114:                            ; preds = %b.grow_done73
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2119:                                       ; preds = %b.app.new.len113
  %b.cap2122 = mul i64 %builder.new.salloc.sroa.24.2, 2
  %b.cap.small123 = icmp slt i64 %b.cap2122, 16
  %b.cap.grow124 = select i1 %b.cap.small123, i64 16, i64 %b.cap2122
  %b.cap.need125 = icmp slt i64 %b.cap.grow124, %sum111
  %b.new.cap126 = select i1 %b.cap.need125, i64 %sum111, i64 %b.cap.grow124
  %b.new.buf.len2131 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap126, i64 1)
  %sum132 = extractvalue { i64, i1 } %b.new.buf.len2131, 0
  %ovf133 = extractvalue { i64, i1 } %b.new.buf.len2131, 1
  br i1 %ovf133, label %str_overflow_abort135, label %b.new.buf.len2134

b.grow_done121:                                   ; preds = %b.app.new.len113, %b.new.buf.len2134
  %builder.new.salloc.sroa.24.3 = phi i64 [ %b.new.cap126, %b.new.buf.len2134 ], [ %builder.new.salloc.sroa.24.2, %b.app.new.len113 ]
  %builder.new.salloc.sroa.12.3 = phi ptr [ %b.new.buf2138, %b.new.buf.len2134 ], [ %builder.new.salloc.sroa.12.2, %b.app.new.len113 ]
  %b.app.dst144 = getelementptr i8, ptr %builder.new.salloc.sroa.12.3, i64 %sum63
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst144, ptr align 1 %app.str.data107, i64 %app.str.len105, i1 false)
  %b.app.nul145 = getelementptr i8, ptr %builder.new.salloc.sroa.12.3, i64 %sum111
  store i8 0, ptr %b.app.nul145, align 1
  %loop.next = add i64 %loop.idx.177.0, 1
  br label %loop.header.177

b.new.buf.len2134:                                ; preds = %b.grow2119
  %arena.cur137 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2138 = call ptr @dva_arena_alloc(ptr %arena.cur137, i64 %sum132)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2138, ptr align 1 %builder.new.salloc.sroa.12.2, i64 %sum63, i1 false)
  %b.grow2.nul139 = getelementptr i8, ptr %b.new.buf2138, i64 %sum63
  store i8 0, ptr %b.grow2.nul139, align 1
  br label %b.grow_done121

str_overflow_abort135:                            ; preds = %b.grow2119
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"show::show_map_pairs"(ptr %0) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 17)
  store i8 0, ptr %b.buf, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.buf, ptr align 1 @str.88, i64 4, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.buf, i64 4
  store i8 0, ptr %b.app.nul, align 1
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur20 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create21 = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 24)
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 128)
  store i64 0, ptr %a.create21, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create21, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create21, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.ps.0 = phi ptr [ %a.create21, %a.create ], [ %0, %entry ]
  %arr.cycle.len23 = load i64, ptr %var.ps.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.ps.0, i32 0, i32 1
  %arr.cycle.data24 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.179

loop.header.179:                                  ; preds = %b.grow_done57, %a.after
  %builder.new.salloc.sroa.24.1 = phi i64 [ 16, %a.after ], [ %builder.new.salloc.sroa.24.2, %b.grow_done57 ]
  %builder.new.salloc.sroa.12.1 = phi ptr [ %b.buf, %a.after ], [ %builder.new.salloc.sroa.12.2, %b.grow_done57 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 4, %a.after ], [ %sum47, %b.grow_done57 ]
  %loop.idx.179.0 = phi i64 [ 0, %a.after ], [ %loop.next, %b.grow_done57 ]
  %loop.cond = icmp slt i64 %loop.idx.179.0, %arr.cycle.len23
  br i1 %loop.cond, label %loop.body.179, label %loop.exit.179

loop.body.179:                                    ; preds = %loop.header.179
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data24, i64 %loop.idx.179.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.load = load ptr, ptr %slot.i2p, align 8
  %call.res = call { i64, ptr } @"show::show_expr"(ptr %fld.load)
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %b.str.len28 = load i64, ptr %ret.ub.alloc, align 8
  %b.str.len29 = and i64 %b.str.len28, 281474976710655
  %b.add.len32 = add i64 %b.str.len29, 2
  %fld.gep34 = getelementptr inbounds { ptr, ptr }, ptr %slot.i2p, i32 0, i32 1
  %fld.load35 = load ptr, ptr %fld.gep34, align 8
  %call.res36 = call { i64, ptr } @"show::show_expr"(ptr %fld.load35)
  %arena.cur37 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc38 = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 16)
  store { i64, ptr } %call.res36, ptr %ret.ub.alloc38, align 8
  %b.str.len40 = load i64, ptr %ret.ub.alloc38, align 8
  %b.str.len41 = and i64 %b.str.len40, 281474976710655
  %b.add.len42 = add i64 %b.add.len32, %b.str.len41
  %b.add.len45 = add i64 %b.add.len42, 1
  %b.rec.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 %b.add.len45)
  %sum47 = extractvalue { i64, i1 } %b.rec.new.len, 0
  %ovf48 = extractvalue { i64, i1 } %b.rec.new.len, 1
  br i1 %ovf48, label %str_overflow_abort50, label %b.rec.new.len49

loop.exit.179:                                    ; preds = %loop.header.179
  %b.app.new.len97 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 1)
  %sum98 = extractvalue { i64, i1 } %b.app.new.len97, 0
  %ovf99 = extractvalue { i64, i1 } %b.app.new.len97, 1
  br i1 %ovf99, label %str_overflow_abort101, label %b.app.new.len100

b.rec.new.len49:                                  ; preds = %loop.body.179
  %b.need.grow54 = icmp slt i64 %builder.new.salloc.sroa.24.1, %sum47
  br i1 %b.need.grow54, label %b.grow255, label %b.grow_done57

str_overflow_abort50:                             ; preds = %loop.body.179
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow255:                                        ; preds = %b.rec.new.len49
  %b.cap258 = mul i64 %builder.new.salloc.sroa.24.1, 2
  %b.cap.small59 = icmp slt i64 %b.cap258, 16
  %b.cap.grow60 = select i1 %b.cap.small59, i64 16, i64 %b.cap258
  %b.cap.need61 = icmp slt i64 %b.cap.grow60, %sum47
  %b.new.cap62 = select i1 %b.cap.need61, i64 %sum47, i64 %b.cap.grow60
  %b.new.buf.len267 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap62, i64 1)
  %sum68 = extractvalue { i64, i1 } %b.new.buf.len267, 0
  %ovf69 = extractvalue { i64, i1 } %b.new.buf.len267, 1
  br i1 %ovf69, label %str_overflow_abort71, label %b.new.buf.len270

b.grow_done57:                                    ; preds = %b.rec.new.len49, %b.new.buf.len270
  %builder.new.salloc.sroa.24.2 = phi i64 [ %b.new.cap62, %b.new.buf.len270 ], [ %builder.new.salloc.sroa.24.1, %b.rec.new.len49 ]
  %builder.new.salloc.sroa.12.2 = phi ptr [ %b.new.buf274, %b.new.buf.len270 ], [ %builder.new.salloc.sroa.12.1, %b.rec.new.len49 ]
  %b.rec.dst = getelementptr i8, ptr %builder.new.salloc.sroa.12.2, i64 %builder.new.salloc.sroa.0.0
  %b.str.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %b.str.data79 = load ptr, ptr %b.str.data, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst, ptr align 1 %b.str.data79, i64 %b.str.len29, i1 false)
  %b.rec.off = add i64 %builder.new.salloc.sroa.0.0, %b.str.len29
  %b.rec.dst80 = getelementptr i8, ptr %builder.new.salloc.sroa.12.2, i64 %b.rec.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst80, ptr align 1 @str.89, i64 2, i1 false)
  %b.rec.off82 = add i64 %b.rec.off, 2
  %b.rec.dst83 = getelementptr i8, ptr %builder.new.salloc.sroa.12.2, i64 %b.rec.off82
  %b.str.data84 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc38, i32 0, i32 1
  %b.str.data85 = load ptr, ptr %b.str.data84, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst83, ptr align 1 %b.str.data85, i64 %b.str.len41, i1 false)
  %b.rec.off86 = add i64 %b.rec.off82, %b.str.len41
  %b.rec.dst87 = getelementptr i8, ptr %builder.new.salloc.sroa.12.2, i64 %b.rec.off86
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst87, ptr align 1 @str.34, i64 1, i1 false)
  %b.rec.nul = getelementptr i8, ptr %builder.new.salloc.sroa.12.2, i64 %sum47
  store i8 0, ptr %b.rec.nul, align 1
  %loop.next = add i64 %loop.idx.179.0, 1
  br label %loop.header.179

b.new.buf.len270:                                 ; preds = %b.grow255
  %arena.cur73 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf274 = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 %sum68)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf274, ptr align 1 %builder.new.salloc.sroa.12.1, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul75 = getelementptr i8, ptr %b.new.buf274, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul75, align 1
  br label %b.grow_done57

str_overflow_abort71:                             ; preds = %b.grow255
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len100:                                 ; preds = %loop.exit.179
  %b.need.grow105 = icmp slt i64 %builder.new.salloc.sroa.24.1, %sum98
  br i1 %b.need.grow105, label %b.grow2106, label %b.grow_done108

str_overflow_abort101:                            ; preds = %loop.exit.179
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2106:                                       ; preds = %b.app.new.len100
  %b.cap2109 = mul i64 %builder.new.salloc.sroa.24.1, 2
  %b.cap.small110 = icmp slt i64 %b.cap2109, 16
  %b.cap.grow111 = select i1 %b.cap.small110, i64 16, i64 %b.cap2109
  %b.cap.need112 = icmp slt i64 %b.cap.grow111, %sum98
  %b.new.cap113 = select i1 %b.cap.need112, i64 %sum98, i64 %b.cap.grow111
  %b.new.buf.len2118 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap113, i64 1)
  %sum119 = extractvalue { i64, i1 } %b.new.buf.len2118, 0
  %ovf120 = extractvalue { i64, i1 } %b.new.buf.len2118, 1
  br i1 %ovf120, label %str_overflow_abort122, label %b.new.buf.len2121

b.grow_done108:                                   ; preds = %b.app.new.len100, %b.new.buf.len2121
  %builder.new.salloc.sroa.12.3 = phi ptr [ %b.new.buf2125, %b.new.buf.len2121 ], [ %builder.new.salloc.sroa.12.1, %b.app.new.len100 ]
  %b.app.dst131 = getelementptr i8, ptr %builder.new.salloc.sroa.12.3, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst131, ptr align 1 @str.1, i64 1, i1 false)
  %b.app.nul132 = getelementptr i8, ptr %builder.new.salloc.sroa.12.3, i64 %sum98
  store i8 0, ptr %b.app.nul132, align 1
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %sum98, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %builder.new.salloc.sroa.12.3, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

b.new.buf.len2121:                                ; preds = %b.grow2106
  %arena.cur124 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2125 = call ptr @dva_arena_alloc(ptr %arena.cur124, i64 %sum119)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2125, ptr align 1 %builder.new.salloc.sroa.12.1, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul126 = getelementptr i8, ptr %b.new.buf2125, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul126, align 1
  br label %b.grow_done108

str_overflow_abort122:                            ; preds = %b.grow2106
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"show::show_vt"(ptr %0) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  switch i64 %tag.id, label %choice.next22 [
    i64 0, label %choice.exit
    i64 1, label %choice.case1
    i64 13, label %choice.case6
    i64 11, label %choice.case11
    i64 14, label %choice.case16
    i64 15, label %choice.case21
  ]

choice.exit:                                      ; preds = %entry, %choice.next22, %choice.case21, %choice.case16, %choice.case11, %choice.case6, %choice.case1
  %choice.res = phi ptr [ @str.92.struct, %choice.case1 ], [ @str.93.struct, %choice.case6 ], [ @str.94.struct, %choice.case11 ], [ @str.95.struct, %choice.case16 ], [ @str.96.struct, %choice.case21 ], [ @str.97.struct, %choice.next22 ], [ @str.33.struct, %entry ]
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

choice.next22:                                    ; preds = %entry
  br label %choice.exit
}

define { i64, ptr } @"show::show_indent"(i64 %0) #3 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %cmptmp = icmp eq i64 %0, 0
  br i1 %cmptmp, label %choice.exit, label %choice.else

choice.else:                                      ; preds = %entry
  %subtmp = sub i64 %0, 1
  %call.res = call { i64, ptr } @"show::show_indent"(i64 %subtmp)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %concat.rhs5 = and i64 %call.res.fca.0.extract, 281474976710655
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 2, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len8

choice.exit:                                      ; preds = %entry, %concat.tot.len11
  %choice.res = phi ptr [ %concat.str, %concat.tot.len11 ], [ @str.49.struct, %entry ]
  %ret.pack.fca.0.load = load i64, ptr %choice.res, align 8
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.pack.fca.0.load, 0
  %ret.pack.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %ret.pack.fca.1.load = load ptr, ptr %ret.pack.fca.1.gep, align 8
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %ret.pack.fca.1.load, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

concat.sum.len8:                                  ; preds = %choice.else
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum9 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf10 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf10, label %str_overflow_abort12, label %concat.tot.len11

str_overflow_abort:                               ; preds = %choice.else
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len11:                                 ; preds = %concat.sum.len8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum9)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.110, i64 2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %call.res.fca.1.extract, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  store i64 %sum, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_overflow_abort12:                             ; preds = %concat.sum.len8
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"show::show_names"(ptr %0) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 17)
  store i8 0, ptr %b.buf, align 1
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.create3, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.ns.0 = phi ptr [ %a.create3, %a.create ], [ %0, %entry ]
  %arr.cycle.len5 = load i64, ptr %var.ns.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.ns.0, i32 0, i32 1
  %arr.cycle.data6 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.180

loop.header.180:                                  ; preds = %b.grow_done47, %a.after
  %builder.new.salloc.sroa.18.0 = phi i64 [ 16, %a.after ], [ %builder.new.salloc.sroa.18.2, %b.grow_done47 ]
  %builder.new.salloc.sroa.9.0 = phi ptr [ %b.buf, %a.after ], [ %builder.new.salloc.sroa.9.2, %b.grow_done47 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 0, %a.after ], [ %sum37, %b.grow_done47 ]
  %loop.idx.180.0 = phi i64 [ 0, %a.after ], [ %loop.next, %b.grow_done47 ]
  %loop.cond = icmp slt i64 %loop.idx.180.0, %arr.cycle.len5
  br i1 %loop.cond, label %loop.body.180, label %loop.exit.180

loop.body.180:                                    ; preds = %loop.header.180
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data6, i64 %loop.idx.180.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %cmptmp = icmp sgt i64 %loop.idx.180.0, 0
  %str.86.struct.str.49.struct = select i1 %cmptmp, ptr @str.86.struct, ptr @str.49.struct
  %app.str.len8 = load i64, ptr %str.86.struct.str.49.struct, align 8
  %app.str.len9 = and i64 %app.str.len8, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.86.struct.str.49.struct, i32 0, i32 1
  %app.str.data10 = load ptr, ptr %app.str.data, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 %app.str.len9)
  %sum12 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf13 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf13, label %str_overflow_abort15, label %b.app.new.len14

loop.exit.180:                                    ; preds = %loop.header.180
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %builder.new.salloc.sroa.0.0, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %builder.new.salloc.sroa.9.0, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

b.app.new.len14:                                  ; preds = %loop.body.180
  %b.need.grow = icmp slt i64 %builder.new.salloc.sroa.18.0, %sum12
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort15:                             ; preds = %loop.body.180
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len14
  %b.cap2 = mul i64 %builder.new.salloc.sroa.18.0, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum12
  %b.new.cap = select i1 %b.cap.need, i64 %sum12, i64 %b.cap.grow
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum20 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf21 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.new.buf.len222

b.grow_done:                                      ; preds = %b.app.new.len14, %b.new.buf.len222
  %builder.new.salloc.sroa.18.1 = phi i64 [ %b.new.cap, %b.new.buf.len222 ], [ %builder.new.salloc.sroa.18.0, %b.app.new.len14 ]
  %builder.new.salloc.sroa.9.1 = phi ptr [ %b.new.buf2, %b.new.buf.len222 ], [ %builder.new.salloc.sroa.9.0, %b.app.new.len14 ]
  %b.app.dst = getelementptr i8, ptr %builder.new.salloc.sroa.9.1, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data10, i64 %app.str.len9, i1 false)
  %b.app.nul = getelementptr i8, ptr %builder.new.salloc.sroa.9.1, i64 %sum12
  store i8 0, ptr %b.app.nul, align 1
  %app.str.len30 = load i64, ptr %slot.i2p, align 8
  %app.str.len31 = and i64 %app.str.len30, 281474976710655
  %app.str.data32 = getelementptr inbounds { i64, ptr }, ptr %slot.i2p, i32 0, i32 1
  %app.str.data33 = load ptr, ptr %app.str.data32, align 8
  %b.app.new.len36 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum12, i64 %app.str.len31)
  %sum37 = extractvalue { i64, i1 } %b.app.new.len36, 0
  %ovf38 = extractvalue { i64, i1 } %b.app.new.len36, 1
  br i1 %ovf38, label %str_overflow_abort40, label %b.app.new.len39

b.new.buf.len222:                                 ; preds = %b.grow2
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 %sum20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %builder.new.salloc.sroa.9.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul, align 1
  br label %b.grow_done

str_overflow_abort23:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len39:                                  ; preds = %b.grow_done
  %b.need.grow44 = icmp slt i64 %builder.new.salloc.sroa.18.1, %sum37
  br i1 %b.need.grow44, label %b.grow245, label %b.grow_done47

str_overflow_abort40:                             ; preds = %b.grow_done
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow245:                                        ; preds = %b.app.new.len39
  %b.cap248 = mul i64 %builder.new.salloc.sroa.18.1, 2
  %b.cap.small49 = icmp slt i64 %b.cap248, 16
  %b.cap.grow50 = select i1 %b.cap.small49, i64 16, i64 %b.cap248
  %b.cap.need51 = icmp slt i64 %b.cap.grow50, %sum37
  %b.new.cap52 = select i1 %b.cap.need51, i64 %sum37, i64 %b.cap.grow50
  %b.new.buf.len257 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap52, i64 1)
  %sum58 = extractvalue { i64, i1 } %b.new.buf.len257, 0
  %ovf59 = extractvalue { i64, i1 } %b.new.buf.len257, 1
  br i1 %ovf59, label %str_overflow_abort61, label %b.new.buf.len260

b.grow_done47:                                    ; preds = %b.app.new.len39, %b.new.buf.len260
  %builder.new.salloc.sroa.18.2 = phi i64 [ %b.new.cap52, %b.new.buf.len260 ], [ %builder.new.salloc.sroa.18.1, %b.app.new.len39 ]
  %builder.new.salloc.sroa.9.2 = phi ptr [ %b.new.buf264, %b.new.buf.len260 ], [ %builder.new.salloc.sroa.9.1, %b.app.new.len39 ]
  %b.app.dst70 = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %sum12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst70, ptr align 1 %app.str.data33, i64 %app.str.len31, i1 false)
  %b.app.nul71 = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %sum37
  store i8 0, ptr %b.app.nul71, align 1
  %loop.next = add i64 %loop.idx.180.0, 1
  br label %loop.header.180

b.new.buf.len260:                                 ; preds = %b.grow245
  %arena.cur63 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf264 = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 %sum58)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf264, ptr align 1 %builder.new.salloc.sroa.9.1, i64 %sum12, i1 false)
  %b.grow2.nul65 = getelementptr i8, ptr %b.new.buf264, i64 %sum12
  store i8 0, ptr %b.grow2.nul65, align 1
  br label %b.grow_done47

str_overflow_abort61:                             ; preds = %b.grow245
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"show::show_tree_exprs"(ptr %0, i64 %1) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 17)
  store i8 0, ptr %b.buf, align 1
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.create3, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.xs.0 = phi ptr [ %a.create3, %a.create ], [ %0, %entry ]
  %arr.cycle.len5 = load i64, ptr %var.xs.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.xs.0, i32 0, i32 1
  %arr.cycle.data6 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.181

loop.header.181:                                  ; preds = %b.grow_done49, %a.after
  %builder.new.salloc.sroa.18.0 = phi i64 [ 16, %a.after ], [ %builder.new.salloc.sroa.18.2, %b.grow_done49 ]
  %builder.new.salloc.sroa.9.0 = phi ptr [ %b.buf, %a.after ], [ %builder.new.salloc.sroa.9.2, %b.grow_done49 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 0, %a.after ], [ %sum39, %b.grow_done49 ]
  %loop.idx.181.0 = phi i64 [ 0, %a.after ], [ %loop.next, %b.grow_done49 ]
  %loop.cond = icmp slt i64 %loop.idx.181.0, %arr.cycle.len5
  br i1 %loop.cond, label %loop.body.181, label %loop.exit.181

loop.body.181:                                    ; preds = %loop.header.181
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data6, i64 %loop.idx.181.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %cmptmp = icmp sgt i64 %loop.idx.181.0, 0
  %str.111.struct.str.49.struct = select i1 %cmptmp, ptr @str.111.struct, ptr @str.49.struct
  %app.str.len8 = load i64, ptr %str.111.struct.str.49.struct, align 8
  %app.str.len9 = and i64 %app.str.len8, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.111.struct.str.49.struct, i32 0, i32 1
  %app.str.data10 = load ptr, ptr %app.str.data, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 %app.str.len9)
  %sum12 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf13 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf13, label %str_overflow_abort15, label %b.app.new.len14

loop.exit.181:                                    ; preds = %loop.header.181
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %builder.new.salloc.sroa.0.0, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %builder.new.salloc.sroa.9.0, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

b.app.new.len14:                                  ; preds = %loop.body.181
  %b.need.grow = icmp slt i64 %builder.new.salloc.sroa.18.0, %sum12
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort15:                             ; preds = %loop.body.181
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len14
  %b.cap2 = mul i64 %builder.new.salloc.sroa.18.0, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum12
  %b.new.cap = select i1 %b.cap.need, i64 %sum12, i64 %b.cap.grow
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum20 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf21 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.new.buf.len222

b.grow_done:                                      ; preds = %b.app.new.len14, %b.new.buf.len222
  %builder.new.salloc.sroa.18.1 = phi i64 [ %b.new.cap, %b.new.buf.len222 ], [ %builder.new.salloc.sroa.18.0, %b.app.new.len14 ]
  %builder.new.salloc.sroa.9.1 = phi ptr [ %b.new.buf2, %b.new.buf.len222 ], [ %builder.new.salloc.sroa.9.0, %b.app.new.len14 ]
  %b.app.dst = getelementptr i8, ptr %builder.new.salloc.sroa.9.1, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data10, i64 %app.str.len9, i1 false)
  %b.app.nul = getelementptr i8, ptr %builder.new.salloc.sroa.9.1, i64 %sum12
  store i8 0, ptr %b.app.nul, align 1
  %call.res = call { i64, ptr } @"show::show_tree"(ptr %slot.i2p, i64 %1)
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %app.str.len32 = load i64, ptr %ret.ub.alloc, align 8
  %app.str.len33 = and i64 %app.str.len32, 281474976710655
  %app.str.data34 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data35 = load ptr, ptr %app.str.data34, align 8
  %b.app.new.len38 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum12, i64 %app.str.len33)
  %sum39 = extractvalue { i64, i1 } %b.app.new.len38, 0
  %ovf40 = extractvalue { i64, i1 } %b.app.new.len38, 1
  br i1 %ovf40, label %str_overflow_abort42, label %b.app.new.len41

b.new.buf.len222:                                 ; preds = %b.grow2
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 %sum20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %builder.new.salloc.sroa.9.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul, align 1
  br label %b.grow_done

str_overflow_abort23:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len41:                                  ; preds = %b.grow_done
  %b.need.grow46 = icmp slt i64 %builder.new.salloc.sroa.18.1, %sum39
  br i1 %b.need.grow46, label %b.grow247, label %b.grow_done49

str_overflow_abort42:                             ; preds = %b.grow_done
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow247:                                        ; preds = %b.app.new.len41
  %b.cap250 = mul i64 %builder.new.salloc.sroa.18.1, 2
  %b.cap.small51 = icmp slt i64 %b.cap250, 16
  %b.cap.grow52 = select i1 %b.cap.small51, i64 16, i64 %b.cap250
  %b.cap.need53 = icmp slt i64 %b.cap.grow52, %sum39
  %b.new.cap54 = select i1 %b.cap.need53, i64 %sum39, i64 %b.cap.grow52
  %b.new.buf.len259 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap54, i64 1)
  %sum60 = extractvalue { i64, i1 } %b.new.buf.len259, 0
  %ovf61 = extractvalue { i64, i1 } %b.new.buf.len259, 1
  br i1 %ovf61, label %str_overflow_abort63, label %b.new.buf.len262

b.grow_done49:                                    ; preds = %b.app.new.len41, %b.new.buf.len262
  %builder.new.salloc.sroa.18.2 = phi i64 [ %b.new.cap54, %b.new.buf.len262 ], [ %builder.new.salloc.sroa.18.1, %b.app.new.len41 ]
  %builder.new.salloc.sroa.9.2 = phi ptr [ %b.new.buf266, %b.new.buf.len262 ], [ %builder.new.salloc.sroa.9.1, %b.app.new.len41 ]
  %b.app.dst72 = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %sum12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst72, ptr align 1 %app.str.data35, i64 %app.str.len33, i1 false)
  %b.app.nul73 = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %sum39
  store i8 0, ptr %b.app.nul73, align 1
  %loop.next = add i64 %loop.idx.181.0, 1
  br label %loop.header.181

b.new.buf.len262:                                 ; preds = %b.grow247
  %arena.cur65 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf266 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 %sum60)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf266, ptr align 1 %builder.new.salloc.sroa.9.1, i64 %sum12, i1 false)
  %b.grow2.nul67 = getelementptr i8, ptr %b.new.buf266, i64 %sum12
  store i8 0, ptr %b.grow2.nul67, align 1
  br label %b.grow_done49

str_overflow_abort63:                             ; preds = %b.grow247
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"show::show_tree"(ptr %0, i64 %1) #3 {
entry:
  %concat.str971 = alloca { i64, ptr }, align 8
  %concat.str942 = alloca { i64, ptr }, align 8
  %concat.str810 = alloca { i64, ptr }, align 8
  %concat.str751 = alloca { i64, ptr }, align 8
  %concat.str680 = alloca { i64, ptr }, align 8
  %ret.ub.salloc620 = alloca { i64, ptr }, align 8
  %concat.str594 = alloca { i64, ptr }, align 8
  %concat.str535 = alloca { i64, ptr }, align 8
  %concat.str474 = alloca { i64, ptr }, align 8
  %cat.ibuf = alloca [24 x i8], align 1
  %concat.str420 = alloca { i64, ptr }, align 8
  %concat.str361 = alloca { i64, ptr }, align 8
  %concat.str277 = alloca { i64, ptr }, align 8
  %concat.str164 = alloca { i64, ptr }, align 8
  %concat.str = alloca { i64, ptr }, align 8
  %call.res = call { i64, ptr } @"show::show_indent"(i64 %1)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %tag.id = load i64, ptr %0, align 8
  switch i64 %tag.id, label %choice.next814 [
    i64 6, label %choice.case
    i64 14, label %choice.case83
    i64 5, label %choice.case167
    i64 24, label %choice.case280
    i64 3, label %choice.case364
    i64 0, label %choice.case423
    i64 1, label %choice.case477
    i64 2, label %choice.case538
    i64 9, label %choice.case597
    i64 8, label %choice.case755
    i64 7, label %choice.case813
  ]

choice.exit:                                      ; preds = %concat.tot.len667, %concat.tot.len736, %concat.tot.len965, %concat.tot.len919, %concat.tot.len799, %concat.tot.len581, %concat.tot.len522, %concat.tot.len461, %concat.tot.len407, %concat.tot.len346, %concat.tot.len258, %concat.tot.len149, %concat.tot.len69
  %choice.res974 = phi ptr [ %concat.str, %concat.tot.len69 ], [ %concat.str164, %concat.tot.len149 ], [ %concat.str277, %concat.tot.len258 ], [ %concat.str361, %concat.tot.len346 ], [ %concat.str420, %concat.tot.len407 ], [ %concat.str474, %concat.tot.len461 ], [ %concat.str535, %concat.tot.len522 ], [ %concat.str594, %concat.tot.len581 ], [ %concat.str810, %concat.tot.len799 ], [ %concat.str942, %concat.tot.len919 ], [ %concat.str971, %concat.tot.len965 ], [ %concat.str680, %concat.tot.len667 ], [ %concat.str751, %concat.tot.len736 ]
  %ret.pack.fca.0.load = load i64, ptr %choice.res974, align 8
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.pack.fca.0.load, 0
  %ret.pack.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %choice.res974, i32 0, i32 1
  %ret.pack.fca.1.load = load ptr, ptr %ret.pack.fca.1.gep, align 8
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %ret.pack.fca.1.load, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %payload.ptr, i32 0, i32 2
  %fld.load = load i1, ptr %fld.gep, align 1
  %str.112.struct.str.87.struct = select i1 %fld.load, ptr @str.112.struct, ptr @str.87.struct
  %cat.seg6 = and i64 %call.res.fca.0.extract, 281474976710655
  %fld.load11 = load ptr, ptr %payload.ptr, align 8
  %cat.seg13 = load i64, ptr %fld.load11, align 8
  %cat.seg14 = and i64 %cat.seg13, 281474976710655
  %cat.seg15 = getelementptr inbounds { i64, ptr }, ptr %fld.load11, i32 0, i32 1
  %cat.seg16 = load ptr, ptr %cat.seg15, align 8
  %cat.seg20 = load i64, ptr %str.112.struct.str.87.struct, align 8
  %cat.seg21 = and i64 %cat.seg20, 281474976710655
  %cat.seg22 = getelementptr inbounds { i64, ptr }, ptr %str.112.struct.str.87.struct, i32 0, i32 1
  %cat.seg23 = load ptr, ptr %cat.seg22, align 8
  %fld.gep26 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %payload.ptr, i32 0, i32 5
  %fld.load27 = load ptr, ptr %fld.gep26, align 8
  %addtmp = add i64 %1, 1
  %call.res29 = call { i64, ptr } @"show::show_tree"(ptr %fld.load27, i64 %addtmp)
  %call.res29.fca.0.extract = extractvalue { i64, ptr } %call.res29, 0
  %call.res29.fca.1.extract = extractvalue { i64, ptr } %call.res29, 1
  %cat.seg33 = and i64 %call.res29.fca.0.extract, 281474976710655
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg6, i64 7)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len36

cat.sum.len36:                                    ; preds = %choice.case
  %cat.sum.len37 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg14)
  %sum38 = extractvalue { i64, i1 } %cat.sum.len37, 0
  %ovf39 = extractvalue { i64, i1 } %cat.sum.len37, 1
  br i1 %ovf39, label %str_overflow_abort41, label %cat.sum.len40

str_overflow_abort:                               ; preds = %choice.case
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len40:                                    ; preds = %cat.sum.len36
  %cat.sum.len43 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum38, i64 1)
  %sum44 = extractvalue { i64, i1 } %cat.sum.len43, 0
  %ovf45 = extractvalue { i64, i1 } %cat.sum.len43, 1
  br i1 %ovf45, label %str_overflow_abort47, label %cat.sum.len46

str_overflow_abort41:                             ; preds = %cat.sum.len36
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len46:                                    ; preds = %cat.sum.len40
  %cat.sum.len49 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum44, i64 %cat.seg21)
  %sum50 = extractvalue { i64, i1 } %cat.sum.len49, 0
  %ovf51 = extractvalue { i64, i1 } %cat.sum.len49, 1
  br i1 %ovf51, label %str_overflow_abort53, label %cat.sum.len52

str_overflow_abort47:                             ; preds = %cat.sum.len40
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len52:                                    ; preds = %cat.sum.len46
  %cat.sum.len55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum50, i64 2)
  %sum56 = extractvalue { i64, i1 } %cat.sum.len55, 0
  %ovf57 = extractvalue { i64, i1 } %cat.sum.len55, 1
  br i1 %ovf57, label %str_overflow_abort59, label %cat.sum.len58

str_overflow_abort53:                             ; preds = %cat.sum.len46
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len58:                                    ; preds = %cat.sum.len52
  %cat.sum.len61 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum56, i64 %cat.seg33)
  %sum62 = extractvalue { i64, i1 } %cat.sum.len61, 0
  %ovf63 = extractvalue { i64, i1 } %cat.sum.len61, 1
  br i1 %ovf63, label %str_overflow_abort65, label %cat.sum.len64

str_overflow_abort59:                             ; preds = %cat.sum.len52
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len64:                                    ; preds = %cat.sum.len58
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum62, i64 1)
  %sum67 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf68 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf68, label %str_overflow_abort70, label %concat.tot.len69

str_overflow_abort65:                             ; preds = %cat.sum.len58
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len69:                                 ; preds = %cat.sum.len64
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum67)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg6, i1 false)
  %cat.dst72 = getelementptr i8, ptr %concat.buf, i64 %cat.seg6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst72, ptr align 1 @str.58, i64 7, i1 false)
  %cat.off73 = add i64 %cat.seg6, 7
  %cat.dst74 = getelementptr i8, ptr %concat.buf, i64 %cat.off73
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst74, ptr align 1 %cat.seg16, i64 %cat.seg14, i1 false)
  %cat.off75 = add i64 %cat.off73, %cat.seg14
  %cat.dst76 = getelementptr i8, ptr %concat.buf, i64 %cat.off75
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst76, ptr align 1 @str.34, i64 1, i1 false)
  %cat.off77 = add i64 %cat.off75, 1
  %cat.dst78 = getelementptr i8, ptr %concat.buf, i64 %cat.off77
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst78, ptr align 1 %cat.seg23, i64 %cat.seg21, i1 false)
  %cat.off79 = add i64 %cat.off77, %cat.seg21
  %cat.dst80 = getelementptr i8, ptr %concat.buf, i64 %cat.off79
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst80, ptr align 1 @str.113, i64 2, i1 false)
  %cat.off81 = add i64 %cat.off79, 2
  %cat.dst82 = getelementptr i8, ptr %concat.buf, i64 %cat.off81
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst82, ptr align 1 %call.res29.fca.1.extract, i64 %cat.seg33, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum62
  store i8 0, ptr %concat.nul, align 1
  store i64 %sum62, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_overflow_abort70:                             ; preds = %cat.sum.len64
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case83:                                    ; preds = %entry
  %pay.gep88 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr89 = load ptr, ptr %pay.gep88, align 8
  %cat.seg95 = and i64 %call.res.fca.0.extract, 281474976710655
  %fld.load101 = load ptr, ptr %payload.ptr89, align 8
  %call.res102 = call { i64, ptr } @"show::show_names"(ptr %fld.load101)
  %call.res102.fca.0.extract = extractvalue { i64, ptr } %call.res102, 0
  %call.res102.fca.1.extract = extractvalue { i64, ptr } %call.res102, 1
  %cat.seg106 = and i64 %call.res102.fca.0.extract, 281474976710655
  %fld.gep111 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %payload.ptr89, i32 0, i32 2
  %fld.load112 = load ptr, ptr %fld.gep111, align 8
  %addtmp114 = add i64 %1, 1
  %call.res115 = call { i64, ptr } @"show::show_tree"(ptr %fld.load112, i64 %addtmp114)
  %call.res115.fca.0.extract = extractvalue { i64, ptr } %call.res115, 0
  %call.res115.fca.1.extract = extractvalue { i64, ptr } %call.res115, 1
  %cat.seg119 = and i64 %call.res115.fca.0.extract, 281474976710655
  %cat.sum.len122 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg95, i64 3)
  %sum123 = extractvalue { i64, i1 } %cat.sum.len122, 0
  %ovf124 = extractvalue { i64, i1 } %cat.sum.len122, 1
  br i1 %ovf124, label %str_overflow_abort126, label %cat.sum.len125

cat.sum.len125:                                   ; preds = %choice.case83
  %cat.sum.len128 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum123, i64 %cat.seg106)
  %sum129 = extractvalue { i64, i1 } %cat.sum.len128, 0
  %ovf130 = extractvalue { i64, i1 } %cat.sum.len128, 1
  br i1 %ovf130, label %str_overflow_abort132, label %cat.sum.len131

str_overflow_abort126:                            ; preds = %choice.case83
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len131:                                   ; preds = %cat.sum.len125
  %cat.sum.len134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum129, i64 5)
  %sum135 = extractvalue { i64, i1 } %cat.sum.len134, 0
  %ovf136 = extractvalue { i64, i1 } %cat.sum.len134, 1
  br i1 %ovf136, label %str_overflow_abort138, label %cat.sum.len137

str_overflow_abort132:                            ; preds = %cat.sum.len125
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len137:                                   ; preds = %cat.sum.len131
  %cat.sum.len140 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum135, i64 %cat.seg119)
  %sum141 = extractvalue { i64, i1 } %cat.sum.len140, 0
  %ovf142 = extractvalue { i64, i1 } %cat.sum.len140, 1
  br i1 %ovf142, label %str_overflow_abort144, label %cat.sum.len143

str_overflow_abort138:                            ; preds = %cat.sum.len131
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len143:                                   ; preds = %cat.sum.len137
  %concat.tot.len146 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum141, i64 1)
  %sum147 = extractvalue { i64, i1 } %concat.tot.len146, 0
  %ovf148 = extractvalue { i64, i1 } %concat.tot.len146, 1
  br i1 %ovf148, label %str_overflow_abort150, label %concat.tot.len149

str_overflow_abort144:                            ; preds = %cat.sum.len137
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len149:                                ; preds = %cat.sum.len143
  %arena.cur152 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf153 = call ptr @dva_arena_alloc(ptr %arena.cur152, i64 %sum147)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf153, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg95, i1 false)
  %cat.dst156 = getelementptr i8, ptr %concat.buf153, i64 %cat.seg95
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst156, ptr align 1 @str.54, i64 3, i1 false)
  %cat.off157 = add i64 %cat.seg95, 3
  %cat.dst158 = getelementptr i8, ptr %concat.buf153, i64 %cat.off157
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst158, ptr align 1 %call.res102.fca.1.extract, i64 %cat.seg106, i1 false)
  %cat.off159 = add i64 %cat.off157, %cat.seg106
  %cat.dst160 = getelementptr i8, ptr %concat.buf153, i64 %cat.off159
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst160, ptr align 1 @str.114, i64 5, i1 false)
  %cat.off161 = add i64 %cat.off159, 5
  %cat.dst162 = getelementptr i8, ptr %concat.buf153, i64 %cat.off161
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst162, ptr align 1 %call.res115.fca.1.extract, i64 %cat.seg119, i1 false)
  %concat.nul163 = getelementptr i8, ptr %concat.buf153, i64 %sum141
  store i8 0, ptr %concat.nul163, align 1
  store i64 %sum141, ptr %concat.str164, align 8
  %str.build.data.gep166 = getelementptr inbounds { i64, ptr }, ptr %concat.str164, i32 0, i32 1
  store ptr %concat.buf153, ptr %str.build.data.gep166, align 8
  br label %choice.exit

str_overflow_abort150:                            ; preds = %cat.sum.len143
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case167:                                   ; preds = %entry
  %pay.gep172 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr173 = load ptr, ptr %pay.gep172, align 8
  %cat.seg179 = and i64 %call.res.fca.0.extract, 281474976710655
  %fld.load185 = load ptr, ptr %payload.ptr173, align 8
  %call.res186 = call { i64, ptr } @"show::show_op"(ptr %fld.load185)
  %call.res186.fca.0.extract = extractvalue { i64, ptr } %call.res186, 0
  %call.res186.fca.1.extract = extractvalue { i64, ptr } %call.res186, 1
  %cat.seg190 = and i64 %call.res186.fca.0.extract, 281474976710655
  %fld.gep195 = getelementptr inbounds { ptr, ptr, ptr }, ptr %payload.ptr173, i32 0, i32 1
  %fld.load196 = load ptr, ptr %fld.gep195, align 8
  %addtmp198 = add i64 %1, 1
  %call.res199 = call { i64, ptr } @"show::show_tree"(ptr %fld.load196, i64 %addtmp198)
  %call.res199.fca.0.extract = extractvalue { i64, ptr } %call.res199, 0
  %call.res199.fca.1.extract = extractvalue { i64, ptr } %call.res199, 1
  %cat.seg203 = and i64 %call.res199.fca.0.extract, 281474976710655
  %fld.gep208 = getelementptr inbounds { ptr, ptr, ptr }, ptr %payload.ptr173, i32 0, i32 2
  %fld.load209 = load ptr, ptr %fld.gep208, align 8
  %call.res212 = call { i64, ptr } @"show::show_tree"(ptr %fld.load209, i64 %addtmp198)
  %call.res212.fca.0.extract = extractvalue { i64, ptr } %call.res212, 0
  %call.res212.fca.1.extract = extractvalue { i64, ptr } %call.res212, 1
  %cat.seg216 = and i64 %call.res212.fca.0.extract, 281474976710655
  %cat.sum.len219 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg179, i64 4)
  %sum220 = extractvalue { i64, i1 } %cat.sum.len219, 0
  %ovf221 = extractvalue { i64, i1 } %cat.sum.len219, 1
  br i1 %ovf221, label %str_overflow_abort223, label %cat.sum.len222

cat.sum.len222:                                   ; preds = %choice.case167
  %cat.sum.len225 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum220, i64 %cat.seg190)
  %sum226 = extractvalue { i64, i1 } %cat.sum.len225, 0
  %ovf227 = extractvalue { i64, i1 } %cat.sum.len225, 1
  br i1 %ovf227, label %str_overflow_abort229, label %cat.sum.len228

str_overflow_abort223:                            ; preds = %choice.case167
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len228:                                   ; preds = %cat.sum.len222
  %cat.sum.len231 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum226, i64 2)
  %sum232 = extractvalue { i64, i1 } %cat.sum.len231, 0
  %ovf233 = extractvalue { i64, i1 } %cat.sum.len231, 1
  br i1 %ovf233, label %str_overflow_abort235, label %cat.sum.len234

str_overflow_abort229:                            ; preds = %cat.sum.len222
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len234:                                   ; preds = %cat.sum.len228
  %cat.sum.len237 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum232, i64 %cat.seg203)
  %sum238 = extractvalue { i64, i1 } %cat.sum.len237, 0
  %ovf239 = extractvalue { i64, i1 } %cat.sum.len237, 1
  br i1 %ovf239, label %str_overflow_abort241, label %cat.sum.len240

str_overflow_abort235:                            ; preds = %cat.sum.len228
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len240:                                   ; preds = %cat.sum.len234
  %cat.sum.len243 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum238, i64 1)
  %sum244 = extractvalue { i64, i1 } %cat.sum.len243, 0
  %ovf245 = extractvalue { i64, i1 } %cat.sum.len243, 1
  br i1 %ovf245, label %str_overflow_abort247, label %cat.sum.len246

str_overflow_abort241:                            ; preds = %cat.sum.len234
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len246:                                   ; preds = %cat.sum.len240
  %cat.sum.len249 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum244, i64 %cat.seg216)
  %sum250 = extractvalue { i64, i1 } %cat.sum.len249, 0
  %ovf251 = extractvalue { i64, i1 } %cat.sum.len249, 1
  br i1 %ovf251, label %str_overflow_abort253, label %cat.sum.len252

str_overflow_abort247:                            ; preds = %cat.sum.len240
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len252:                                   ; preds = %cat.sum.len246
  %concat.tot.len255 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum250, i64 1)
  %sum256 = extractvalue { i64, i1 } %concat.tot.len255, 0
  %ovf257 = extractvalue { i64, i1 } %concat.tot.len255, 1
  br i1 %ovf257, label %str_overflow_abort259, label %concat.tot.len258

str_overflow_abort253:                            ; preds = %cat.sum.len246
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len258:                                ; preds = %cat.sum.len252
  %arena.cur261 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf262 = call ptr @dva_arena_alloc(ptr %arena.cur261, i64 %sum256)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf262, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg179, i1 false)
  %cat.dst265 = getelementptr i8, ptr %concat.buf262, i64 %cat.seg179
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst265, ptr align 1 @str.7, i64 4, i1 false)
  %cat.off266 = add i64 %cat.seg179, 4
  %cat.dst267 = getelementptr i8, ptr %concat.buf262, i64 %cat.off266
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst267, ptr align 1 %call.res186.fca.1.extract, i64 %cat.seg190, i1 false)
  %cat.off268 = add i64 %cat.off266, %cat.seg190
  %cat.dst269 = getelementptr i8, ptr %concat.buf262, i64 %cat.off268
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst269, ptr align 1 @str.113, i64 2, i1 false)
  %cat.off270 = add i64 %cat.off268, 2
  %cat.dst271 = getelementptr i8, ptr %concat.buf262, i64 %cat.off270
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst271, ptr align 1 %call.res199.fca.1.extract, i64 %cat.seg203, i1 false)
  %cat.off272 = add i64 %cat.off270, %cat.seg203
  %cat.dst273 = getelementptr i8, ptr %concat.buf262, i64 %cat.off272
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst273, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off274 = add i64 %cat.off272, 1
  %cat.dst275 = getelementptr i8, ptr %concat.buf262, i64 %cat.off274
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst275, ptr align 1 %call.res212.fca.1.extract, i64 %cat.seg216, i1 false)
  %concat.nul276 = getelementptr i8, ptr %concat.buf262, i64 %sum250
  store i8 0, ptr %concat.nul276, align 1
  store i64 %sum250, ptr %concat.str277, align 8
  %str.build.data.gep279 = getelementptr inbounds { i64, ptr }, ptr %concat.str277, i32 0, i32 1
  store ptr %concat.buf262, ptr %str.build.data.gep279, align 8
  br label %choice.exit

str_overflow_abort259:                            ; preds = %cat.sum.len252
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case280:                                   ; preds = %entry
  %pay.gep285 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr286 = load ptr, ptr %pay.gep285, align 8
  %cat.seg292 = and i64 %call.res.fca.0.extract, 281474976710655
  %fld.load298 = load ptr, ptr %payload.ptr286, align 8
  %call.res299 = call { i64, ptr } @"show::show_unop"(ptr %fld.load298)
  %call.res299.fca.0.extract = extractvalue { i64, ptr } %call.res299, 0
  %call.res299.fca.1.extract = extractvalue { i64, ptr } %call.res299, 1
  %cat.seg303 = and i64 %call.res299.fca.0.extract, 281474976710655
  %fld.gep308 = getelementptr inbounds { ptr, ptr }, ptr %payload.ptr286, i32 0, i32 1
  %fld.load309 = load ptr, ptr %fld.gep308, align 8
  %addtmp311 = add i64 %1, 1
  %call.res312 = call { i64, ptr } @"show::show_tree"(ptr %fld.load309, i64 %addtmp311)
  %call.res312.fca.0.extract = extractvalue { i64, ptr } %call.res312, 0
  %call.res312.fca.1.extract = extractvalue { i64, ptr } %call.res312, 1
  %cat.seg316 = and i64 %call.res312.fca.0.extract, 281474976710655
  %cat.sum.len319 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg292, i64 6)
  %sum320 = extractvalue { i64, i1 } %cat.sum.len319, 0
  %ovf321 = extractvalue { i64, i1 } %cat.sum.len319, 1
  br i1 %ovf321, label %str_overflow_abort323, label %cat.sum.len322

cat.sum.len322:                                   ; preds = %choice.case280
  %cat.sum.len325 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum320, i64 %cat.seg303)
  %sum326 = extractvalue { i64, i1 } %cat.sum.len325, 0
  %ovf327 = extractvalue { i64, i1 } %cat.sum.len325, 1
  br i1 %ovf327, label %str_overflow_abort329, label %cat.sum.len328

str_overflow_abort323:                            ; preds = %choice.case280
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len328:                                   ; preds = %cat.sum.len322
  %cat.sum.len331 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum326, i64 2)
  %sum332 = extractvalue { i64, i1 } %cat.sum.len331, 0
  %ovf333 = extractvalue { i64, i1 } %cat.sum.len331, 1
  br i1 %ovf333, label %str_overflow_abort335, label %cat.sum.len334

str_overflow_abort329:                            ; preds = %cat.sum.len322
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len334:                                   ; preds = %cat.sum.len328
  %cat.sum.len337 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum332, i64 %cat.seg316)
  %sum338 = extractvalue { i64, i1 } %cat.sum.len337, 0
  %ovf339 = extractvalue { i64, i1 } %cat.sum.len337, 1
  br i1 %ovf339, label %str_overflow_abort341, label %cat.sum.len340

str_overflow_abort335:                            ; preds = %cat.sum.len328
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len340:                                   ; preds = %cat.sum.len334
  %concat.tot.len343 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum338, i64 1)
  %sum344 = extractvalue { i64, i1 } %concat.tot.len343, 0
  %ovf345 = extractvalue { i64, i1 } %concat.tot.len343, 1
  br i1 %ovf345, label %str_overflow_abort347, label %concat.tot.len346

str_overflow_abort341:                            ; preds = %cat.sum.len334
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len346:                                ; preds = %cat.sum.len340
  %arena.cur349 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf350 = call ptr @dva_arena_alloc(ptr %arena.cur349, i64 %sum344)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf350, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg292, i1 false)
  %cat.dst353 = getelementptr i8, ptr %concat.buf350, i64 %cat.seg292
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst353, ptr align 1 @str.35, i64 6, i1 false)
  %cat.off354 = add i64 %cat.seg292, 6
  %cat.dst355 = getelementptr i8, ptr %concat.buf350, i64 %cat.off354
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst355, ptr align 1 %call.res299.fca.1.extract, i64 %cat.seg303, i1 false)
  %cat.off356 = add i64 %cat.off354, %cat.seg303
  %cat.dst357 = getelementptr i8, ptr %concat.buf350, i64 %cat.off356
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst357, ptr align 1 @str.113, i64 2, i1 false)
  %cat.off358 = add i64 %cat.off356, 2
  %cat.dst359 = getelementptr i8, ptr %concat.buf350, i64 %cat.off358
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst359, ptr align 1 %call.res312.fca.1.extract, i64 %cat.seg316, i1 false)
  %concat.nul360 = getelementptr i8, ptr %concat.buf350, i64 %sum338
  store i8 0, ptr %concat.nul360, align 1
  store i64 %sum338, ptr %concat.str361, align 8
  %str.build.data.gep363 = getelementptr inbounds { i64, ptr }, ptr %concat.str361, i32 0, i32 1
  store ptr %concat.buf350, ptr %str.build.data.gep363, align 8
  br label %choice.exit

str_overflow_abort347:                            ; preds = %cat.sum.len340
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case364:                                   ; preds = %entry
  %pay.gep369 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr370 = load ptr, ptr %pay.gep369, align 8
  %cat.seg375 = and i64 %call.res.fca.0.extract, 281474976710655
  %cat.seg381 = load i64, ptr %payload.ptr370, align 8
  %cat.seg382 = and i64 %cat.seg381, 281474976710655
  %cat.seg383 = getelementptr inbounds { i64, ptr }, ptr %payload.ptr370, i32 0, i32 1
  %cat.seg384 = load ptr, ptr %cat.seg383, align 8
  %cat.sum.len386 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg375, i64 4)
  %sum387 = extractvalue { i64, i1 } %cat.sum.len386, 0
  %ovf388 = extractvalue { i64, i1 } %cat.sum.len386, 1
  br i1 %ovf388, label %str_overflow_abort390, label %cat.sum.len389

cat.sum.len389:                                   ; preds = %choice.case364
  %cat.sum.len392 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum387, i64 %cat.seg382)
  %sum393 = extractvalue { i64, i1 } %cat.sum.len392, 0
  %ovf394 = extractvalue { i64, i1 } %cat.sum.len392, 1
  br i1 %ovf394, label %str_overflow_abort396, label %cat.sum.len395

str_overflow_abort390:                            ; preds = %choice.case364
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len395:                                   ; preds = %cat.sum.len389
  %cat.sum.len398 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum393, i64 1)
  %sum399 = extractvalue { i64, i1 } %cat.sum.len398, 0
  %ovf400 = extractvalue { i64, i1 } %cat.sum.len398, 1
  br i1 %ovf400, label %str_overflow_abort402, label %cat.sum.len401

str_overflow_abort396:                            ; preds = %cat.sum.len389
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len401:                                   ; preds = %cat.sum.len395
  %concat.tot.len404 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum399, i64 1)
  %sum405 = extractvalue { i64, i1 } %concat.tot.len404, 0
  %ovf406 = extractvalue { i64, i1 } %concat.tot.len404, 1
  br i1 %ovf406, label %str_overflow_abort408, label %concat.tot.len407

str_overflow_abort402:                            ; preds = %cat.sum.len395
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len407:                                ; preds = %cat.sum.len401
  %arena.cur410 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf411 = call ptr @dva_arena_alloc(ptr %arena.cur410, i64 %sum405)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf411, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg375, i1 false)
  %cat.dst414 = getelementptr i8, ptr %concat.buf411, i64 %cat.seg375
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst414, ptr align 1 @str.6, i64 4, i1 false)
  %cat.off415 = add i64 %cat.seg375, 4
  %cat.dst416 = getelementptr i8, ptr %concat.buf411, i64 %cat.off415
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst416, ptr align 1 %cat.seg384, i64 %cat.seg382, i1 false)
  %cat.off417 = add i64 %cat.off415, %cat.seg382
  %cat.dst418 = getelementptr i8, ptr %concat.buf411, i64 %cat.off417
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst418, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul419 = getelementptr i8, ptr %concat.buf411, i64 %sum399
  store i8 0, ptr %concat.nul419, align 1
  store i64 %sum399, ptr %concat.str420, align 8
  %str.build.data.gep422 = getelementptr inbounds { i64, ptr }, ptr %concat.str420, i32 0, i32 1
  store ptr %concat.buf411, ptr %str.build.data.gep422, align 8
  br label %choice.exit

str_overflow_abort408:                            ; preds = %cat.sum.len401
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case423:                                   ; preds = %entry
  %pay.gep428 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr429 = load ptr, ptr %pay.gep428, align 8
  %pay.int.null = icmp eq ptr %payload.ptr429, null
  br i1 %pay.int.null, label %pay.int.merge, label %pay.int.load

pay.int.load:                                     ; preds = %choice.case423
  %pay.int.val = load i64, ptr %payload.ptr429, align 8
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %choice.case423, %pay.int.load
  %pay.int.phi = phi i64 [ %pay.int.val, %pay.int.load ], [ 0, %choice.case423 ]
  %cat.seg434 = and i64 %call.res.fca.0.extract, 281474976710655
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %pay.int.phi, i1 false)
  %cat.sum.len440 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg434, i64 4)
  %sum441 = extractvalue { i64, i1 } %cat.sum.len440, 0
  %ovf442 = extractvalue { i64, i1 } %cat.sum.len440, 1
  br i1 %ovf442, label %str_overflow_abort444, label %cat.sum.len443

cat.sum.len443:                                   ; preds = %pay.int.merge
  %cat.sum.len446 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum441, i64 %cat.ilen)
  %sum447 = extractvalue { i64, i1 } %cat.sum.len446, 0
  %ovf448 = extractvalue { i64, i1 } %cat.sum.len446, 1
  br i1 %ovf448, label %str_overflow_abort450, label %cat.sum.len449

str_overflow_abort444:                            ; preds = %pay.int.merge
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len449:                                   ; preds = %cat.sum.len443
  %cat.sum.len452 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum447, i64 1)
  %sum453 = extractvalue { i64, i1 } %cat.sum.len452, 0
  %ovf454 = extractvalue { i64, i1 } %cat.sum.len452, 1
  br i1 %ovf454, label %str_overflow_abort456, label %cat.sum.len455

str_overflow_abort450:                            ; preds = %cat.sum.len443
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len455:                                   ; preds = %cat.sum.len449
  %concat.tot.len458 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum453, i64 1)
  %sum459 = extractvalue { i64, i1 } %concat.tot.len458, 0
  %ovf460 = extractvalue { i64, i1 } %concat.tot.len458, 1
  br i1 %ovf460, label %str_overflow_abort462, label %concat.tot.len461

str_overflow_abort456:                            ; preds = %cat.sum.len449
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len461:                                ; preds = %cat.sum.len455
  %arena.cur464 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf465 = call ptr @dva_arena_alloc(ptr %arena.cur464, i64 %sum459)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf465, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg434, i1 false)
  %cat.dst468 = getelementptr i8, ptr %concat.buf465, i64 %cat.seg434
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst468, ptr align 1 @str.0, i64 4, i1 false)
  %cat.off469 = add i64 %cat.seg434, 4
  %cat.dst470 = getelementptr i8, ptr %concat.buf465, i64 %cat.off469
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst470, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %cat.off471 = add i64 %cat.off469, %cat.ilen
  %cat.dst472 = getelementptr i8, ptr %concat.buf465, i64 %cat.off471
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst472, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul473 = getelementptr i8, ptr %concat.buf465, i64 %sum453
  store i8 0, ptr %concat.nul473, align 1
  store i64 %sum453, ptr %concat.str474, align 8
  %str.build.data.gep476 = getelementptr inbounds { i64, ptr }, ptr %concat.str474, i32 0, i32 1
  store ptr %concat.buf465, ptr %str.build.data.gep476, align 8
  br label %choice.exit

str_overflow_abort462:                            ; preds = %cat.sum.len455
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case477:                                   ; preds = %entry
  %pay.gep482 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr483 = load ptr, ptr %pay.gep482, align 8
  %pay.float.null = icmp eq ptr %payload.ptr483, null
  br i1 %pay.float.null, label %pay.float.merge, label %pay.float.load

pay.float.load:                                   ; preds = %choice.case477
  %pay.float.val = load double, ptr %payload.ptr483, align 8
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %choice.case477, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %choice.case477 ]
  %cat.seg488 = and i64 %call.res.fca.0.extract, 281474976710655
  %call.res493 = call { i64, ptr } @"str::from_float"(double %pay.float.phi)
  %call.res493.fca.0.extract = extractvalue { i64, ptr } %call.res493, 0
  %call.res493.fca.1.extract = extractvalue { i64, ptr } %call.res493, 1
  %cat.seg497 = and i64 %call.res493.fca.0.extract, 281474976710655
  %cat.sum.len501 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg488, i64 6)
  %sum502 = extractvalue { i64, i1 } %cat.sum.len501, 0
  %ovf503 = extractvalue { i64, i1 } %cat.sum.len501, 1
  br i1 %ovf503, label %str_overflow_abort505, label %cat.sum.len504

cat.sum.len504:                                   ; preds = %pay.float.merge
  %cat.sum.len507 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum502, i64 %cat.seg497)
  %sum508 = extractvalue { i64, i1 } %cat.sum.len507, 0
  %ovf509 = extractvalue { i64, i1 } %cat.sum.len507, 1
  br i1 %ovf509, label %str_overflow_abort511, label %cat.sum.len510

str_overflow_abort505:                            ; preds = %pay.float.merge
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len510:                                   ; preds = %cat.sum.len504
  %cat.sum.len513 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum508, i64 1)
  %sum514 = extractvalue { i64, i1 } %cat.sum.len513, 0
  %ovf515 = extractvalue { i64, i1 } %cat.sum.len513, 1
  br i1 %ovf515, label %str_overflow_abort517, label %cat.sum.len516

str_overflow_abort511:                            ; preds = %cat.sum.len504
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len516:                                   ; preds = %cat.sum.len510
  %concat.tot.len519 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum514, i64 1)
  %sum520 = extractvalue { i64, i1 } %concat.tot.len519, 0
  %ovf521 = extractvalue { i64, i1 } %concat.tot.len519, 1
  br i1 %ovf521, label %str_overflow_abort523, label %concat.tot.len522

str_overflow_abort517:                            ; preds = %cat.sum.len510
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len522:                                ; preds = %cat.sum.len516
  %arena.cur525 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf526 = call ptr @dva_arena_alloc(ptr %arena.cur525, i64 %sum520)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf526, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg488, i1 false)
  %cat.dst529 = getelementptr i8, ptr %concat.buf526, i64 %cat.seg488
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst529, ptr align 1 @str.3, i64 6, i1 false)
  %cat.off530 = add i64 %cat.seg488, 6
  %cat.dst531 = getelementptr i8, ptr %concat.buf526, i64 %cat.off530
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst531, ptr align 1 %call.res493.fca.1.extract, i64 %cat.seg497, i1 false)
  %cat.off532 = add i64 %cat.off530, %cat.seg497
  %cat.dst533 = getelementptr i8, ptr %concat.buf526, i64 %cat.off532
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst533, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul534 = getelementptr i8, ptr %concat.buf526, i64 %sum514
  store i8 0, ptr %concat.nul534, align 1
  store i64 %sum514, ptr %concat.str535, align 8
  %str.build.data.gep537 = getelementptr inbounds { i64, ptr }, ptr %concat.str535, i32 0, i32 1
  store ptr %concat.buf526, ptr %str.build.data.gep537, align 8
  br label %choice.exit

str_overflow_abort523:                            ; preds = %cat.sum.len516
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case538:                                   ; preds = %entry
  %pay.gep543 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr544 = load ptr, ptr %pay.gep543, align 8
  %cat.seg549 = and i64 %call.res.fca.0.extract, 281474976710655
  %cat.seg555 = load i64, ptr %payload.ptr544, align 8
  %cat.seg556 = and i64 %cat.seg555, 281474976710655
  %cat.seg557 = getelementptr inbounds { i64, ptr }, ptr %payload.ptr544, i32 0, i32 1
  %cat.seg558 = load ptr, ptr %cat.seg557, align 8
  %cat.sum.len560 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg549, i64 5)
  %sum561 = extractvalue { i64, i1 } %cat.sum.len560, 0
  %ovf562 = extractvalue { i64, i1 } %cat.sum.len560, 1
  br i1 %ovf562, label %str_overflow_abort564, label %cat.sum.len563

cat.sum.len563:                                   ; preds = %choice.case538
  %cat.sum.len566 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum561, i64 %cat.seg556)
  %sum567 = extractvalue { i64, i1 } %cat.sum.len566, 0
  %ovf568 = extractvalue { i64, i1 } %cat.sum.len566, 1
  br i1 %ovf568, label %str_overflow_abort570, label %cat.sum.len569

str_overflow_abort564:                            ; preds = %choice.case538
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len569:                                   ; preds = %cat.sum.len563
  %cat.sum.len572 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum567, i64 2)
  %sum573 = extractvalue { i64, i1 } %cat.sum.len572, 0
  %ovf574 = extractvalue { i64, i1 } %cat.sum.len572, 1
  br i1 %ovf574, label %str_overflow_abort576, label %cat.sum.len575

str_overflow_abort570:                            ; preds = %cat.sum.len563
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len575:                                   ; preds = %cat.sum.len569
  %concat.tot.len578 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum573, i64 1)
  %sum579 = extractvalue { i64, i1 } %concat.tot.len578, 0
  %ovf580 = extractvalue { i64, i1 } %concat.tot.len578, 1
  br i1 %ovf580, label %str_overflow_abort582, label %concat.tot.len581

str_overflow_abort576:                            ; preds = %cat.sum.len569
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len581:                                ; preds = %cat.sum.len575
  %arena.cur584 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf585 = call ptr @dva_arena_alloc(ptr %arena.cur584, i64 %sum579)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf585, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg549, i1 false)
  %cat.dst588 = getelementptr i8, ptr %concat.buf585, i64 %cat.seg549
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst588, ptr align 1 @str.4, i64 5, i1 false)
  %cat.off589 = add i64 %cat.seg549, 5
  %cat.dst590 = getelementptr i8, ptr %concat.buf585, i64 %cat.off589
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst590, ptr align 1 %cat.seg558, i64 %cat.seg556, i1 false)
  %cat.off591 = add i64 %cat.off589, %cat.seg556
  %cat.dst592 = getelementptr i8, ptr %concat.buf585, i64 %cat.off591
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst592, ptr align 1 @str.5, i64 2, i1 false)
  %concat.nul593 = getelementptr i8, ptr %concat.buf585, i64 %sum573
  store i8 0, ptr %concat.nul593, align 1
  store i64 %sum573, ptr %concat.str594, align 8
  %str.build.data.gep596 = getelementptr inbounds { i64, ptr }, ptr %concat.str594, i32 0, i32 1
  store ptr %concat.buf585, ptr %str.build.data.gep596, align 8
  br label %choice.exit

str_overflow_abort582:                            ; preds = %cat.sum.len575
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case597:                                   ; preds = %entry
  %pay.gep602 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr603 = load ptr, ptr %pay.gep602, align 8
  %fld.load608 = load ptr, ptr %payload.ptr603, align 8
  %eq.lhs.len609 = load i64, ptr %fld.load608, align 8
  %eq.lhs.len610 = and i64 %eq.lhs.len609, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len610, 0
  br i1 %eq.len, label %str.eq.then, label %choice.else614

str.eq.then:                                      ; preds = %choice.case597
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load608, i32 0, i32 1
  %eq.lhs.data612 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data612, ptr @str.49, i64 %eq.lhs.len610)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then613, label %choice.else614

choice.then613:                                   ; preds = %str.eq.then
  %fld.gep617 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %payload.ptr603, i32 0, i32 1
  %fld.load618 = load ptr, ptr %fld.gep617, align 8
  %call.res619 = call { i64, ptr } @"show::show_expr"(ptr %fld.load618)
  %call.res619.fca.0.extract = extractvalue { i64, ptr } %call.res619, 0
  store i64 %call.res619.fca.0.extract, ptr %ret.ub.salloc620, align 8
  %call.res619.fca.1.extract = extractvalue { i64, ptr } %call.res619, 1
  %call.res619.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc620, i32 0, i32 1
  store ptr %call.res619.fca.1.extract, ptr %call.res619.fca.1.gep, align 8
  br label %choice.exit615

choice.else614:                                   ; preds = %choice.case597, %str.eq.then
  %fld.load623 = load ptr, ptr %payload.ptr603, align 8
  br label %choice.exit615

choice.exit615:                                   ; preds = %choice.else614, %choice.then613
  %choice.res624 = phi ptr [ %ret.ub.salloc620, %choice.then613 ], [ %fld.load623, %choice.else614 ]
  %fld.gep626 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %payload.ptr603, i32 0, i32 2
  %fld.load627 = load ptr, ptr %fld.gep626, align 8
  %a.len.query628 = load i64, ptr %fld.load627, align 8
  %cmptmp = icmp eq i64 %a.len.query628, 0
  br i1 %cmptmp, label %choice.then629, label %choice.else630

choice.then629:                                   ; preds = %choice.exit615
  %cat.seg635 = and i64 %call.res.fca.0.extract, 281474976710655
  %cat.seg641 = load i64, ptr %choice.res624, align 8
  %cat.seg642 = and i64 %cat.seg641, 281474976710655
  %cat.seg643 = getelementptr inbounds { i64, ptr }, ptr %choice.res624, i32 0, i32 1
  %cat.seg644 = load ptr, ptr %cat.seg643, align 8
  %cat.sum.len646 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg635, i64 5)
  %sum647 = extractvalue { i64, i1 } %cat.sum.len646, 0
  %ovf648 = extractvalue { i64, i1 } %cat.sum.len646, 1
  br i1 %ovf648, label %str_overflow_abort650, label %cat.sum.len649

choice.else630:                                   ; preds = %choice.exit615
  %cat.seg686 = and i64 %call.res.fca.0.extract, 281474976710655
  %cat.seg692 = load i64, ptr %choice.res624, align 8
  %cat.seg693 = and i64 %cat.seg692, 281474976710655
  %cat.seg694 = getelementptr inbounds { i64, ptr }, ptr %choice.res624, i32 0, i32 1
  %cat.seg695 = load ptr, ptr %cat.seg694, align 8
  %addtmp701 = add i64 %1, 1
  %call.res702 = call { i64, ptr } @"show::show_tree_exprs"(ptr %fld.load627, i64 %addtmp701)
  %call.res702.fca.0.extract = extractvalue { i64, ptr } %call.res702, 0
  %call.res702.fca.1.extract = extractvalue { i64, ptr } %call.res702, 1
  %cat.seg706 = and i64 %call.res702.fca.0.extract, 281474976710655
  %cat.sum.len709 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg686, i64 5)
  %sum710 = extractvalue { i64, i1 } %cat.sum.len709, 0
  %ovf711 = extractvalue { i64, i1 } %cat.sum.len709, 1
  br i1 %ovf711, label %str_overflow_abort713, label %cat.sum.len712

cat.sum.len649:                                   ; preds = %choice.then629
  %cat.sum.len652 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum647, i64 %cat.seg642)
  %sum653 = extractvalue { i64, i1 } %cat.sum.len652, 0
  %ovf654 = extractvalue { i64, i1 } %cat.sum.len652, 1
  br i1 %ovf654, label %str_overflow_abort656, label %cat.sum.len655

str_overflow_abort650:                            ; preds = %choice.then629
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len655:                                   ; preds = %cat.sum.len649
  %cat.sum.len658 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum653, i64 1)
  %sum659 = extractvalue { i64, i1 } %cat.sum.len658, 0
  %ovf660 = extractvalue { i64, i1 } %cat.sum.len658, 1
  br i1 %ovf660, label %str_overflow_abort662, label %cat.sum.len661

str_overflow_abort656:                            ; preds = %cat.sum.len649
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len661:                                   ; preds = %cat.sum.len655
  %concat.tot.len664 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum659, i64 1)
  %sum665 = extractvalue { i64, i1 } %concat.tot.len664, 0
  %ovf666 = extractvalue { i64, i1 } %concat.tot.len664, 1
  br i1 %ovf666, label %str_overflow_abort668, label %concat.tot.len667

str_overflow_abort662:                            ; preds = %cat.sum.len655
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len667:                                ; preds = %cat.sum.len661
  %arena.cur670 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf671 = call ptr @dva_arena_alloc(ptr %arena.cur670, i64 %sum665)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf671, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg635, i1 false)
  %cat.dst674 = getelementptr i8, ptr %concat.buf671, i64 %cat.seg635
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst674, ptr align 1 @str.71, i64 5, i1 false)
  %cat.off675 = add i64 %cat.seg635, 5
  %cat.dst676 = getelementptr i8, ptr %concat.buf671, i64 %cat.off675
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst676, ptr align 1 %cat.seg644, i64 %cat.seg642, i1 false)
  %cat.off677 = add i64 %cat.off675, %cat.seg642
  %cat.dst678 = getelementptr i8, ptr %concat.buf671, i64 %cat.off677
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst678, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul679 = getelementptr i8, ptr %concat.buf671, i64 %sum659
  store i8 0, ptr %concat.nul679, align 1
  store i64 %sum659, ptr %concat.str680, align 8
  %str.build.data.gep682 = getelementptr inbounds { i64, ptr }, ptr %concat.str680, i32 0, i32 1
  store ptr %concat.buf671, ptr %str.build.data.gep682, align 8
  br label %choice.exit

str_overflow_abort668:                            ; preds = %cat.sum.len661
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len712:                                   ; preds = %choice.else630
  %cat.sum.len715 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum710, i64 %cat.seg693)
  %sum716 = extractvalue { i64, i1 } %cat.sum.len715, 0
  %ovf717 = extractvalue { i64, i1 } %cat.sum.len715, 1
  br i1 %ovf717, label %str_overflow_abort719, label %cat.sum.len718

str_overflow_abort713:                            ; preds = %choice.else630
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len718:                                   ; preds = %cat.sum.len712
  %cat.sum.len721 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum716, i64 2)
  %sum722 = extractvalue { i64, i1 } %cat.sum.len721, 0
  %ovf723 = extractvalue { i64, i1 } %cat.sum.len721, 1
  br i1 %ovf723, label %str_overflow_abort725, label %cat.sum.len724

str_overflow_abort719:                            ; preds = %cat.sum.len712
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len724:                                   ; preds = %cat.sum.len718
  %cat.sum.len727 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum722, i64 %cat.seg706)
  %sum728 = extractvalue { i64, i1 } %cat.sum.len727, 0
  %ovf729 = extractvalue { i64, i1 } %cat.sum.len727, 1
  br i1 %ovf729, label %str_overflow_abort731, label %cat.sum.len730

str_overflow_abort725:                            ; preds = %cat.sum.len718
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len730:                                   ; preds = %cat.sum.len724
  %concat.tot.len733 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum728, i64 1)
  %sum734 = extractvalue { i64, i1 } %concat.tot.len733, 0
  %ovf735 = extractvalue { i64, i1 } %concat.tot.len733, 1
  br i1 %ovf735, label %str_overflow_abort737, label %concat.tot.len736

str_overflow_abort731:                            ; preds = %cat.sum.len724
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len736:                                ; preds = %cat.sum.len730
  %arena.cur739 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf740 = call ptr @dva_arena_alloc(ptr %arena.cur739, i64 %sum734)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf740, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg686, i1 false)
  %cat.dst743 = getelementptr i8, ptr %concat.buf740, i64 %cat.seg686
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst743, ptr align 1 @str.71, i64 5, i1 false)
  %cat.off744 = add i64 %cat.seg686, 5
  %cat.dst745 = getelementptr i8, ptr %concat.buf740, i64 %cat.off744
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst745, ptr align 1 %cat.seg695, i64 %cat.seg693, i1 false)
  %cat.off746 = add i64 %cat.off744, %cat.seg693
  %cat.dst747 = getelementptr i8, ptr %concat.buf740, i64 %cat.off746
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst747, ptr align 1 @str.113, i64 2, i1 false)
  %cat.off748 = add i64 %cat.off746, 2
  %cat.dst749 = getelementptr i8, ptr %concat.buf740, i64 %cat.off748
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst749, ptr align 1 %call.res702.fca.1.extract, i64 %cat.seg706, i1 false)
  %concat.nul750 = getelementptr i8, ptr %concat.buf740, i64 %sum728
  store i8 0, ptr %concat.nul750, align 1
  store i64 %sum728, ptr %concat.str751, align 8
  %str.build.data.gep753 = getelementptr inbounds { i64, ptr }, ptr %concat.str751, i32 0, i32 1
  store ptr %concat.buf740, ptr %str.build.data.gep753, align 8
  br label %choice.exit

str_overflow_abort737:                            ; preds = %cat.sum.len730
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case755:                                   ; preds = %entry
  %pay.gep760 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr761 = load ptr, ptr %pay.gep760, align 8
  %cat.seg767 = and i64 %call.res.fca.0.extract, 281474976710655
  %a.null = icmp eq ptr %payload.ptr761, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %choice.case755
  %arena.cur772 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create773 = call ptr @dva_arena_alloc(ptr %arena.cur772, i64 24)
  %arena.cur774 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur774, i64 128)
  store i64 0, ptr %a.create773, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create773, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create773, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case755
  %var.t763.0 = phi ptr [ %a.create773, %a.create ], [ %payload.ptr761, %choice.case755 ]
  %addtmp776 = add i64 %1, 1
  %call.res777 = call { i64, ptr } @"show::show_tree_exprs"(ptr %var.t763.0, i64 %addtmp776)
  %call.res777.fca.0.extract = extractvalue { i64, ptr } %call.res777, 0
  %call.res777.fca.1.extract = extractvalue { i64, ptr } %call.res777, 1
  %cat.seg781 = and i64 %call.res777.fca.0.extract, 281474976710655
  %cat.sum.len784 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg767, i64 6)
  %sum785 = extractvalue { i64, i1 } %cat.sum.len784, 0
  %ovf786 = extractvalue { i64, i1 } %cat.sum.len784, 1
  br i1 %ovf786, label %str_overflow_abort788, label %cat.sum.len787

cat.sum.len787:                                   ; preds = %a.after
  %cat.sum.len790 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum785, i64 %cat.seg781)
  %sum791 = extractvalue { i64, i1 } %cat.sum.len790, 0
  %ovf792 = extractvalue { i64, i1 } %cat.sum.len790, 1
  br i1 %ovf792, label %str_overflow_abort794, label %cat.sum.len793

str_overflow_abort788:                            ; preds = %a.after
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len793:                                   ; preds = %cat.sum.len787
  %concat.tot.len796 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum791, i64 1)
  %sum797 = extractvalue { i64, i1 } %concat.tot.len796, 0
  %ovf798 = extractvalue { i64, i1 } %concat.tot.len796, 1
  br i1 %ovf798, label %str_overflow_abort800, label %concat.tot.len799

str_overflow_abort794:                            ; preds = %cat.sum.len787
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len799:                                ; preds = %cat.sum.len793
  %arena.cur802 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf803 = call ptr @dva_arena_alloc(ptr %arena.cur802, i64 %sum797)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf803, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg767, i1 false)
  %cat.dst806 = getelementptr i8, ptr %concat.buf803, i64 %cat.seg767
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst806, ptr align 1 @str.115, i64 6, i1 false)
  %cat.off807 = add i64 %cat.seg767, 6
  %cat.dst808 = getelementptr i8, ptr %concat.buf803, i64 %cat.off807
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst808, ptr align 1 %call.res777.fca.1.extract, i64 %cat.seg781, i1 false)
  %concat.nul809 = getelementptr i8, ptr %concat.buf803, i64 %sum791
  store i8 0, ptr %concat.nul809, align 1
  store i64 %sum791, ptr %concat.str810, align 8
  %str.build.data.gep812 = getelementptr inbounds { i64, ptr }, ptr %concat.str810, i32 0, i32 1
  store ptr %concat.buf803, ptr %str.build.data.gep812, align 8
  br label %choice.exit

str_overflow_abort800:                            ; preds = %cat.sum.len793
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case813:                                   ; preds = %entry
  %pay.gep818 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr819 = load ptr, ptr %pay.gep818, align 8
  %cat.seg825 = and i64 %call.res.fca.0.extract, 281474976710655
  %fld.load838 = load ptr, ptr %payload.ptr819, align 8
  %addtmp840 = add i64 %1, 2
  %call.res841 = call { i64, ptr } @"show::show_tree"(ptr %fld.load838, i64 %addtmp840)
  %call.res841.fca.0.extract = extractvalue { i64, ptr } %call.res841, 0
  %call.res841.fca.1.extract = extractvalue { i64, ptr } %call.res841, 1
  %cat.seg845 = and i64 %call.res841.fca.0.extract, 281474976710655
  %fld.gep857 = getelementptr inbounds { ptr, i1, ptr }, ptr %payload.ptr819, i32 0, i32 2
  %fld.load858 = load ptr, ptr %fld.gep857, align 8
  %call.res861 = call { i64, ptr } @"show::show_tree_branches"(ptr %fld.load858, i64 %addtmp840)
  %call.res861.fca.0.extract = extractvalue { i64, ptr } %call.res861, 0
  %call.res861.fca.1.extract = extractvalue { i64, ptr } %call.res861, 1
  %cat.seg865 = and i64 %call.res861.fca.0.extract, 281474976710655
  %cat.sum.len868 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg825, i64 7)
  %sum869 = extractvalue { i64, i1 } %cat.sum.len868, 0
  %ovf870 = extractvalue { i64, i1 } %cat.sum.len868, 1
  br i1 %ovf870, label %str_overflow_abort872, label %cat.sum.len871

choice.next814:                                   ; preds = %entry
  %call.res947 = call { i64, ptr } @"show::show_expr"(ptr %0)
  %call.res947.fca.0.extract = extractvalue { i64, ptr } %call.res947, 0
  %call.res947.fca.1.extract = extractvalue { i64, ptr } %call.res947, 1
  %concat.lhs950 = and i64 %call.res.fca.0.extract, 281474976710655
  %concat.rhs954 = and i64 %call.res947.fca.0.extract, 281474976710655
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs950, i64 %concat.rhs954)
  %sum957 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf958 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf958, label %str_overflow_abort960, label %concat.sum.len959

cat.sum.len871:                                   ; preds = %choice.case813
  %cat.sum.len874 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum869, i64 %cat.seg825)
  %sum875 = extractvalue { i64, i1 } %cat.sum.len874, 0
  %ovf876 = extractvalue { i64, i1 } %cat.sum.len874, 1
  br i1 %ovf876, label %str_overflow_abort878, label %cat.sum.len877

str_overflow_abort872:                            ; preds = %choice.case813
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len877:                                   ; preds = %cat.sum.len871
  %cat.sum.len880 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum875, i64 8)
  %sum881 = extractvalue { i64, i1 } %cat.sum.len880, 0
  %ovf882 = extractvalue { i64, i1 } %cat.sum.len880, 1
  br i1 %ovf882, label %str_overflow_abort884, label %cat.sum.len883

str_overflow_abort878:                            ; preds = %cat.sum.len871
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len883:                                   ; preds = %cat.sum.len877
  %cat.sum.len886 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum881, i64 %cat.seg845)
  %sum887 = extractvalue { i64, i1 } %cat.sum.len886, 0
  %ovf888 = extractvalue { i64, i1 } %cat.sum.len886, 1
  br i1 %ovf888, label %str_overflow_abort890, label %cat.sum.len889

str_overflow_abort884:                            ; preds = %cat.sum.len877
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len889:                                   ; preds = %cat.sum.len883
  %cat.sum.len892 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum887, i64 1)
  %sum893 = extractvalue { i64, i1 } %cat.sum.len892, 0
  %ovf894 = extractvalue { i64, i1 } %cat.sum.len892, 1
  br i1 %ovf894, label %str_overflow_abort896, label %cat.sum.len895

str_overflow_abort890:                            ; preds = %cat.sum.len883
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len895:                                   ; preds = %cat.sum.len889
  %cat.sum.len898 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum893, i64 %cat.seg825)
  %sum899 = extractvalue { i64, i1 } %cat.sum.len898, 0
  %ovf900 = extractvalue { i64, i1 } %cat.sum.len898, 1
  br i1 %ovf900, label %str_overflow_abort902, label %cat.sum.len901

str_overflow_abort896:                            ; preds = %cat.sum.len889
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len901:                                   ; preds = %cat.sum.len895
  %cat.sum.len904 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum899, i64 12)
  %sum905 = extractvalue { i64, i1 } %cat.sum.len904, 0
  %ovf906 = extractvalue { i64, i1 } %cat.sum.len904, 1
  br i1 %ovf906, label %str_overflow_abort908, label %cat.sum.len907

str_overflow_abort902:                            ; preds = %cat.sum.len895
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len907:                                   ; preds = %cat.sum.len901
  %cat.sum.len910 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum905, i64 %cat.seg865)
  %sum911 = extractvalue { i64, i1 } %cat.sum.len910, 0
  %ovf912 = extractvalue { i64, i1 } %cat.sum.len910, 1
  br i1 %ovf912, label %str_overflow_abort914, label %cat.sum.len913

str_overflow_abort908:                            ; preds = %cat.sum.len901
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len913:                                   ; preds = %cat.sum.len907
  %concat.tot.len916 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum911, i64 1)
  %sum917 = extractvalue { i64, i1 } %concat.tot.len916, 0
  %ovf918 = extractvalue { i64, i1 } %concat.tot.len916, 1
  br i1 %ovf918, label %str_overflow_abort920, label %concat.tot.len919

str_overflow_abort914:                            ; preds = %cat.sum.len907
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len919:                                ; preds = %cat.sum.len913
  %arena.cur922 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf923 = call ptr @dva_arena_alloc(ptr %arena.cur922, i64 %sum917)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf923, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg825, i1 false)
  %cat.dst926 = getelementptr i8, ptr %concat.buf923, i64 %cat.seg825
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst926, ptr align 1 @str.116, i64 7, i1 false)
  %cat.off927 = add i64 %cat.seg825, 7
  %cat.dst928 = getelementptr i8, ptr %concat.buf923, i64 %cat.off927
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst928, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg825, i1 false)
  %cat.off929 = add i64 %cat.off927, %cat.seg825
  %cat.dst930 = getelementptr i8, ptr %concat.buf923, i64 %cat.off929
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst930, ptr align 1 @str.117, i64 8, i1 false)
  %cat.off931 = add i64 %cat.off929, 8
  %cat.dst932 = getelementptr i8, ptr %concat.buf923, i64 %cat.off931
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst932, ptr align 1 %call.res841.fca.1.extract, i64 %cat.seg845, i1 false)
  %cat.off933 = add i64 %cat.off931, %cat.seg845
  %cat.dst934 = getelementptr i8, ptr %concat.buf923, i64 %cat.off933
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst934, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off935 = add i64 %cat.off933, 1
  %cat.dst936 = getelementptr i8, ptr %concat.buf923, i64 %cat.off935
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst936, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg825, i1 false)
  %cat.off937 = add i64 %cat.off935, %cat.seg825
  %cat.dst938 = getelementptr i8, ptr %concat.buf923, i64 %cat.off937
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst938, ptr align 1 @str.118, i64 12, i1 false)
  %cat.off939 = add i64 %cat.off937, 12
  %cat.dst940 = getelementptr i8, ptr %concat.buf923, i64 %cat.off939
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst940, ptr align 1 %call.res861.fca.1.extract, i64 %cat.seg865, i1 false)
  %concat.nul941 = getelementptr i8, ptr %concat.buf923, i64 %sum911
  store i8 0, ptr %concat.nul941, align 1
  store i64 %sum911, ptr %concat.str942, align 8
  %str.build.data.gep944 = getelementptr inbounds { i64, ptr }, ptr %concat.str942, i32 0, i32 1
  store ptr %concat.buf923, ptr %str.build.data.gep944, align 8
  br label %choice.exit

str_overflow_abort920:                            ; preds = %cat.sum.len913
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.sum.len959:                                ; preds = %choice.next814
  %concat.tot.len962 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum957, i64 1)
  %sum963 = extractvalue { i64, i1 } %concat.tot.len962, 0
  %ovf964 = extractvalue { i64, i1 } %concat.tot.len962, 1
  br i1 %ovf964, label %str_overflow_abort966, label %concat.tot.len965

str_overflow_abort960:                            ; preds = %choice.next814
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len965:                                ; preds = %concat.sum.len959
  %arena.cur968 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf969 = call ptr @dva_arena_alloc(ptr %arena.cur968, i64 %sum963)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf969, ptr align 1 %call.res.fca.1.extract, i64 %concat.lhs950, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf969, i64 %concat.lhs950
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %call.res947.fca.1.extract, i64 %concat.rhs954, i1 false)
  %concat.nul970 = getelementptr i8, ptr %concat.buf969, i64 %sum957
  store i8 0, ptr %concat.nul970, align 1
  store i64 %sum957, ptr %concat.str971, align 8
  %str.build.data.gep973 = getelementptr inbounds { i64, ptr }, ptr %concat.str971, i32 0, i32 1
  store ptr %concat.buf969, ptr %str.build.data.gep973, align 8
  br label %choice.exit

str_overflow_abort966:                            ; preds = %concat.sum.len959
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"show::show_tree_branches"(ptr %0, i64 %1) #3 {
entry:
  %ret.ub.salloc24 = alloca { i64, ptr }, align 8
  %ret.ub.salloc11 = alloca { i64, ptr }, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 17)
  store i8 0, ptr %b.buf, align 1
  %call.res = call { i64, ptr } @"show::show_indent"(i64 %1)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 128)
  store i64 0, ptr %a.create4, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.bs.0 = phi ptr [ %a.create4, %a.create ], [ %0, %entry ]
  %arr.cycle.len6 = load i64, ptr %var.bs.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.bs.0, i32 0, i32 1
  %arr.cycle.data7 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.182

loop.header.182:                                  ; preds = %b.grow_done118, %a.after
  %builder.new.salloc.sroa.0.0 = phi i64 [ 0, %a.after ], [ %sum108, %b.grow_done118 ]
  %builder.new.salloc.sroa.9.0 = phi ptr [ %b.buf, %a.after ], [ %builder.new.salloc.sroa.9.2, %b.grow_done118 ]
  %builder.new.salloc.sroa.18.0 = phi i64 [ 16, %a.after ], [ %builder.new.salloc.sroa.18.2, %b.grow_done118 ]
  %loop.idx.182.0 = phi i64 [ 0, %a.after ], [ %loop.next, %b.grow_done118 ]
  %loop.cond = icmp slt i64 %loop.idx.182.0, %arr.cycle.len6
  br i1 %loop.cond, label %loop.body.182, label %loop.exit.182

loop.body.182:                                    ; preds = %loop.header.182
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data7, i64 %loop.idx.182.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.load = load ptr, ptr %slot.i2p, align 8
  %tag.id = load i64, ptr %fld.load, align 8
  switch i64 %tag.id, label %choice.next26 [
    i64 2, label %choice.case
    i64 1, label %choice.exit
    i64 0, label %choice.case17
    i64 3, label %choice.case25
  ]

loop.exit.182:                                    ; preds = %loop.header.182
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %builder.new.salloc.sroa.0.0, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %builder.new.salloc.sroa.9.0, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

choice.exit:                                      ; preds = %loop.body.182, %choice.next26, %choice.case25, %choice.case17, %choice.case
  %choice.res = phi ptr [ %ret.ub.salloc11, %choice.case ], [ %ret.ub.salloc24, %choice.case17 ], [ @str.68.struct, %choice.case25 ], [ @str.68.struct, %choice.next26 ], [ @str.67.struct, %loop.body.182 ]
  %cmptmp = icmp sgt i64 %loop.idx.182.0, 0
  %str.111.struct.str.49.struct = select i1 %cmptmp, ptr @str.111.struct, ptr @str.49.struct
  %app.str.len33 = load i64, ptr %str.111.struct.str.49.struct, align 8
  %app.str.len34 = and i64 %app.str.len33, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.111.struct.str.49.struct, i32 0, i32 1
  %app.str.data35 = load ptr, ptr %app.str.data, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 %app.str.len34)
  %sum37 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf38 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf38, label %str_overflow_abort40, label %b.app.new.len39

choice.case:                                      ; preds = %loop.body.182
  %call.res10 = call { i64, ptr } @"show::show_var"(ptr %slot.i2p)
  %call.res10.fca.0.extract = extractvalue { i64, ptr } %call.res10, 0
  store i64 %call.res10.fca.0.extract, ptr %ret.ub.salloc11, align 8
  %call.res10.fca.1.extract = extractvalue { i64, ptr } %call.res10, 1
  %call.res10.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc11, i32 0, i32 1
  store ptr %call.res10.fca.1.extract, ptr %call.res10.fca.1.gep, align 8
  br label %choice.exit

choice.case17:                                    ; preds = %loop.body.182
  %call.res23 = call { i64, ptr } @"show::show_val"(ptr %slot.i2p)
  %call.res23.fca.0.extract = extractvalue { i64, ptr } %call.res23, 0
  store i64 %call.res23.fca.0.extract, ptr %ret.ub.salloc24, align 8
  %call.res23.fca.1.extract = extractvalue { i64, ptr } %call.res23, 1
  %call.res23.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc24, i32 0, i32 1
  store ptr %call.res23.fca.1.extract, ptr %call.res23.fca.1.gep, align 8
  br label %choice.exit

choice.case25:                                    ; preds = %loop.body.182
  br label %choice.exit

choice.next26:                                    ; preds = %loop.body.182
  br label %choice.exit

b.app.new.len39:                                  ; preds = %choice.exit
  %b.need.grow = icmp slt i64 %builder.new.salloc.sroa.18.0, %sum37
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort40:                             ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len39
  %b.cap2 = mul i64 %builder.new.salloc.sroa.18.0, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum37
  %b.new.cap = select i1 %b.cap.need, i64 %sum37, i64 %b.cap.grow
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum45 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf46 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf46, label %str_overflow_abort48, label %b.new.buf.len247

b.grow_done:                                      ; preds = %b.app.new.len39, %b.new.buf.len247
  %builder.new.salloc.sroa.9.1 = phi ptr [ %b.new.buf2, %b.new.buf.len247 ], [ %builder.new.salloc.sroa.9.0, %b.app.new.len39 ]
  %builder.new.salloc.sroa.18.1 = phi i64 [ %b.new.cap, %b.new.buf.len247 ], [ %builder.new.salloc.sroa.18.0, %b.app.new.len39 ]
  %b.app.dst = getelementptr i8, ptr %builder.new.salloc.sroa.9.1, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data35, i64 %app.str.len34, i1 false)
  %b.app.nul = getelementptr i8, ptr %builder.new.salloc.sroa.9.1, i64 %sum37
  store i8 0, ptr %b.app.nul, align 1
  %cat.seg56 = and i64 %call.res.fca.0.extract, 281474976710655
  %cat.seg61 = load i64, ptr %choice.res, align 8
  %cat.seg62 = and i64 %cat.seg61, 281474976710655
  %cat.seg63 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %cat.seg64 = load ptr, ptr %cat.seg63, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg56, i64 1)
  %sum66 = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf67 = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf67, label %str_overflow_abort69, label %cat.sum.len68

b.new.buf.len247:                                 ; preds = %b.grow2
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 %sum45)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %builder.new.salloc.sroa.9.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul, align 1
  br label %b.grow_done

str_overflow_abort48:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len68:                                    ; preds = %b.grow_done
  %cat.sum.len71 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum66, i64 %cat.seg62)
  %sum72 = extractvalue { i64, i1 } %cat.sum.len71, 0
  %ovf73 = extractvalue { i64, i1 } %cat.sum.len71, 1
  br i1 %ovf73, label %str_overflow_abort75, label %cat.sum.len74

str_overflow_abort69:                             ; preds = %b.grow_done
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len74:                                    ; preds = %cat.sum.len68
  %cat.sum.len77 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum72, i64 2)
  %sum78 = extractvalue { i64, i1 } %cat.sum.len77, 0
  %ovf79 = extractvalue { i64, i1 } %cat.sum.len77, 1
  br i1 %ovf79, label %str_overflow_abort81, label %cat.sum.len80

str_overflow_abort75:                             ; preds = %cat.sum.len68
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len80:                                    ; preds = %cat.sum.len74
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum78, i64 1)
  %sum83 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf84 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf84, label %str_overflow_abort86, label %concat.tot.len85

str_overflow_abort81:                             ; preds = %cat.sum.len74
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len85:                                 ; preds = %cat.sum.len80
  %arena.cur88 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 %sum83)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg56, i1 false)
  %cat.dst89 = getelementptr i8, ptr %concat.buf, i64 %cat.seg56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst89, ptr align 1 @str.119, i64 1, i1 false)
  %cat.off90 = add i64 %cat.seg56, 1
  %cat.dst91 = getelementptr i8, ptr %concat.buf, i64 %cat.off90
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst91, ptr align 1 %cat.seg64, i64 %cat.seg62, i1 false)
  %cat.off92 = add i64 %cat.off90, %cat.seg62
  %cat.dst93 = getelementptr i8, ptr %concat.buf, i64 %cat.off92
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst93, ptr align 1 @str.120, i64 2, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum78
  store i8 0, ptr %concat.nul, align 1
  %arena.cur94 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 16)
  store i64 %sum78, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %b.str.len95 = load i64, ptr %concat.str, align 8
  %b.str.len96 = and i64 %b.str.len95, 281474976710655
  %fld.gep98 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %slot.i2p, i32 0, i32 6
  %fld.load99 = load ptr, ptr %fld.gep98, align 8
  %addtmp = add i64 %1, 1
  %call.res101 = call { i64, ptr } @"show::show_tree"(ptr %fld.load99, i64 %addtmp)
  %arena.cur102 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 16)
  store { i64, ptr } %call.res101, ptr %ret.ub.alloc, align 8
  %b.str.len104 = load i64, ptr %ret.ub.alloc, align 8
  %b.str.len105 = and i64 %b.str.len104, 281474976710655
  %b.add.len106 = add i64 %b.str.len96, %b.str.len105
  %b.rec.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum37, i64 %b.add.len106)
  %sum108 = extractvalue { i64, i1 } %b.rec.new.len, 0
  %ovf109 = extractvalue { i64, i1 } %b.rec.new.len, 1
  br i1 %ovf109, label %str_overflow_abort111, label %b.rec.new.len110

str_overflow_abort86:                             ; preds = %cat.sum.len80
  call void @dva_abort_str_overflow_msg()
  unreachable

b.rec.new.len110:                                 ; preds = %concat.tot.len85
  %b.need.grow115 = icmp slt i64 %builder.new.salloc.sroa.18.1, %sum108
  br i1 %b.need.grow115, label %b.grow2116, label %b.grow_done118

str_overflow_abort111:                            ; preds = %concat.tot.len85
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2116:                                       ; preds = %b.rec.new.len110
  %b.cap2119 = mul i64 %builder.new.salloc.sroa.18.1, 2
  %b.cap.small120 = icmp slt i64 %b.cap2119, 16
  %b.cap.grow121 = select i1 %b.cap.small120, i64 16, i64 %b.cap2119
  %b.cap.need122 = icmp slt i64 %b.cap.grow121, %sum108
  %b.new.cap123 = select i1 %b.cap.need122, i64 %sum108, i64 %b.cap.grow121
  %b.new.buf.len2128 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap123, i64 1)
  %sum129 = extractvalue { i64, i1 } %b.new.buf.len2128, 0
  %ovf130 = extractvalue { i64, i1 } %b.new.buf.len2128, 1
  br i1 %ovf130, label %str_overflow_abort132, label %b.new.buf.len2131

b.grow_done118:                                   ; preds = %b.rec.new.len110, %b.new.buf.len2131
  %builder.new.salloc.sroa.9.2 = phi ptr [ %b.new.buf2135, %b.new.buf.len2131 ], [ %builder.new.salloc.sroa.9.1, %b.rec.new.len110 ]
  %builder.new.salloc.sroa.18.2 = phi i64 [ %b.new.cap123, %b.new.buf.len2131 ], [ %builder.new.salloc.sroa.18.1, %b.rec.new.len110 ]
  %b.rec.dst = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %sum37
  %b.str.data140 = load ptr, ptr %str.build.data.gep, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst, ptr align 1 %b.str.data140, i64 %b.str.len96, i1 false)
  %b.rec.off = add i64 %sum37, %b.str.len96
  %b.rec.dst141 = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %b.rec.off
  %b.str.data142 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %b.str.data143 = load ptr, ptr %b.str.data142, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst141, ptr align 1 %b.str.data143, i64 %b.str.len105, i1 false)
  %b.rec.nul = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %sum108
  store i8 0, ptr %b.rec.nul, align 1
  %loop.next = add i64 %loop.idx.182.0, 1
  br label %loop.header.182

b.new.buf.len2131:                                ; preds = %b.grow2116
  %arena.cur134 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2135 = call ptr @dva_arena_alloc(ptr %arena.cur134, i64 %sum129)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2135, ptr align 1 %builder.new.salloc.sroa.9.1, i64 %sum37, i1 false)
  %b.grow2.nul136 = getelementptr i8, ptr %b.new.buf2135, i64 %sum37
  store i8 0, ptr %b.grow2.nul136, align 1
  br label %b.grow_done118

str_overflow_abort132:                            ; preds = %b.grow2116
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"show::show_typed_target"(ptr %0, ptr %1) #3 {
entry:
  %niche.ne.null = icmp ne ptr %1, null
  br i1 %niche.ne.null, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %call.res = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %1)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %entry, %choice.then
  %choice.res = phi ptr [ %ret.ub.alloc, %choice.then ], [ @str.33.struct, %entry ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %1) #3 {
entry:
  %cat.ibuf2773 = alloca [24 x i8], align 1
  %cat.ibuf2541 = alloca [24 x i8], align 1
  %cat.ibuf2129 = alloca [24 x i8], align 1
  %cat.ibuf242 = alloca [24 x i8], align 1
  %cat.ibuf = alloca [24 x i8], align 1
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %call.res = call { i64, ptr } @"unify::show_utype"(ptr %0, ptr %fld.load)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %concat.rhs4 = load i64, ptr %ret.ub.alloc, align 8
  %concat.rhs5 = and i64 %concat.rhs4, 281474976710655
  %str.tag = lshr i64 %concat.rhs4, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %concat.rhs6 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %concat.rhs7 = load ptr, ptr %concat.rhs6, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 2, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len8

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

concat.sum.len8:                                  ; preds = %str_ok
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum9 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf10 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf10, label %str_overflow_abort12, label %concat.tot.len11

str_overflow_abort:                               ; preds = %str_ok
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len11:                                 ; preds = %concat.sum.len8
  %arena.cur14 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 %sum9)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.121, i64 2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs7, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %fld.load18 = load ptr, ptr %1, align 8
  %tag.id = load i64, ptr %fld.load18, align 8
  switch i64 %tag.id, label %choice.next2761 [
    i64 0, label %choice.case
    i64 1, label %choice.case70
    i64 2, label %choice.case149
    i64 3, label %choice.case225
    i64 4, label %choice.case298
    i64 5, label %choice.case381
    i64 6, label %choice.case425
    i64 7, label %choice.case503
    i64 8, label %choice.case655
    i64 9, label %choice.case772
    i64 10, label %choice.case932
    i64 11, label %choice.case1015
    i64 12, label %choice.case1129
    i64 13, label %choice.case1278
    i64 14, label %choice.case1395
    i64 15, label %choice.case1547
    i64 16, label %choice.case1629
    i64 17, label %choice.case1746
    i64 18, label %choice.case1838
    i64 19, label %choice.case1979
    i64 20, label %choice.case2096
    i64 34, label %choice.case2201
    i64 21, label %choice.case2288
    i64 22, label %choice.case2370
    i64 23, label %choice.case2449
    i64 24, label %choice.case2529
    i64 25, label %choice.case2597
    i64 26, label %choice.case2678
    i64 28, label %choice.case2760
  ]

str_overflow_abort12:                             ; preds = %concat.sum.len8
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.exit:                                      ; preds = %concat.tot.len2886, %concat.tot.len2838, %concat.tot.len2741, %concat.tot.len2659, %concat.tot.len2578, %concat.tot.len2510, %concat.tot.len2430, %concat.tot.len2351, %concat.tot.len2269, %concat.tot.len2178, %concat.tot.len2073, %concat.tot.len1954, %concat.tot.len1819, %concat.tot.len1723, %concat.tot.len1610, %concat.tot.len1520, %concat.tot.len1372, %concat.tot.len1251, %concat.tot.len1106, %concat.tot.len996, %concat.tot.len909, %concat.tot.len749, %concat.tot.len628, %concat.tot.len484, %concat.tot.len411, %concat.tot.len362, %concat.tot.len279, %concat.tot.len206, %concat.tot.len130, %concat.tot.len53
  %choice.res2900 = phi ptr [ %concat.str64, %concat.tot.len53 ], [ %concat.str143, %concat.tot.len130 ], [ %concat.str219, %concat.tot.len206 ], [ %concat.str292, %concat.tot.len279 ], [ %concat.str375, %concat.tot.len362 ], [ %concat.str419, %concat.tot.len411 ], [ %concat.str497, %concat.tot.len484 ], [ %concat.str649, %concat.tot.len628 ], [ %concat.str766, %concat.tot.len749 ], [ %concat.str926, %concat.tot.len909 ], [ %concat.str1009, %concat.tot.len996 ], [ %concat.str1123, %concat.tot.len1106 ], [ %concat.str1272, %concat.tot.len1251 ], [ %concat.str1389, %concat.tot.len1372 ], [ %concat.str1541, %concat.tot.len1520 ], [ %concat.str1623, %concat.tot.len1610 ], [ %concat.str1740, %concat.tot.len1723 ], [ %concat.str1832, %concat.tot.len1819 ], [ %concat.str1973, %concat.tot.len1954 ], [ %concat.str2090, %concat.tot.len2073 ], [ %concat.str2195, %concat.tot.len2178 ], [ %concat.str2282, %concat.tot.len2269 ], [ %concat.str2364, %concat.tot.len2351 ], [ %concat.str2443, %concat.tot.len2430 ], [ %concat.str2523, %concat.tot.len2510 ], [ %concat.str2591, %concat.tot.len2578 ], [ %concat.str2672, %concat.tot.len2659 ], [ %concat.str2754, %concat.tot.len2741 ], [ %concat.str2855, %concat.tot.len2838 ], [ %concat.str2894, %concat.tot.len2886 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res2900, align 8
  ret { i64, ptr } %ret.pack

choice.case:                                      ; preds = %concat.tot.len11
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.int.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.int.null, label %pay.int.merge, label %pay.int.load

pay.int.load:                                     ; preds = %choice.case
  %pay.int.val = load i64, ptr %payload.ptr, align 8
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %choice.case, %pay.int.load
  %pay.int.phi = phi i64 [ %pay.int.val, %pay.int.load ], [ 0, %choice.case ]
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %pay.int.phi, i1 false)
  %cat.seg22 = load i64, ptr %concat.str, align 8
  %cat.seg23 = and i64 %cat.seg22, 281474976710655
  %str.tag24 = lshr i64 %cat.seg22, 48
  %tag.immortal26 = icmp eq i64 %str.tag24, 0
  %active.gen27 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current28 = icmp eq i64 %str.tag24, %active.gen27
  %tag.fast.ok29 = or i1 %tag.immortal26, %tag.current28
  br i1 %tag.fast.ok29, label %str_ok25, label %tag.slow_check30

str_ok25:                                         ; preds = %tag.slow_check30, %pay.int.merge
  %cat.seg32 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 7, i64 %cat.ilen)
  %sum33 = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf34 = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf34, label %str_overflow_abort36, label %cat.sum.len35

tag.slow_check30:                                 ; preds = %pay.int.merge
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag24)
  br label %str_ok25

cat.sum.len35:                                    ; preds = %str_ok25
  %cat.sum.len38 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum33, i64 1)
  %sum39 = extractvalue { i64, i1 } %cat.sum.len38, 0
  %ovf40 = extractvalue { i64, i1 } %cat.sum.len38, 1
  br i1 %ovf40, label %str_overflow_abort42, label %cat.sum.len41

str_overflow_abort36:                             ; preds = %str_ok25
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len41:                                    ; preds = %cat.sum.len35
  %cat.sum.len44 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum39, i64 %cat.seg23)
  %sum45 = extractvalue { i64, i1 } %cat.sum.len44, 0
  %ovf46 = extractvalue { i64, i1 } %cat.sum.len44, 1
  br i1 %ovf46, label %str_overflow_abort48, label %cat.sum.len47

str_overflow_abort42:                             ; preds = %cat.sum.len35
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len47:                                    ; preds = %cat.sum.len41
  %concat.tot.len50 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum45, i64 1)
  %sum51 = extractvalue { i64, i1 } %concat.tot.len50, 0
  %ovf52 = extractvalue { i64, i1 } %concat.tot.len50, 1
  br i1 %ovf52, label %str_overflow_abort54, label %concat.tot.len53

str_overflow_abort48:                             ; preds = %cat.sum.len41
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len53:                                 ; preds = %cat.sum.len47
  %arena.cur56 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf57 = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 %sum51)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf57, ptr align 1 @str.122, i64 7, i1 false)
  %cat.dst58 = getelementptr i8, ptr %concat.buf57, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst58, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %cat.off = add i64 7, %cat.ilen
  %cat.dst59 = getelementptr i8, ptr %concat.buf57, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst59, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off60 = add i64 %cat.off, 1
  %cat.dst61 = getelementptr i8, ptr %concat.buf57, i64 %cat.off60
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst61, ptr align 1 %cat.seg32, i64 %cat.seg23, i1 false)
  %concat.nul62 = getelementptr i8, ptr %concat.buf57, i64 %sum45
  store i8 0, ptr %concat.nul62, align 1
  %arena.cur63 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str64 = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 16)
  %str.tag.gen66 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift67 = shl i64 %str.tag.gen66, 48
  %str.tagged.len68 = or i64 %sum45, %str.tag.shift67
  store i64 %str.tagged.len68, ptr %concat.str64, align 8
  %str.build.data.gep69 = getelementptr inbounds { i64, ptr }, ptr %concat.str64, i32 0, i32 1
  store ptr %concat.buf57, ptr %str.build.data.gep69, align 8
  br label %choice.exit

str_overflow_abort54:                             ; preds = %cat.sum.len47
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case70:                                    ; preds = %concat.tot.len11
  %pay.gep75 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr76 = load ptr, ptr %pay.gep75, align 8
  %pay.float.null = icmp eq ptr %payload.ptr76, null
  br i1 %pay.float.null, label %pay.float.merge, label %pay.float.load

pay.float.load:                                   ; preds = %choice.case70
  %pay.float.val = load double, ptr %payload.ptr76, align 8
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %choice.case70, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %choice.case70 ]
  %call.res80 = call { i64, ptr } @"str::from_float"(double %pay.float.phi)
  %arena.cur81 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc82 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 16)
  store { i64, ptr } %call.res80, ptr %ret.ub.alloc82, align 8
  %cat.seg84 = load i64, ptr %ret.ub.alloc82, align 8
  %cat.seg85 = and i64 %cat.seg84, 281474976710655
  %str.tag86 = lshr i64 %cat.seg84, 48
  %tag.immortal88 = icmp eq i64 %str.tag86, 0
  %active.gen89 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current90 = icmp eq i64 %str.tag86, %active.gen89
  %tag.fast.ok91 = or i1 %tag.immortal88, %tag.current90
  br i1 %tag.fast.ok91, label %str_ok87, label %tag.slow_check92

str_ok87:                                         ; preds = %tag.slow_check92, %pay.float.merge
  %cat.seg93 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc82, i32 0, i32 1
  %cat.seg94 = load ptr, ptr %cat.seg93, align 8
  %cat.seg98 = load i64, ptr %concat.str, align 8
  %cat.seg99 = and i64 %cat.seg98, 281474976710655
  %str.tag100 = lshr i64 %cat.seg98, 48
  %tag.immortal102 = icmp eq i64 %str.tag100, 0
  %active.gen103 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current104 = icmp eq i64 %str.tag100, %active.gen103
  %tag.fast.ok105 = or i1 %tag.immortal102, %tag.current104
  br i1 %tag.fast.ok105, label %str_ok101, label %tag.slow_check106

tag.slow_check92:                                 ; preds = %pay.float.merge
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag86)
  br label %str_ok87

str_ok101:                                        ; preds = %tag.slow_check106, %str_ok87
  %cat.seg108 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len109 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 9, i64 %cat.seg85)
  %sum110 = extractvalue { i64, i1 } %cat.sum.len109, 0
  %ovf111 = extractvalue { i64, i1 } %cat.sum.len109, 1
  br i1 %ovf111, label %str_overflow_abort113, label %cat.sum.len112

tag.slow_check106:                                ; preds = %str_ok87
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag100)
  br label %str_ok101

cat.sum.len112:                                   ; preds = %str_ok101
  %cat.sum.len115 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum110, i64 1)
  %sum116 = extractvalue { i64, i1 } %cat.sum.len115, 0
  %ovf117 = extractvalue { i64, i1 } %cat.sum.len115, 1
  br i1 %ovf117, label %str_overflow_abort119, label %cat.sum.len118

str_overflow_abort113:                            ; preds = %str_ok101
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len118:                                   ; preds = %cat.sum.len112
  %cat.sum.len121 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum116, i64 %cat.seg99)
  %sum122 = extractvalue { i64, i1 } %cat.sum.len121, 0
  %ovf123 = extractvalue { i64, i1 } %cat.sum.len121, 1
  br i1 %ovf123, label %str_overflow_abort125, label %cat.sum.len124

str_overflow_abort119:                            ; preds = %cat.sum.len112
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len124:                                   ; preds = %cat.sum.len118
  %concat.tot.len127 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum122, i64 1)
  %sum128 = extractvalue { i64, i1 } %concat.tot.len127, 0
  %ovf129 = extractvalue { i64, i1 } %concat.tot.len127, 1
  br i1 %ovf129, label %str_overflow_abort131, label %concat.tot.len130

str_overflow_abort125:                            ; preds = %cat.sum.len118
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len130:                                ; preds = %cat.sum.len124
  %arena.cur133 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf134 = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 %sum128)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf134, ptr align 1 @str.123, i64 9, i1 false)
  %cat.dst136 = getelementptr i8, ptr %concat.buf134, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst136, ptr align 1 %cat.seg94, i64 %cat.seg85, i1 false)
  %cat.off137 = add i64 9, %cat.seg85
  %cat.dst138 = getelementptr i8, ptr %concat.buf134, i64 %cat.off137
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst138, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off139 = add i64 %cat.off137, 1
  %cat.dst140 = getelementptr i8, ptr %concat.buf134, i64 %cat.off139
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst140, ptr align 1 %cat.seg108, i64 %cat.seg99, i1 false)
  %concat.nul141 = getelementptr i8, ptr %concat.buf134, i64 %sum122
  store i8 0, ptr %concat.nul141, align 1
  %arena.cur142 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 16)
  %str.tag.gen145 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift146 = shl i64 %str.tag.gen145, 48
  %str.tagged.len147 = or i64 %sum122, %str.tag.shift146
  store i64 %str.tagged.len147, ptr %concat.str143, align 8
  %str.build.data.gep148 = getelementptr inbounds { i64, ptr }, ptr %concat.str143, i32 0, i32 1
  store ptr %concat.buf134, ptr %str.build.data.gep148, align 8
  br label %choice.exit

str_overflow_abort131:                            ; preds = %cat.sum.len124
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case149:                                   ; preds = %concat.tot.len11
  %pay.gep154 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr155 = load ptr, ptr %pay.gep154, align 8
  %cat.seg160 = load i64, ptr %payload.ptr155, align 8
  %cat.seg161 = and i64 %cat.seg160, 281474976710655
  %str.tag162 = lshr i64 %cat.seg160, 48
  %tag.immortal164 = icmp eq i64 %str.tag162, 0
  %active.gen165 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current166 = icmp eq i64 %str.tag162, %active.gen165
  %tag.fast.ok167 = or i1 %tag.immortal164, %tag.current166
  br i1 %tag.fast.ok167, label %str_ok163, label %tag.slow_check168

str_ok163:                                        ; preds = %tag.slow_check168, %choice.case149
  %cat.seg169 = getelementptr inbounds { i64, ptr }, ptr %payload.ptr155, i32 0, i32 1
  %cat.seg170 = load ptr, ptr %cat.seg169, align 8
  %cat.seg174 = load i64, ptr %concat.str, align 8
  %cat.seg175 = and i64 %cat.seg174, 281474976710655
  %str.tag176 = lshr i64 %cat.seg174, 48
  %tag.immortal178 = icmp eq i64 %str.tag176, 0
  %active.gen179 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current180 = icmp eq i64 %str.tag176, %active.gen179
  %tag.fast.ok181 = or i1 %tag.immortal178, %tag.current180
  br i1 %tag.fast.ok181, label %str_ok177, label %tag.slow_check182

tag.slow_check168:                                ; preds = %choice.case149
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag162)
  br label %str_ok163

str_ok177:                                        ; preds = %tag.slow_check182, %str_ok163
  %cat.seg184 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len185 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 8, i64 %cat.seg161)
  %sum186 = extractvalue { i64, i1 } %cat.sum.len185, 0
  %ovf187 = extractvalue { i64, i1 } %cat.sum.len185, 1
  br i1 %ovf187, label %str_overflow_abort189, label %cat.sum.len188

tag.slow_check182:                                ; preds = %str_ok163
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag176)
  br label %str_ok177

cat.sum.len188:                                   ; preds = %str_ok177
  %cat.sum.len191 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum186, i64 2)
  %sum192 = extractvalue { i64, i1 } %cat.sum.len191, 0
  %ovf193 = extractvalue { i64, i1 } %cat.sum.len191, 1
  br i1 %ovf193, label %str_overflow_abort195, label %cat.sum.len194

str_overflow_abort189:                            ; preds = %str_ok177
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len194:                                   ; preds = %cat.sum.len188
  %cat.sum.len197 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum192, i64 %cat.seg175)
  %sum198 = extractvalue { i64, i1 } %cat.sum.len197, 0
  %ovf199 = extractvalue { i64, i1 } %cat.sum.len197, 1
  br i1 %ovf199, label %str_overflow_abort201, label %cat.sum.len200

str_overflow_abort195:                            ; preds = %cat.sum.len188
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len200:                                   ; preds = %cat.sum.len194
  %concat.tot.len203 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum198, i64 1)
  %sum204 = extractvalue { i64, i1 } %concat.tot.len203, 0
  %ovf205 = extractvalue { i64, i1 } %concat.tot.len203, 1
  br i1 %ovf205, label %str_overflow_abort207, label %concat.tot.len206

str_overflow_abort201:                            ; preds = %cat.sum.len194
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len206:                                ; preds = %cat.sum.len200
  %arena.cur209 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf210 = call ptr @dva_arena_alloc(ptr %arena.cur209, i64 %sum204)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf210, ptr align 1 @str.124, i64 8, i1 false)
  %cat.dst212 = getelementptr i8, ptr %concat.buf210, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst212, ptr align 1 %cat.seg170, i64 %cat.seg161, i1 false)
  %cat.off213 = add i64 8, %cat.seg161
  %cat.dst214 = getelementptr i8, ptr %concat.buf210, i64 %cat.off213
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst214, ptr align 1 @str.5, i64 2, i1 false)
  %cat.off215 = add i64 %cat.off213, 2
  %cat.dst216 = getelementptr i8, ptr %concat.buf210, i64 %cat.off215
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst216, ptr align 1 %cat.seg184, i64 %cat.seg175, i1 false)
  %concat.nul217 = getelementptr i8, ptr %concat.buf210, i64 %sum198
  store i8 0, ptr %concat.nul217, align 1
  %arena.cur218 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str219 = call ptr @dva_arena_alloc(ptr %arena.cur218, i64 16)
  %str.tag.gen221 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift222 = shl i64 %str.tag.gen221, 48
  %str.tagged.len223 = or i64 %sum198, %str.tag.shift222
  store i64 %str.tagged.len223, ptr %concat.str219, align 8
  %str.build.data.gep224 = getelementptr inbounds { i64, ptr }, ptr %concat.str219, i32 0, i32 1
  store ptr %concat.buf210, ptr %str.build.data.gep224, align 8
  br label %choice.exit

str_overflow_abort207:                            ; preds = %cat.sum.len200
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case225:                                   ; preds = %concat.tot.len11
  %pay.gep230 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr231 = load ptr, ptr %pay.gep230, align 8
  %pay.int.null232 = icmp eq ptr %payload.ptr231, null
  br i1 %pay.int.null232, label %pay.int.merge235, label %pay.int.load233

pay.int.load233:                                  ; preds = %choice.case225
  %pay.int.val236 = load i64, ptr %payload.ptr231, align 8
  br label %pay.int.merge235

pay.int.merge235:                                 ; preds = %choice.case225, %pay.int.load233
  %pay.int.phi237 = phi i64 [ %pay.int.val236, %pay.int.load233 ], [ 0, %choice.case225 ]
  %cat.ilen243 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf242, i64 %pay.int.phi237, i1 false)
  %cat.seg247 = load i64, ptr %concat.str, align 8
  %cat.seg248 = and i64 %cat.seg247, 281474976710655
  %str.tag249 = lshr i64 %cat.seg247, 48
  %tag.immortal251 = icmp eq i64 %str.tag249, 0
  %active.gen252 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current253 = icmp eq i64 %str.tag249, %active.gen252
  %tag.fast.ok254 = or i1 %tag.immortal251, %tag.current253
  br i1 %tag.fast.ok254, label %str_ok250, label %tag.slow_check255

str_ok250:                                        ; preds = %tag.slow_check255, %pay.int.merge235
  %cat.seg257 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len258 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 8, i64 %cat.ilen243)
  %sum259 = extractvalue { i64, i1 } %cat.sum.len258, 0
  %ovf260 = extractvalue { i64, i1 } %cat.sum.len258, 1
  br i1 %ovf260, label %str_overflow_abort262, label %cat.sum.len261

tag.slow_check255:                                ; preds = %pay.int.merge235
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag249)
  br label %str_ok250

cat.sum.len261:                                   ; preds = %str_ok250
  %cat.sum.len264 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum259, i64 1)
  %sum265 = extractvalue { i64, i1 } %cat.sum.len264, 0
  %ovf266 = extractvalue { i64, i1 } %cat.sum.len264, 1
  br i1 %ovf266, label %str_overflow_abort268, label %cat.sum.len267

str_overflow_abort262:                            ; preds = %str_ok250
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len267:                                   ; preds = %cat.sum.len261
  %cat.sum.len270 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum265, i64 %cat.seg248)
  %sum271 = extractvalue { i64, i1 } %cat.sum.len270, 0
  %ovf272 = extractvalue { i64, i1 } %cat.sum.len270, 1
  br i1 %ovf272, label %str_overflow_abort274, label %cat.sum.len273

str_overflow_abort268:                            ; preds = %cat.sum.len261
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len273:                                   ; preds = %cat.sum.len267
  %concat.tot.len276 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum271, i64 1)
  %sum277 = extractvalue { i64, i1 } %concat.tot.len276, 0
  %ovf278 = extractvalue { i64, i1 } %concat.tot.len276, 1
  br i1 %ovf278, label %str_overflow_abort280, label %concat.tot.len279

str_overflow_abort274:                            ; preds = %cat.sum.len267
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len279:                                ; preds = %cat.sum.len273
  %arena.cur282 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf283 = call ptr @dva_arena_alloc(ptr %arena.cur282, i64 %sum277)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf283, ptr align 1 @str.125, i64 8, i1 false)
  %cat.dst285 = getelementptr i8, ptr %concat.buf283, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst285, ptr align 1 %cat.ibuf242, i64 %cat.ilen243, i1 false)
  %cat.off286 = add i64 8, %cat.ilen243
  %cat.dst287 = getelementptr i8, ptr %concat.buf283, i64 %cat.off286
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst287, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off288 = add i64 %cat.off286, 1
  %cat.dst289 = getelementptr i8, ptr %concat.buf283, i64 %cat.off288
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst289, ptr align 1 %cat.seg257, i64 %cat.seg248, i1 false)
  %concat.nul290 = getelementptr i8, ptr %concat.buf283, i64 %sum271
  store i8 0, ptr %concat.nul290, align 1
  %arena.cur291 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str292 = call ptr @dva_arena_alloc(ptr %arena.cur291, i64 16)
  %str.tag.gen294 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift295 = shl i64 %str.tag.gen294, 48
  %str.tagged.len296 = or i64 %sum271, %str.tag.shift295
  store i64 %str.tagged.len296, ptr %concat.str292, align 8
  %str.build.data.gep297 = getelementptr inbounds { i64, ptr }, ptr %concat.str292, i32 0, i32 1
  store ptr %concat.buf283, ptr %str.build.data.gep297, align 8
  br label %choice.exit

str_overflow_abort280:                            ; preds = %cat.sum.len273
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case298:                                   ; preds = %concat.tot.len11
  %pay.gep303 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr304 = load ptr, ptr %pay.gep303, align 8
  %pay.int.null305 = icmp eq ptr %payload.ptr304, null
  br i1 %pay.int.null305, label %pay.int.merge308, label %pay.int.load306

pay.int.load306:                                  ; preds = %choice.case298
  %pay.int.val309 = load i1, ptr %payload.ptr304, align 1
  br label %pay.int.merge308

pay.int.merge308:                                 ; preds = %choice.case298, %pay.int.load306
  %pay.int.phi310 = phi i1 [ %pay.int.val309, %pay.int.load306 ], [ false, %choice.case298 ]
  %str.127.struct.str.128.struct = select i1 %pay.int.phi310, ptr @str.127.struct, ptr @str.128.struct
  %cat.seg316 = load i64, ptr %str.127.struct.str.128.struct, align 8
  %cat.seg317 = and i64 %cat.seg316, 281474976710655
  %str.tag318 = lshr i64 %cat.seg316, 48
  %tag.immortal320 = icmp eq i64 %str.tag318, 0
  %active.gen321 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current322 = icmp eq i64 %str.tag318, %active.gen321
  %tag.fast.ok323 = or i1 %tag.immortal320, %tag.current322
  br i1 %tag.fast.ok323, label %str_ok319, label %tag.slow_check324

str_ok319:                                        ; preds = %tag.slow_check324, %pay.int.merge308
  %cat.seg325 = getelementptr inbounds { i64, ptr }, ptr %str.127.struct.str.128.struct, i32 0, i32 1
  %cat.seg326 = load ptr, ptr %cat.seg325, align 8
  %cat.seg330 = load i64, ptr %concat.str, align 8
  %cat.seg331 = and i64 %cat.seg330, 281474976710655
  %str.tag332 = lshr i64 %cat.seg330, 48
  %tag.immortal334 = icmp eq i64 %str.tag332, 0
  %active.gen335 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current336 = icmp eq i64 %str.tag332, %active.gen335
  %tag.fast.ok337 = or i1 %tag.immortal334, %tag.current336
  br i1 %tag.fast.ok337, label %str_ok333, label %tag.slow_check338

tag.slow_check324:                                ; preds = %pay.int.merge308
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag318)
  br label %str_ok319

str_ok333:                                        ; preds = %tag.slow_check338, %str_ok319
  %cat.seg340 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len341 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 8, i64 %cat.seg317)
  %sum342 = extractvalue { i64, i1 } %cat.sum.len341, 0
  %ovf343 = extractvalue { i64, i1 } %cat.sum.len341, 1
  br i1 %ovf343, label %str_overflow_abort345, label %cat.sum.len344

tag.slow_check338:                                ; preds = %str_ok319
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag332)
  br label %str_ok333

cat.sum.len344:                                   ; preds = %str_ok333
  %cat.sum.len347 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum342, i64 1)
  %sum348 = extractvalue { i64, i1 } %cat.sum.len347, 0
  %ovf349 = extractvalue { i64, i1 } %cat.sum.len347, 1
  br i1 %ovf349, label %str_overflow_abort351, label %cat.sum.len350

str_overflow_abort345:                            ; preds = %str_ok333
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len350:                                   ; preds = %cat.sum.len344
  %cat.sum.len353 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum348, i64 %cat.seg331)
  %sum354 = extractvalue { i64, i1 } %cat.sum.len353, 0
  %ovf355 = extractvalue { i64, i1 } %cat.sum.len353, 1
  br i1 %ovf355, label %str_overflow_abort357, label %cat.sum.len356

str_overflow_abort351:                            ; preds = %cat.sum.len344
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len356:                                   ; preds = %cat.sum.len350
  %concat.tot.len359 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum354, i64 1)
  %sum360 = extractvalue { i64, i1 } %concat.tot.len359, 0
  %ovf361 = extractvalue { i64, i1 } %concat.tot.len359, 1
  br i1 %ovf361, label %str_overflow_abort363, label %concat.tot.len362

str_overflow_abort357:                            ; preds = %cat.sum.len350
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len362:                                ; preds = %cat.sum.len356
  %arena.cur365 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf366 = call ptr @dva_arena_alloc(ptr %arena.cur365, i64 %sum360)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf366, ptr align 1 @str.126, i64 8, i1 false)
  %cat.dst368 = getelementptr i8, ptr %concat.buf366, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst368, ptr align 1 %cat.seg326, i64 %cat.seg317, i1 false)
  %cat.off369 = add i64 8, %cat.seg317
  %cat.dst370 = getelementptr i8, ptr %concat.buf366, i64 %cat.off369
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst370, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off371 = add i64 %cat.off369, 1
  %cat.dst372 = getelementptr i8, ptr %concat.buf366, i64 %cat.off371
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst372, ptr align 1 %cat.seg340, i64 %cat.seg331, i1 false)
  %concat.nul373 = getelementptr i8, ptr %concat.buf366, i64 %sum354
  store i8 0, ptr %concat.nul373, align 1
  %arena.cur374 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str375 = call ptr @dva_arena_alloc(ptr %arena.cur374, i64 16)
  %str.tag.gen377 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift378 = shl i64 %str.tag.gen377, 48
  %str.tagged.len379 = or i64 %sum354, %str.tag.shift378
  store i64 %str.tagged.len379, ptr %concat.str375, align 8
  %str.build.data.gep380 = getelementptr inbounds { i64, ptr }, ptr %concat.str375, i32 0, i32 1
  store ptr %concat.buf366, ptr %str.build.data.gep380, align 8
  br label %choice.exit

str_overflow_abort363:                            ; preds = %cat.sum.len356
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case381:                                   ; preds = %concat.tot.len11
  %concat.rhs391 = load i64, ptr %concat.str, align 8
  %concat.rhs392 = and i64 %concat.rhs391, 281474976710655
  %str.tag393 = lshr i64 %concat.rhs391, 48
  %tag.immortal395 = icmp eq i64 %str.tag393, 0
  %active.gen396 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current397 = icmp eq i64 %str.tag393, %active.gen396
  %tag.fast.ok398 = or i1 %tag.immortal395, %tag.current397
  br i1 %tag.fast.ok398, label %str_ok394, label %tag.slow_check399

str_ok394:                                        ; preds = %tag.slow_check399, %choice.case381
  %concat.rhs401 = load ptr, ptr %str.build.data.gep, align 8
  %concat.sum.len402 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 7, i64 %concat.rhs392)
  %sum403 = extractvalue { i64, i1 } %concat.sum.len402, 0
  %ovf404 = extractvalue { i64, i1 } %concat.sum.len402, 1
  br i1 %ovf404, label %str_overflow_abort406, label %concat.sum.len405

tag.slow_check399:                                ; preds = %choice.case381
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag393)
  br label %str_ok394

concat.sum.len405:                                ; preds = %str_ok394
  %concat.tot.len408 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum403, i64 1)
  %sum409 = extractvalue { i64, i1 } %concat.tot.len408, 0
  %ovf410 = extractvalue { i64, i1 } %concat.tot.len408, 1
  br i1 %ovf410, label %str_overflow_abort412, label %concat.tot.len411

str_overflow_abort406:                            ; preds = %str_ok394
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len411:                                ; preds = %concat.sum.len405
  %arena.cur414 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf415 = call ptr @dva_arena_alloc(ptr %arena.cur414, i64 %sum409)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf415, ptr align 1 @str.129, i64 7, i1 false)
  %concat.mid416 = getelementptr i8, ptr %concat.buf415, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid416, ptr align 1 %concat.rhs401, i64 %concat.rhs392, i1 false)
  %concat.nul417 = getelementptr i8, ptr %concat.buf415, i64 %sum403
  store i8 0, ptr %concat.nul417, align 1
  %arena.cur418 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str419 = call ptr @dva_arena_alloc(ptr %arena.cur418, i64 16)
  %str.tag.gen421 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift422 = shl i64 %str.tag.gen421, 48
  %str.tagged.len423 = or i64 %sum403, %str.tag.shift422
  store i64 %str.tagged.len423, ptr %concat.str419, align 8
  %str.build.data.gep424 = getelementptr inbounds { i64, ptr }, ptr %concat.str419, i32 0, i32 1
  store ptr %concat.buf415, ptr %str.build.data.gep424, align 8
  br label %choice.exit

str_overflow_abort412:                            ; preds = %concat.sum.len405
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case425:                                   ; preds = %concat.tot.len11
  %pay.gep430 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr431 = load ptr, ptr %pay.gep430, align 8
  %fld.load436 = load ptr, ptr %payload.ptr431, align 8
  %cat.seg438 = load i64, ptr %fld.load436, align 8
  %cat.seg439 = and i64 %cat.seg438, 281474976710655
  %str.tag440 = lshr i64 %cat.seg438, 48
  %tag.immortal442 = icmp eq i64 %str.tag440, 0
  %active.gen443 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current444 = icmp eq i64 %str.tag440, %active.gen443
  %tag.fast.ok445 = or i1 %tag.immortal442, %tag.current444
  br i1 %tag.fast.ok445, label %str_ok441, label %tag.slow_check446

str_ok441:                                        ; preds = %tag.slow_check446, %choice.case425
  %cat.seg447 = getelementptr inbounds { i64, ptr }, ptr %fld.load436, i32 0, i32 1
  %cat.seg448 = load ptr, ptr %cat.seg447, align 8
  %cat.seg452 = load i64, ptr %concat.str, align 8
  %cat.seg453 = and i64 %cat.seg452, 281474976710655
  %str.tag454 = lshr i64 %cat.seg452, 48
  %tag.immortal456 = icmp eq i64 %str.tag454, 0
  %active.gen457 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current458 = icmp eq i64 %str.tag454, %active.gen457
  %tag.fast.ok459 = or i1 %tag.immortal456, %tag.current458
  br i1 %tag.fast.ok459, label %str_ok455, label %tag.slow_check460

tag.slow_check446:                                ; preds = %choice.case425
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag440)
  br label %str_ok441

str_ok455:                                        ; preds = %tag.slow_check460, %str_ok441
  %cat.seg462 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len463 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4, i64 %cat.seg439)
  %sum464 = extractvalue { i64, i1 } %cat.sum.len463, 0
  %ovf465 = extractvalue { i64, i1 } %cat.sum.len463, 1
  br i1 %ovf465, label %str_overflow_abort467, label %cat.sum.len466

tag.slow_check460:                                ; preds = %str_ok441
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag454)
  br label %str_ok455

cat.sum.len466:                                   ; preds = %str_ok455
  %cat.sum.len469 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum464, i64 1)
  %sum470 = extractvalue { i64, i1 } %cat.sum.len469, 0
  %ovf471 = extractvalue { i64, i1 } %cat.sum.len469, 1
  br i1 %ovf471, label %str_overflow_abort473, label %cat.sum.len472

str_overflow_abort467:                            ; preds = %str_ok455
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len472:                                   ; preds = %cat.sum.len466
  %cat.sum.len475 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum470, i64 %cat.seg453)
  %sum476 = extractvalue { i64, i1 } %cat.sum.len475, 0
  %ovf477 = extractvalue { i64, i1 } %cat.sum.len475, 1
  br i1 %ovf477, label %str_overflow_abort479, label %cat.sum.len478

str_overflow_abort473:                            ; preds = %cat.sum.len466
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len478:                                   ; preds = %cat.sum.len472
  %concat.tot.len481 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum476, i64 1)
  %sum482 = extractvalue { i64, i1 } %concat.tot.len481, 0
  %ovf483 = extractvalue { i64, i1 } %concat.tot.len481, 1
  br i1 %ovf483, label %str_overflow_abort485, label %concat.tot.len484

str_overflow_abort479:                            ; preds = %cat.sum.len472
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len484:                                ; preds = %cat.sum.len478
  %arena.cur487 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf488 = call ptr @dva_arena_alloc(ptr %arena.cur487, i64 %sum482)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf488, ptr align 1 @str.6, i64 4, i1 false)
  %cat.dst490 = getelementptr i8, ptr %concat.buf488, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst490, ptr align 1 %cat.seg448, i64 %cat.seg439, i1 false)
  %cat.off491 = add i64 4, %cat.seg439
  %cat.dst492 = getelementptr i8, ptr %concat.buf488, i64 %cat.off491
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst492, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off493 = add i64 %cat.off491, 1
  %cat.dst494 = getelementptr i8, ptr %concat.buf488, i64 %cat.off493
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst494, ptr align 1 %cat.seg462, i64 %cat.seg453, i1 false)
  %concat.nul495 = getelementptr i8, ptr %concat.buf488, i64 %sum476
  store i8 0, ptr %concat.nul495, align 1
  %arena.cur496 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str497 = call ptr @dva_arena_alloc(ptr %arena.cur496, i64 16)
  %str.tag.gen499 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift500 = shl i64 %str.tag.gen499, 48
  %str.tagged.len501 = or i64 %sum476, %str.tag.shift500
  store i64 %str.tagged.len501, ptr %concat.str497, align 8
  %str.build.data.gep502 = getelementptr inbounds { i64, ptr }, ptr %concat.str497, i32 0, i32 1
  store ptr %concat.buf488, ptr %str.build.data.gep502, align 8
  br label %choice.exit

str_overflow_abort485:                            ; preds = %cat.sum.len478
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case503:                                   ; preds = %concat.tot.len11
  %pay.gep508 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr509 = load ptr, ptr %pay.gep508, align 8
  %fld.load515 = load ptr, ptr %payload.ptr509, align 8
  %call.res516 = call { i64, ptr } @"show::show_op"(ptr %fld.load515)
  %arena.cur517 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc518 = call ptr @dva_arena_alloc(ptr %arena.cur517, i64 16)
  store { i64, ptr } %call.res516, ptr %ret.ub.alloc518, align 8
  %cat.seg520 = load i64, ptr %ret.ub.alloc518, align 8
  %cat.seg521 = and i64 %cat.seg520, 281474976710655
  %str.tag522 = lshr i64 %cat.seg520, 48
  %tag.immortal524 = icmp eq i64 %str.tag522, 0
  %active.gen525 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current526 = icmp eq i64 %str.tag522, %active.gen525
  %tag.fast.ok527 = or i1 %tag.immortal524, %tag.current526
  br i1 %tag.fast.ok527, label %str_ok523, label %tag.slow_check528

str_ok523:                                        ; preds = %tag.slow_check528, %choice.case503
  %cat.seg529 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc518, i32 0, i32 1
  %cat.seg530 = load ptr, ptr %cat.seg529, align 8
  %fld.gep534 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr509, i32 0, i32 1
  %call.res535 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %fld.gep534)
  %arena.cur536 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc537 = call ptr @dva_arena_alloc(ptr %arena.cur536, i64 16)
  store { i64, ptr } %call.res535, ptr %ret.ub.alloc537, align 8
  %cat.seg539 = load i64, ptr %ret.ub.alloc537, align 8
  %cat.seg540 = and i64 %cat.seg539, 281474976710655
  %str.tag541 = lshr i64 %cat.seg539, 48
  %tag.immortal543 = icmp eq i64 %str.tag541, 0
  %active.gen544 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current545 = icmp eq i64 %str.tag541, %active.gen544
  %tag.fast.ok546 = or i1 %tag.immortal543, %tag.current545
  br i1 %tag.fast.ok546, label %str_ok542, label %tag.slow_check547

tag.slow_check528:                                ; preds = %choice.case503
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag522)
  br label %str_ok523

str_ok542:                                        ; preds = %tag.slow_check547, %str_ok523
  %cat.seg548 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc537, i32 0, i32 1
  %cat.seg549 = load ptr, ptr %cat.seg548, align 8
  %fld.gep553 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr509, i32 0, i32 2
  %call.res554 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %fld.gep553)
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

tag.slow_check547:                                ; preds = %str_ok523
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag541)
  br label %str_ok542

str_ok561:                                        ; preds = %tag.slow_check566, %str_ok542
  %cat.seg567 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc556, i32 0, i32 1
  %cat.seg568 = load ptr, ptr %cat.seg567, align 8
  %cat.seg572 = load i64, ptr %concat.str, align 8
  %cat.seg573 = and i64 %cat.seg572, 281474976710655
  %str.tag574 = lshr i64 %cat.seg572, 48
  %tag.immortal576 = icmp eq i64 %str.tag574, 0
  %active.gen577 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current578 = icmp eq i64 %str.tag574, %active.gen577
  %tag.fast.ok579 = or i1 %tag.immortal576, %tag.current578
  br i1 %tag.fast.ok579, label %str_ok575, label %tag.slow_check580

tag.slow_check566:                                ; preds = %str_ok542
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag560)
  br label %str_ok561

str_ok575:                                        ; preds = %tag.slow_check580, %str_ok561
  %cat.seg582 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len583 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4, i64 %cat.seg521)
  %sum584 = extractvalue { i64, i1 } %cat.sum.len583, 0
  %ovf585 = extractvalue { i64, i1 } %cat.sum.len583, 1
  br i1 %ovf585, label %str_overflow_abort587, label %cat.sum.len586

tag.slow_check580:                                ; preds = %str_ok561
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag574)
  br label %str_ok575

cat.sum.len586:                                   ; preds = %str_ok575
  %cat.sum.len589 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum584, i64 1)
  %sum590 = extractvalue { i64, i1 } %cat.sum.len589, 0
  %ovf591 = extractvalue { i64, i1 } %cat.sum.len589, 1
  br i1 %ovf591, label %str_overflow_abort593, label %cat.sum.len592

str_overflow_abort587:                            ; preds = %str_ok575
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len592:                                   ; preds = %cat.sum.len586
  %cat.sum.len595 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum590, i64 %cat.seg540)
  %sum596 = extractvalue { i64, i1 } %cat.sum.len595, 0
  %ovf597 = extractvalue { i64, i1 } %cat.sum.len595, 1
  br i1 %ovf597, label %str_overflow_abort599, label %cat.sum.len598

str_overflow_abort593:                            ; preds = %cat.sum.len586
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len598:                                   ; preds = %cat.sum.len592
  %cat.sum.len601 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum596, i64 1)
  %sum602 = extractvalue { i64, i1 } %cat.sum.len601, 0
  %ovf603 = extractvalue { i64, i1 } %cat.sum.len601, 1
  br i1 %ovf603, label %str_overflow_abort605, label %cat.sum.len604

str_overflow_abort599:                            ; preds = %cat.sum.len592
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len604:                                   ; preds = %cat.sum.len598
  %cat.sum.len607 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum602, i64 %cat.seg559)
  %sum608 = extractvalue { i64, i1 } %cat.sum.len607, 0
  %ovf609 = extractvalue { i64, i1 } %cat.sum.len607, 1
  br i1 %ovf609, label %str_overflow_abort611, label %cat.sum.len610

str_overflow_abort605:                            ; preds = %cat.sum.len598
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len610:                                   ; preds = %cat.sum.len604
  %cat.sum.len613 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum608, i64 1)
  %sum614 = extractvalue { i64, i1 } %cat.sum.len613, 0
  %ovf615 = extractvalue { i64, i1 } %cat.sum.len613, 1
  br i1 %ovf615, label %str_overflow_abort617, label %cat.sum.len616

str_overflow_abort611:                            ; preds = %cat.sum.len604
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len616:                                   ; preds = %cat.sum.len610
  %cat.sum.len619 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum614, i64 %cat.seg573)
  %sum620 = extractvalue { i64, i1 } %cat.sum.len619, 0
  %ovf621 = extractvalue { i64, i1 } %cat.sum.len619, 1
  br i1 %ovf621, label %str_overflow_abort623, label %cat.sum.len622

str_overflow_abort617:                            ; preds = %cat.sum.len610
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len622:                                   ; preds = %cat.sum.len616
  %concat.tot.len625 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum620, i64 1)
  %sum626 = extractvalue { i64, i1 } %concat.tot.len625, 0
  %ovf627 = extractvalue { i64, i1 } %concat.tot.len625, 1
  br i1 %ovf627, label %str_overflow_abort629, label %concat.tot.len628

str_overflow_abort623:                            ; preds = %cat.sum.len616
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len628:                                ; preds = %cat.sum.len622
  %arena.cur631 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf632 = call ptr @dva_arena_alloc(ptr %arena.cur631, i64 %sum626)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf632, ptr align 1 @str.7, i64 4, i1 false)
  %cat.dst634 = getelementptr i8, ptr %concat.buf632, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst634, ptr align 1 %cat.seg530, i64 %cat.seg521, i1 false)
  %cat.off635 = add i64 4, %cat.seg521
  %cat.dst636 = getelementptr i8, ptr %concat.buf632, i64 %cat.off635
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst636, ptr align 1 @str.34, i64 1, i1 false)
  %cat.off637 = add i64 %cat.off635, 1
  %cat.dst638 = getelementptr i8, ptr %concat.buf632, i64 %cat.off637
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst638, ptr align 1 %cat.seg549, i64 %cat.seg540, i1 false)
  %cat.off639 = add i64 %cat.off637, %cat.seg540
  %cat.dst640 = getelementptr i8, ptr %concat.buf632, i64 %cat.off639
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst640, ptr align 1 @str.34, i64 1, i1 false)
  %cat.off641 = add i64 %cat.off639, 1
  %cat.dst642 = getelementptr i8, ptr %concat.buf632, i64 %cat.off641
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst642, ptr align 1 %cat.seg568, i64 %cat.seg559, i1 false)
  %cat.off643 = add i64 %cat.off641, %cat.seg559
  %cat.dst644 = getelementptr i8, ptr %concat.buf632, i64 %cat.off643
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst644, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off645 = add i64 %cat.off643, 1
  %cat.dst646 = getelementptr i8, ptr %concat.buf632, i64 %cat.off645
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst646, ptr align 1 %cat.seg582, i64 %cat.seg573, i1 false)
  %concat.nul647 = getelementptr i8, ptr %concat.buf632, i64 %sum620
  store i8 0, ptr %concat.nul647, align 1
  %arena.cur648 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str649 = call ptr @dva_arena_alloc(ptr %arena.cur648, i64 16)
  %str.tag.gen651 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift652 = shl i64 %str.tag.gen651, 48
  %str.tagged.len653 = or i64 %sum620, %str.tag.shift652
  store i64 %str.tagged.len653, ptr %concat.str649, align 8
  %str.build.data.gep654 = getelementptr inbounds { i64, ptr }, ptr %concat.str649, i32 0, i32 1
  store ptr %concat.buf632, ptr %str.build.data.gep654, align 8
  br label %choice.exit

str_overflow_abort629:                            ; preds = %cat.sum.len622
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case655:                                   ; preds = %concat.tot.len11
  %pay.gep660 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr661 = load ptr, ptr %pay.gep660, align 8
  %fld.load667 = load ptr, ptr %payload.ptr661, align 8
  %call.res668 = call { i64, ptr } @"show::show_unop"(ptr %fld.load667)
  %arena.cur669 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc670 = call ptr @dva_arena_alloc(ptr %arena.cur669, i64 16)
  store { i64, ptr } %call.res668, ptr %ret.ub.alloc670, align 8
  %cat.seg672 = load i64, ptr %ret.ub.alloc670, align 8
  %cat.seg673 = and i64 %cat.seg672, 281474976710655
  %str.tag674 = lshr i64 %cat.seg672, 48
  %tag.immortal676 = icmp eq i64 %str.tag674, 0
  %active.gen677 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current678 = icmp eq i64 %str.tag674, %active.gen677
  %tag.fast.ok679 = or i1 %tag.immortal676, %tag.current678
  br i1 %tag.fast.ok679, label %str_ok675, label %tag.slow_check680

str_ok675:                                        ; preds = %tag.slow_check680, %choice.case655
  %cat.seg681 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc670, i32 0, i32 1
  %cat.seg682 = load ptr, ptr %cat.seg681, align 8
  %fld.gep686 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr661, i32 0, i32 1
  %call.res687 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %fld.gep686)
  %arena.cur688 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc689 = call ptr @dva_arena_alloc(ptr %arena.cur688, i64 16)
  store { i64, ptr } %call.res687, ptr %ret.ub.alloc689, align 8
  %cat.seg691 = load i64, ptr %ret.ub.alloc689, align 8
  %cat.seg692 = and i64 %cat.seg691, 281474976710655
  %str.tag693 = lshr i64 %cat.seg691, 48
  %tag.immortal695 = icmp eq i64 %str.tag693, 0
  %active.gen696 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current697 = icmp eq i64 %str.tag693, %active.gen696
  %tag.fast.ok698 = or i1 %tag.immortal695, %tag.current697
  br i1 %tag.fast.ok698, label %str_ok694, label %tag.slow_check699

tag.slow_check680:                                ; preds = %choice.case655
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag674)
  br label %str_ok675

str_ok694:                                        ; preds = %tag.slow_check699, %str_ok675
  %cat.seg700 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc689, i32 0, i32 1
  %cat.seg701 = load ptr, ptr %cat.seg700, align 8
  %cat.seg705 = load i64, ptr %concat.str, align 8
  %cat.seg706 = and i64 %cat.seg705, 281474976710655
  %str.tag707 = lshr i64 %cat.seg705, 48
  %tag.immortal709 = icmp eq i64 %str.tag707, 0
  %active.gen710 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current711 = icmp eq i64 %str.tag707, %active.gen710
  %tag.fast.ok712 = or i1 %tag.immortal709, %tag.current711
  br i1 %tag.fast.ok712, label %str_ok708, label %tag.slow_check713

tag.slow_check699:                                ; preds = %str_ok675
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag693)
  br label %str_ok694

str_ok708:                                        ; preds = %tag.slow_check713, %str_ok694
  %cat.seg715 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len716 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 6, i64 %cat.seg673)
  %sum717 = extractvalue { i64, i1 } %cat.sum.len716, 0
  %ovf718 = extractvalue { i64, i1 } %cat.sum.len716, 1
  br i1 %ovf718, label %str_overflow_abort720, label %cat.sum.len719

tag.slow_check713:                                ; preds = %str_ok694
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag707)
  br label %str_ok708

cat.sum.len719:                                   ; preds = %str_ok708
  %cat.sum.len722 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum717, i64 1)
  %sum723 = extractvalue { i64, i1 } %cat.sum.len722, 0
  %ovf724 = extractvalue { i64, i1 } %cat.sum.len722, 1
  br i1 %ovf724, label %str_overflow_abort726, label %cat.sum.len725

str_overflow_abort720:                            ; preds = %str_ok708
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len725:                                   ; preds = %cat.sum.len719
  %cat.sum.len728 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum723, i64 %cat.seg692)
  %sum729 = extractvalue { i64, i1 } %cat.sum.len728, 0
  %ovf730 = extractvalue { i64, i1 } %cat.sum.len728, 1
  br i1 %ovf730, label %str_overflow_abort732, label %cat.sum.len731

str_overflow_abort726:                            ; preds = %cat.sum.len719
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len731:                                   ; preds = %cat.sum.len725
  %cat.sum.len734 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum729, i64 1)
  %sum735 = extractvalue { i64, i1 } %cat.sum.len734, 0
  %ovf736 = extractvalue { i64, i1 } %cat.sum.len734, 1
  br i1 %ovf736, label %str_overflow_abort738, label %cat.sum.len737

str_overflow_abort732:                            ; preds = %cat.sum.len725
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len737:                                   ; preds = %cat.sum.len731
  %cat.sum.len740 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum735, i64 %cat.seg706)
  %sum741 = extractvalue { i64, i1 } %cat.sum.len740, 0
  %ovf742 = extractvalue { i64, i1 } %cat.sum.len740, 1
  br i1 %ovf742, label %str_overflow_abort744, label %cat.sum.len743

str_overflow_abort738:                            ; preds = %cat.sum.len731
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len743:                                   ; preds = %cat.sum.len737
  %concat.tot.len746 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum741, i64 1)
  %sum747 = extractvalue { i64, i1 } %concat.tot.len746, 0
  %ovf748 = extractvalue { i64, i1 } %concat.tot.len746, 1
  br i1 %ovf748, label %str_overflow_abort750, label %concat.tot.len749

str_overflow_abort744:                            ; preds = %cat.sum.len737
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len749:                                ; preds = %cat.sum.len743
  %arena.cur752 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf753 = call ptr @dva_arena_alloc(ptr %arena.cur752, i64 %sum747)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf753, ptr align 1 @str.35, i64 6, i1 false)
  %cat.dst755 = getelementptr i8, ptr %concat.buf753, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst755, ptr align 1 %cat.seg682, i64 %cat.seg673, i1 false)
  %cat.off756 = add i64 6, %cat.seg673
  %cat.dst757 = getelementptr i8, ptr %concat.buf753, i64 %cat.off756
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst757, ptr align 1 @str.34, i64 1, i1 false)
  %cat.off758 = add i64 %cat.off756, 1
  %cat.dst759 = getelementptr i8, ptr %concat.buf753, i64 %cat.off758
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst759, ptr align 1 %cat.seg701, i64 %cat.seg692, i1 false)
  %cat.off760 = add i64 %cat.off758, %cat.seg692
  %cat.dst761 = getelementptr i8, ptr %concat.buf753, i64 %cat.off760
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst761, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off762 = add i64 %cat.off760, 1
  %cat.dst763 = getelementptr i8, ptr %concat.buf753, i64 %cat.off762
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst763, ptr align 1 %cat.seg715, i64 %cat.seg706, i1 false)
  %concat.nul764 = getelementptr i8, ptr %concat.buf753, i64 %sum741
  store i8 0, ptr %concat.nul764, align 1
  %arena.cur765 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str766 = call ptr @dva_arena_alloc(ptr %arena.cur765, i64 16)
  %str.tag.gen768 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift769 = shl i64 %str.tag.gen768, 48
  %str.tagged.len770 = or i64 %sum741, %str.tag.shift769
  store i64 %str.tagged.len770, ptr %concat.str766, align 8
  %str.build.data.gep771 = getelementptr inbounds { i64, ptr }, ptr %concat.str766, i32 0, i32 1
  store ptr %concat.buf753, ptr %str.build.data.gep771, align 8
  br label %choice.exit

str_overflow_abort750:                            ; preds = %cat.sum.len743
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case772:                                   ; preds = %concat.tot.len11
  %pay.gep777 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr778 = load ptr, ptr %pay.gep777, align 8
  %fld.load783 = load ptr, ptr %payload.ptr778, align 8
  %eq.lhs.len784 = load i64, ptr %fld.load783, align 8
  %eq.lhs.len785 = and i64 %eq.lhs.len784, 281474976710655
  %str.tag786 = lshr i64 %eq.lhs.len784, 48
  %tag.immortal788 = icmp eq i64 %str.tag786, 0
  %active.gen789 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current790 = icmp eq i64 %str.tag786, %active.gen789
  %tag.fast.ok791 = or i1 %tag.immortal788, %tag.current790
  br i1 %tag.fast.ok791, label %str_ok787, label %tag.slow_check792

str_ok787:                                        ; preds = %tag.slow_check792, %choice.case772
  %eq.len = icmp eq i64 %eq.lhs.len785, 0
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

tag.slow_check792:                                ; preds = %choice.case772
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag786)
  br label %str_ok787

str.eq.then:                                      ; preds = %str_ok787
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load783, i32 0, i32 1
  %eq.lhs.data794 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data794, ptr @str.49, i64 %eq.lhs.len785)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str_ok787, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str_ok787 ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then795, label %choice.else796

choice.then795:                                   ; preds = %str.eq.merge
  %fld.load800 = load ptr, ptr %payload.ptr778, align 8
  br label %choice.exit797

choice.else796:                                   ; preds = %str.eq.merge
  %fld.gep803 = getelementptr inbounds { ptr, ptr, ptr }, ptr %payload.ptr778, i32 0, i32 1
  %fld.load804 = load ptr, ptr %fld.gep803, align 8
  %call.res805 = call { i64, ptr } @"show::show_typed_target"(ptr %0, ptr %fld.load804)
  %arena.cur806 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc807 = call ptr @dva_arena_alloc(ptr %arena.cur806, i64 16)
  store { i64, ptr } %call.res805, ptr %ret.ub.alloc807, align 8
  br label %choice.exit797

choice.exit797:                                   ; preds = %choice.else796, %choice.then795
  %choice.res808 = phi ptr [ %fld.load800, %choice.then795 ], [ %ret.ub.alloc807, %choice.else796 ]
  %cat.seg812 = load i64, ptr %choice.res808, align 8
  %cat.seg813 = and i64 %cat.seg812, 281474976710655
  %str.tag814 = lshr i64 %cat.seg812, 48
  %tag.immortal816 = icmp eq i64 %str.tag814, 0
  %active.gen817 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current818 = icmp eq i64 %str.tag814, %active.gen817
  %tag.fast.ok819 = or i1 %tag.immortal816, %tag.current818
  br i1 %tag.fast.ok819, label %str_ok815, label %tag.slow_check820

str_ok815:                                        ; preds = %tag.slow_check820, %choice.exit797
  %cat.seg821 = getelementptr inbounds { i64, ptr }, ptr %choice.res808, i32 0, i32 1
  %cat.seg822 = load ptr, ptr %cat.seg821, align 8
  %fld.gep824 = getelementptr inbounds { ptr, ptr, ptr }, ptr %payload.ptr778, i32 0, i32 2
  %fld.load825 = load ptr, ptr %fld.gep824, align 8
  %a.len.query826 = load i64, ptr %fld.load825, align 8
  %cmptmp = icmp slt i64 0, %a.len.query826
  %str.34.struct.str.49.struct = select i1 %cmptmp, ptr @str.34.struct, ptr @str.49.struct
  %cat.seg832 = load i64, ptr %str.34.struct.str.49.struct, align 8
  %cat.seg833 = and i64 %cat.seg832, 281474976710655
  %str.tag834 = lshr i64 %cat.seg832, 48
  %tag.immortal836 = icmp eq i64 %str.tag834, 0
  %active.gen837 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current838 = icmp eq i64 %str.tag834, %active.gen837
  %tag.fast.ok839 = or i1 %tag.immortal836, %tag.current838
  br i1 %tag.fast.ok839, label %str_ok835, label %tag.slow_check840

tag.slow_check820:                                ; preds = %choice.exit797
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag814)
  br label %str_ok815

str_ok835:                                        ; preds = %tag.slow_check840, %str_ok815
  %cat.seg841 = getelementptr inbounds { i64, ptr }, ptr %str.34.struct.str.49.struct, i32 0, i32 1
  %cat.seg842 = load ptr, ptr %cat.seg841, align 8
  %fld.load846 = load ptr, ptr %fld.gep824, align 8
  %call.res847 = call { i64, ptr } @"show::show_typed_exprs"(ptr %0, ptr %fld.load846)
  %arena.cur848 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc849 = call ptr @dva_arena_alloc(ptr %arena.cur848, i64 16)
  store { i64, ptr } %call.res847, ptr %ret.ub.alloc849, align 8
  %cat.seg851 = load i64, ptr %ret.ub.alloc849, align 8
  %cat.seg852 = and i64 %cat.seg851, 281474976710655
  %str.tag853 = lshr i64 %cat.seg851, 48
  %tag.immortal855 = icmp eq i64 %str.tag853, 0
  %active.gen856 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current857 = icmp eq i64 %str.tag853, %active.gen856
  %tag.fast.ok858 = or i1 %tag.immortal855, %tag.current857
  br i1 %tag.fast.ok858, label %str_ok854, label %tag.slow_check859

tag.slow_check840:                                ; preds = %str_ok815
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag834)
  br label %str_ok835

str_ok854:                                        ; preds = %tag.slow_check859, %str_ok835
  %cat.seg860 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc849, i32 0, i32 1
  %cat.seg861 = load ptr, ptr %cat.seg860, align 8
  %cat.seg865 = load i64, ptr %concat.str, align 8
  %cat.seg866 = and i64 %cat.seg865, 281474976710655
  %str.tag867 = lshr i64 %cat.seg865, 48
  %tag.immortal869 = icmp eq i64 %str.tag867, 0
  %active.gen870 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current871 = icmp eq i64 %str.tag867, %active.gen870
  %tag.fast.ok872 = or i1 %tag.immortal869, %tag.current871
  br i1 %tag.fast.ok872, label %str_ok868, label %tag.slow_check873

tag.slow_check859:                                ; preds = %str_ok835
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag853)
  br label %str_ok854

str_ok868:                                        ; preds = %tag.slow_check873, %str_ok854
  %cat.seg875 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len876 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 5, i64 %cat.seg813)
  %sum877 = extractvalue { i64, i1 } %cat.sum.len876, 0
  %ovf878 = extractvalue { i64, i1 } %cat.sum.len876, 1
  br i1 %ovf878, label %str_overflow_abort880, label %cat.sum.len879

tag.slow_check873:                                ; preds = %str_ok854
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag867)
  br label %str_ok868

cat.sum.len879:                                   ; preds = %str_ok868
  %cat.sum.len882 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum877, i64 %cat.seg833)
  %sum883 = extractvalue { i64, i1 } %cat.sum.len882, 0
  %ovf884 = extractvalue { i64, i1 } %cat.sum.len882, 1
  br i1 %ovf884, label %str_overflow_abort886, label %cat.sum.len885

str_overflow_abort880:                            ; preds = %str_ok868
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len885:                                   ; preds = %cat.sum.len879
  %cat.sum.len888 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum883, i64 %cat.seg852)
  %sum889 = extractvalue { i64, i1 } %cat.sum.len888, 0
  %ovf890 = extractvalue { i64, i1 } %cat.sum.len888, 1
  br i1 %ovf890, label %str_overflow_abort892, label %cat.sum.len891

str_overflow_abort886:                            ; preds = %cat.sum.len879
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len891:                                   ; preds = %cat.sum.len885
  %cat.sum.len894 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum889, i64 1)
  %sum895 = extractvalue { i64, i1 } %cat.sum.len894, 0
  %ovf896 = extractvalue { i64, i1 } %cat.sum.len894, 1
  br i1 %ovf896, label %str_overflow_abort898, label %cat.sum.len897

str_overflow_abort892:                            ; preds = %cat.sum.len885
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len897:                                   ; preds = %cat.sum.len891
  %cat.sum.len900 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum895, i64 %cat.seg866)
  %sum901 = extractvalue { i64, i1 } %cat.sum.len900, 0
  %ovf902 = extractvalue { i64, i1 } %cat.sum.len900, 1
  br i1 %ovf902, label %str_overflow_abort904, label %cat.sum.len903

str_overflow_abort898:                            ; preds = %cat.sum.len891
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len903:                                   ; preds = %cat.sum.len897
  %concat.tot.len906 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum901, i64 1)
  %sum907 = extractvalue { i64, i1 } %concat.tot.len906, 0
  %ovf908 = extractvalue { i64, i1 } %concat.tot.len906, 1
  br i1 %ovf908, label %str_overflow_abort910, label %concat.tot.len909

str_overflow_abort904:                            ; preds = %cat.sum.len897
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len909:                                ; preds = %cat.sum.len903
  %arena.cur912 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf913 = call ptr @dva_arena_alloc(ptr %arena.cur912, i64 %sum907)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf913, ptr align 1 @str.71, i64 5, i1 false)
  %cat.dst915 = getelementptr i8, ptr %concat.buf913, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst915, ptr align 1 %cat.seg822, i64 %cat.seg813, i1 false)
  %cat.off916 = add i64 5, %cat.seg813
  %cat.dst917 = getelementptr i8, ptr %concat.buf913, i64 %cat.off916
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst917, ptr align 1 %cat.seg842, i64 %cat.seg833, i1 false)
  %cat.off918 = add i64 %cat.off916, %cat.seg833
  %cat.dst919 = getelementptr i8, ptr %concat.buf913, i64 %cat.off918
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst919, ptr align 1 %cat.seg861, i64 %cat.seg852, i1 false)
  %cat.off920 = add i64 %cat.off918, %cat.seg852
  %cat.dst921 = getelementptr i8, ptr %concat.buf913, i64 %cat.off920
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst921, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off922 = add i64 %cat.off920, 1
  %cat.dst923 = getelementptr i8, ptr %concat.buf913, i64 %cat.off922
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst923, ptr align 1 %cat.seg875, i64 %cat.seg866, i1 false)
  %concat.nul924 = getelementptr i8, ptr %concat.buf913, i64 %sum901
  store i8 0, ptr %concat.nul924, align 1
  %arena.cur925 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str926 = call ptr @dva_arena_alloc(ptr %arena.cur925, i64 16)
  %str.tag.gen928 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift929 = shl i64 %str.tag.gen928, 48
  %str.tagged.len930 = or i64 %sum901, %str.tag.shift929
  store i64 %str.tagged.len930, ptr %concat.str926, align 8
  %str.build.data.gep931 = getelementptr inbounds { i64, ptr }, ptr %concat.str926, i32 0, i32 1
  store ptr %concat.buf913, ptr %str.build.data.gep931, align 8
  br label %choice.exit

str_overflow_abort910:                            ; preds = %cat.sum.len903
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case932:                                   ; preds = %concat.tot.len11
  %pay.gep937 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr938 = load ptr, ptr %pay.gep937, align 8
  %a.null = icmp eq ptr %payload.ptr938, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %choice.case932
  %arena.cur943 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create944 = call ptr @dva_arena_alloc(ptr %arena.cur943, i64 24)
  %arena.cur945 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur945, i64 128)
  store i64 0, ptr %a.create944, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create944, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create944, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case932
  %var.fs.0 = phi ptr [ %a.create944, %a.create ], [ %payload.ptr938, %choice.case932 ]
  %call.res946 = call { i64, ptr } @"show::show_typed_fields"(ptr %0, ptr %var.fs.0)
  %arena.cur947 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc948 = call ptr @dva_arena_alloc(ptr %arena.cur947, i64 16)
  store { i64, ptr } %call.res946, ptr %ret.ub.alloc948, align 8
  %cat.seg950 = load i64, ptr %ret.ub.alloc948, align 8
  %cat.seg951 = and i64 %cat.seg950, 281474976710655
  %str.tag952 = lshr i64 %cat.seg950, 48
  %tag.immortal954 = icmp eq i64 %str.tag952, 0
  %active.gen955 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current956 = icmp eq i64 %str.tag952, %active.gen955
  %tag.fast.ok957 = or i1 %tag.immortal954, %tag.current956
  br i1 %tag.fast.ok957, label %str_ok953, label %tag.slow_check958

str_ok953:                                        ; preds = %tag.slow_check958, %a.after
  %cat.seg959 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc948, i32 0, i32 1
  %cat.seg960 = load ptr, ptr %cat.seg959, align 8
  %cat.seg964 = load i64, ptr %concat.str, align 8
  %cat.seg965 = and i64 %cat.seg964, 281474976710655
  %str.tag966 = lshr i64 %cat.seg964, 48
  %tag.immortal968 = icmp eq i64 %str.tag966, 0
  %active.gen969 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current970 = icmp eq i64 %str.tag966, %active.gen969
  %tag.fast.ok971 = or i1 %tag.immortal968, %tag.current970
  br i1 %tag.fast.ok971, label %str_ok967, label %tag.slow_check972

tag.slow_check958:                                ; preds = %a.after
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag952)
  br label %str_ok953

str_ok967:                                        ; preds = %tag.slow_check972, %str_ok953
  %cat.seg974 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len975 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 7, i64 %cat.seg951)
  %sum976 = extractvalue { i64, i1 } %cat.sum.len975, 0
  %ovf977 = extractvalue { i64, i1 } %cat.sum.len975, 1
  br i1 %ovf977, label %str_overflow_abort979, label %cat.sum.len978

tag.slow_check972:                                ; preds = %str_ok953
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag966)
  br label %str_ok967

cat.sum.len978:                                   ; preds = %str_ok967
  %cat.sum.len981 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum976, i64 1)
  %sum982 = extractvalue { i64, i1 } %cat.sum.len981, 0
  %ovf983 = extractvalue { i64, i1 } %cat.sum.len981, 1
  br i1 %ovf983, label %str_overflow_abort985, label %cat.sum.len984

str_overflow_abort979:                            ; preds = %str_ok967
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len984:                                   ; preds = %cat.sum.len978
  %cat.sum.len987 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum982, i64 %cat.seg965)
  %sum988 = extractvalue { i64, i1 } %cat.sum.len987, 0
  %ovf989 = extractvalue { i64, i1 } %cat.sum.len987, 1
  br i1 %ovf989, label %str_overflow_abort991, label %cat.sum.len990

str_overflow_abort985:                            ; preds = %cat.sum.len978
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len990:                                   ; preds = %cat.sum.len984
  %concat.tot.len993 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum988, i64 1)
  %sum994 = extractvalue { i64, i1 } %concat.tot.len993, 0
  %ovf995 = extractvalue { i64, i1 } %concat.tot.len993, 1
  br i1 %ovf995, label %str_overflow_abort997, label %concat.tot.len996

str_overflow_abort991:                            ; preds = %cat.sum.len984
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len996:                                ; preds = %cat.sum.len990
  %arena.cur999 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1000 = call ptr @dva_arena_alloc(ptr %arena.cur999, i64 %sum994)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1000, ptr align 1 @str.85, i64 7, i1 false)
  %cat.dst1002 = getelementptr i8, ptr %concat.buf1000, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1002, ptr align 1 %cat.seg960, i64 %cat.seg951, i1 false)
  %cat.off1003 = add i64 7, %cat.seg951
  %cat.dst1004 = getelementptr i8, ptr %concat.buf1000, i64 %cat.off1003
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1004, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off1005 = add i64 %cat.off1003, 1
  %cat.dst1006 = getelementptr i8, ptr %concat.buf1000, i64 %cat.off1005
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1006, ptr align 1 %cat.seg974, i64 %cat.seg965, i1 false)
  %concat.nul1007 = getelementptr i8, ptr %concat.buf1000, i64 %sum988
  store i8 0, ptr %concat.nul1007, align 1
  %arena.cur1008 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1009 = call ptr @dva_arena_alloc(ptr %arena.cur1008, i64 16)
  %str.tag.gen1011 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1012 = shl i64 %str.tag.gen1011, 48
  %str.tagged.len1013 = or i64 %sum988, %str.tag.shift1012
  store i64 %str.tagged.len1013, ptr %concat.str1009, align 8
  %str.build.data.gep1014 = getelementptr inbounds { i64, ptr }, ptr %concat.str1009, i32 0, i32 1
  store ptr %concat.buf1000, ptr %str.build.data.gep1014, align 8
  br label %choice.exit

str_overflow_abort997:                            ; preds = %cat.sum.len990
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1015:                                  ; preds = %concat.tot.len11
  %pay.gep1020 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr1021 = load ptr, ptr %pay.gep1020, align 8
  %call.res1028 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %payload.ptr1021)
  %arena.cur1029 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1030 = call ptr @dva_arena_alloc(ptr %arena.cur1029, i64 16)
  store { i64, ptr } %call.res1028, ptr %ret.ub.alloc1030, align 8
  %cat.seg1032 = load i64, ptr %ret.ub.alloc1030, align 8
  %cat.seg1033 = and i64 %cat.seg1032, 281474976710655
  %str.tag1034 = lshr i64 %cat.seg1032, 48
  %tag.immortal1036 = icmp eq i64 %str.tag1034, 0
  %active.gen1037 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1038 = icmp eq i64 %str.tag1034, %active.gen1037
  %tag.fast.ok1039 = or i1 %tag.immortal1036, %tag.current1038
  br i1 %tag.fast.ok1039, label %str_ok1035, label %tag.slow_check1040

str_ok1035:                                       ; preds = %tag.slow_check1040, %choice.case1015
  %cat.seg1041 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1030, i32 0, i32 1
  %cat.seg1042 = load ptr, ptr %cat.seg1041, align 8
  %fld.gep1045 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr %payload.ptr1021, i32 0, i32 1
  %fld.load1046 = load ptr, ptr %fld.gep1045, align 8
  %cat.seg1048 = load i64, ptr %fld.load1046, align 8
  %cat.seg1049 = and i64 %cat.seg1048, 281474976710655
  %str.tag1050 = lshr i64 %cat.seg1048, 48
  %tag.immortal1052 = icmp eq i64 %str.tag1050, 0
  %active.gen1053 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1054 = icmp eq i64 %str.tag1050, %active.gen1053
  %tag.fast.ok1055 = or i1 %tag.immortal1052, %tag.current1054
  br i1 %tag.fast.ok1055, label %str_ok1051, label %tag.slow_check1056

tag.slow_check1040:                               ; preds = %choice.case1015
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1034)
  br label %str_ok1035

str_ok1051:                                       ; preds = %tag.slow_check1056, %str_ok1035
  %cat.seg1057 = getelementptr inbounds { i64, ptr }, ptr %fld.load1046, i32 0, i32 1
  %cat.seg1058 = load ptr, ptr %cat.seg1057, align 8
  %cat.seg1062 = load i64, ptr %concat.str, align 8
  %cat.seg1063 = and i64 %cat.seg1062, 281474976710655
  %str.tag1064 = lshr i64 %cat.seg1062, 48
  %tag.immortal1066 = icmp eq i64 %str.tag1064, 0
  %active.gen1067 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1068 = icmp eq i64 %str.tag1064, %active.gen1067
  %tag.fast.ok1069 = or i1 %tag.immortal1066, %tag.current1068
  br i1 %tag.fast.ok1069, label %str_ok1065, label %tag.slow_check1070

tag.slow_check1056:                               ; preds = %str_ok1035
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1050)
  br label %str_ok1051

str_ok1065:                                       ; preds = %tag.slow_check1070, %str_ok1051
  %cat.seg1072 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len1073 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 7, i64 %cat.seg1033)
  %sum1074 = extractvalue { i64, i1 } %cat.sum.len1073, 0
  %ovf1075 = extractvalue { i64, i1 } %cat.sum.len1073, 1
  br i1 %ovf1075, label %str_overflow_abort1077, label %cat.sum.len1076

tag.slow_check1070:                               ; preds = %str_ok1051
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1064)
  br label %str_ok1065

cat.sum.len1076:                                  ; preds = %str_ok1065
  %cat.sum.len1079 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1074, i64 1)
  %sum1080 = extractvalue { i64, i1 } %cat.sum.len1079, 0
  %ovf1081 = extractvalue { i64, i1 } %cat.sum.len1079, 1
  br i1 %ovf1081, label %str_overflow_abort1083, label %cat.sum.len1082

str_overflow_abort1077:                           ; preds = %str_ok1065
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1082:                                  ; preds = %cat.sum.len1076
  %cat.sum.len1085 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1080, i64 %cat.seg1049)
  %sum1086 = extractvalue { i64, i1 } %cat.sum.len1085, 0
  %ovf1087 = extractvalue { i64, i1 } %cat.sum.len1085, 1
  br i1 %ovf1087, label %str_overflow_abort1089, label %cat.sum.len1088

str_overflow_abort1083:                           ; preds = %cat.sum.len1076
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1088:                                  ; preds = %cat.sum.len1082
  %cat.sum.len1091 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1086, i64 1)
  %sum1092 = extractvalue { i64, i1 } %cat.sum.len1091, 0
  %ovf1093 = extractvalue { i64, i1 } %cat.sum.len1091, 1
  br i1 %ovf1093, label %str_overflow_abort1095, label %cat.sum.len1094

str_overflow_abort1089:                           ; preds = %cat.sum.len1082
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1094:                                  ; preds = %cat.sum.len1088
  %cat.sum.len1097 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1092, i64 %cat.seg1063)
  %sum1098 = extractvalue { i64, i1 } %cat.sum.len1097, 0
  %ovf1099 = extractvalue { i64, i1 } %cat.sum.len1097, 1
  br i1 %ovf1099, label %str_overflow_abort1101, label %cat.sum.len1100

str_overflow_abort1095:                           ; preds = %cat.sum.len1088
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1100:                                  ; preds = %cat.sum.len1094
  %concat.tot.len1103 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1098, i64 1)
  %sum1104 = extractvalue { i64, i1 } %concat.tot.len1103, 0
  %ovf1105 = extractvalue { i64, i1 } %concat.tot.len1103, 1
  br i1 %ovf1105, label %str_overflow_abort1107, label %concat.tot.len1106

str_overflow_abort1101:                           ; preds = %cat.sum.len1094
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1106:                               ; preds = %cat.sum.len1100
  %arena.cur1109 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1110 = call ptr @dva_arena_alloc(ptr %arena.cur1109, i64 %sum1104)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1110, ptr align 1 @str.79, i64 7, i1 false)
  %cat.dst1112 = getelementptr i8, ptr %concat.buf1110, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1112, ptr align 1 %cat.seg1042, i64 %cat.seg1033, i1 false)
  %cat.off1113 = add i64 7, %cat.seg1033
  %cat.dst1114 = getelementptr i8, ptr %concat.buf1110, i64 %cat.off1113
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1114, ptr align 1 @str.81, i64 1, i1 false)
  %cat.off1115 = add i64 %cat.off1113, 1
  %cat.dst1116 = getelementptr i8, ptr %concat.buf1110, i64 %cat.off1115
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1116, ptr align 1 %cat.seg1058, i64 %cat.seg1049, i1 false)
  %cat.off1117 = add i64 %cat.off1115, %cat.seg1049
  %cat.dst1118 = getelementptr i8, ptr %concat.buf1110, i64 %cat.off1117
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1118, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off1119 = add i64 %cat.off1117, 1
  %cat.dst1120 = getelementptr i8, ptr %concat.buf1110, i64 %cat.off1119
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1120, ptr align 1 %cat.seg1072, i64 %cat.seg1063, i1 false)
  %concat.nul1121 = getelementptr i8, ptr %concat.buf1110, i64 %sum1098
  store i8 0, ptr %concat.nul1121, align 1
  %arena.cur1122 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1123 = call ptr @dva_arena_alloc(ptr %arena.cur1122, i64 16)
  %str.tag.gen1125 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1126 = shl i64 %str.tag.gen1125, 48
  %str.tagged.len1127 = or i64 %sum1098, %str.tag.shift1126
  store i64 %str.tagged.len1127, ptr %concat.str1123, align 8
  %str.build.data.gep1128 = getelementptr inbounds { i64, ptr }, ptr %concat.str1123, i32 0, i32 1
  store ptr %concat.buf1110, ptr %str.build.data.gep1128, align 8
  br label %choice.exit

str_overflow_abort1107:                           ; preds = %cat.sum.len1100
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1129:                                  ; preds = %concat.tot.len11
  %pay.gep1134 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr1135 = load ptr, ptr %pay.gep1134, align 8
  %call.res1142 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %payload.ptr1135)
  %arena.cur1143 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1144 = call ptr @dva_arena_alloc(ptr %arena.cur1143, i64 16)
  store { i64, ptr } %call.res1142, ptr %ret.ub.alloc1144, align 8
  %cat.seg1146 = load i64, ptr %ret.ub.alloc1144, align 8
  %cat.seg1147 = and i64 %cat.seg1146, 281474976710655
  %str.tag1148 = lshr i64 %cat.seg1146, 48
  %tag.immortal1150 = icmp eq i64 %str.tag1148, 0
  %active.gen1151 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1152 = icmp eq i64 %str.tag1148, %active.gen1151
  %tag.fast.ok1153 = or i1 %tag.immortal1150, %tag.current1152
  br i1 %tag.fast.ok1153, label %str_ok1149, label %tag.slow_check1154

str_ok1149:                                       ; preds = %tag.slow_check1154, %choice.case1129
  %cat.seg1155 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1144, i32 0, i32 1
  %cat.seg1156 = load ptr, ptr %cat.seg1155, align 8
  %fld.gep1159 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr1135, i32 0, i32 1
  %fld.load1160 = load ptr, ptr %fld.gep1159, align 8
  %cat.seg1162 = load i64, ptr %fld.load1160, align 8
  %cat.seg1163 = and i64 %cat.seg1162, 281474976710655
  %str.tag1164 = lshr i64 %cat.seg1162, 48
  %tag.immortal1166 = icmp eq i64 %str.tag1164, 0
  %active.gen1167 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1168 = icmp eq i64 %str.tag1164, %active.gen1167
  %tag.fast.ok1169 = or i1 %tag.immortal1166, %tag.current1168
  br i1 %tag.fast.ok1169, label %str_ok1165, label %tag.slow_check1170

tag.slow_check1154:                               ; preds = %choice.case1129
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1148)
  br label %str_ok1149

str_ok1165:                                       ; preds = %tag.slow_check1170, %str_ok1149
  %cat.seg1171 = getelementptr inbounds { i64, ptr }, ptr %fld.load1160, i32 0, i32 1
  %cat.seg1172 = load ptr, ptr %cat.seg1171, align 8
  %fld.gep1176 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr1135, i32 0, i32 3
  %call.res1177 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %fld.gep1176)
  %arena.cur1178 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1179 = call ptr @dva_arena_alloc(ptr %arena.cur1178, i64 16)
  store { i64, ptr } %call.res1177, ptr %ret.ub.alloc1179, align 8
  %cat.seg1181 = load i64, ptr %ret.ub.alloc1179, align 8
  %cat.seg1182 = and i64 %cat.seg1181, 281474976710655
  %str.tag1183 = lshr i64 %cat.seg1181, 48
  %tag.immortal1185 = icmp eq i64 %str.tag1183, 0
  %active.gen1186 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1187 = icmp eq i64 %str.tag1183, %active.gen1186
  %tag.fast.ok1188 = or i1 %tag.immortal1185, %tag.current1187
  br i1 %tag.fast.ok1188, label %str_ok1184, label %tag.slow_check1189

tag.slow_check1170:                               ; preds = %str_ok1149
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1164)
  br label %str_ok1165

str_ok1184:                                       ; preds = %tag.slow_check1189, %str_ok1165
  %cat.seg1190 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1179, i32 0, i32 1
  %cat.seg1191 = load ptr, ptr %cat.seg1190, align 8
  %cat.seg1195 = load i64, ptr %concat.str, align 8
  %cat.seg1196 = and i64 %cat.seg1195, 281474976710655
  %str.tag1197 = lshr i64 %cat.seg1195, 48
  %tag.immortal1199 = icmp eq i64 %str.tag1197, 0
  %active.gen1200 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1201 = icmp eq i64 %str.tag1197, %active.gen1200
  %tag.fast.ok1202 = or i1 %tag.immortal1199, %tag.current1201
  br i1 %tag.fast.ok1202, label %str_ok1198, label %tag.slow_check1203

tag.slow_check1189:                               ; preds = %str_ok1165
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1183)
  br label %str_ok1184

str_ok1198:                                       ; preds = %tag.slow_check1203, %str_ok1184
  %cat.seg1205 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len1206 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 12, i64 %cat.seg1147)
  %sum1207 = extractvalue { i64, i1 } %cat.sum.len1206, 0
  %ovf1208 = extractvalue { i64, i1 } %cat.sum.len1206, 1
  br i1 %ovf1208, label %str_overflow_abort1210, label %cat.sum.len1209

tag.slow_check1203:                               ; preds = %str_ok1184
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1197)
  br label %str_ok1198

cat.sum.len1209:                                  ; preds = %str_ok1198
  %cat.sum.len1212 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1207, i64 1)
  %sum1213 = extractvalue { i64, i1 } %cat.sum.len1212, 0
  %ovf1214 = extractvalue { i64, i1 } %cat.sum.len1212, 1
  br i1 %ovf1214, label %str_overflow_abort1216, label %cat.sum.len1215

str_overflow_abort1210:                           ; preds = %str_ok1198
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1215:                                  ; preds = %cat.sum.len1209
  %cat.sum.len1218 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1213, i64 %cat.seg1163)
  %sum1219 = extractvalue { i64, i1 } %cat.sum.len1218, 0
  %ovf1220 = extractvalue { i64, i1 } %cat.sum.len1218, 1
  br i1 %ovf1220, label %str_overflow_abort1222, label %cat.sum.len1221

str_overflow_abort1216:                           ; preds = %cat.sum.len1209
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1221:                                  ; preds = %cat.sum.len1215
  %cat.sum.len1224 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1219, i64 3)
  %sum1225 = extractvalue { i64, i1 } %cat.sum.len1224, 0
  %ovf1226 = extractvalue { i64, i1 } %cat.sum.len1224, 1
  br i1 %ovf1226, label %str_overflow_abort1228, label %cat.sum.len1227

str_overflow_abort1222:                           ; preds = %cat.sum.len1215
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1227:                                  ; preds = %cat.sum.len1221
  %cat.sum.len1230 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1225, i64 %cat.seg1182)
  %sum1231 = extractvalue { i64, i1 } %cat.sum.len1230, 0
  %ovf1232 = extractvalue { i64, i1 } %cat.sum.len1230, 1
  br i1 %ovf1232, label %str_overflow_abort1234, label %cat.sum.len1233

str_overflow_abort1228:                           ; preds = %cat.sum.len1221
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1233:                                  ; preds = %cat.sum.len1227
  %cat.sum.len1236 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1231, i64 1)
  %sum1237 = extractvalue { i64, i1 } %cat.sum.len1236, 0
  %ovf1238 = extractvalue { i64, i1 } %cat.sum.len1236, 1
  br i1 %ovf1238, label %str_overflow_abort1240, label %cat.sum.len1239

str_overflow_abort1234:                           ; preds = %cat.sum.len1227
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1239:                                  ; preds = %cat.sum.len1233
  %cat.sum.len1242 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1237, i64 %cat.seg1196)
  %sum1243 = extractvalue { i64, i1 } %cat.sum.len1242, 0
  %ovf1244 = extractvalue { i64, i1 } %cat.sum.len1242, 1
  br i1 %ovf1244, label %str_overflow_abort1246, label %cat.sum.len1245

str_overflow_abort1240:                           ; preds = %cat.sum.len1233
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1245:                                  ; preds = %cat.sum.len1239
  %concat.tot.len1248 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1243, i64 1)
  %sum1249 = extractvalue { i64, i1 } %concat.tot.len1248, 0
  %ovf1250 = extractvalue { i64, i1 } %concat.tot.len1248, 1
  br i1 %ovf1250, label %str_overflow_abort1252, label %concat.tot.len1251

str_overflow_abort1246:                           ; preds = %cat.sum.len1239
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1251:                               ; preds = %cat.sum.len1245
  %arena.cur1254 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1255 = call ptr @dva_arena_alloc(ptr %arena.cur1254, i64 %sum1249)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1255, ptr align 1 @str.130, i64 12, i1 false)
  %cat.dst1257 = getelementptr i8, ptr %concat.buf1255, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1257, ptr align 1 %cat.seg1156, i64 %cat.seg1147, i1 false)
  %cat.off1258 = add i64 12, %cat.seg1147
  %cat.dst1259 = getelementptr i8, ptr %concat.buf1255, i64 %cat.off1258
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1259, ptr align 1 @str.81, i64 1, i1 false)
  %cat.off1260 = add i64 %cat.off1258, 1
  %cat.dst1261 = getelementptr i8, ptr %concat.buf1255, i64 %cat.off1260
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1261, ptr align 1 %cat.seg1172, i64 %cat.seg1163, i1 false)
  %cat.off1262 = add i64 %cat.off1260, %cat.seg1163
  %cat.dst1263 = getelementptr i8, ptr %concat.buf1255, i64 %cat.off1262
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1263, ptr align 1 @str.131, i64 3, i1 false)
  %cat.off1264 = add i64 %cat.off1262, 3
  %cat.dst1265 = getelementptr i8, ptr %concat.buf1255, i64 %cat.off1264
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1265, ptr align 1 %cat.seg1191, i64 %cat.seg1182, i1 false)
  %cat.off1266 = add i64 %cat.off1264, %cat.seg1182
  %cat.dst1267 = getelementptr i8, ptr %concat.buf1255, i64 %cat.off1266
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1267, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off1268 = add i64 %cat.off1266, 1
  %cat.dst1269 = getelementptr i8, ptr %concat.buf1255, i64 %cat.off1268
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1269, ptr align 1 %cat.seg1205, i64 %cat.seg1196, i1 false)
  %concat.nul1270 = getelementptr i8, ptr %concat.buf1255, i64 %sum1243
  store i8 0, ptr %concat.nul1270, align 1
  %arena.cur1271 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1272 = call ptr @dva_arena_alloc(ptr %arena.cur1271, i64 16)
  %str.tag.gen1274 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1275 = shl i64 %str.tag.gen1274, 48
  %str.tagged.len1276 = or i64 %sum1243, %str.tag.shift1275
  store i64 %str.tagged.len1276, ptr %concat.str1272, align 8
  %str.build.data.gep1277 = getelementptr inbounds { i64, ptr }, ptr %concat.str1272, i32 0, i32 1
  store ptr %concat.buf1255, ptr %str.build.data.gep1277, align 8
  br label %choice.exit

str_overflow_abort1252:                           ; preds = %cat.sum.len1245
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1278:                                  ; preds = %concat.tot.len11
  %pay.gep1283 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr1284 = load ptr, ptr %pay.gep1283, align 8
  %call.res1291 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %payload.ptr1284)
  %arena.cur1292 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1293 = call ptr @dva_arena_alloc(ptr %arena.cur1292, i64 16)
  store { i64, ptr } %call.res1291, ptr %ret.ub.alloc1293, align 8
  %cat.seg1295 = load i64, ptr %ret.ub.alloc1293, align 8
  %cat.seg1296 = and i64 %cat.seg1295, 281474976710655
  %str.tag1297 = lshr i64 %cat.seg1295, 48
  %tag.immortal1299 = icmp eq i64 %str.tag1297, 0
  %active.gen1300 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1301 = icmp eq i64 %str.tag1297, %active.gen1300
  %tag.fast.ok1302 = or i1 %tag.immortal1299, %tag.current1301
  br i1 %tag.fast.ok1302, label %str_ok1298, label %tag.slow_check1303

str_ok1298:                                       ; preds = %tag.slow_check1303, %choice.case1278
  %cat.seg1304 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1293, i32 0, i32 1
  %cat.seg1305 = load ptr, ptr %cat.seg1304, align 8
  %fld.gep1309 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr1284, i32 0, i32 1
  %call.res1310 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %fld.gep1309)
  %arena.cur1311 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1312 = call ptr @dva_arena_alloc(ptr %arena.cur1311, i64 16)
  store { i64, ptr } %call.res1310, ptr %ret.ub.alloc1312, align 8
  %cat.seg1314 = load i64, ptr %ret.ub.alloc1312, align 8
  %cat.seg1315 = and i64 %cat.seg1314, 281474976710655
  %str.tag1316 = lshr i64 %cat.seg1314, 48
  %tag.immortal1318 = icmp eq i64 %str.tag1316, 0
  %active.gen1319 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1320 = icmp eq i64 %str.tag1316, %active.gen1319
  %tag.fast.ok1321 = or i1 %tag.immortal1318, %tag.current1320
  br i1 %tag.fast.ok1321, label %str_ok1317, label %tag.slow_check1322

tag.slow_check1303:                               ; preds = %choice.case1278
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1297)
  br label %str_ok1298

str_ok1317:                                       ; preds = %tag.slow_check1322, %str_ok1298
  %cat.seg1323 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1312, i32 0, i32 1
  %cat.seg1324 = load ptr, ptr %cat.seg1323, align 8
  %cat.seg1328 = load i64, ptr %concat.str, align 8
  %cat.seg1329 = and i64 %cat.seg1328, 281474976710655
  %str.tag1330 = lshr i64 %cat.seg1328, 48
  %tag.immortal1332 = icmp eq i64 %str.tag1330, 0
  %active.gen1333 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1334 = icmp eq i64 %str.tag1330, %active.gen1333
  %tag.fast.ok1335 = or i1 %tag.immortal1332, %tag.current1334
  br i1 %tag.fast.ok1335, label %str_ok1331, label %tag.slow_check1336

tag.slow_check1322:                               ; preds = %str_ok1298
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1316)
  br label %str_ok1317

str_ok1331:                                       ; preds = %tag.slow_check1336, %str_ok1317
  %cat.seg1338 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len1339 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 6, i64 %cat.seg1296)
  %sum1340 = extractvalue { i64, i1 } %cat.sum.len1339, 0
  %ovf1341 = extractvalue { i64, i1 } %cat.sum.len1339, 1
  br i1 %ovf1341, label %str_overflow_abort1343, label %cat.sum.len1342

tag.slow_check1336:                               ; preds = %str_ok1317
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1330)
  br label %str_ok1331

cat.sum.len1342:                                  ; preds = %str_ok1331
  %cat.sum.len1345 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1340, i64 1)
  %sum1346 = extractvalue { i64, i1 } %cat.sum.len1345, 0
  %ovf1347 = extractvalue { i64, i1 } %cat.sum.len1345, 1
  br i1 %ovf1347, label %str_overflow_abort1349, label %cat.sum.len1348

str_overflow_abort1343:                           ; preds = %str_ok1331
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1348:                                  ; preds = %cat.sum.len1342
  %cat.sum.len1351 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1346, i64 %cat.seg1315)
  %sum1352 = extractvalue { i64, i1 } %cat.sum.len1351, 0
  %ovf1353 = extractvalue { i64, i1 } %cat.sum.len1351, 1
  br i1 %ovf1353, label %str_overflow_abort1355, label %cat.sum.len1354

str_overflow_abort1349:                           ; preds = %cat.sum.len1342
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1354:                                  ; preds = %cat.sum.len1348
  %cat.sum.len1357 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1352, i64 2)
  %sum1358 = extractvalue { i64, i1 } %cat.sum.len1357, 0
  %ovf1359 = extractvalue { i64, i1 } %cat.sum.len1357, 1
  br i1 %ovf1359, label %str_overflow_abort1361, label %cat.sum.len1360

str_overflow_abort1355:                           ; preds = %cat.sum.len1348
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1360:                                  ; preds = %cat.sum.len1354
  %cat.sum.len1363 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1358, i64 %cat.seg1329)
  %sum1364 = extractvalue { i64, i1 } %cat.sum.len1363, 0
  %ovf1365 = extractvalue { i64, i1 } %cat.sum.len1363, 1
  br i1 %ovf1365, label %str_overflow_abort1367, label %cat.sum.len1366

str_overflow_abort1361:                           ; preds = %cat.sum.len1354
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1366:                                  ; preds = %cat.sum.len1360
  %concat.tot.len1369 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1364, i64 1)
  %sum1370 = extractvalue { i64, i1 } %concat.tot.len1369, 0
  %ovf1371 = extractvalue { i64, i1 } %concat.tot.len1369, 1
  br i1 %ovf1371, label %str_overflow_abort1373, label %concat.tot.len1372

str_overflow_abort1367:                           ; preds = %cat.sum.len1360
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1372:                               ; preds = %cat.sum.len1366
  %arena.cur1375 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1376 = call ptr @dva_arena_alloc(ptr %arena.cur1375, i64 %sum1370)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1376, ptr align 1 @str.132, i64 6, i1 false)
  %cat.dst1378 = getelementptr i8, ptr %concat.buf1376, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1378, ptr align 1 %cat.seg1305, i64 %cat.seg1296, i1 false)
  %cat.off1379 = add i64 6, %cat.seg1296
  %cat.dst1380 = getelementptr i8, ptr %concat.buf1376, i64 %cat.off1379
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1380, ptr align 1 @str.133, i64 1, i1 false)
  %cat.off1381 = add i64 %cat.off1379, 1
  %cat.dst1382 = getelementptr i8, ptr %concat.buf1376, i64 %cat.off1381
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1382, ptr align 1 %cat.seg1324, i64 %cat.seg1315, i1 false)
  %cat.off1383 = add i64 %cat.off1381, %cat.seg1315
  %cat.dst1384 = getelementptr i8, ptr %concat.buf1376, i64 %cat.off1383
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1384, ptr align 1 @str.134, i64 2, i1 false)
  %cat.off1385 = add i64 %cat.off1383, 2
  %cat.dst1386 = getelementptr i8, ptr %concat.buf1376, i64 %cat.off1385
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1386, ptr align 1 %cat.seg1338, i64 %cat.seg1329, i1 false)
  %concat.nul1387 = getelementptr i8, ptr %concat.buf1376, i64 %sum1364
  store i8 0, ptr %concat.nul1387, align 1
  %arena.cur1388 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1389 = call ptr @dva_arena_alloc(ptr %arena.cur1388, i64 16)
  %str.tag.gen1391 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1392 = shl i64 %str.tag.gen1391, 48
  %str.tagged.len1393 = or i64 %sum1364, %str.tag.shift1392
  store i64 %str.tagged.len1393, ptr %concat.str1389, align 8
  %str.build.data.gep1394 = getelementptr inbounds { i64, ptr }, ptr %concat.str1389, i32 0, i32 1
  store ptr %concat.buf1376, ptr %str.build.data.gep1394, align 8
  br label %choice.exit

str_overflow_abort1373:                           ; preds = %cat.sum.len1366
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1395:                                  ; preds = %concat.tot.len11
  %pay.gep1400 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr1401 = load ptr, ptr %pay.gep1400, align 8
  %call.res1408 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %payload.ptr1401)
  %arena.cur1409 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1410 = call ptr @dva_arena_alloc(ptr %arena.cur1409, i64 16)
  store { i64, ptr } %call.res1408, ptr %ret.ub.alloc1410, align 8
  %cat.seg1412 = load i64, ptr %ret.ub.alloc1410, align 8
  %cat.seg1413 = and i64 %cat.seg1412, 281474976710655
  %str.tag1414 = lshr i64 %cat.seg1412, 48
  %tag.immortal1416 = icmp eq i64 %str.tag1414, 0
  %active.gen1417 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1418 = icmp eq i64 %str.tag1414, %active.gen1417
  %tag.fast.ok1419 = or i1 %tag.immortal1416, %tag.current1418
  br i1 %tag.fast.ok1419, label %str_ok1415, label %tag.slow_check1420

str_ok1415:                                       ; preds = %tag.slow_check1420, %choice.case1395
  %cat.seg1421 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1410, i32 0, i32 1
  %cat.seg1422 = load ptr, ptr %cat.seg1421, align 8
  %fld.gep1426 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr1401, i32 0, i32 1
  %call.res1427 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %fld.gep1426)
  %arena.cur1428 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1429 = call ptr @dva_arena_alloc(ptr %arena.cur1428, i64 16)
  store { i64, ptr } %call.res1427, ptr %ret.ub.alloc1429, align 8
  %cat.seg1431 = load i64, ptr %ret.ub.alloc1429, align 8
  %cat.seg1432 = and i64 %cat.seg1431, 281474976710655
  %str.tag1433 = lshr i64 %cat.seg1431, 48
  %tag.immortal1435 = icmp eq i64 %str.tag1433, 0
  %active.gen1436 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1437 = icmp eq i64 %str.tag1433, %active.gen1436
  %tag.fast.ok1438 = or i1 %tag.immortal1435, %tag.current1437
  br i1 %tag.fast.ok1438, label %str_ok1434, label %tag.slow_check1439

tag.slow_check1420:                               ; preds = %choice.case1395
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1414)
  br label %str_ok1415

str_ok1434:                                       ; preds = %tag.slow_check1439, %str_ok1415
  %cat.seg1440 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1429, i32 0, i32 1
  %cat.seg1441 = load ptr, ptr %cat.seg1440, align 8
  %fld.gep1445 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr1401, i32 0, i32 2
  %call.res1446 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %fld.gep1445)
  %arena.cur1447 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1448 = call ptr @dva_arena_alloc(ptr %arena.cur1447, i64 16)
  store { i64, ptr } %call.res1446, ptr %ret.ub.alloc1448, align 8
  %cat.seg1450 = load i64, ptr %ret.ub.alloc1448, align 8
  %cat.seg1451 = and i64 %cat.seg1450, 281474976710655
  %str.tag1452 = lshr i64 %cat.seg1450, 48
  %tag.immortal1454 = icmp eq i64 %str.tag1452, 0
  %active.gen1455 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1456 = icmp eq i64 %str.tag1452, %active.gen1455
  %tag.fast.ok1457 = or i1 %tag.immortal1454, %tag.current1456
  br i1 %tag.fast.ok1457, label %str_ok1453, label %tag.slow_check1458

tag.slow_check1439:                               ; preds = %str_ok1415
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1433)
  br label %str_ok1434

str_ok1453:                                       ; preds = %tag.slow_check1458, %str_ok1434
  %cat.seg1459 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1448, i32 0, i32 1
  %cat.seg1460 = load ptr, ptr %cat.seg1459, align 8
  %cat.seg1464 = load i64, ptr %concat.str, align 8
  %cat.seg1465 = and i64 %cat.seg1464, 281474976710655
  %str.tag1466 = lshr i64 %cat.seg1464, 48
  %tag.immortal1468 = icmp eq i64 %str.tag1466, 0
  %active.gen1469 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1470 = icmp eq i64 %str.tag1466, %active.gen1469
  %tag.fast.ok1471 = or i1 %tag.immortal1468, %tag.current1470
  br i1 %tag.fast.ok1471, label %str_ok1467, label %tag.slow_check1472

tag.slow_check1458:                               ; preds = %str_ok1434
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1452)
  br label %str_ok1453

str_ok1467:                                       ; preds = %tag.slow_check1472, %str_ok1453
  %cat.seg1474 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len1475 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 11, i64 %cat.seg1413)
  %sum1476 = extractvalue { i64, i1 } %cat.sum.len1475, 0
  %ovf1477 = extractvalue { i64, i1 } %cat.sum.len1475, 1
  br i1 %ovf1477, label %str_overflow_abort1479, label %cat.sum.len1478

tag.slow_check1472:                               ; preds = %str_ok1453
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1466)
  br label %str_ok1467

cat.sum.len1478:                                  ; preds = %str_ok1467
  %cat.sum.len1481 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1476, i64 1)
  %sum1482 = extractvalue { i64, i1 } %cat.sum.len1481, 0
  %ovf1483 = extractvalue { i64, i1 } %cat.sum.len1481, 1
  br i1 %ovf1483, label %str_overflow_abort1485, label %cat.sum.len1484

str_overflow_abort1479:                           ; preds = %str_ok1467
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1484:                                  ; preds = %cat.sum.len1478
  %cat.sum.len1487 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1482, i64 %cat.seg1432)
  %sum1488 = extractvalue { i64, i1 } %cat.sum.len1487, 0
  %ovf1489 = extractvalue { i64, i1 } %cat.sum.len1487, 1
  br i1 %ovf1489, label %str_overflow_abort1491, label %cat.sum.len1490

str_overflow_abort1485:                           ; preds = %cat.sum.len1478
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1490:                                  ; preds = %cat.sum.len1484
  %cat.sum.len1493 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1488, i64 4)
  %sum1494 = extractvalue { i64, i1 } %cat.sum.len1493, 0
  %ovf1495 = extractvalue { i64, i1 } %cat.sum.len1493, 1
  br i1 %ovf1495, label %str_overflow_abort1497, label %cat.sum.len1496

str_overflow_abort1491:                           ; preds = %cat.sum.len1484
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1496:                                  ; preds = %cat.sum.len1490
  %cat.sum.len1499 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1494, i64 %cat.seg1451)
  %sum1500 = extractvalue { i64, i1 } %cat.sum.len1499, 0
  %ovf1501 = extractvalue { i64, i1 } %cat.sum.len1499, 1
  br i1 %ovf1501, label %str_overflow_abort1503, label %cat.sum.len1502

str_overflow_abort1497:                           ; preds = %cat.sum.len1490
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1502:                                  ; preds = %cat.sum.len1496
  %cat.sum.len1505 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1500, i64 1)
  %sum1506 = extractvalue { i64, i1 } %cat.sum.len1505, 0
  %ovf1507 = extractvalue { i64, i1 } %cat.sum.len1505, 1
  br i1 %ovf1507, label %str_overflow_abort1509, label %cat.sum.len1508

str_overflow_abort1503:                           ; preds = %cat.sum.len1496
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1508:                                  ; preds = %cat.sum.len1502
  %cat.sum.len1511 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1506, i64 %cat.seg1465)
  %sum1512 = extractvalue { i64, i1 } %cat.sum.len1511, 0
  %ovf1513 = extractvalue { i64, i1 } %cat.sum.len1511, 1
  br i1 %ovf1513, label %str_overflow_abort1515, label %cat.sum.len1514

str_overflow_abort1509:                           ; preds = %cat.sum.len1502
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1514:                                  ; preds = %cat.sum.len1508
  %concat.tot.len1517 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1512, i64 1)
  %sum1518 = extractvalue { i64, i1 } %concat.tot.len1517, 0
  %ovf1519 = extractvalue { i64, i1 } %concat.tot.len1517, 1
  br i1 %ovf1519, label %str_overflow_abort1521, label %concat.tot.len1520

str_overflow_abort1515:                           ; preds = %cat.sum.len1508
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1520:                               ; preds = %cat.sum.len1514
  %arena.cur1523 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1524 = call ptr @dva_arena_alloc(ptr %arena.cur1523, i64 %sum1518)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1524, ptr align 1 @str.135, i64 11, i1 false)
  %cat.dst1526 = getelementptr i8, ptr %concat.buf1524, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1526, ptr align 1 %cat.seg1422, i64 %cat.seg1413, i1 false)
  %cat.off1527 = add i64 11, %cat.seg1413
  %cat.dst1528 = getelementptr i8, ptr %concat.buf1524, i64 %cat.off1527
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1528, ptr align 1 @str.133, i64 1, i1 false)
  %cat.off1529 = add i64 %cat.off1527, 1
  %cat.dst1530 = getelementptr i8, ptr %concat.buf1524, i64 %cat.off1529
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1530, ptr align 1 %cat.seg1441, i64 %cat.seg1432, i1 false)
  %cat.off1531 = add i64 %cat.off1529, %cat.seg1432
  %cat.dst1532 = getelementptr i8, ptr %concat.buf1524, i64 %cat.off1531
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1532, ptr align 1 @str.136, i64 4, i1 false)
  %cat.off1533 = add i64 %cat.off1531, 4
  %cat.dst1534 = getelementptr i8, ptr %concat.buf1524, i64 %cat.off1533
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1534, ptr align 1 %cat.seg1460, i64 %cat.seg1451, i1 false)
  %cat.off1535 = add i64 %cat.off1533, %cat.seg1451
  %cat.dst1536 = getelementptr i8, ptr %concat.buf1524, i64 %cat.off1535
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1536, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off1537 = add i64 %cat.off1535, 1
  %cat.dst1538 = getelementptr i8, ptr %concat.buf1524, i64 %cat.off1537
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1538, ptr align 1 %cat.seg1474, i64 %cat.seg1465, i1 false)
  %concat.nul1539 = getelementptr i8, ptr %concat.buf1524, i64 %sum1512
  store i8 0, ptr %concat.nul1539, align 1
  %arena.cur1540 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1541 = call ptr @dva_arena_alloc(ptr %arena.cur1540, i64 16)
  %str.tag.gen1543 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1544 = shl i64 %str.tag.gen1543, 48
  %str.tagged.len1545 = or i64 %sum1512, %str.tag.shift1544
  store i64 %str.tagged.len1545, ptr %concat.str1541, align 8
  %str.build.data.gep1546 = getelementptr inbounds { i64, ptr }, ptr %concat.str1541, i32 0, i32 1
  store ptr %concat.buf1524, ptr %str.build.data.gep1546, align 8
  br label %choice.exit

str_overflow_abort1521:                           ; preds = %cat.sum.len1514
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1547:                                  ; preds = %concat.tot.len11
  %pay.gep1552 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr1553 = load ptr, ptr %pay.gep1552, align 8
  %call.res1560 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %payload.ptr1553)
  %arena.cur1561 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1562 = call ptr @dva_arena_alloc(ptr %arena.cur1561, i64 16)
  store { i64, ptr } %call.res1560, ptr %ret.ub.alloc1562, align 8
  %cat.seg1564 = load i64, ptr %ret.ub.alloc1562, align 8
  %cat.seg1565 = and i64 %cat.seg1564, 281474976710655
  %str.tag1566 = lshr i64 %cat.seg1564, 48
  %tag.immortal1568 = icmp eq i64 %str.tag1566, 0
  %active.gen1569 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1570 = icmp eq i64 %str.tag1566, %active.gen1569
  %tag.fast.ok1571 = or i1 %tag.immortal1568, %tag.current1570
  br i1 %tag.fast.ok1571, label %str_ok1567, label %tag.slow_check1572

str_ok1567:                                       ; preds = %tag.slow_check1572, %choice.case1547
  %cat.seg1573 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1562, i32 0, i32 1
  %cat.seg1574 = load ptr, ptr %cat.seg1573, align 8
  %cat.seg1578 = load i64, ptr %concat.str, align 8
  %cat.seg1579 = and i64 %cat.seg1578, 281474976710655
  %str.tag1580 = lshr i64 %cat.seg1578, 48
  %tag.immortal1582 = icmp eq i64 %str.tag1580, 0
  %active.gen1583 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1584 = icmp eq i64 %str.tag1580, %active.gen1583
  %tag.fast.ok1585 = or i1 %tag.immortal1582, %tag.current1584
  br i1 %tag.fast.ok1585, label %str_ok1581, label %tag.slow_check1586

tag.slow_check1572:                               ; preds = %choice.case1547
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1566)
  br label %str_ok1567

str_ok1581:                                       ; preds = %tag.slow_check1586, %str_ok1567
  %cat.seg1588 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len1589 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 7, i64 %cat.seg1565)
  %sum1590 = extractvalue { i64, i1 } %cat.sum.len1589, 0
  %ovf1591 = extractvalue { i64, i1 } %cat.sum.len1589, 1
  br i1 %ovf1591, label %str_overflow_abort1593, label %cat.sum.len1592

tag.slow_check1586:                               ; preds = %str_ok1567
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1580)
  br label %str_ok1581

cat.sum.len1592:                                  ; preds = %str_ok1581
  %cat.sum.len1595 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1590, i64 1)
  %sum1596 = extractvalue { i64, i1 } %cat.sum.len1595, 0
  %ovf1597 = extractvalue { i64, i1 } %cat.sum.len1595, 1
  br i1 %ovf1597, label %str_overflow_abort1599, label %cat.sum.len1598

str_overflow_abort1593:                           ; preds = %str_ok1581
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1598:                                  ; preds = %cat.sum.len1592
  %cat.sum.len1601 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1596, i64 %cat.seg1579)
  %sum1602 = extractvalue { i64, i1 } %cat.sum.len1601, 0
  %ovf1603 = extractvalue { i64, i1 } %cat.sum.len1601, 1
  br i1 %ovf1603, label %str_overflow_abort1605, label %cat.sum.len1604

str_overflow_abort1599:                           ; preds = %cat.sum.len1592
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1604:                                  ; preds = %cat.sum.len1598
  %concat.tot.len1607 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1602, i64 1)
  %sum1608 = extractvalue { i64, i1 } %concat.tot.len1607, 0
  %ovf1609 = extractvalue { i64, i1 } %concat.tot.len1607, 1
  br i1 %ovf1609, label %str_overflow_abort1611, label %concat.tot.len1610

str_overflow_abort1605:                           ; preds = %cat.sum.len1598
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1610:                               ; preds = %cat.sum.len1604
  %arena.cur1613 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1614 = call ptr @dva_arena_alloc(ptr %arena.cur1613, i64 %sum1608)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1614, ptr align 1 @str.62, i64 7, i1 false)
  %cat.dst1616 = getelementptr i8, ptr %concat.buf1614, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1616, ptr align 1 %cat.seg1574, i64 %cat.seg1565, i1 false)
  %cat.off1617 = add i64 7, %cat.seg1565
  %cat.dst1618 = getelementptr i8, ptr %concat.buf1614, i64 %cat.off1617
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1618, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off1619 = add i64 %cat.off1617, 1
  %cat.dst1620 = getelementptr i8, ptr %concat.buf1614, i64 %cat.off1619
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1620, ptr align 1 %cat.seg1588, i64 %cat.seg1579, i1 false)
  %concat.nul1621 = getelementptr i8, ptr %concat.buf1614, i64 %sum1602
  store i8 0, ptr %concat.nul1621, align 1
  %arena.cur1622 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1623 = call ptr @dva_arena_alloc(ptr %arena.cur1622, i64 16)
  %str.tag.gen1625 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1626 = shl i64 %str.tag.gen1625, 48
  %str.tagged.len1627 = or i64 %sum1602, %str.tag.shift1626
  store i64 %str.tagged.len1627, ptr %concat.str1623, align 8
  %str.build.data.gep1628 = getelementptr inbounds { i64, ptr }, ptr %concat.str1623, i32 0, i32 1
  store ptr %concat.buf1614, ptr %str.build.data.gep1628, align 8
  br label %choice.exit

str_overflow_abort1611:                           ; preds = %cat.sum.len1604
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1629:                                  ; preds = %concat.tot.len11
  %pay.gep1634 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr1635 = load ptr, ptr %pay.gep1634, align 8
  %fld.load1641 = load ptr, ptr %payload.ptr1635, align 8
  %call.res1642 = call { i64, ptr } @"show::show_names"(ptr %fld.load1641)
  %arena.cur1643 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1644 = call ptr @dva_arena_alloc(ptr %arena.cur1643, i64 16)
  store { i64, ptr } %call.res1642, ptr %ret.ub.alloc1644, align 8
  %cat.seg1646 = load i64, ptr %ret.ub.alloc1644, align 8
  %cat.seg1647 = and i64 %cat.seg1646, 281474976710655
  %str.tag1648 = lshr i64 %cat.seg1646, 48
  %tag.immortal1650 = icmp eq i64 %str.tag1648, 0
  %active.gen1651 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1652 = icmp eq i64 %str.tag1648, %active.gen1651
  %tag.fast.ok1653 = or i1 %tag.immortal1650, %tag.current1652
  br i1 %tag.fast.ok1653, label %str_ok1649, label %tag.slow_check1654

str_ok1649:                                       ; preds = %tag.slow_check1654, %choice.case1629
  %cat.seg1655 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1644, i32 0, i32 1
  %cat.seg1656 = load ptr, ptr %cat.seg1655, align 8
  %fld.gep1660 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %payload.ptr1635, i32 0, i32 1
  %call.res1661 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %fld.gep1660)
  %arena.cur1662 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1663 = call ptr @dva_arena_alloc(ptr %arena.cur1662, i64 16)
  store { i64, ptr } %call.res1661, ptr %ret.ub.alloc1663, align 8
  %cat.seg1665 = load i64, ptr %ret.ub.alloc1663, align 8
  %cat.seg1666 = and i64 %cat.seg1665, 281474976710655
  %str.tag1667 = lshr i64 %cat.seg1665, 48
  %tag.immortal1669 = icmp eq i64 %str.tag1667, 0
  %active.gen1670 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1671 = icmp eq i64 %str.tag1667, %active.gen1670
  %tag.fast.ok1672 = or i1 %tag.immortal1669, %tag.current1671
  br i1 %tag.fast.ok1672, label %str_ok1668, label %tag.slow_check1673

tag.slow_check1654:                               ; preds = %choice.case1629
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1648)
  br label %str_ok1649

str_ok1668:                                       ; preds = %tag.slow_check1673, %str_ok1649
  %cat.seg1674 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1663, i32 0, i32 1
  %cat.seg1675 = load ptr, ptr %cat.seg1674, align 8
  %cat.seg1679 = load i64, ptr %concat.str, align 8
  %cat.seg1680 = and i64 %cat.seg1679, 281474976710655
  %str.tag1681 = lshr i64 %cat.seg1679, 48
  %tag.immortal1683 = icmp eq i64 %str.tag1681, 0
  %active.gen1684 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1685 = icmp eq i64 %str.tag1681, %active.gen1684
  %tag.fast.ok1686 = or i1 %tag.immortal1683, %tag.current1685
  br i1 %tag.fast.ok1686, label %str_ok1682, label %tag.slow_check1687

tag.slow_check1673:                               ; preds = %str_ok1649
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1667)
  br label %str_ok1668

str_ok1682:                                       ; preds = %tag.slow_check1687, %str_ok1668
  %cat.seg1689 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len1690 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 7, i64 %cat.seg1647)
  %sum1691 = extractvalue { i64, i1 } %cat.sum.len1690, 0
  %ovf1692 = extractvalue { i64, i1 } %cat.sum.len1690, 1
  br i1 %ovf1692, label %str_overflow_abort1694, label %cat.sum.len1693

tag.slow_check1687:                               ; preds = %str_ok1668
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1681)
  br label %str_ok1682

cat.sum.len1693:                                  ; preds = %str_ok1682
  %cat.sum.len1696 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1691, i64 4)
  %sum1697 = extractvalue { i64, i1 } %cat.sum.len1696, 0
  %ovf1698 = extractvalue { i64, i1 } %cat.sum.len1696, 1
  br i1 %ovf1698, label %str_overflow_abort1700, label %cat.sum.len1699

str_overflow_abort1694:                           ; preds = %str_ok1682
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1699:                                  ; preds = %cat.sum.len1693
  %cat.sum.len1702 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1697, i64 %cat.seg1666)
  %sum1703 = extractvalue { i64, i1 } %cat.sum.len1702, 0
  %ovf1704 = extractvalue { i64, i1 } %cat.sum.len1702, 1
  br i1 %ovf1704, label %str_overflow_abort1706, label %cat.sum.len1705

str_overflow_abort1700:                           ; preds = %cat.sum.len1693
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1705:                                  ; preds = %cat.sum.len1699
  %cat.sum.len1708 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1703, i64 1)
  %sum1709 = extractvalue { i64, i1 } %cat.sum.len1708, 0
  %ovf1710 = extractvalue { i64, i1 } %cat.sum.len1708, 1
  br i1 %ovf1710, label %str_overflow_abort1712, label %cat.sum.len1711

str_overflow_abort1706:                           ; preds = %cat.sum.len1699
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1711:                                  ; preds = %cat.sum.len1705
  %cat.sum.len1714 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1709, i64 %cat.seg1680)
  %sum1715 = extractvalue { i64, i1 } %cat.sum.len1714, 0
  %ovf1716 = extractvalue { i64, i1 } %cat.sum.len1714, 1
  br i1 %ovf1716, label %str_overflow_abort1718, label %cat.sum.len1717

str_overflow_abort1712:                           ; preds = %cat.sum.len1705
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1717:                                  ; preds = %cat.sum.len1711
  %concat.tot.len1720 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1715, i64 1)
  %sum1721 = extractvalue { i64, i1 } %concat.tot.len1720, 0
  %ovf1722 = extractvalue { i64, i1 } %concat.tot.len1720, 1
  br i1 %ovf1722, label %str_overflow_abort1724, label %concat.tot.len1723

str_overflow_abort1718:                           ; preds = %cat.sum.len1711
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1723:                               ; preds = %cat.sum.len1717
  %arena.cur1726 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1727 = call ptr @dva_arena_alloc(ptr %arena.cur1726, i64 %sum1721)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1727, ptr align 1 @str.137, i64 7, i1 false)
  %cat.dst1729 = getelementptr i8, ptr %concat.buf1727, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1729, ptr align 1 %cat.seg1656, i64 %cat.seg1647, i1 false)
  %cat.off1730 = add i64 7, %cat.seg1647
  %cat.dst1731 = getelementptr i8, ptr %concat.buf1727, i64 %cat.off1730
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1731, ptr align 1 @str.138, i64 4, i1 false)
  %cat.off1732 = add i64 %cat.off1730, 4
  %cat.dst1733 = getelementptr i8, ptr %concat.buf1727, i64 %cat.off1732
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1733, ptr align 1 %cat.seg1675, i64 %cat.seg1666, i1 false)
  %cat.off1734 = add i64 %cat.off1732, %cat.seg1666
  %cat.dst1735 = getelementptr i8, ptr %concat.buf1727, i64 %cat.off1734
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1735, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off1736 = add i64 %cat.off1734, 1
  %cat.dst1737 = getelementptr i8, ptr %concat.buf1727, i64 %cat.off1736
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1737, ptr align 1 %cat.seg1689, i64 %cat.seg1680, i1 false)
  %concat.nul1738 = getelementptr i8, ptr %concat.buf1727, i64 %sum1715
  store i8 0, ptr %concat.nul1738, align 1
  %arena.cur1739 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1740 = call ptr @dva_arena_alloc(ptr %arena.cur1739, i64 16)
  %str.tag.gen1742 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1743 = shl i64 %str.tag.gen1742, 48
  %str.tagged.len1744 = or i64 %sum1715, %str.tag.shift1743
  store i64 %str.tagged.len1744, ptr %concat.str1740, align 8
  %str.build.data.gep1745 = getelementptr inbounds { i64, ptr }, ptr %concat.str1740, i32 0, i32 1
  store ptr %concat.buf1727, ptr %str.build.data.gep1745, align 8
  br label %choice.exit

str_overflow_abort1724:                           ; preds = %cat.sum.len1717
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1746:                                  ; preds = %concat.tot.len11
  %pay.gep1751 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr1752 = load ptr, ptr %pay.gep1751, align 8
  %a.null1758 = icmp eq ptr %payload.ptr1752, null
  br i1 %a.null1758, label %a.create1759, label %a.after1760

a.create1759:                                     ; preds = %choice.case1746
  %arena.cur1761 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1762 = call ptr @dva_arena_alloc(ptr %arena.cur1761, i64 24)
  %arena.cur1763 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1764 = call ptr @dva_arena_alloc(ptr %arena.cur1763, i64 128)
  store i64 0, ptr %a.create1762, align 8
  %a.data.gep1766 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1762, i32 0, i32 1
  store ptr %a.buf1764, ptr %a.data.gep1766, align 8
  %a.cap.gep1767 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1762, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1767, align 8
  br label %a.after1760

a.after1760:                                      ; preds = %a.create1759, %choice.case1746
  %var.es.0 = phi ptr [ %a.create1762, %a.create1759 ], [ %payload.ptr1752, %choice.case1746 ]
  %call.res1769 = call { i64, ptr } @"show::show_typed_exprs"(ptr %0, ptr %var.es.0)
  %arena.cur1770 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1771 = call ptr @dva_arena_alloc(ptr %arena.cur1770, i64 16)
  store { i64, ptr } %call.res1769, ptr %ret.ub.alloc1771, align 8
  %cat.seg1773 = load i64, ptr %ret.ub.alloc1771, align 8
  %cat.seg1774 = and i64 %cat.seg1773, 281474976710655
  %str.tag1775 = lshr i64 %cat.seg1773, 48
  %tag.immortal1777 = icmp eq i64 %str.tag1775, 0
  %active.gen1778 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1779 = icmp eq i64 %str.tag1775, %active.gen1778
  %tag.fast.ok1780 = or i1 %tag.immortal1777, %tag.current1779
  br i1 %tag.fast.ok1780, label %str_ok1776, label %tag.slow_check1781

str_ok1776:                                       ; preds = %tag.slow_check1781, %a.after1760
  %cat.seg1782 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1771, i32 0, i32 1
  %cat.seg1783 = load ptr, ptr %cat.seg1782, align 8
  %cat.seg1787 = load i64, ptr %concat.str, align 8
  %cat.seg1788 = and i64 %cat.seg1787, 281474976710655
  %str.tag1789 = lshr i64 %cat.seg1787, 48
  %tag.immortal1791 = icmp eq i64 %str.tag1789, 0
  %active.gen1792 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1793 = icmp eq i64 %str.tag1789, %active.gen1792
  %tag.fast.ok1794 = or i1 %tag.immortal1791, %tag.current1793
  br i1 %tag.fast.ok1794, label %str_ok1790, label %tag.slow_check1795

tag.slow_check1781:                               ; preds = %a.after1760
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1775)
  br label %str_ok1776

str_ok1790:                                       ; preds = %tag.slow_check1795, %str_ok1776
  %cat.seg1797 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len1798 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 6, i64 %cat.seg1774)
  %sum1799 = extractvalue { i64, i1 } %cat.sum.len1798, 0
  %ovf1800 = extractvalue { i64, i1 } %cat.sum.len1798, 1
  br i1 %ovf1800, label %str_overflow_abort1802, label %cat.sum.len1801

tag.slow_check1795:                               ; preds = %str_ok1776
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1789)
  br label %str_ok1790

cat.sum.len1801:                                  ; preds = %str_ok1790
  %cat.sum.len1804 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1799, i64 1)
  %sum1805 = extractvalue { i64, i1 } %cat.sum.len1804, 0
  %ovf1806 = extractvalue { i64, i1 } %cat.sum.len1804, 1
  br i1 %ovf1806, label %str_overflow_abort1808, label %cat.sum.len1807

str_overflow_abort1802:                           ; preds = %str_ok1790
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1807:                                  ; preds = %cat.sum.len1801
  %cat.sum.len1810 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1805, i64 %cat.seg1788)
  %sum1811 = extractvalue { i64, i1 } %cat.sum.len1810, 0
  %ovf1812 = extractvalue { i64, i1 } %cat.sum.len1810, 1
  br i1 %ovf1812, label %str_overflow_abort1814, label %cat.sum.len1813

str_overflow_abort1808:                           ; preds = %cat.sum.len1801
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1813:                                  ; preds = %cat.sum.len1807
  %concat.tot.len1816 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1811, i64 1)
  %sum1817 = extractvalue { i64, i1 } %concat.tot.len1816, 0
  %ovf1818 = extractvalue { i64, i1 } %concat.tot.len1816, 1
  br i1 %ovf1818, label %str_overflow_abort1820, label %concat.tot.len1819

str_overflow_abort1814:                           ; preds = %cat.sum.len1807
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1819:                               ; preds = %cat.sum.len1813
  %arena.cur1822 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1823 = call ptr @dva_arena_alloc(ptr %arena.cur1822, i64 %sum1817)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1823, ptr align 1 @str.70, i64 6, i1 false)
  %cat.dst1825 = getelementptr i8, ptr %concat.buf1823, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1825, ptr align 1 %cat.seg1783, i64 %cat.seg1774, i1 false)
  %cat.off1826 = add i64 6, %cat.seg1774
  %cat.dst1827 = getelementptr i8, ptr %concat.buf1823, i64 %cat.off1826
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1827, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off1828 = add i64 %cat.off1826, 1
  %cat.dst1829 = getelementptr i8, ptr %concat.buf1823, i64 %cat.off1828
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1829, ptr align 1 %cat.seg1797, i64 %cat.seg1788, i1 false)
  %concat.nul1830 = getelementptr i8, ptr %concat.buf1823, i64 %sum1811
  store i8 0, ptr %concat.nul1830, align 1
  %arena.cur1831 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1832 = call ptr @dva_arena_alloc(ptr %arena.cur1831, i64 16)
  %str.tag.gen1834 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1835 = shl i64 %str.tag.gen1834, 48
  %str.tagged.len1836 = or i64 %sum1811, %str.tag.shift1835
  store i64 %str.tagged.len1836, ptr %concat.str1832, align 8
  %str.build.data.gep1837 = getelementptr inbounds { i64, ptr }, ptr %concat.str1832, i32 0, i32 1
  store ptr %concat.buf1823, ptr %str.build.data.gep1837, align 8
  br label %choice.exit

str_overflow_abort1820:                           ; preds = %cat.sum.len1813
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1838:                                  ; preds = %concat.tot.len11
  %pay.gep1843 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr1844 = load ptr, ptr %pay.gep1843, align 8
  %fld.load1850 = load ptr, ptr %payload.ptr1844, align 8
  %cat.seg1852 = load i64, ptr %fld.load1850, align 8
  %cat.seg1853 = and i64 %cat.seg1852, 281474976710655
  %str.tag1854 = lshr i64 %cat.seg1852, 48
  %tag.immortal1856 = icmp eq i64 %str.tag1854, 0
  %active.gen1857 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1858 = icmp eq i64 %str.tag1854, %active.gen1857
  %tag.fast.ok1859 = or i1 %tag.immortal1856, %tag.current1858
  br i1 %tag.fast.ok1859, label %str_ok1855, label %tag.slow_check1860

str_ok1855:                                       ; preds = %tag.slow_check1860, %choice.case1838
  %cat.seg1861 = getelementptr inbounds { i64, ptr }, ptr %fld.load1850, i32 0, i32 1
  %cat.seg1862 = load ptr, ptr %cat.seg1861, align 8
  %fld.gep1865 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr1844, i32 0, i32 1
  %fld.load1866 = load i1, ptr %fld.gep1865, align 1
  %str.139.struct.str.60.struct = select i1 %fld.load1866, ptr @str.139.struct, ptr @str.60.struct
  %cat.seg1872 = load i64, ptr %str.139.struct.str.60.struct, align 8
  %cat.seg1873 = and i64 %cat.seg1872, 281474976710655
  %str.tag1874 = lshr i64 %cat.seg1872, 48
  %tag.immortal1876 = icmp eq i64 %str.tag1874, 0
  %active.gen1877 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1878 = icmp eq i64 %str.tag1874, %active.gen1877
  %tag.fast.ok1879 = or i1 %tag.immortal1876, %tag.current1878
  br i1 %tag.fast.ok1879, label %str_ok1875, label %tag.slow_check1880

tag.slow_check1860:                               ; preds = %choice.case1838
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1854)
  br label %str_ok1855

str_ok1875:                                       ; preds = %tag.slow_check1880, %str_ok1855
  %cat.seg1881 = getelementptr inbounds { i64, ptr }, ptr %str.139.struct.str.60.struct, i32 0, i32 1
  %cat.seg1882 = load ptr, ptr %cat.seg1881, align 8
  %fld.gep1885 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr1844, i32 0, i32 5
  %call.res1886 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %fld.gep1885)
  %arena.cur1887 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1888 = call ptr @dva_arena_alloc(ptr %arena.cur1887, i64 16)
  store { i64, ptr } %call.res1886, ptr %ret.ub.alloc1888, align 8
  %cat.seg1890 = load i64, ptr %ret.ub.alloc1888, align 8
  %cat.seg1891 = and i64 %cat.seg1890, 281474976710655
  %str.tag1892 = lshr i64 %cat.seg1890, 48
  %tag.immortal1894 = icmp eq i64 %str.tag1892, 0
  %active.gen1895 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1896 = icmp eq i64 %str.tag1892, %active.gen1895
  %tag.fast.ok1897 = or i1 %tag.immortal1894, %tag.current1896
  br i1 %tag.fast.ok1897, label %str_ok1893, label %tag.slow_check1898

tag.slow_check1880:                               ; preds = %str_ok1855
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1874)
  br label %str_ok1875

str_ok1893:                                       ; preds = %tag.slow_check1898, %str_ok1875
  %cat.seg1899 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1888, i32 0, i32 1
  %cat.seg1900 = load ptr, ptr %cat.seg1899, align 8
  %cat.seg1904 = load i64, ptr %concat.str, align 8
  %cat.seg1905 = and i64 %cat.seg1904, 281474976710655
  %str.tag1906 = lshr i64 %cat.seg1904, 48
  %tag.immortal1908 = icmp eq i64 %str.tag1906, 0
  %active.gen1909 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1910 = icmp eq i64 %str.tag1906, %active.gen1909
  %tag.fast.ok1911 = or i1 %tag.immortal1908, %tag.current1910
  br i1 %tag.fast.ok1911, label %str_ok1907, label %tag.slow_check1912

tag.slow_check1898:                               ; preds = %str_ok1875
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1892)
  br label %str_ok1893

str_ok1907:                                       ; preds = %tag.slow_check1912, %str_ok1893
  %cat.seg1914 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len1915 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 7, i64 %cat.seg1853)
  %sum1916 = extractvalue { i64, i1 } %cat.sum.len1915, 0
  %ovf1917 = extractvalue { i64, i1 } %cat.sum.len1915, 1
  br i1 %ovf1917, label %str_overflow_abort1919, label %cat.sum.len1918

tag.slow_check1912:                               ; preds = %str_ok1893
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1906)
  br label %str_ok1907

cat.sum.len1918:                                  ; preds = %str_ok1907
  %cat.sum.len1921 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1916, i64 1)
  %sum1922 = extractvalue { i64, i1 } %cat.sum.len1921, 0
  %ovf1923 = extractvalue { i64, i1 } %cat.sum.len1921, 1
  br i1 %ovf1923, label %str_overflow_abort1925, label %cat.sum.len1924

str_overflow_abort1919:                           ; preds = %str_ok1907
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1924:                                  ; preds = %cat.sum.len1918
  %cat.sum.len1927 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1922, i64 %cat.seg1873)
  %sum1928 = extractvalue { i64, i1 } %cat.sum.len1927, 0
  %ovf1929 = extractvalue { i64, i1 } %cat.sum.len1927, 1
  br i1 %ovf1929, label %str_overflow_abort1931, label %cat.sum.len1930

str_overflow_abort1925:                           ; preds = %cat.sum.len1918
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1930:                                  ; preds = %cat.sum.len1924
  %cat.sum.len1933 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1928, i64 %cat.seg1891)
  %sum1934 = extractvalue { i64, i1 } %cat.sum.len1933, 0
  %ovf1935 = extractvalue { i64, i1 } %cat.sum.len1933, 1
  br i1 %ovf1935, label %str_overflow_abort1937, label %cat.sum.len1936

str_overflow_abort1931:                           ; preds = %cat.sum.len1924
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1936:                                  ; preds = %cat.sum.len1930
  %cat.sum.len1939 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1934, i64 1)
  %sum1940 = extractvalue { i64, i1 } %cat.sum.len1939, 0
  %ovf1941 = extractvalue { i64, i1 } %cat.sum.len1939, 1
  br i1 %ovf1941, label %str_overflow_abort1943, label %cat.sum.len1942

str_overflow_abort1937:                           ; preds = %cat.sum.len1930
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1942:                                  ; preds = %cat.sum.len1936
  %cat.sum.len1945 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1940, i64 %cat.seg1905)
  %sum1946 = extractvalue { i64, i1 } %cat.sum.len1945, 0
  %ovf1947 = extractvalue { i64, i1 } %cat.sum.len1945, 1
  br i1 %ovf1947, label %str_overflow_abort1949, label %cat.sum.len1948

str_overflow_abort1943:                           ; preds = %cat.sum.len1936
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1948:                                  ; preds = %cat.sum.len1942
  %concat.tot.len1951 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1946, i64 1)
  %sum1952 = extractvalue { i64, i1 } %concat.tot.len1951, 0
  %ovf1953 = extractvalue { i64, i1 } %concat.tot.len1951, 1
  br i1 %ovf1953, label %str_overflow_abort1955, label %concat.tot.len1954

str_overflow_abort1949:                           ; preds = %cat.sum.len1942
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1954:                               ; preds = %cat.sum.len1948
  %arena.cur1957 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1958 = call ptr @dva_arena_alloc(ptr %arena.cur1957, i64 %sum1952)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1958, ptr align 1 @str.58, i64 7, i1 false)
  %cat.dst1960 = getelementptr i8, ptr %concat.buf1958, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1960, ptr align 1 %cat.seg1862, i64 %cat.seg1853, i1 false)
  %cat.off1961 = add i64 7, %cat.seg1853
  %cat.dst1962 = getelementptr i8, ptr %concat.buf1958, i64 %cat.off1961
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1962, ptr align 1 @str.34, i64 1, i1 false)
  %cat.off1963 = add i64 %cat.off1961, 1
  %cat.dst1964 = getelementptr i8, ptr %concat.buf1958, i64 %cat.off1963
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1964, ptr align 1 %cat.seg1882, i64 %cat.seg1873, i1 false)
  %cat.off1965 = add i64 %cat.off1963, %cat.seg1873
  %cat.dst1966 = getelementptr i8, ptr %concat.buf1958, i64 %cat.off1965
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1966, ptr align 1 %cat.seg1900, i64 %cat.seg1891, i1 false)
  %cat.off1967 = add i64 %cat.off1965, %cat.seg1891
  %cat.dst1968 = getelementptr i8, ptr %concat.buf1958, i64 %cat.off1967
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1968, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off1969 = add i64 %cat.off1967, 1
  %cat.dst1970 = getelementptr i8, ptr %concat.buf1958, i64 %cat.off1969
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1970, ptr align 1 %cat.seg1914, i64 %cat.seg1905, i1 false)
  %concat.nul1971 = getelementptr i8, ptr %concat.buf1958, i64 %sum1946
  store i8 0, ptr %concat.nul1971, align 1
  %arena.cur1972 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1973 = call ptr @dva_arena_alloc(ptr %arena.cur1972, i64 16)
  %str.tag.gen1975 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1976 = shl i64 %str.tag.gen1975, 48
  %str.tagged.len1977 = or i64 %sum1946, %str.tag.shift1976
  store i64 %str.tagged.len1977, ptr %concat.str1973, align 8
  %str.build.data.gep1978 = getelementptr inbounds { i64, ptr }, ptr %concat.str1973, i32 0, i32 1
  store ptr %concat.buf1958, ptr %str.build.data.gep1978, align 8
  br label %choice.exit

str_overflow_abort1955:                           ; preds = %cat.sum.len1948
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1979:                                  ; preds = %concat.tot.len11
  %pay.gep1984 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr1985 = load ptr, ptr %pay.gep1984, align 8
  %call.res1992 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %payload.ptr1985)
  %arena.cur1993 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1994 = call ptr @dva_arena_alloc(ptr %arena.cur1993, i64 16)
  store { i64, ptr } %call.res1992, ptr %ret.ub.alloc1994, align 8
  %cat.seg1996 = load i64, ptr %ret.ub.alloc1994, align 8
  %cat.seg1997 = and i64 %cat.seg1996, 281474976710655
  %str.tag1998 = lshr i64 %cat.seg1996, 48
  %tag.immortal2000 = icmp eq i64 %str.tag1998, 0
  %active.gen2001 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2002 = icmp eq i64 %str.tag1998, %active.gen2001
  %tag.fast.ok2003 = or i1 %tag.immortal2000, %tag.current2002
  br i1 %tag.fast.ok2003, label %str_ok1999, label %tag.slow_check2004

str_ok1999:                                       ; preds = %tag.slow_check2004, %choice.case1979
  %cat.seg2005 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1994, i32 0, i32 1
  %cat.seg2006 = load ptr, ptr %cat.seg2005, align 8
  %fld.gep2010 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %payload.ptr1985, i32 0, i32 1
  %call.res2011 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %fld.gep2010)
  %arena.cur2012 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc2013 = call ptr @dva_arena_alloc(ptr %arena.cur2012, i64 16)
  store { i64, ptr } %call.res2011, ptr %ret.ub.alloc2013, align 8
  %cat.seg2015 = load i64, ptr %ret.ub.alloc2013, align 8
  %cat.seg2016 = and i64 %cat.seg2015, 281474976710655
  %str.tag2017 = lshr i64 %cat.seg2015, 48
  %tag.immortal2019 = icmp eq i64 %str.tag2017, 0
  %active.gen2020 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2021 = icmp eq i64 %str.tag2017, %active.gen2020
  %tag.fast.ok2022 = or i1 %tag.immortal2019, %tag.current2021
  br i1 %tag.fast.ok2022, label %str_ok2018, label %tag.slow_check2023

tag.slow_check2004:                               ; preds = %choice.case1979
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1998)
  br label %str_ok1999

str_ok2018:                                       ; preds = %tag.slow_check2023, %str_ok1999
  %cat.seg2024 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc2013, i32 0, i32 1
  %cat.seg2025 = load ptr, ptr %cat.seg2024, align 8
  %cat.seg2029 = load i64, ptr %concat.str, align 8
  %cat.seg2030 = and i64 %cat.seg2029, 281474976710655
  %str.tag2031 = lshr i64 %cat.seg2029, 48
  %tag.immortal2033 = icmp eq i64 %str.tag2031, 0
  %active.gen2034 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2035 = icmp eq i64 %str.tag2031, %active.gen2034
  %tag.fast.ok2036 = or i1 %tag.immortal2033, %tag.current2035
  br i1 %tag.fast.ok2036, label %str_ok2032, label %tag.slow_check2037

tag.slow_check2023:                               ; preds = %str_ok1999
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2017)
  br label %str_ok2018

str_ok2032:                                       ; preds = %tag.slow_check2037, %str_ok2018
  %cat.seg2039 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len2040 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 6, i64 %cat.seg1997)
  %sum2041 = extractvalue { i64, i1 } %cat.sum.len2040, 0
  %ovf2042 = extractvalue { i64, i1 } %cat.sum.len2040, 1
  br i1 %ovf2042, label %str_overflow_abort2044, label %cat.sum.len2043

tag.slow_check2037:                               ; preds = %str_ok2018
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2031)
  br label %str_ok2032

cat.sum.len2043:                                  ; preds = %str_ok2032
  %cat.sum.len2046 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2041, i64 1)
  %sum2047 = extractvalue { i64, i1 } %cat.sum.len2046, 0
  %ovf2048 = extractvalue { i64, i1 } %cat.sum.len2046, 1
  br i1 %ovf2048, label %str_overflow_abort2050, label %cat.sum.len2049

str_overflow_abort2044:                           ; preds = %str_ok2032
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2049:                                  ; preds = %cat.sum.len2043
  %cat.sum.len2052 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2047, i64 %cat.seg2016)
  %sum2053 = extractvalue { i64, i1 } %cat.sum.len2052, 0
  %ovf2054 = extractvalue { i64, i1 } %cat.sum.len2052, 1
  br i1 %ovf2054, label %str_overflow_abort2056, label %cat.sum.len2055

str_overflow_abort2050:                           ; preds = %cat.sum.len2043
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2055:                                  ; preds = %cat.sum.len2049
  %cat.sum.len2058 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2053, i64 1)
  %sum2059 = extractvalue { i64, i1 } %cat.sum.len2058, 0
  %ovf2060 = extractvalue { i64, i1 } %cat.sum.len2058, 1
  br i1 %ovf2060, label %str_overflow_abort2062, label %cat.sum.len2061

str_overflow_abort2056:                           ; preds = %cat.sum.len2049
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2061:                                  ; preds = %cat.sum.len2055
  %cat.sum.len2064 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2059, i64 %cat.seg2030)
  %sum2065 = extractvalue { i64, i1 } %cat.sum.len2064, 0
  %ovf2066 = extractvalue { i64, i1 } %cat.sum.len2064, 1
  br i1 %ovf2066, label %str_overflow_abort2068, label %cat.sum.len2067

str_overflow_abort2062:                           ; preds = %cat.sum.len2055
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2067:                                  ; preds = %cat.sum.len2061
  %concat.tot.len2070 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2065, i64 1)
  %sum2071 = extractvalue { i64, i1 } %concat.tot.len2070, 0
  %ovf2072 = extractvalue { i64, i1 } %concat.tot.len2070, 1
  br i1 %ovf2072, label %str_overflow_abort2074, label %concat.tot.len2073

str_overflow_abort2068:                           ; preds = %cat.sum.len2061
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2073:                               ; preds = %cat.sum.len2067
  %arena.cur2076 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2077 = call ptr @dva_arena_alloc(ptr %arena.cur2076, i64 %sum2071)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2077, ptr align 1 @str.77, i64 6, i1 false)
  %cat.dst2079 = getelementptr i8, ptr %concat.buf2077, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2079, ptr align 1 %cat.seg2006, i64 %cat.seg1997, i1 false)
  %cat.off2080 = add i64 6, %cat.seg1997
  %cat.dst2081 = getelementptr i8, ptr %concat.buf2077, i64 %cat.off2080
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2081, ptr align 1 @str.34, i64 1, i1 false)
  %cat.off2082 = add i64 %cat.off2080, 1
  %cat.dst2083 = getelementptr i8, ptr %concat.buf2077, i64 %cat.off2082
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2083, ptr align 1 %cat.seg2025, i64 %cat.seg2016, i1 false)
  %cat.off2084 = add i64 %cat.off2082, %cat.seg2016
  %cat.dst2085 = getelementptr i8, ptr %concat.buf2077, i64 %cat.off2084
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2085, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off2086 = add i64 %cat.off2084, 1
  %cat.dst2087 = getelementptr i8, ptr %concat.buf2077, i64 %cat.off2086
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2087, ptr align 1 %cat.seg2039, i64 %cat.seg2030, i1 false)
  %concat.nul2088 = getelementptr i8, ptr %concat.buf2077, i64 %sum2065
  store i8 0, ptr %concat.nul2088, align 1
  %arena.cur2089 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str2090 = call ptr @dva_arena_alloc(ptr %arena.cur2089, i64 16)
  %str.tag.gen2092 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift2093 = shl i64 %str.tag.gen2092, 48
  %str.tagged.len2094 = or i64 %sum2065, %str.tag.shift2093
  store i64 %str.tagged.len2094, ptr %concat.str2090, align 8
  %str.build.data.gep2095 = getelementptr inbounds { i64, ptr }, ptr %concat.str2090, i32 0, i32 1
  store ptr %concat.buf2077, ptr %str.build.data.gep2095, align 8
  br label %choice.exit

str_overflow_abort2074:                           ; preds = %cat.sum.len2067
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case2096:                                  ; preds = %concat.tot.len11
  %pay.gep2101 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr2102 = load ptr, ptr %pay.gep2101, align 8
  %fld.load2108 = load i1, ptr %payload.ptr2102, align 1
  %str.51.struct.str.52.struct = select i1 %fld.load2108, ptr @str.51.struct, ptr @str.52.struct
  %cat.seg2114 = load i64, ptr %str.51.struct.str.52.struct, align 8
  %cat.seg2115 = and i64 %cat.seg2114, 281474976710655
  %str.tag2116 = lshr i64 %cat.seg2114, 48
  %tag.immortal2118 = icmp eq i64 %str.tag2116, 0
  %active.gen2119 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2120 = icmp eq i64 %str.tag2116, %active.gen2119
  %tag.fast.ok2121 = or i1 %tag.immortal2118, %tag.current2120
  br i1 %tag.fast.ok2121, label %str_ok2117, label %tag.slow_check2122

str_ok2117:                                       ; preds = %tag.slow_check2122, %choice.case2096
  %cat.seg2123 = getelementptr inbounds { i64, ptr }, ptr %str.51.struct.str.52.struct, i32 0, i32 1
  %cat.seg2124 = load ptr, ptr %cat.seg2123, align 8
  %fld.gep2127 = getelementptr inbounds { i1, i64 }, ptr %payload.ptr2102, i32 0, i32 1
  %fld.load2128 = load i64, ptr %fld.gep2127, align 8
  %cat.ilen2130 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf2129, i64 %fld.load2128, i1 false)
  %cat.seg2134 = load i64, ptr %concat.str, align 8
  %cat.seg2135 = and i64 %cat.seg2134, 281474976710655
  %str.tag2136 = lshr i64 %cat.seg2134, 48
  %tag.immortal2138 = icmp eq i64 %str.tag2136, 0
  %active.gen2139 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2140 = icmp eq i64 %str.tag2136, %active.gen2139
  %tag.fast.ok2141 = or i1 %tag.immortal2138, %tag.current2140
  br i1 %tag.fast.ok2141, label %str_ok2137, label %tag.slow_check2142

tag.slow_check2122:                               ; preds = %choice.case2096
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2116)
  br label %str_ok2117

str_ok2137:                                       ; preds = %tag.slow_check2142, %str_ok2117
  %cat.seg2144 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len2145 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 10, i64 %cat.seg2115)
  %sum2146 = extractvalue { i64, i1 } %cat.sum.len2145, 0
  %ovf2147 = extractvalue { i64, i1 } %cat.sum.len2145, 1
  br i1 %ovf2147, label %str_overflow_abort2149, label %cat.sum.len2148

tag.slow_check2142:                               ; preds = %str_ok2117
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2136)
  br label %str_ok2137

cat.sum.len2148:                                  ; preds = %str_ok2137
  %cat.sum.len2151 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2146, i64 1)
  %sum2152 = extractvalue { i64, i1 } %cat.sum.len2151, 0
  %ovf2153 = extractvalue { i64, i1 } %cat.sum.len2151, 1
  br i1 %ovf2153, label %str_overflow_abort2155, label %cat.sum.len2154

str_overflow_abort2149:                           ; preds = %str_ok2137
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2154:                                  ; preds = %cat.sum.len2148
  %cat.sum.len2157 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2152, i64 %cat.ilen2130)
  %sum2158 = extractvalue { i64, i1 } %cat.sum.len2157, 0
  %ovf2159 = extractvalue { i64, i1 } %cat.sum.len2157, 1
  br i1 %ovf2159, label %str_overflow_abort2161, label %cat.sum.len2160

str_overflow_abort2155:                           ; preds = %cat.sum.len2148
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2160:                                  ; preds = %cat.sum.len2154
  %cat.sum.len2163 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2158, i64 1)
  %sum2164 = extractvalue { i64, i1 } %cat.sum.len2163, 0
  %ovf2165 = extractvalue { i64, i1 } %cat.sum.len2163, 1
  br i1 %ovf2165, label %str_overflow_abort2167, label %cat.sum.len2166

str_overflow_abort2161:                           ; preds = %cat.sum.len2154
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2166:                                  ; preds = %cat.sum.len2160
  %cat.sum.len2169 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2164, i64 %cat.seg2135)
  %sum2170 = extractvalue { i64, i1 } %cat.sum.len2169, 0
  %ovf2171 = extractvalue { i64, i1 } %cat.sum.len2169, 1
  br i1 %ovf2171, label %str_overflow_abort2173, label %cat.sum.len2172

str_overflow_abort2167:                           ; preds = %cat.sum.len2160
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2172:                                  ; preds = %cat.sum.len2166
  %concat.tot.len2175 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2170, i64 1)
  %sum2176 = extractvalue { i64, i1 } %concat.tot.len2175, 0
  %ovf2177 = extractvalue { i64, i1 } %concat.tot.len2175, 1
  br i1 %ovf2177, label %str_overflow_abort2179, label %concat.tot.len2178

str_overflow_abort2173:                           ; preds = %cat.sum.len2166
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2178:                               ; preds = %cat.sum.len2172
  %arena.cur2181 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2182 = call ptr @dva_arena_alloc(ptr %arena.cur2181, i64 %sum2176)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2182, ptr align 1 @str.50, i64 10, i1 false)
  %cat.dst2184 = getelementptr i8, ptr %concat.buf2182, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2184, ptr align 1 %cat.seg2124, i64 %cat.seg2115, i1 false)
  %cat.off2185 = add i64 10, %cat.seg2115
  %cat.dst2186 = getelementptr i8, ptr %concat.buf2182, i64 %cat.off2185
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2186, ptr align 1 @str.34, i64 1, i1 false)
  %cat.off2187 = add i64 %cat.off2185, 1
  %cat.dst2188 = getelementptr i8, ptr %concat.buf2182, i64 %cat.off2187
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2188, ptr align 1 %cat.ibuf2129, i64 %cat.ilen2130, i1 false)
  %cat.off2189 = add i64 %cat.off2187, %cat.ilen2130
  %cat.dst2190 = getelementptr i8, ptr %concat.buf2182, i64 %cat.off2189
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2190, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off2191 = add i64 %cat.off2189, 1
  %cat.dst2192 = getelementptr i8, ptr %concat.buf2182, i64 %cat.off2191
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2192, ptr align 1 %cat.seg2144, i64 %cat.seg2135, i1 false)
  %concat.nul2193 = getelementptr i8, ptr %concat.buf2182, i64 %sum2170
  store i8 0, ptr %concat.nul2193, align 1
  %arena.cur2194 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str2195 = call ptr @dva_arena_alloc(ptr %arena.cur2194, i64 16)
  %str.tag.gen2197 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift2198 = shl i64 %str.tag.gen2197, 48
  %str.tagged.len2199 = or i64 %sum2170, %str.tag.shift2198
  store i64 %str.tagged.len2199, ptr %concat.str2195, align 8
  %str.build.data.gep2200 = getelementptr inbounds { i64, ptr }, ptr %concat.str2195, i32 0, i32 1
  store ptr %concat.buf2182, ptr %str.build.data.gep2200, align 8
  br label %choice.exit

str_overflow_abort2179:                           ; preds = %cat.sum.len2172
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case2201:                                  ; preds = %concat.tot.len11
  %pay.gep2206 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr2207 = load ptr, ptr %pay.gep2206, align 8
  %niche.ne.null = icmp ne ptr %payload.ptr2207, null
  br i1 %niche.ne.null, label %choice.then2211, label %choice.exit2213

choice.then2211:                                  ; preds = %choice.case2201
  %call.res2218 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %payload.ptr2207)
  %arena.cur2219 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc2220 = call ptr @dva_arena_alloc(ptr %arena.cur2219, i64 16)
  store { i64, ptr } %call.res2218, ptr %ret.ub.alloc2220, align 8
  br label %choice.exit2213

choice.exit2213:                                  ; preds = %choice.case2201, %choice.then2211
  %choice.res2221 = phi ptr [ %ret.ub.alloc2220, %choice.then2211 ], [ @str.49.struct, %choice.case2201 ]
  %cat.seg2223 = load i64, ptr %choice.res2221, align 8
  %cat.seg2224 = and i64 %cat.seg2223, 281474976710655
  %str.tag2225 = lshr i64 %cat.seg2223, 48
  %tag.immortal2227 = icmp eq i64 %str.tag2225, 0
  %active.gen2228 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2229 = icmp eq i64 %str.tag2225, %active.gen2228
  %tag.fast.ok2230 = or i1 %tag.immortal2227, %tag.current2229
  br i1 %tag.fast.ok2230, label %str_ok2226, label %tag.slow_check2231

str_ok2226:                                       ; preds = %tag.slow_check2231, %choice.exit2213
  %cat.seg2232 = getelementptr inbounds { i64, ptr }, ptr %choice.res2221, i32 0, i32 1
  %cat.seg2233 = load ptr, ptr %cat.seg2232, align 8
  %cat.seg2237 = load i64, ptr %concat.str, align 8
  %cat.seg2238 = and i64 %cat.seg2237, 281474976710655
  %str.tag2239 = lshr i64 %cat.seg2237, 48
  %tag.immortal2241 = icmp eq i64 %str.tag2239, 0
  %active.gen2242 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2243 = icmp eq i64 %str.tag2239, %active.gen2242
  %tag.fast.ok2244 = or i1 %tag.immortal2241, %tag.current2243
  br i1 %tag.fast.ok2244, label %str_ok2240, label %tag.slow_check2245

tag.slow_check2231:                               ; preds = %choice.exit2213
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2225)
  br label %str_ok2226

str_ok2240:                                       ; preds = %tag.slow_check2245, %str_ok2226
  %cat.seg2247 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len2248 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 7, i64 %cat.seg2224)
  %sum2249 = extractvalue { i64, i1 } %cat.sum.len2248, 0
  %ovf2250 = extractvalue { i64, i1 } %cat.sum.len2248, 1
  br i1 %ovf2250, label %str_overflow_abort2252, label %cat.sum.len2251

tag.slow_check2245:                               ; preds = %str_ok2226
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2239)
  br label %str_ok2240

cat.sum.len2251:                                  ; preds = %str_ok2240
  %cat.sum.len2254 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2249, i64 1)
  %sum2255 = extractvalue { i64, i1 } %cat.sum.len2254, 0
  %ovf2256 = extractvalue { i64, i1 } %cat.sum.len2254, 1
  br i1 %ovf2256, label %str_overflow_abort2258, label %cat.sum.len2257

str_overflow_abort2252:                           ; preds = %str_ok2240
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2257:                                  ; preds = %cat.sum.len2251
  %cat.sum.len2260 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2255, i64 %cat.seg2238)
  %sum2261 = extractvalue { i64, i1 } %cat.sum.len2260, 0
  %ovf2262 = extractvalue { i64, i1 } %cat.sum.len2260, 1
  br i1 %ovf2262, label %str_overflow_abort2264, label %cat.sum.len2263

str_overflow_abort2258:                           ; preds = %cat.sum.len2251
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2263:                                  ; preds = %cat.sum.len2257
  %concat.tot.len2266 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2261, i64 1)
  %sum2267 = extractvalue { i64, i1 } %concat.tot.len2266, 0
  %ovf2268 = extractvalue { i64, i1 } %concat.tot.len2266, 1
  br i1 %ovf2268, label %str_overflow_abort2270, label %concat.tot.len2269

str_overflow_abort2264:                           ; preds = %cat.sum.len2257
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2269:                               ; preds = %cat.sum.len2263
  %arena.cur2272 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2273 = call ptr @dva_arena_alloc(ptr %arena.cur2272, i64 %sum2267)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2273, ptr align 1 @str.53, i64 7, i1 false)
  %cat.dst2275 = getelementptr i8, ptr %concat.buf2273, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2275, ptr align 1 %cat.seg2233, i64 %cat.seg2224, i1 false)
  %cat.off2276 = add i64 7, %cat.seg2224
  %cat.dst2277 = getelementptr i8, ptr %concat.buf2273, i64 %cat.off2276
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2277, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off2278 = add i64 %cat.off2276, 1
  %cat.dst2279 = getelementptr i8, ptr %concat.buf2273, i64 %cat.off2278
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2279, ptr align 1 %cat.seg2247, i64 %cat.seg2238, i1 false)
  %concat.nul2280 = getelementptr i8, ptr %concat.buf2273, i64 %sum2261
  store i8 0, ptr %concat.nul2280, align 1
  %arena.cur2281 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str2282 = call ptr @dva_arena_alloc(ptr %arena.cur2281, i64 16)
  %str.tag.gen2284 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift2285 = shl i64 %str.tag.gen2284, 48
  %str.tagged.len2286 = or i64 %sum2261, %str.tag.shift2285
  store i64 %str.tagged.len2286, ptr %concat.str2282, align 8
  %str.build.data.gep2287 = getelementptr inbounds { i64, ptr }, ptr %concat.str2282, i32 0, i32 1
  store ptr %concat.buf2273, ptr %str.build.data.gep2287, align 8
  br label %choice.exit

str_overflow_abort2270:                           ; preds = %cat.sum.len2263
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case2288:                                  ; preds = %concat.tot.len11
  %pay.gep2293 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr2294 = load ptr, ptr %pay.gep2293, align 8
  %fld.load2300 = load ptr, ptr %payload.ptr2294, align 8
  %call.res2301 = call { i64, ptr } @"unify::show_ram_shape"(ptr %fld.load2300)
  %arena.cur2302 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc2303 = call ptr @dva_arena_alloc(ptr %arena.cur2302, i64 16)
  store { i64, ptr } %call.res2301, ptr %ret.ub.alloc2303, align 8
  %cat.seg2305 = load i64, ptr %ret.ub.alloc2303, align 8
  %cat.seg2306 = and i64 %cat.seg2305, 281474976710655
  %str.tag2307 = lshr i64 %cat.seg2305, 48
  %tag.immortal2309 = icmp eq i64 %str.tag2307, 0
  %active.gen2310 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2311 = icmp eq i64 %str.tag2307, %active.gen2310
  %tag.fast.ok2312 = or i1 %tag.immortal2309, %tag.current2311
  br i1 %tag.fast.ok2312, label %str_ok2308, label %tag.slow_check2313

str_ok2308:                                       ; preds = %tag.slow_check2313, %choice.case2288
  %cat.seg2314 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc2303, i32 0, i32 1
  %cat.seg2315 = load ptr, ptr %cat.seg2314, align 8
  %cat.seg2319 = load i64, ptr %concat.str, align 8
  %cat.seg2320 = and i64 %cat.seg2319, 281474976710655
  %str.tag2321 = lshr i64 %cat.seg2319, 48
  %tag.immortal2323 = icmp eq i64 %str.tag2321, 0
  %active.gen2324 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2325 = icmp eq i64 %str.tag2321, %active.gen2324
  %tag.fast.ok2326 = or i1 %tag.immortal2323, %tag.current2325
  br i1 %tag.fast.ok2326, label %str_ok2322, label %tag.slow_check2327

tag.slow_check2313:                               ; preds = %choice.case2288
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2307)
  br label %str_ok2308

str_ok2322:                                       ; preds = %tag.slow_check2327, %str_ok2308
  %cat.seg2329 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len2330 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4, i64 %cat.seg2306)
  %sum2331 = extractvalue { i64, i1 } %cat.sum.len2330, 0
  %ovf2332 = extractvalue { i64, i1 } %cat.sum.len2330, 1
  br i1 %ovf2332, label %str_overflow_abort2334, label %cat.sum.len2333

tag.slow_check2327:                               ; preds = %str_ok2308
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2321)
  br label %str_ok2322

cat.sum.len2333:                                  ; preds = %str_ok2322
  %cat.sum.len2336 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2331, i64 1)
  %sum2337 = extractvalue { i64, i1 } %cat.sum.len2336, 0
  %ovf2338 = extractvalue { i64, i1 } %cat.sum.len2336, 1
  br i1 %ovf2338, label %str_overflow_abort2340, label %cat.sum.len2339

str_overflow_abort2334:                           ; preds = %str_ok2322
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2339:                                  ; preds = %cat.sum.len2333
  %cat.sum.len2342 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2337, i64 %cat.seg2320)
  %sum2343 = extractvalue { i64, i1 } %cat.sum.len2342, 0
  %ovf2344 = extractvalue { i64, i1 } %cat.sum.len2342, 1
  br i1 %ovf2344, label %str_overflow_abort2346, label %cat.sum.len2345

str_overflow_abort2340:                           ; preds = %cat.sum.len2333
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2345:                                  ; preds = %cat.sum.len2339
  %concat.tot.len2348 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2343, i64 1)
  %sum2349 = extractvalue { i64, i1 } %concat.tot.len2348, 0
  %ovf2350 = extractvalue { i64, i1 } %concat.tot.len2348, 1
  br i1 %ovf2350, label %str_overflow_abort2352, label %concat.tot.len2351

str_overflow_abort2346:                           ; preds = %cat.sum.len2339
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2351:                               ; preds = %cat.sum.len2345
  %arena.cur2354 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2355 = call ptr @dva_arena_alloc(ptr %arena.cur2354, i64 %sum2349)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2355, ptr align 1 @str.140, i64 4, i1 false)
  %cat.dst2357 = getelementptr i8, ptr %concat.buf2355, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2357, ptr align 1 %cat.seg2315, i64 %cat.seg2306, i1 false)
  %cat.off2358 = add i64 4, %cat.seg2306
  %cat.dst2359 = getelementptr i8, ptr %concat.buf2355, i64 %cat.off2358
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2359, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off2360 = add i64 %cat.off2358, 1
  %cat.dst2361 = getelementptr i8, ptr %concat.buf2355, i64 %cat.off2360
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2361, ptr align 1 %cat.seg2329, i64 %cat.seg2320, i1 false)
  %concat.nul2362 = getelementptr i8, ptr %concat.buf2355, i64 %sum2343
  store i8 0, ptr %concat.nul2362, align 1
  %arena.cur2363 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str2364 = call ptr @dva_arena_alloc(ptr %arena.cur2363, i64 16)
  %str.tag.gen2366 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift2367 = shl i64 %str.tag.gen2366, 48
  %str.tagged.len2368 = or i64 %sum2343, %str.tag.shift2367
  store i64 %str.tagged.len2368, ptr %concat.str2364, align 8
  %str.build.data.gep2369 = getelementptr inbounds { i64, ptr }, ptr %concat.str2364, i32 0, i32 1
  store ptr %concat.buf2355, ptr %str.build.data.gep2369, align 8
  br label %choice.exit

str_overflow_abort2352:                           ; preds = %cat.sum.len2345
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case2370:                                  ; preds = %concat.tot.len11
  %pay.gep2375 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr2376 = load ptr, ptr %pay.gep2375, align 8
  %fld.load2382 = load ptr, ptr %payload.ptr2376, align 8
  %cat.seg2384 = load i64, ptr %fld.load2382, align 8
  %cat.seg2385 = and i64 %cat.seg2384, 281474976710655
  %str.tag2386 = lshr i64 %cat.seg2384, 48
  %tag.immortal2388 = icmp eq i64 %str.tag2386, 0
  %active.gen2389 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2390 = icmp eq i64 %str.tag2386, %active.gen2389
  %tag.fast.ok2391 = or i1 %tag.immortal2388, %tag.current2390
  br i1 %tag.fast.ok2391, label %str_ok2387, label %tag.slow_check2392

str_ok2387:                                       ; preds = %tag.slow_check2392, %choice.case2370
  %cat.seg2393 = getelementptr inbounds { i64, ptr }, ptr %fld.load2382, i32 0, i32 1
  %cat.seg2394 = load ptr, ptr %cat.seg2393, align 8
  %cat.seg2398 = load i64, ptr %concat.str, align 8
  %cat.seg2399 = and i64 %cat.seg2398, 281474976710655
  %str.tag2400 = lshr i64 %cat.seg2398, 48
  %tag.immortal2402 = icmp eq i64 %str.tag2400, 0
  %active.gen2403 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2404 = icmp eq i64 %str.tag2400, %active.gen2403
  %tag.fast.ok2405 = or i1 %tag.immortal2402, %tag.current2404
  br i1 %tag.fast.ok2405, label %str_ok2401, label %tag.slow_check2406

tag.slow_check2392:                               ; preds = %choice.case2370
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2386)
  br label %str_ok2387

str_ok2401:                                       ; preds = %tag.slow_check2406, %str_ok2387
  %cat.seg2408 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len2409 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 5, i64 %cat.seg2385)
  %sum2410 = extractvalue { i64, i1 } %cat.sum.len2409, 0
  %ovf2411 = extractvalue { i64, i1 } %cat.sum.len2409, 1
  br i1 %ovf2411, label %str_overflow_abort2413, label %cat.sum.len2412

tag.slow_check2406:                               ; preds = %str_ok2387
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2400)
  br label %str_ok2401

cat.sum.len2412:                                  ; preds = %str_ok2401
  %cat.sum.len2415 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2410, i64 1)
  %sum2416 = extractvalue { i64, i1 } %cat.sum.len2415, 0
  %ovf2417 = extractvalue { i64, i1 } %cat.sum.len2415, 1
  br i1 %ovf2417, label %str_overflow_abort2419, label %cat.sum.len2418

str_overflow_abort2413:                           ; preds = %str_ok2401
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2418:                                  ; preds = %cat.sum.len2412
  %cat.sum.len2421 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2416, i64 %cat.seg2399)
  %sum2422 = extractvalue { i64, i1 } %cat.sum.len2421, 0
  %ovf2423 = extractvalue { i64, i1 } %cat.sum.len2421, 1
  br i1 %ovf2423, label %str_overflow_abort2425, label %cat.sum.len2424

str_overflow_abort2419:                           ; preds = %cat.sum.len2412
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2424:                                  ; preds = %cat.sum.len2418
  %concat.tot.len2427 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2422, i64 1)
  %sum2428 = extractvalue { i64, i1 } %concat.tot.len2427, 0
  %ovf2429 = extractvalue { i64, i1 } %concat.tot.len2427, 1
  br i1 %ovf2429, label %str_overflow_abort2431, label %concat.tot.len2430

str_overflow_abort2425:                           ; preds = %cat.sum.len2418
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2430:                               ; preds = %cat.sum.len2424
  %arena.cur2433 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2434 = call ptr @dva_arena_alloc(ptr %arena.cur2433, i64 %sum2428)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2434, ptr align 1 @str.141, i64 5, i1 false)
  %cat.dst2436 = getelementptr i8, ptr %concat.buf2434, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2436, ptr align 1 %cat.seg2394, i64 %cat.seg2385, i1 false)
  %cat.off2437 = add i64 5, %cat.seg2385
  %cat.dst2438 = getelementptr i8, ptr %concat.buf2434, i64 %cat.off2437
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2438, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off2439 = add i64 %cat.off2437, 1
  %cat.dst2440 = getelementptr i8, ptr %concat.buf2434, i64 %cat.off2439
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2440, ptr align 1 %cat.seg2408, i64 %cat.seg2399, i1 false)
  %concat.nul2441 = getelementptr i8, ptr %concat.buf2434, i64 %sum2422
  store i8 0, ptr %concat.nul2441, align 1
  %arena.cur2442 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str2443 = call ptr @dva_arena_alloc(ptr %arena.cur2442, i64 16)
  %str.tag.gen2445 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift2446 = shl i64 %str.tag.gen2445, 48
  %str.tagged.len2447 = or i64 %sum2422, %str.tag.shift2446
  store i64 %str.tagged.len2447, ptr %concat.str2443, align 8
  %str.build.data.gep2448 = getelementptr inbounds { i64, ptr }, ptr %concat.str2443, i32 0, i32 1
  store ptr %concat.buf2434, ptr %str.build.data.gep2448, align 8
  br label %choice.exit

str_overflow_abort2431:                           ; preds = %cat.sum.len2424
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case2449:                                  ; preds = %concat.tot.len11
  %pay.gep2454 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr2455 = load ptr, ptr %pay.gep2454, align 8
  %call.res2460 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %payload.ptr2455)
  %arena.cur2461 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc2462 = call ptr @dva_arena_alloc(ptr %arena.cur2461, i64 16)
  store { i64, ptr } %call.res2460, ptr %ret.ub.alloc2462, align 8
  %cat.seg2464 = load i64, ptr %ret.ub.alloc2462, align 8
  %cat.seg2465 = and i64 %cat.seg2464, 281474976710655
  %str.tag2466 = lshr i64 %cat.seg2464, 48
  %tag.immortal2468 = icmp eq i64 %str.tag2466, 0
  %active.gen2469 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2470 = icmp eq i64 %str.tag2466, %active.gen2469
  %tag.fast.ok2471 = or i1 %tag.immortal2468, %tag.current2470
  br i1 %tag.fast.ok2471, label %str_ok2467, label %tag.slow_check2472

str_ok2467:                                       ; preds = %tag.slow_check2472, %choice.case2449
  %cat.seg2473 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc2462, i32 0, i32 1
  %cat.seg2474 = load ptr, ptr %cat.seg2473, align 8
  %cat.seg2478 = load i64, ptr %concat.str, align 8
  %cat.seg2479 = and i64 %cat.seg2478, 281474976710655
  %str.tag2480 = lshr i64 %cat.seg2478, 48
  %tag.immortal2482 = icmp eq i64 %str.tag2480, 0
  %active.gen2483 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2484 = icmp eq i64 %str.tag2480, %active.gen2483
  %tag.fast.ok2485 = or i1 %tag.immortal2482, %tag.current2484
  br i1 %tag.fast.ok2485, label %str_ok2481, label %tag.slow_check2486

tag.slow_check2472:                               ; preds = %choice.case2449
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2466)
  br label %str_ok2467

str_ok2481:                                       ; preds = %tag.slow_check2486, %str_ok2467
  %cat.seg2488 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len2489 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 11, i64 %cat.seg2465)
  %sum2490 = extractvalue { i64, i1 } %cat.sum.len2489, 0
  %ovf2491 = extractvalue { i64, i1 } %cat.sum.len2489, 1
  br i1 %ovf2491, label %str_overflow_abort2493, label %cat.sum.len2492

tag.slow_check2486:                               ; preds = %str_ok2467
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2480)
  br label %str_ok2481

cat.sum.len2492:                                  ; preds = %str_ok2481
  %cat.sum.len2495 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2490, i64 1)
  %sum2496 = extractvalue { i64, i1 } %cat.sum.len2495, 0
  %ovf2497 = extractvalue { i64, i1 } %cat.sum.len2495, 1
  br i1 %ovf2497, label %str_overflow_abort2499, label %cat.sum.len2498

str_overflow_abort2493:                           ; preds = %str_ok2481
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2498:                                  ; preds = %cat.sum.len2492
  %cat.sum.len2501 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2496, i64 %cat.seg2479)
  %sum2502 = extractvalue { i64, i1 } %cat.sum.len2501, 0
  %ovf2503 = extractvalue { i64, i1 } %cat.sum.len2501, 1
  br i1 %ovf2503, label %str_overflow_abort2505, label %cat.sum.len2504

str_overflow_abort2499:                           ; preds = %cat.sum.len2492
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2504:                                  ; preds = %cat.sum.len2498
  %concat.tot.len2507 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2502, i64 1)
  %sum2508 = extractvalue { i64, i1 } %concat.tot.len2507, 0
  %ovf2509 = extractvalue { i64, i1 } %concat.tot.len2507, 1
  br i1 %ovf2509, label %str_overflow_abort2511, label %concat.tot.len2510

str_overflow_abort2505:                           ; preds = %cat.sum.len2498
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2510:                               ; preds = %cat.sum.len2504
  %arena.cur2513 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2514 = call ptr @dva_arena_alloc(ptr %arena.cur2513, i64 %sum2508)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2514, ptr align 1 @str.142, i64 11, i1 false)
  %cat.dst2516 = getelementptr i8, ptr %concat.buf2514, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2516, ptr align 1 %cat.seg2474, i64 %cat.seg2465, i1 false)
  %cat.off2517 = add i64 11, %cat.seg2465
  %cat.dst2518 = getelementptr i8, ptr %concat.buf2514, i64 %cat.off2517
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2518, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off2519 = add i64 %cat.off2517, 1
  %cat.dst2520 = getelementptr i8, ptr %concat.buf2514, i64 %cat.off2519
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2520, ptr align 1 %cat.seg2488, i64 %cat.seg2479, i1 false)
  %concat.nul2521 = getelementptr i8, ptr %concat.buf2514, i64 %sum2502
  store i8 0, ptr %concat.nul2521, align 1
  %arena.cur2522 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str2523 = call ptr @dva_arena_alloc(ptr %arena.cur2522, i64 16)
  %str.tag.gen2525 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift2526 = shl i64 %str.tag.gen2525, 48
  %str.tagged.len2527 = or i64 %sum2502, %str.tag.shift2526
  store i64 %str.tagged.len2527, ptr %concat.str2523, align 8
  %str.build.data.gep2528 = getelementptr inbounds { i64, ptr }, ptr %concat.str2523, i32 0, i32 1
  store ptr %concat.buf2514, ptr %str.build.data.gep2528, align 8
  br label %choice.exit

str_overflow_abort2511:                           ; preds = %cat.sum.len2504
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case2529:                                  ; preds = %concat.tot.len11
  %pay.gep2534 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr2535 = load ptr, ptr %pay.gep2534, align 8
  %fld.gep2539 = getelementptr inbounds { ptr, i64 }, ptr %payload.ptr2535, i32 0, i32 1
  %fld.load2540 = load i64, ptr %fld.gep2539, align 8
  %cat.ilen2542 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf2541, i64 %fld.load2540, i1 false)
  %cat.seg2546 = load i64, ptr %concat.str, align 8
  %cat.seg2547 = and i64 %cat.seg2546, 281474976710655
  %str.tag2548 = lshr i64 %cat.seg2546, 48
  %tag.immortal2550 = icmp eq i64 %str.tag2548, 0
  %active.gen2551 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2552 = icmp eq i64 %str.tag2548, %active.gen2551
  %tag.fast.ok2553 = or i1 %tag.immortal2550, %tag.current2552
  br i1 %tag.fast.ok2553, label %str_ok2549, label %tag.slow_check2554

str_ok2549:                                       ; preds = %tag.slow_check2554, %choice.case2529
  %cat.seg2556 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len2557 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 9, i64 %cat.ilen2542)
  %sum2558 = extractvalue { i64, i1 } %cat.sum.len2557, 0
  %ovf2559 = extractvalue { i64, i1 } %cat.sum.len2557, 1
  br i1 %ovf2559, label %str_overflow_abort2561, label %cat.sum.len2560

tag.slow_check2554:                               ; preds = %choice.case2529
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2548)
  br label %str_ok2549

cat.sum.len2560:                                  ; preds = %str_ok2549
  %cat.sum.len2563 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2558, i64 1)
  %sum2564 = extractvalue { i64, i1 } %cat.sum.len2563, 0
  %ovf2565 = extractvalue { i64, i1 } %cat.sum.len2563, 1
  br i1 %ovf2565, label %str_overflow_abort2567, label %cat.sum.len2566

str_overflow_abort2561:                           ; preds = %str_ok2549
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2566:                                  ; preds = %cat.sum.len2560
  %cat.sum.len2569 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2564, i64 %cat.seg2547)
  %sum2570 = extractvalue { i64, i1 } %cat.sum.len2569, 0
  %ovf2571 = extractvalue { i64, i1 } %cat.sum.len2569, 1
  br i1 %ovf2571, label %str_overflow_abort2573, label %cat.sum.len2572

str_overflow_abort2567:                           ; preds = %cat.sum.len2560
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2572:                                  ; preds = %cat.sum.len2566
  %concat.tot.len2575 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2570, i64 1)
  %sum2576 = extractvalue { i64, i1 } %concat.tot.len2575, 0
  %ovf2577 = extractvalue { i64, i1 } %concat.tot.len2575, 1
  br i1 %ovf2577, label %str_overflow_abort2579, label %concat.tot.len2578

str_overflow_abort2573:                           ; preds = %cat.sum.len2566
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2578:                               ; preds = %cat.sum.len2572
  %arena.cur2581 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2582 = call ptr @dva_arena_alloc(ptr %arena.cur2581, i64 %sum2576)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2582, ptr align 1 @str.143, i64 9, i1 false)
  %cat.dst2584 = getelementptr i8, ptr %concat.buf2582, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2584, ptr align 1 %cat.ibuf2541, i64 %cat.ilen2542, i1 false)
  %cat.off2585 = add i64 9, %cat.ilen2542
  %cat.dst2586 = getelementptr i8, ptr %concat.buf2582, i64 %cat.off2585
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2586, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off2587 = add i64 %cat.off2585, 1
  %cat.dst2588 = getelementptr i8, ptr %concat.buf2582, i64 %cat.off2587
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2588, ptr align 1 %cat.seg2556, i64 %cat.seg2547, i1 false)
  %concat.nul2589 = getelementptr i8, ptr %concat.buf2582, i64 %sum2570
  store i8 0, ptr %concat.nul2589, align 1
  %arena.cur2590 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str2591 = call ptr @dva_arena_alloc(ptr %arena.cur2590, i64 16)
  %str.tag.gen2593 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift2594 = shl i64 %str.tag.gen2593, 48
  %str.tagged.len2595 = or i64 %sum2570, %str.tag.shift2594
  store i64 %str.tagged.len2595, ptr %concat.str2591, align 8
  %str.build.data.gep2596 = getelementptr inbounds { i64, ptr }, ptr %concat.str2591, i32 0, i32 1
  store ptr %concat.buf2582, ptr %str.build.data.gep2596, align 8
  br label %choice.exit

str_overflow_abort2579:                           ; preds = %cat.sum.len2572
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case2597:                                  ; preds = %concat.tot.len11
  %pay.gep2602 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr2603 = load ptr, ptr %pay.gep2602, align 8
  %call.res2609 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %payload.ptr2603)
  %arena.cur2610 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc2611 = call ptr @dva_arena_alloc(ptr %arena.cur2610, i64 16)
  store { i64, ptr } %call.res2609, ptr %ret.ub.alloc2611, align 8
  %cat.seg2613 = load i64, ptr %ret.ub.alloc2611, align 8
  %cat.seg2614 = and i64 %cat.seg2613, 281474976710655
  %str.tag2615 = lshr i64 %cat.seg2613, 48
  %tag.immortal2617 = icmp eq i64 %str.tag2615, 0
  %active.gen2618 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2619 = icmp eq i64 %str.tag2615, %active.gen2618
  %tag.fast.ok2620 = or i1 %tag.immortal2617, %tag.current2619
  br i1 %tag.fast.ok2620, label %str_ok2616, label %tag.slow_check2621

str_ok2616:                                       ; preds = %tag.slow_check2621, %choice.case2597
  %cat.seg2622 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc2611, i32 0, i32 1
  %cat.seg2623 = load ptr, ptr %cat.seg2622, align 8
  %cat.seg2627 = load i64, ptr %concat.str, align 8
  %cat.seg2628 = and i64 %cat.seg2627, 281474976710655
  %str.tag2629 = lshr i64 %cat.seg2627, 48
  %tag.immortal2631 = icmp eq i64 %str.tag2629, 0
  %active.gen2632 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2633 = icmp eq i64 %str.tag2629, %active.gen2632
  %tag.fast.ok2634 = or i1 %tag.immortal2631, %tag.current2633
  br i1 %tag.fast.ok2634, label %str_ok2630, label %tag.slow_check2635

tag.slow_check2621:                               ; preds = %choice.case2597
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2615)
  br label %str_ok2616

str_ok2630:                                       ; preds = %tag.slow_check2635, %str_ok2616
  %cat.seg2637 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len2638 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 5, i64 %cat.seg2614)
  %sum2639 = extractvalue { i64, i1 } %cat.sum.len2638, 0
  %ovf2640 = extractvalue { i64, i1 } %cat.sum.len2638, 1
  br i1 %ovf2640, label %str_overflow_abort2642, label %cat.sum.len2641

tag.slow_check2635:                               ; preds = %str_ok2616
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2629)
  br label %str_ok2630

cat.sum.len2641:                                  ; preds = %str_ok2630
  %cat.sum.len2644 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2639, i64 1)
  %sum2645 = extractvalue { i64, i1 } %cat.sum.len2644, 0
  %ovf2646 = extractvalue { i64, i1 } %cat.sum.len2644, 1
  br i1 %ovf2646, label %str_overflow_abort2648, label %cat.sum.len2647

str_overflow_abort2642:                           ; preds = %str_ok2630
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2647:                                  ; preds = %cat.sum.len2641
  %cat.sum.len2650 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2645, i64 %cat.seg2628)
  %sum2651 = extractvalue { i64, i1 } %cat.sum.len2650, 0
  %ovf2652 = extractvalue { i64, i1 } %cat.sum.len2650, 1
  br i1 %ovf2652, label %str_overflow_abort2654, label %cat.sum.len2653

str_overflow_abort2648:                           ; preds = %cat.sum.len2641
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2653:                                  ; preds = %cat.sum.len2647
  %concat.tot.len2656 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2651, i64 1)
  %sum2657 = extractvalue { i64, i1 } %concat.tot.len2656, 0
  %ovf2658 = extractvalue { i64, i1 } %concat.tot.len2656, 1
  br i1 %ovf2658, label %str_overflow_abort2660, label %concat.tot.len2659

str_overflow_abort2654:                           ; preds = %cat.sum.len2647
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2659:                               ; preds = %cat.sum.len2653
  %arena.cur2662 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2663 = call ptr @dva_arena_alloc(ptr %arena.cur2662, i64 %sum2657)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2663, ptr align 1 @str.55, i64 5, i1 false)
  %cat.dst2665 = getelementptr i8, ptr %concat.buf2663, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2665, ptr align 1 %cat.seg2623, i64 %cat.seg2614, i1 false)
  %cat.off2666 = add i64 5, %cat.seg2614
  %cat.dst2667 = getelementptr i8, ptr %concat.buf2663, i64 %cat.off2666
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2667, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off2668 = add i64 %cat.off2666, 1
  %cat.dst2669 = getelementptr i8, ptr %concat.buf2663, i64 %cat.off2668
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2669, ptr align 1 %cat.seg2637, i64 %cat.seg2628, i1 false)
  %concat.nul2670 = getelementptr i8, ptr %concat.buf2663, i64 %sum2651
  store i8 0, ptr %concat.nul2670, align 1
  %arena.cur2671 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str2672 = call ptr @dva_arena_alloc(ptr %arena.cur2671, i64 16)
  %str.tag.gen2674 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift2675 = shl i64 %str.tag.gen2674, 48
  %str.tagged.len2676 = or i64 %sum2651, %str.tag.shift2675
  store i64 %str.tagged.len2676, ptr %concat.str2672, align 8
  %str.build.data.gep2677 = getelementptr inbounds { i64, ptr }, ptr %concat.str2672, i32 0, i32 1
  store ptr %concat.buf2663, ptr %str.build.data.gep2677, align 8
  br label %choice.exit

str_overflow_abort2660:                           ; preds = %cat.sum.len2653
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case2678:                                  ; preds = %concat.tot.len11
  %pay.gep2683 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr2684 = load ptr, ptr %pay.gep2683, align 8
  %call.res2691 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %payload.ptr2684)
  %arena.cur2692 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc2693 = call ptr @dva_arena_alloc(ptr %arena.cur2692, i64 16)
  store { i64, ptr } %call.res2691, ptr %ret.ub.alloc2693, align 8
  %cat.seg2695 = load i64, ptr %ret.ub.alloc2693, align 8
  %cat.seg2696 = and i64 %cat.seg2695, 281474976710655
  %str.tag2697 = lshr i64 %cat.seg2695, 48
  %tag.immortal2699 = icmp eq i64 %str.tag2697, 0
  %active.gen2700 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2701 = icmp eq i64 %str.tag2697, %active.gen2700
  %tag.fast.ok2702 = or i1 %tag.immortal2699, %tag.current2701
  br i1 %tag.fast.ok2702, label %str_ok2698, label %tag.slow_check2703

str_ok2698:                                       ; preds = %tag.slow_check2703, %choice.case2678
  %cat.seg2704 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc2693, i32 0, i32 1
  %cat.seg2705 = load ptr, ptr %cat.seg2704, align 8
  %cat.seg2709 = load i64, ptr %concat.str, align 8
  %cat.seg2710 = and i64 %cat.seg2709, 281474976710655
  %str.tag2711 = lshr i64 %cat.seg2709, 48
  %tag.immortal2713 = icmp eq i64 %str.tag2711, 0
  %active.gen2714 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2715 = icmp eq i64 %str.tag2711, %active.gen2714
  %tag.fast.ok2716 = or i1 %tag.immortal2713, %tag.current2715
  br i1 %tag.fast.ok2716, label %str_ok2712, label %tag.slow_check2717

tag.slow_check2703:                               ; preds = %choice.case2678
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2697)
  br label %str_ok2698

str_ok2712:                                       ; preds = %tag.slow_check2717, %str_ok2698
  %cat.seg2719 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len2720 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4, i64 %cat.seg2696)
  %sum2721 = extractvalue { i64, i1 } %cat.sum.len2720, 0
  %ovf2722 = extractvalue { i64, i1 } %cat.sum.len2720, 1
  br i1 %ovf2722, label %str_overflow_abort2724, label %cat.sum.len2723

tag.slow_check2717:                               ; preds = %str_ok2698
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2711)
  br label %str_ok2712

cat.sum.len2723:                                  ; preds = %str_ok2712
  %cat.sum.len2726 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2721, i64 1)
  %sum2727 = extractvalue { i64, i1 } %cat.sum.len2726, 0
  %ovf2728 = extractvalue { i64, i1 } %cat.sum.len2726, 1
  br i1 %ovf2728, label %str_overflow_abort2730, label %cat.sum.len2729

str_overflow_abort2724:                           ; preds = %str_ok2712
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2729:                                  ; preds = %cat.sum.len2723
  %cat.sum.len2732 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2727, i64 %cat.seg2710)
  %sum2733 = extractvalue { i64, i1 } %cat.sum.len2732, 0
  %ovf2734 = extractvalue { i64, i1 } %cat.sum.len2732, 1
  br i1 %ovf2734, label %str_overflow_abort2736, label %cat.sum.len2735

str_overflow_abort2730:                           ; preds = %cat.sum.len2723
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2735:                                  ; preds = %cat.sum.len2729
  %concat.tot.len2738 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2733, i64 1)
  %sum2739 = extractvalue { i64, i1 } %concat.tot.len2738, 0
  %ovf2740 = extractvalue { i64, i1 } %concat.tot.len2738, 1
  br i1 %ovf2740, label %str_overflow_abort2742, label %concat.tot.len2741

str_overflow_abort2736:                           ; preds = %cat.sum.len2729
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2741:                               ; preds = %cat.sum.len2735
  %arena.cur2744 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2745 = call ptr @dva_arena_alloc(ptr %arena.cur2744, i64 %sum2739)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2745, ptr align 1 @str.90, i64 4, i1 false)
  %cat.dst2747 = getelementptr i8, ptr %concat.buf2745, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2747, ptr align 1 %cat.seg2705, i64 %cat.seg2696, i1 false)
  %cat.off2748 = add i64 4, %cat.seg2696
  %cat.dst2749 = getelementptr i8, ptr %concat.buf2745, i64 %cat.off2748
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2749, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off2750 = add i64 %cat.off2748, 1
  %cat.dst2751 = getelementptr i8, ptr %concat.buf2745, i64 %cat.off2750
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2751, ptr align 1 %cat.seg2719, i64 %cat.seg2710, i1 false)
  %concat.nul2752 = getelementptr i8, ptr %concat.buf2745, i64 %sum2733
  store i8 0, ptr %concat.nul2752, align 1
  %arena.cur2753 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str2754 = call ptr @dva_arena_alloc(ptr %arena.cur2753, i64 16)
  %str.tag.gen2756 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift2757 = shl i64 %str.tag.gen2756, 48
  %str.tagged.len2758 = or i64 %sum2733, %str.tag.shift2757
  store i64 %str.tagged.len2758, ptr %concat.str2754, align 8
  %str.build.data.gep2759 = getelementptr inbounds { i64, ptr }, ptr %concat.str2754, i32 0, i32 1
  store ptr %concat.buf2745, ptr %str.build.data.gep2759, align 8
  br label %choice.exit

str_overflow_abort2742:                           ; preds = %cat.sum.len2735
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case2760:                                  ; preds = %concat.tot.len11
  %pay.gep2765 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %payload.ptr2766 = load ptr, ptr %pay.gep2765, align 8
  %fld.load2772 = load i64, ptr %payload.ptr2766, align 8
  %cat.ilen2774 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf2773, i64 %fld.load2772, i1 false)
  %fld.gep2777 = getelementptr inbounds { i64, ptr }, ptr %payload.ptr2766, i32 0, i32 1
  %fld.load2778 = load ptr, ptr %fld.gep2777, align 8
  %cat.seg2780 = load i64, ptr %fld.load2778, align 8
  %cat.seg2781 = and i64 %cat.seg2780, 281474976710655
  %str.tag2782 = lshr i64 %cat.seg2780, 48
  %tag.immortal2784 = icmp eq i64 %str.tag2782, 0
  %active.gen2785 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2786 = icmp eq i64 %str.tag2782, %active.gen2785
  %tag.fast.ok2787 = or i1 %tag.immortal2784, %tag.current2786
  br i1 %tag.fast.ok2787, label %str_ok2783, label %tag.slow_check2788

choice.next2761:                                  ; preds = %concat.tot.len11
  %concat.rhs2866 = load i64, ptr %concat.str, align 8
  %concat.rhs2867 = and i64 %concat.rhs2866, 281474976710655
  %str.tag2868 = lshr i64 %concat.rhs2866, 48
  %tag.immortal2870 = icmp eq i64 %str.tag2868, 0
  %active.gen2871 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2872 = icmp eq i64 %str.tag2868, %active.gen2871
  %tag.fast.ok2873 = or i1 %tag.immortal2870, %tag.current2872
  br i1 %tag.fast.ok2873, label %str_ok2869, label %tag.slow_check2874

str_ok2783:                                       ; preds = %tag.slow_check2788, %choice.case2760
  %cat.seg2789 = getelementptr inbounds { i64, ptr }, ptr %fld.load2778, i32 0, i32 1
  %cat.seg2790 = load ptr, ptr %cat.seg2789, align 8
  %cat.seg2794 = load i64, ptr %concat.str, align 8
  %cat.seg2795 = and i64 %cat.seg2794, 281474976710655
  %str.tag2796 = lshr i64 %cat.seg2794, 48
  %tag.immortal2798 = icmp eq i64 %str.tag2796, 0
  %active.gen2799 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2800 = icmp eq i64 %str.tag2796, %active.gen2799
  %tag.fast.ok2801 = or i1 %tag.immortal2798, %tag.current2800
  br i1 %tag.fast.ok2801, label %str_ok2797, label %tag.slow_check2802

tag.slow_check2788:                               ; preds = %choice.case2760
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2782)
  br label %str_ok2783

str_ok2797:                                       ; preds = %tag.slow_check2802, %str_ok2783
  %cat.seg2804 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len2805 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 12, i64 %cat.ilen2774)
  %sum2806 = extractvalue { i64, i1 } %cat.sum.len2805, 0
  %ovf2807 = extractvalue { i64, i1 } %cat.sum.len2805, 1
  br i1 %ovf2807, label %str_overflow_abort2809, label %cat.sum.len2808

tag.slow_check2802:                               ; preds = %str_ok2783
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2796)
  br label %str_ok2797

cat.sum.len2808:                                  ; preds = %str_ok2797
  %cat.sum.len2811 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2806, i64 3)
  %sum2812 = extractvalue { i64, i1 } %cat.sum.len2811, 0
  %ovf2813 = extractvalue { i64, i1 } %cat.sum.len2811, 1
  br i1 %ovf2813, label %str_overflow_abort2815, label %cat.sum.len2814

str_overflow_abort2809:                           ; preds = %str_ok2797
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2814:                                  ; preds = %cat.sum.len2808
  %cat.sum.len2817 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2812, i64 %cat.seg2781)
  %sum2818 = extractvalue { i64, i1 } %cat.sum.len2817, 0
  %ovf2819 = extractvalue { i64, i1 } %cat.sum.len2817, 1
  br i1 %ovf2819, label %str_overflow_abort2821, label %cat.sum.len2820

str_overflow_abort2815:                           ; preds = %cat.sum.len2808
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2820:                                  ; preds = %cat.sum.len2814
  %cat.sum.len2823 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2818, i64 2)
  %sum2824 = extractvalue { i64, i1 } %cat.sum.len2823, 0
  %ovf2825 = extractvalue { i64, i1 } %cat.sum.len2823, 1
  br i1 %ovf2825, label %str_overflow_abort2827, label %cat.sum.len2826

str_overflow_abort2821:                           ; preds = %cat.sum.len2814
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2826:                                  ; preds = %cat.sum.len2820
  %cat.sum.len2829 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2824, i64 %cat.seg2795)
  %sum2830 = extractvalue { i64, i1 } %cat.sum.len2829, 0
  %ovf2831 = extractvalue { i64, i1 } %cat.sum.len2829, 1
  br i1 %ovf2831, label %str_overflow_abort2833, label %cat.sum.len2832

str_overflow_abort2827:                           ; preds = %cat.sum.len2820
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2832:                                  ; preds = %cat.sum.len2826
  %concat.tot.len2835 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2830, i64 1)
  %sum2836 = extractvalue { i64, i1 } %concat.tot.len2835, 0
  %ovf2837 = extractvalue { i64, i1 } %concat.tot.len2835, 1
  br i1 %ovf2837, label %str_overflow_abort2839, label %concat.tot.len2838

str_overflow_abort2833:                           ; preds = %cat.sum.len2826
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2838:                               ; preds = %cat.sum.len2832
  %arena.cur2841 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2842 = call ptr @dva_arena_alloc(ptr %arena.cur2841, i64 %sum2836)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2842, ptr align 1 @str.144, i64 12, i1 false)
  %cat.dst2844 = getelementptr i8, ptr %concat.buf2842, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2844, ptr align 1 %cat.ibuf2773, i64 %cat.ilen2774, i1 false)
  %cat.off2845 = add i64 12, %cat.ilen2774
  %cat.dst2846 = getelementptr i8, ptr %concat.buf2842, i64 %cat.off2845
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2846, ptr align 1 @str.145, i64 3, i1 false)
  %cat.off2847 = add i64 %cat.off2845, 3
  %cat.dst2848 = getelementptr i8, ptr %concat.buf2842, i64 %cat.off2847
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2848, ptr align 1 %cat.seg2790, i64 %cat.seg2781, i1 false)
  %cat.off2849 = add i64 %cat.off2847, %cat.seg2781
  %cat.dst2850 = getelementptr i8, ptr %concat.buf2842, i64 %cat.off2849
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2850, ptr align 1 @str.5, i64 2, i1 false)
  %cat.off2851 = add i64 %cat.off2849, 2
  %cat.dst2852 = getelementptr i8, ptr %concat.buf2842, i64 %cat.off2851
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2852, ptr align 1 %cat.seg2804, i64 %cat.seg2795, i1 false)
  %concat.nul2853 = getelementptr i8, ptr %concat.buf2842, i64 %sum2830
  store i8 0, ptr %concat.nul2853, align 1
  %arena.cur2854 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str2855 = call ptr @dva_arena_alloc(ptr %arena.cur2854, i64 16)
  %str.tag.gen2857 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift2858 = shl i64 %str.tag.gen2857, 48
  %str.tagged.len2859 = or i64 %sum2830, %str.tag.shift2858
  store i64 %str.tagged.len2859, ptr %concat.str2855, align 8
  %str.build.data.gep2860 = getelementptr inbounds { i64, ptr }, ptr %concat.str2855, i32 0, i32 1
  store ptr %concat.buf2842, ptr %str.build.data.gep2860, align 8
  br label %choice.exit

str_overflow_abort2839:                           ; preds = %cat.sum.len2832
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok2869:                                       ; preds = %tag.slow_check2874, %choice.next2761
  %concat.rhs2876 = load ptr, ptr %str.build.data.gep, align 8
  %concat.sum.len2877 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 %concat.rhs2867)
  %sum2878 = extractvalue { i64, i1 } %concat.sum.len2877, 0
  %ovf2879 = extractvalue { i64, i1 } %concat.sum.len2877, 1
  br i1 %ovf2879, label %str_overflow_abort2881, label %concat.sum.len2880

tag.slow_check2874:                               ; preds = %choice.next2761
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2868)
  br label %str_ok2869

concat.sum.len2880:                               ; preds = %str_ok2869
  %concat.tot.len2883 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2878, i64 1)
  %sum2884 = extractvalue { i64, i1 } %concat.tot.len2883, 0
  %ovf2885 = extractvalue { i64, i1 } %concat.tot.len2883, 1
  br i1 %ovf2885, label %str_overflow_abort2887, label %concat.tot.len2886

str_overflow_abort2881:                           ; preds = %str_ok2869
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2886:                               ; preds = %concat.sum.len2880
  %arena.cur2889 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2890 = call ptr @dva_arena_alloc(ptr %arena.cur2889, i64 %sum2884)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2890, ptr align 1 @str.33, i64 1, i1 false)
  %concat.mid2891 = getelementptr i8, ptr %concat.buf2890, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid2891, ptr align 1 %concat.rhs2876, i64 %concat.rhs2867, i1 false)
  %concat.nul2892 = getelementptr i8, ptr %concat.buf2890, i64 %sum2878
  store i8 0, ptr %concat.nul2892, align 1
  %arena.cur2893 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str2894 = call ptr @dva_arena_alloc(ptr %arena.cur2893, i64 16)
  %str.tag.gen2896 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift2897 = shl i64 %str.tag.gen2896, 48
  %str.tagged.len2898 = or i64 %sum2878, %str.tag.shift2897
  store i64 %str.tagged.len2898, ptr %concat.str2894, align 8
  %str.build.data.gep2899 = getelementptr inbounds { i64, ptr }, ptr %concat.str2894, i32 0, i32 1
  store ptr %concat.buf2890, ptr %str.build.data.gep2899, align 8
  br label %choice.exit

str_overflow_abort2887:                           ; preds = %concat.sum.len2880
  call void @dva_abort_str_overflow_msg()
  unreachable
}

declare { i64, ptr } @"unify::show_utype"(ptr, ptr) #3

define { i64, ptr } @"show::show_typed_exprs"(ptr %0, ptr %1) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 17)
  store i8 0, ptr %b.buf, align 1
  %a.null = icmp eq ptr %1, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.create3, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.xs.0 = phi ptr [ %a.create3, %a.create ], [ %1, %entry ]
  %arr.cycle.len5 = load i64, ptr %var.xs.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.xs.0, i32 0, i32 1
  %arr.cycle.data6 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.187

loop.header.187:                                  ; preds = %b.grow_done56, %a.after
  %builder.new.salloc.sroa.18.0 = phi i64 [ 16, %a.after ], [ %builder.new.salloc.sroa.18.2, %b.grow_done56 ]
  %builder.new.salloc.sroa.9.0 = phi ptr [ %b.buf, %a.after ], [ %builder.new.salloc.sroa.9.2, %b.grow_done56 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 0, %a.after ], [ %sum46, %b.grow_done56 ]
  %loop.idx.187.0 = phi i64 [ 0, %a.after ], [ %loop.next, %b.grow_done56 ]
  %loop.cond = icmp slt i64 %loop.idx.187.0, %arr.cycle.len5
  br i1 %loop.cond, label %loop.body.187, label %loop.exit.187

loop.body.187:                                    ; preds = %loop.header.187
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data6, i64 %loop.idx.187.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %cmptmp = icmp sgt i64 %loop.idx.187.0, 0
  %str.34.struct.str.49.struct = select i1 %cmptmp, ptr @str.34.struct, ptr @str.49.struct
  %app.str.len8 = load i64, ptr %str.34.struct.str.49.struct, align 8
  %app.str.len9 = and i64 %app.str.len8, 281474976710655
  %str.tag = lshr i64 %app.str.len8, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

loop.exit.187:                                    ; preds = %loop.header.187
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_ok:                                           ; preds = %tag.slow_check, %loop.body.187
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.34.struct.str.49.struct, i32 0, i32 1
  %app.str.data10 = load ptr, ptr %app.str.data, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 %app.str.len9)
  %sum12 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf13 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf13, label %str_overflow_abort15, label %b.app.new.len14

tag.slow_check:                                   ; preds = %loop.body.187
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

b.app.new.len14:                                  ; preds = %str_ok
  %b.need.grow = icmp slt i64 %builder.new.salloc.sroa.18.0, %sum12
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort15:                             ; preds = %str_ok
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len14
  %b.cap2 = mul i64 %builder.new.salloc.sroa.18.0, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum12
  %b.new.cap = select i1 %b.cap.need, i64 %sum12, i64 %b.cap.grow
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum20 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf21 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.new.buf.len222

b.grow_done:                                      ; preds = %b.app.new.len14, %b.new.buf.len222
  %builder.new.salloc.sroa.18.1 = phi i64 [ %b.new.cap, %b.new.buf.len222 ], [ %builder.new.salloc.sroa.18.0, %b.app.new.len14 ]
  %builder.new.salloc.sroa.9.1 = phi ptr [ %b.new.buf2, %b.new.buf.len222 ], [ %builder.new.salloc.sroa.9.0, %b.app.new.len14 ]
  %b.app.dst = getelementptr i8, ptr %builder.new.salloc.sroa.9.1, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data10, i64 %app.str.len9, i1 false)
  %b.app.nul = getelementptr i8, ptr %builder.new.salloc.sroa.9.1, i64 %sum12
  store i8 0, ptr %b.app.nul, align 1
  %call.res = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %slot.i2p)
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %app.str.len32 = load i64, ptr %ret.ub.alloc, align 8
  %app.str.len33 = and i64 %app.str.len32, 281474976710655
  %str.tag34 = lshr i64 %app.str.len32, 48
  %tag.immortal36 = icmp eq i64 %str.tag34, 0
  %active.gen37 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current38 = icmp eq i64 %str.tag34, %active.gen37
  %tag.fast.ok39 = or i1 %tag.immortal36, %tag.current38
  br i1 %tag.fast.ok39, label %str_ok35, label %tag.slow_check40

b.new.buf.len222:                                 ; preds = %b.grow2
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 %sum20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %builder.new.salloc.sroa.9.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul, align 1
  br label %b.grow_done

str_overflow_abort23:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok35:                                         ; preds = %tag.slow_check40, %b.grow_done
  %app.str.data41 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data42 = load ptr, ptr %app.str.data41, align 8
  %b.app.new.len45 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum12, i64 %app.str.len33)
  %sum46 = extractvalue { i64, i1 } %b.app.new.len45, 0
  %ovf47 = extractvalue { i64, i1 } %b.app.new.len45, 1
  br i1 %ovf47, label %str_overflow_abort49, label %b.app.new.len48

tag.slow_check40:                                 ; preds = %b.grow_done
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag34)
  br label %str_ok35

b.app.new.len48:                                  ; preds = %str_ok35
  %b.need.grow53 = icmp slt i64 %builder.new.salloc.sroa.18.1, %sum46
  br i1 %b.need.grow53, label %b.grow254, label %b.grow_done56

str_overflow_abort49:                             ; preds = %str_ok35
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow254:                                        ; preds = %b.app.new.len48
  %b.cap257 = mul i64 %builder.new.salloc.sroa.18.1, 2
  %b.cap.small58 = icmp slt i64 %b.cap257, 16
  %b.cap.grow59 = select i1 %b.cap.small58, i64 16, i64 %b.cap257
  %b.cap.need60 = icmp slt i64 %b.cap.grow59, %sum46
  %b.new.cap61 = select i1 %b.cap.need60, i64 %sum46, i64 %b.cap.grow59
  %b.new.buf.len266 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap61, i64 1)
  %sum67 = extractvalue { i64, i1 } %b.new.buf.len266, 0
  %ovf68 = extractvalue { i64, i1 } %b.new.buf.len266, 1
  br i1 %ovf68, label %str_overflow_abort70, label %b.new.buf.len269

b.grow_done56:                                    ; preds = %b.app.new.len48, %b.new.buf.len269
  %builder.new.salloc.sroa.18.2 = phi i64 [ %b.new.cap61, %b.new.buf.len269 ], [ %builder.new.salloc.sroa.18.1, %b.app.new.len48 ]
  %builder.new.salloc.sroa.9.2 = phi ptr [ %b.new.buf273, %b.new.buf.len269 ], [ %builder.new.salloc.sroa.9.1, %b.app.new.len48 ]
  %b.app.dst79 = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %sum12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst79, ptr align 1 %app.str.data42, i64 %app.str.len33, i1 false)
  %b.app.nul80 = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %sum46
  store i8 0, ptr %b.app.nul80, align 1
  %loop.next = add i64 %loop.idx.187.0, 1
  br label %loop.header.187

b.new.buf.len269:                                 ; preds = %b.grow254
  %arena.cur72 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf273 = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 %sum67)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf273, ptr align 1 %builder.new.salloc.sroa.9.1, i64 %sum12, i1 false)
  %b.grow2.nul74 = getelementptr i8, ptr %b.new.buf273, i64 %sum12
  store i8 0, ptr %b.grow2.nul74, align 1
  br label %b.grow_done56

str_overflow_abort70:                             ; preds = %b.grow254
  call void @dva_abort_str_overflow_msg()
  unreachable

b.freeze.check:                                   ; preds = %loop.exit.187
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %builder.new.salloc.sroa.9.0, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %builder.new.salloc.sroa.9.0, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %builder.new.salloc.sroa.9.0, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %builder.new.salloc.sroa.0.0, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %builder.new.salloc.sroa.9.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.187
  %b.freeze.data86 = phi ptr [ %builder.new.salloc.sroa.9.0, %loop.exit.187 ], [ %builder.new.salloc.sroa.9.0, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur87 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %builder.new.salloc.sroa.0.0, %str.tag.shift
  store i64 %str.tagged.len, ptr %builder.freeze, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data86, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

define { i64, ptr } @"show::show_typed_fields"(ptr %0, ptr %1) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 17)
  store i8 0, ptr %b.buf, align 1
  %a.null = icmp eq ptr %1, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.create3, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.fs.0 = phi ptr [ %a.create3, %a.create ], [ %1, %entry ]
  %arr.cycle.len5 = load i64, ptr %var.fs.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.fs.0, i32 0, i32 1
  %arr.cycle.data6 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.189

loop.header.189:                                  ; preds = %b.grow_done152, %a.after
  %builder.new.salloc.sroa.30.0 = phi i64 [ 16, %a.after ], [ %builder.new.salloc.sroa.30.4, %b.grow_done152 ]
  %builder.new.salloc.sroa.15.0 = phi ptr [ %b.buf, %a.after ], [ %builder.new.salloc.sroa.15.4, %b.grow_done152 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 0, %a.after ], [ %sum142, %b.grow_done152 ]
  %loop.idx.189.0 = phi i64 [ 0, %a.after ], [ %loop.next, %b.grow_done152 ]
  %loop.cond = icmp slt i64 %loop.idx.189.0, %arr.cycle.len5
  br i1 %loop.cond, label %loop.body.189, label %loop.exit.189

loop.body.189:                                    ; preds = %loop.header.189
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data6, i64 %loop.idx.189.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %cmptmp = icmp sgt i64 %loop.idx.189.0, 0
  %str.86.struct.str.49.struct = select i1 %cmptmp, ptr @str.86.struct, ptr @str.49.struct
  %app.str.len8 = load i64, ptr %str.86.struct.str.49.struct, align 8
  %app.str.len9 = and i64 %app.str.len8, 281474976710655
  %str.tag = lshr i64 %app.str.len8, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

loop.exit.189:                                    ; preds = %loop.header.189
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_ok:                                           ; preds = %tag.slow_check, %loop.body.189
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.86.struct.str.49.struct, i32 0, i32 1
  %app.str.data10 = load ptr, ptr %app.str.data, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 %app.str.len9)
  %sum12 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf13 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf13, label %str_overflow_abort15, label %b.app.new.len14

tag.slow_check:                                   ; preds = %loop.body.189
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

b.app.new.len14:                                  ; preds = %str_ok
  %b.need.grow = icmp slt i64 %builder.new.salloc.sroa.30.0, %sum12
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort15:                             ; preds = %str_ok
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len14
  %b.cap2 = mul i64 %builder.new.salloc.sroa.30.0, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum12
  %b.new.cap = select i1 %b.cap.need, i64 %sum12, i64 %b.cap.grow
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum20 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf21 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.new.buf.len222

b.grow_done:                                      ; preds = %b.app.new.len14, %b.new.buf.len222
  %builder.new.salloc.sroa.30.1 = phi i64 [ %b.new.cap, %b.new.buf.len222 ], [ %builder.new.salloc.sroa.30.0, %b.app.new.len14 ]
  %builder.new.salloc.sroa.15.1 = phi ptr [ %b.new.buf2, %b.new.buf.len222 ], [ %builder.new.salloc.sroa.15.0, %b.app.new.len14 ]
  %b.app.dst = getelementptr i8, ptr %builder.new.salloc.sroa.15.1, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data10, i64 %app.str.len9, i1 false)
  %b.app.nul = getelementptr i8, ptr %builder.new.salloc.sroa.15.1, i64 %sum12
  store i8 0, ptr %b.app.nul, align 1
  %fld.load = load ptr, ptr %slot.i2p, align 8
  %app.str.len31 = load i64, ptr %fld.load, align 8
  %app.str.len32 = and i64 %app.str.len31, 281474976710655
  %str.tag33 = lshr i64 %app.str.len31, 48
  %tag.immortal35 = icmp eq i64 %str.tag33, 0
  %active.gen36 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current37 = icmp eq i64 %str.tag33, %active.gen36
  %tag.fast.ok38 = or i1 %tag.immortal35, %tag.current37
  br i1 %tag.fast.ok38, label %str_ok34, label %tag.slow_check39

b.new.buf.len222:                                 ; preds = %b.grow2
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 %sum20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %builder.new.salloc.sroa.15.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul, align 1
  br label %b.grow_done

str_overflow_abort23:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok34:                                         ; preds = %tag.slow_check39, %b.grow_done
  %app.str.data40 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %app.str.data41 = load ptr, ptr %app.str.data40, align 8
  %b.app.new.len44 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum12, i64 %app.str.len32)
  %sum45 = extractvalue { i64, i1 } %b.app.new.len44, 0
  %ovf46 = extractvalue { i64, i1 } %b.app.new.len44, 1
  br i1 %ovf46, label %str_overflow_abort48, label %b.app.new.len47

tag.slow_check39:                                 ; preds = %b.grow_done
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag33)
  br label %str_ok34

b.app.new.len47:                                  ; preds = %str_ok34
  %b.need.grow52 = icmp slt i64 %builder.new.salloc.sroa.30.1, %sum45
  br i1 %b.need.grow52, label %b.grow253, label %b.grow_done55

str_overflow_abort48:                             ; preds = %str_ok34
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow253:                                        ; preds = %b.app.new.len47
  %b.cap256 = mul i64 %builder.new.salloc.sroa.30.1, 2
  %b.cap.small57 = icmp slt i64 %b.cap256, 16
  %b.cap.grow58 = select i1 %b.cap.small57, i64 16, i64 %b.cap256
  %b.cap.need59 = icmp slt i64 %b.cap.grow58, %sum45
  %b.new.cap60 = select i1 %b.cap.need59, i64 %sum45, i64 %b.cap.grow58
  %b.new.buf.len265 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap60, i64 1)
  %sum66 = extractvalue { i64, i1 } %b.new.buf.len265, 0
  %ovf67 = extractvalue { i64, i1 } %b.new.buf.len265, 1
  br i1 %ovf67, label %str_overflow_abort69, label %b.new.buf.len268

b.grow_done55:                                    ; preds = %b.app.new.len47, %b.new.buf.len268
  %builder.new.salloc.sroa.30.2 = phi i64 [ %b.new.cap60, %b.new.buf.len268 ], [ %builder.new.salloc.sroa.30.1, %b.app.new.len47 ]
  %builder.new.salloc.sroa.15.2 = phi ptr [ %b.new.buf272, %b.new.buf.len268 ], [ %builder.new.salloc.sroa.15.1, %b.app.new.len47 ]
  %b.app.dst78 = getelementptr i8, ptr %builder.new.salloc.sroa.15.2, i64 %sum12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst78, ptr align 1 %app.str.data41, i64 %app.str.len32, i1 false)
  %b.app.nul79 = getelementptr i8, ptr %builder.new.salloc.sroa.15.2, i64 %sum45
  store i8 0, ptr %b.app.nul79, align 1
  %b.app.new.len86 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum45, i64 1)
  %sum87 = extractvalue { i64, i1 } %b.app.new.len86, 0
  %ovf88 = extractvalue { i64, i1 } %b.app.new.len86, 1
  br i1 %ovf88, label %str_overflow_abort90, label %b.app.new.len89

b.new.buf.len268:                                 ; preds = %b.grow253
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf272 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 %sum66)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf272, ptr align 1 %builder.new.salloc.sroa.15.1, i64 %sum12, i1 false)
  %b.grow2.nul73 = getelementptr i8, ptr %b.new.buf272, i64 %sum12
  store i8 0, ptr %b.grow2.nul73, align 1
  br label %b.grow_done55

str_overflow_abort69:                             ; preds = %b.grow253
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len89:                                  ; preds = %b.grow_done55
  %b.need.grow94 = icmp slt i64 %builder.new.salloc.sroa.30.2, %sum87
  br i1 %b.need.grow94, label %b.grow295, label %b.grow_done97

str_overflow_abort90:                             ; preds = %b.grow_done55
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow295:                                        ; preds = %b.app.new.len89
  %b.cap298 = mul i64 %builder.new.salloc.sroa.30.2, 2
  %b.cap.small99 = icmp slt i64 %b.cap298, 16
  %b.cap.grow100 = select i1 %b.cap.small99, i64 16, i64 %b.cap298
  %b.cap.need101 = icmp slt i64 %b.cap.grow100, %sum87
  %b.new.cap102 = select i1 %b.cap.need101, i64 %sum87, i64 %b.cap.grow100
  %b.new.buf.len2107 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap102, i64 1)
  %sum108 = extractvalue { i64, i1 } %b.new.buf.len2107, 0
  %ovf109 = extractvalue { i64, i1 } %b.new.buf.len2107, 1
  br i1 %ovf109, label %str_overflow_abort111, label %b.new.buf.len2110

b.grow_done97:                                    ; preds = %b.app.new.len89, %b.new.buf.len2110
  %builder.new.salloc.sroa.30.3 = phi i64 [ %b.new.cap102, %b.new.buf.len2110 ], [ %builder.new.salloc.sroa.30.2, %b.app.new.len89 ]
  %builder.new.salloc.sroa.15.3 = phi ptr [ %b.new.buf2114, %b.new.buf.len2110 ], [ %builder.new.salloc.sroa.15.2, %b.app.new.len89 ]
  %b.app.dst120 = getelementptr i8, ptr %builder.new.salloc.sroa.15.3, i64 %sum45
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst120, ptr align 1 @str.87, i64 1, i1 false)
  %b.app.nul121 = getelementptr i8, ptr %builder.new.salloc.sroa.15.3, i64 %sum87
  store i8 0, ptr %b.app.nul121, align 1
  %fld.gep125 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %slot.i2p, i32 0, i32 1
  %call.res = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %fld.gep125)
  %arena.cur126 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur126, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %app.str.len128 = load i64, ptr %ret.ub.alloc, align 8
  %app.str.len129 = and i64 %app.str.len128, 281474976710655
  %str.tag130 = lshr i64 %app.str.len128, 48
  %tag.immortal132 = icmp eq i64 %str.tag130, 0
  %active.gen133 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current134 = icmp eq i64 %str.tag130, %active.gen133
  %tag.fast.ok135 = or i1 %tag.immortal132, %tag.current134
  br i1 %tag.fast.ok135, label %str_ok131, label %tag.slow_check136

b.new.buf.len2110:                                ; preds = %b.grow295
  %arena.cur113 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2114 = call ptr @dva_arena_alloc(ptr %arena.cur113, i64 %sum108)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2114, ptr align 1 %builder.new.salloc.sroa.15.2, i64 %sum45, i1 false)
  %b.grow2.nul115 = getelementptr i8, ptr %b.new.buf2114, i64 %sum45
  store i8 0, ptr %b.grow2.nul115, align 1
  br label %b.grow_done97

str_overflow_abort111:                            ; preds = %b.grow295
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok131:                                        ; preds = %tag.slow_check136, %b.grow_done97
  %app.str.data137 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data138 = load ptr, ptr %app.str.data137, align 8
  %b.app.new.len141 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum87, i64 %app.str.len129)
  %sum142 = extractvalue { i64, i1 } %b.app.new.len141, 0
  %ovf143 = extractvalue { i64, i1 } %b.app.new.len141, 1
  br i1 %ovf143, label %str_overflow_abort145, label %b.app.new.len144

tag.slow_check136:                                ; preds = %b.grow_done97
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag130)
  br label %str_ok131

b.app.new.len144:                                 ; preds = %str_ok131
  %b.need.grow149 = icmp slt i64 %builder.new.salloc.sroa.30.3, %sum142
  br i1 %b.need.grow149, label %b.grow2150, label %b.grow_done152

str_overflow_abort145:                            ; preds = %str_ok131
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2150:                                       ; preds = %b.app.new.len144
  %b.cap2153 = mul i64 %builder.new.salloc.sroa.30.3, 2
  %b.cap.small154 = icmp slt i64 %b.cap2153, 16
  %b.cap.grow155 = select i1 %b.cap.small154, i64 16, i64 %b.cap2153
  %b.cap.need156 = icmp slt i64 %b.cap.grow155, %sum142
  %b.new.cap157 = select i1 %b.cap.need156, i64 %sum142, i64 %b.cap.grow155
  %b.new.buf.len2162 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap157, i64 1)
  %sum163 = extractvalue { i64, i1 } %b.new.buf.len2162, 0
  %ovf164 = extractvalue { i64, i1 } %b.new.buf.len2162, 1
  br i1 %ovf164, label %str_overflow_abort166, label %b.new.buf.len2165

b.grow_done152:                                   ; preds = %b.app.new.len144, %b.new.buf.len2165
  %builder.new.salloc.sroa.30.4 = phi i64 [ %b.new.cap157, %b.new.buf.len2165 ], [ %builder.new.salloc.sroa.30.3, %b.app.new.len144 ]
  %builder.new.salloc.sroa.15.4 = phi ptr [ %b.new.buf2169, %b.new.buf.len2165 ], [ %builder.new.salloc.sroa.15.3, %b.app.new.len144 ]
  %b.app.dst175 = getelementptr i8, ptr %builder.new.salloc.sroa.15.4, i64 %sum87
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst175, ptr align 1 %app.str.data138, i64 %app.str.len129, i1 false)
  %b.app.nul176 = getelementptr i8, ptr %builder.new.salloc.sroa.15.4, i64 %sum142
  store i8 0, ptr %b.app.nul176, align 1
  %loop.next = add i64 %loop.idx.189.0, 1
  br label %loop.header.189

b.new.buf.len2165:                                ; preds = %b.grow2150
  %arena.cur168 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2169 = call ptr @dva_arena_alloc(ptr %arena.cur168, i64 %sum163)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2169, ptr align 1 %builder.new.salloc.sroa.15.3, i64 %sum87, i1 false)
  %b.grow2.nul170 = getelementptr i8, ptr %b.new.buf2169, i64 %sum87
  store i8 0, ptr %b.grow2.nul170, align 1
  br label %b.grow_done152

str_overflow_abort166:                            ; preds = %b.grow2150
  call void @dva_abort_str_overflow_msg()
  unreachable

b.freeze.check:                                   ; preds = %loop.exit.189
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %builder.new.salloc.sroa.15.0, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %builder.new.salloc.sroa.15.0, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %builder.new.salloc.sroa.15.0, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %builder.new.salloc.sroa.0.0, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %builder.new.salloc.sroa.15.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.189
  %b.freeze.data182 = phi ptr [ %builder.new.salloc.sroa.15.0, %loop.exit.189 ], [ %builder.new.salloc.sroa.15.0, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur183 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur183, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %builder.new.salloc.sroa.0.0, %str.tag.shift
  store i64 %str.tagged.len, ptr %builder.freeze, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data182, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
}

declare { i64, ptr } @"unify::show_ram_shape"(ptr) #3

define { i64, ptr } @"show::show_typed_tree_exprs"(ptr %0, ptr %1, i64 %2) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 17)
  store i8 0, ptr %b.buf, align 1
  %a.null = icmp eq ptr %1, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.create3, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.xs.0 = phi ptr [ %a.create3, %a.create ], [ %1, %entry ]
  %arr.cycle.len5 = load i64, ptr %var.xs.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.xs.0, i32 0, i32 1
  %arr.cycle.data6 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.190

loop.header.190:                                  ; preds = %b.grow_done57, %a.after
  %builder.new.salloc.sroa.18.0 = phi i64 [ 16, %a.after ], [ %builder.new.salloc.sroa.18.2, %b.grow_done57 ]
  %builder.new.salloc.sroa.9.0 = phi ptr [ %b.buf, %a.after ], [ %builder.new.salloc.sroa.9.2, %b.grow_done57 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 0, %a.after ], [ %sum47, %b.grow_done57 ]
  %loop.idx.190.0 = phi i64 [ 0, %a.after ], [ %loop.next, %b.grow_done57 ]
  %loop.cond = icmp slt i64 %loop.idx.190.0, %arr.cycle.len5
  br i1 %loop.cond, label %loop.body.190, label %loop.exit.190

loop.body.190:                                    ; preds = %loop.header.190
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data6, i64 %loop.idx.190.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %cmptmp = icmp sgt i64 %loop.idx.190.0, 0
  %str.111.struct.str.49.struct = select i1 %cmptmp, ptr @str.111.struct, ptr @str.49.struct
  %app.str.len8 = load i64, ptr %str.111.struct.str.49.struct, align 8
  %app.str.len9 = and i64 %app.str.len8, 281474976710655
  %str.tag = lshr i64 %app.str.len8, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

loop.exit.190:                                    ; preds = %loop.header.190
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_ok:                                           ; preds = %tag.slow_check, %loop.body.190
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.111.struct.str.49.struct, i32 0, i32 1
  %app.str.data10 = load ptr, ptr %app.str.data, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 %app.str.len9)
  %sum12 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf13 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf13, label %str_overflow_abort15, label %b.app.new.len14

tag.slow_check:                                   ; preds = %loop.body.190
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

b.app.new.len14:                                  ; preds = %str_ok
  %b.need.grow = icmp slt i64 %builder.new.salloc.sroa.18.0, %sum12
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort15:                             ; preds = %str_ok
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len14
  %b.cap2 = mul i64 %builder.new.salloc.sroa.18.0, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum12
  %b.new.cap = select i1 %b.cap.need, i64 %sum12, i64 %b.cap.grow
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum20 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf21 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.new.buf.len222

b.grow_done:                                      ; preds = %b.app.new.len14, %b.new.buf.len222
  %builder.new.salloc.sroa.18.1 = phi i64 [ %b.new.cap, %b.new.buf.len222 ], [ %builder.new.salloc.sroa.18.0, %b.app.new.len14 ]
  %builder.new.salloc.sroa.9.1 = phi ptr [ %b.new.buf2, %b.new.buf.len222 ], [ %builder.new.salloc.sroa.9.0, %b.app.new.len14 ]
  %b.app.dst = getelementptr i8, ptr %builder.new.salloc.sroa.9.1, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data10, i64 %app.str.len9, i1 false)
  %b.app.nul = getelementptr i8, ptr %builder.new.salloc.sroa.9.1, i64 %sum12
  store i8 0, ptr %b.app.nul, align 1
  %call.res = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %slot.i2p, i64 %2)
  %arena.cur31 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %app.str.len33 = load i64, ptr %ret.ub.alloc, align 8
  %app.str.len34 = and i64 %app.str.len33, 281474976710655
  %str.tag35 = lshr i64 %app.str.len33, 48
  %tag.immortal37 = icmp eq i64 %str.tag35, 0
  %active.gen38 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current39 = icmp eq i64 %str.tag35, %active.gen38
  %tag.fast.ok40 = or i1 %tag.immortal37, %tag.current39
  br i1 %tag.fast.ok40, label %str_ok36, label %tag.slow_check41

b.new.buf.len222:                                 ; preds = %b.grow2
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 %sum20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %builder.new.salloc.sroa.9.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul, align 1
  br label %b.grow_done

str_overflow_abort23:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok36:                                         ; preds = %tag.slow_check41, %b.grow_done
  %app.str.data42 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data43 = load ptr, ptr %app.str.data42, align 8
  %b.app.new.len46 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum12, i64 %app.str.len34)
  %sum47 = extractvalue { i64, i1 } %b.app.new.len46, 0
  %ovf48 = extractvalue { i64, i1 } %b.app.new.len46, 1
  br i1 %ovf48, label %str_overflow_abort50, label %b.app.new.len49

tag.slow_check41:                                 ; preds = %b.grow_done
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag35)
  br label %str_ok36

b.app.new.len49:                                  ; preds = %str_ok36
  %b.need.grow54 = icmp slt i64 %builder.new.salloc.sroa.18.1, %sum47
  br i1 %b.need.grow54, label %b.grow255, label %b.grow_done57

str_overflow_abort50:                             ; preds = %str_ok36
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow255:                                        ; preds = %b.app.new.len49
  %b.cap258 = mul i64 %builder.new.salloc.sroa.18.1, 2
  %b.cap.small59 = icmp slt i64 %b.cap258, 16
  %b.cap.grow60 = select i1 %b.cap.small59, i64 16, i64 %b.cap258
  %b.cap.need61 = icmp slt i64 %b.cap.grow60, %sum47
  %b.new.cap62 = select i1 %b.cap.need61, i64 %sum47, i64 %b.cap.grow60
  %b.new.buf.len267 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap62, i64 1)
  %sum68 = extractvalue { i64, i1 } %b.new.buf.len267, 0
  %ovf69 = extractvalue { i64, i1 } %b.new.buf.len267, 1
  br i1 %ovf69, label %str_overflow_abort71, label %b.new.buf.len270

b.grow_done57:                                    ; preds = %b.app.new.len49, %b.new.buf.len270
  %builder.new.salloc.sroa.18.2 = phi i64 [ %b.new.cap62, %b.new.buf.len270 ], [ %builder.new.salloc.sroa.18.1, %b.app.new.len49 ]
  %builder.new.salloc.sroa.9.2 = phi ptr [ %b.new.buf274, %b.new.buf.len270 ], [ %builder.new.salloc.sroa.9.1, %b.app.new.len49 ]
  %b.app.dst80 = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %sum12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst80, ptr align 1 %app.str.data43, i64 %app.str.len34, i1 false)
  %b.app.nul81 = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %sum47
  store i8 0, ptr %b.app.nul81, align 1
  %loop.next = add i64 %loop.idx.190.0, 1
  br label %loop.header.190

b.new.buf.len270:                                 ; preds = %b.grow255
  %arena.cur73 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf274 = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 %sum68)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf274, ptr align 1 %builder.new.salloc.sroa.9.1, i64 %sum12, i1 false)
  %b.grow2.nul75 = getelementptr i8, ptr %b.new.buf274, i64 %sum12
  store i8 0, ptr %b.grow2.nul75, align 1
  br label %b.grow_done57

str_overflow_abort71:                             ; preds = %b.grow255
  call void @dva_abort_str_overflow_msg()
  unreachable

b.freeze.check:                                   ; preds = %loop.exit.190
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %builder.new.salloc.sroa.9.0, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %builder.new.salloc.sroa.9.0, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %builder.new.salloc.sroa.9.0, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %builder.new.salloc.sroa.0.0, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %builder.new.salloc.sroa.9.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.190
  %b.freeze.data87 = phi ptr [ %builder.new.salloc.sroa.9.0, %loop.exit.190 ], [ %builder.new.salloc.sroa.9.0, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur88 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %builder.new.salloc.sroa.0.0, %str.tag.shift
  store i64 %str.tagged.len, ptr %builder.freeze, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data87, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %1, i64 %2) #3 {
entry:
  %cat.ibuf3145 = alloca [24 x i8], align 1
  %cat.ibuf2721 = alloca [24 x i8], align 1
  %cat.ibuf1087 = alloca [24 x i8], align 1
  %cat.ibuf793 = alloca [24 x i8], align 1
  %cat.ibuf = alloca [24 x i8], align 1
  %call.res = call { i64, ptr } @"show::show_indent"(i64 %2)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %call.res3 = call { i64, ptr } @"unify::show_utype"(ptr %0, ptr %fld.load)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 16)
  store { i64, ptr } %call.res3, ptr %ret.ub.alloc5, align 8
  %cat.seg6 = load i64, ptr %ret.ub.alloc5, align 8
  %cat.seg7 = and i64 %cat.seg6, 281474976710655
  %str.tag = lshr i64 %cat.seg6, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cat.seg8 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc5, i32 0, i32 1
  %cat.seg9 = load ptr, ptr %cat.seg8, align 8
  %fld.gep12 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.load14 = load i64, ptr %fld.gep12, align 8
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %fld.load14, i1 false)
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 2, i64 %cat.seg7)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len16

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

cat.sum.len16:                                    ; preds = %str_ok
  %cat.sum.len17 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 2)
  %sum18 = extractvalue { i64, i1 } %cat.sum.len17, 0
  %ovf19 = extractvalue { i64, i1 } %cat.sum.len17, 1
  br i1 %ovf19, label %str_overflow_abort21, label %cat.sum.len20

str_overflow_abort:                               ; preds = %str_ok
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len20:                                    ; preds = %cat.sum.len16
  %cat.sum.len23 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum18, i64 %cat.ilen)
  %sum24 = extractvalue { i64, i1 } %cat.sum.len23, 0
  %ovf25 = extractvalue { i64, i1 } %cat.sum.len23, 1
  br i1 %ovf25, label %str_overflow_abort27, label %cat.sum.len26

str_overflow_abort21:                             ; preds = %cat.sum.len16
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len26:                                    ; preds = %cat.sum.len20
  %cat.sum.len29 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum24, i64 2)
  %sum30 = extractvalue { i64, i1 } %cat.sum.len29, 0
  %ovf31 = extractvalue { i64, i1 } %cat.sum.len29, 1
  br i1 %ovf31, label %str_overflow_abort33, label %cat.sum.len32

str_overflow_abort27:                             ; preds = %cat.sum.len20
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len32:                                    ; preds = %cat.sum.len26
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum30, i64 1)
  %sum35 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf36 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf36, label %str_overflow_abort38, label %concat.tot.len37

str_overflow_abort33:                             ; preds = %cat.sum.len26
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len37:                                 ; preds = %cat.sum.len32
  %arena.cur40 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 %sum35)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.121, i64 2, i1 false)
  %cat.dst41 = getelementptr i8, ptr %concat.buf, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst41, ptr align 1 %cat.seg9, i64 %cat.seg7, i1 false)
  %cat.off = add i64 2, %cat.seg7
  %cat.dst42 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst42, ptr align 1 @str.146, i64 2, i1 false)
  %cat.off43 = add i64 %cat.off, 2
  %cat.dst44 = getelementptr i8, ptr %concat.buf, i64 %cat.off43
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst44, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %cat.off45 = add i64 %cat.off43, %cat.ilen
  %cat.dst46 = getelementptr i8, ptr %concat.buf, i64 %cat.off45
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst46, ptr align 1 @str.147, i64 2, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum30
  store i8 0, ptr %concat.nul, align 1
  %arena.cur47 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum30, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %fld.load50 = load ptr, ptr %1, align 8
  %tag.id = load i64, ptr %fld.load50, align 8
  switch i64 %tag.id, label %choice.next3211 [
    i64 18, label %choice.case
    i64 16, label %choice.case209
    i64 7, label %choice.case350
    i64 8, label %choice.case528
    i64 6, label %choice.case669
    i64 0, label %choice.case770
    i64 1, label %choice.case858
    i64 2, label %choice.case959
    i64 3, label %choice.case1057
    i64 4, label %choice.case1152
    i64 5, label %choice.case1257
    i64 9, label %choice.case1322
    i64 17, label %choice.case1585
    i64 15, label %choice.case1692
    i64 11, label %choice.case1896
    i64 12, label %choice.case2034
    i64 13, label %choice.case2209
    i64 14, label %choice.case2352
    i64 19, label %choice.case2532
    i64 20, label %choice.case2675
    i64 34, label %choice.case2802
    i64 25, label %choice.case2911
    i64 23, label %choice.case3015
    i64 24, label %choice.case3120
    i64 26, label %choice.case3210
  ]

str_overflow_abort38:                             ; preds = %cat.sum.len32
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.exit:                                      ; preds = %concat.tot.len1434, %concat.tot.len1558, %concat.tot.len3352, %concat.tot.len3294, %concat.tot.len3188, %concat.tot.len3098, %concat.tot.len2993, %concat.tot.len2889, %concat.tot.len2776, %concat.tot.len2649, %concat.tot.len2502, %concat.tot.len2326, %concat.tot.len2179, %concat.tot.len2008, %concat.tot.len1862, %concat.tot.len1670, %concat.tot.len1304, %concat.tot.len1235, %concat.tot.len1130, %concat.tot.len1035, %concat.tot.len937, %concat.tot.len836, %concat.tot.len748, %concat.tot.len643, %concat.tot.len498, %concat.tot.len324, %concat.tot.len179
  %choice.res3365 = phi ptr [ %concat.str203, %concat.tot.len179 ], [ %concat.str344, %concat.tot.len324 ], [ %concat.str522, %concat.tot.len498 ], [ %concat.str663, %concat.tot.len643 ], [ %concat.str764, %concat.tot.len748 ], [ %concat.str852, %concat.tot.len836 ], [ %concat.str953, %concat.tot.len937 ], [ %concat.str1051, %concat.tot.len1035 ], [ %concat.str1146, %concat.tot.len1130 ], [ %concat.str1251, %concat.tot.len1235 ], [ %concat.str1316, %concat.tot.len1304 ], [ %concat.str1686, %concat.tot.len1670 ], [ %concat.str1890, %concat.tot.len1862 ], [ %concat.str2028, %concat.tot.len2008 ], [ %concat.str2203, %concat.tot.len2179 ], [ %concat.str2346, %concat.tot.len2326 ], [ %concat.str2526, %concat.tot.len2502 ], [ %concat.str2669, %concat.tot.len2649 ], [ %concat.str2796, %concat.tot.len2776 ], [ %concat.str2905, %concat.tot.len2889 ], [ %concat.str3009, %concat.tot.len2993 ], [ %concat.str3114, %concat.tot.len3098 ], [ %concat.str3204, %concat.tot.len3188 ], [ %concat.str3310, %concat.tot.len3294 ], [ %concat.str3359, %concat.tot.len3352 ], [ %concat.str1450, %concat.tot.len1434 ], [ %concat.str1578, %concat.tot.len1558 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res3365, align 8
  ret { i64, ptr } %ret.pack

choice.case:                                      ; preds = %concat.tot.len37
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %cat.seg53 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg54 = and i64 %cat.seg53, 281474976710655
  %str.tag55 = lshr i64 %cat.seg53, 48
  %tag.immortal57 = icmp eq i64 %str.tag55, 0
  %active.gen58 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current59 = icmp eq i64 %str.tag55, %active.gen58
  %tag.fast.ok60 = or i1 %tag.immortal57, %tag.current59
  br i1 %tag.fast.ok60, label %str_ok56, label %tag.slow_check61

str_ok56:                                         ; preds = %tag.slow_check61, %choice.case
  %cat.seg62 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg63 = load ptr, ptr %cat.seg62, align 8
  %fld.load67 = load ptr, ptr %payload.ptr, align 8
  %cat.seg69 = load i64, ptr %fld.load67, align 8
  %cat.seg70 = and i64 %cat.seg69, 281474976710655
  %str.tag71 = lshr i64 %cat.seg69, 48
  %tag.immortal73 = icmp eq i64 %str.tag71, 0
  %active.gen74 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current75 = icmp eq i64 %str.tag71, %active.gen74
  %tag.fast.ok76 = or i1 %tag.immortal73, %tag.current75
  br i1 %tag.fast.ok76, label %str_ok72, label %tag.slow_check77

tag.slow_check61:                                 ; preds = %choice.case
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag55)
  br label %str_ok56

str_ok72:                                         ; preds = %tag.slow_check77, %str_ok56
  %cat.seg78 = getelementptr inbounds { i64, ptr }, ptr %fld.load67, i32 0, i32 1
  %cat.seg79 = load ptr, ptr %cat.seg78, align 8
  %active.gen88 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current89 = icmp eq i64 0, %active.gen88
  %cat.seg97 = load i64, ptr %concat.str, align 8
  %cat.seg98 = and i64 %cat.seg97, 281474976710655
  %str.tag99 = lshr i64 %cat.seg97, 48
  %tag.immortal101 = icmp eq i64 %str.tag99, 0
  %active.gen102 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current103 = icmp eq i64 %str.tag99, %active.gen102
  %tag.fast.ok104 = or i1 %tag.immortal101, %tag.current103
  br i1 %tag.fast.ok104, label %str_ok100, label %tag.slow_check105

tag.slow_check77:                                 ; preds = %str_ok56
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag71)
  br label %str_ok72

str_ok100:                                        ; preds = %tag.slow_check105, %str_ok72
  %cat.seg107 = load ptr, ptr %str.build.data.gep, align 8
  %fld.gep111 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 5
  %addtmp = add i64 %2, 1
  %call.res113 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %fld.gep111, i64 %addtmp)
  %arena.cur114 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc115 = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 16)
  store { i64, ptr } %call.res113, ptr %ret.ub.alloc115, align 8
  %cat.seg117 = load i64, ptr %ret.ub.alloc115, align 8
  %cat.seg118 = and i64 %cat.seg117, 281474976710655
  %str.tag119 = lshr i64 %cat.seg117, 48
  %tag.immortal121 = icmp eq i64 %str.tag119, 0
  %active.gen122 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current123 = icmp eq i64 %str.tag119, %active.gen122
  %tag.fast.ok124 = or i1 %tag.immortal121, %tag.current123
  br i1 %tag.fast.ok124, label %str_ok120, label %tag.slow_check125

tag.slow_check105:                                ; preds = %str_ok72
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag99)
  br label %str_ok100

str_ok120:                                        ; preds = %tag.slow_check125, %str_ok100
  %cat.seg126 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc115, i32 0, i32 1
  %cat.seg127 = load ptr, ptr %cat.seg126, align 8
  %cat.sum.len128 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg54, i64 7)
  %sum129 = extractvalue { i64, i1 } %cat.sum.len128, 0
  %ovf130 = extractvalue { i64, i1 } %cat.sum.len128, 1
  br i1 %ovf130, label %str_overflow_abort132, label %cat.sum.len131

tag.slow_check125:                                ; preds = %str_ok100
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag119)
  br label %str_ok120

cat.sum.len131:                                   ; preds = %str_ok120
  %cat.sum.len134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum129, i64 %cat.seg70)
  %sum135 = extractvalue { i64, i1 } %cat.sum.len134, 0
  %ovf136 = extractvalue { i64, i1 } %cat.sum.len134, 1
  br i1 %ovf136, label %str_overflow_abort138, label %cat.sum.len137

str_overflow_abort132:                            ; preds = %str_ok120
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len137:                                   ; preds = %cat.sum.len131
  %cat.sum.len140 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum135, i64 1)
  %sum141 = extractvalue { i64, i1 } %cat.sum.len140, 0
  %ovf142 = extractvalue { i64, i1 } %cat.sum.len140, 1
  br i1 %ovf142, label %str_overflow_abort144, label %cat.sum.len143

str_overflow_abort138:                            ; preds = %cat.sum.len131
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len143:                                   ; preds = %cat.sum.len137
  %cat.sum.len146 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum141, i64 1)
  %sum147 = extractvalue { i64, i1 } %cat.sum.len146, 0
  %ovf148 = extractvalue { i64, i1 } %cat.sum.len146, 1
  br i1 %ovf148, label %str_overflow_abort150, label %cat.sum.len149

str_overflow_abort144:                            ; preds = %cat.sum.len137
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len149:                                   ; preds = %cat.sum.len143
  %cat.sum.len152 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum147, i64 1)
  %sum153 = extractvalue { i64, i1 } %cat.sum.len152, 0
  %ovf154 = extractvalue { i64, i1 } %cat.sum.len152, 1
  br i1 %ovf154, label %str_overflow_abort156, label %cat.sum.len155

str_overflow_abort150:                            ; preds = %cat.sum.len143
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len155:                                   ; preds = %cat.sum.len149
  %cat.sum.len158 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum153, i64 %cat.seg98)
  %sum159 = extractvalue { i64, i1 } %cat.sum.len158, 0
  %ovf160 = extractvalue { i64, i1 } %cat.sum.len158, 1
  br i1 %ovf160, label %str_overflow_abort162, label %cat.sum.len161

str_overflow_abort156:                            ; preds = %cat.sum.len149
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len161:                                   ; preds = %cat.sum.len155
  %cat.sum.len164 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum159, i64 1)
  %sum165 = extractvalue { i64, i1 } %cat.sum.len164, 0
  %ovf166 = extractvalue { i64, i1 } %cat.sum.len164, 1
  br i1 %ovf166, label %str_overflow_abort168, label %cat.sum.len167

str_overflow_abort162:                            ; preds = %cat.sum.len155
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len167:                                   ; preds = %cat.sum.len161
  %cat.sum.len170 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum165, i64 %cat.seg118)
  %sum171 = extractvalue { i64, i1 } %cat.sum.len170, 0
  %ovf172 = extractvalue { i64, i1 } %cat.sum.len170, 1
  br i1 %ovf172, label %str_overflow_abort174, label %cat.sum.len173

str_overflow_abort168:                            ; preds = %cat.sum.len161
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len173:                                   ; preds = %cat.sum.len167
  %concat.tot.len176 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum171, i64 1)
  %sum177 = extractvalue { i64, i1 } %concat.tot.len176, 0
  %ovf178 = extractvalue { i64, i1 } %concat.tot.len176, 1
  br i1 %ovf178, label %str_overflow_abort180, label %concat.tot.len179

str_overflow_abort174:                            ; preds = %cat.sum.len167
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len179:                                ; preds = %cat.sum.len173
  %arena.cur182 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 %sum177)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf183, ptr align 1 %cat.seg63, i64 %cat.seg54, i1 false)
  %cat.dst186 = getelementptr i8, ptr %concat.buf183, i64 %cat.seg54
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst186, ptr align 1 @str.58, i64 7, i1 false)
  %cat.off187 = add i64 %cat.seg54, 7
  %cat.dst188 = getelementptr i8, ptr %concat.buf183, i64 %cat.off187
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst188, ptr align 1 %cat.seg79, i64 %cat.seg70, i1 false)
  %cat.off189 = add i64 %cat.off187, %cat.seg70
  %cat.dst190 = getelementptr i8, ptr %concat.buf183, i64 %cat.off189
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst190, ptr align 1 @str.34, i64 1, i1 false)
  %cat.off191 = add i64 %cat.off189, 1
  %cat.dst192 = getelementptr i8, ptr %concat.buf183, i64 %cat.off191
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst192, ptr align 1 @str.87, i64 1, i1 false)
  %cat.off193 = add i64 %cat.off191, 1
  %cat.dst194 = getelementptr i8, ptr %concat.buf183, i64 %cat.off193
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst194, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off195 = add i64 %cat.off193, 1
  %cat.dst196 = getelementptr i8, ptr %concat.buf183, i64 %cat.off195
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst196, ptr align 1 %cat.seg107, i64 %cat.seg98, i1 false)
  %cat.off197 = add i64 %cat.off195, %cat.seg98
  %cat.dst198 = getelementptr i8, ptr %concat.buf183, i64 %cat.off197
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst198, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off199 = add i64 %cat.off197, 1
  %cat.dst200 = getelementptr i8, ptr %concat.buf183, i64 %cat.off199
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst200, ptr align 1 %cat.seg127, i64 %cat.seg118, i1 false)
  %concat.nul201 = getelementptr i8, ptr %concat.buf183, i64 %sum171
  store i8 0, ptr %concat.nul201, align 1
  %arena.cur202 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str203 = call ptr @dva_arena_alloc(ptr %arena.cur202, i64 16)
  %str.tag.gen205 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift206 = shl i64 %str.tag.gen205, 48
  %str.tagged.len207 = or i64 %sum171, %str.tag.shift206
  store i64 %str.tagged.len207, ptr %concat.str203, align 8
  %str.build.data.gep208 = getelementptr inbounds { i64, ptr }, ptr %concat.str203, i32 0, i32 1
  store ptr %concat.buf183, ptr %str.build.data.gep208, align 8
  br label %choice.exit

str_overflow_abort180:                            ; preds = %cat.sum.len173
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case209:                                   ; preds = %concat.tot.len37
  %pay.gep214 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr215 = load ptr, ptr %pay.gep214, align 8
  %cat.seg220 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg221 = and i64 %cat.seg220, 281474976710655
  %str.tag222 = lshr i64 %cat.seg220, 48
  %tag.immortal224 = icmp eq i64 %str.tag222, 0
  %active.gen225 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current226 = icmp eq i64 %str.tag222, %active.gen225
  %tag.fast.ok227 = or i1 %tag.immortal224, %tag.current226
  br i1 %tag.fast.ok227, label %str_ok223, label %tag.slow_check228

str_ok223:                                        ; preds = %tag.slow_check228, %choice.case209
  %cat.seg229 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg230 = load ptr, ptr %cat.seg229, align 8
  %fld.load234 = load ptr, ptr %payload.ptr215, align 8
  %call.res235 = call { i64, ptr } @"show::show_names"(ptr %fld.load234)
  %arena.cur236 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc237 = call ptr @dva_arena_alloc(ptr %arena.cur236, i64 16)
  store { i64, ptr } %call.res235, ptr %ret.ub.alloc237, align 8
  %cat.seg239 = load i64, ptr %ret.ub.alloc237, align 8
  %cat.seg240 = and i64 %cat.seg239, 281474976710655
  %str.tag241 = lshr i64 %cat.seg239, 48
  %tag.immortal243 = icmp eq i64 %str.tag241, 0
  %active.gen244 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current245 = icmp eq i64 %str.tag241, %active.gen244
  %tag.fast.ok246 = or i1 %tag.immortal243, %tag.current245
  br i1 %tag.fast.ok246, label %str_ok242, label %tag.slow_check247

tag.slow_check228:                                ; preds = %choice.case209
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag222)
  br label %str_ok223

str_ok242:                                        ; preds = %tag.slow_check247, %str_ok223
  %cat.seg248 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc237, i32 0, i32 1
  %cat.seg249 = load ptr, ptr %cat.seg248, align 8
  %cat.seg253 = load i64, ptr %concat.str, align 8
  %cat.seg254 = and i64 %cat.seg253, 281474976710655
  %str.tag255 = lshr i64 %cat.seg253, 48
  %tag.immortal257 = icmp eq i64 %str.tag255, 0
  %active.gen258 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current259 = icmp eq i64 %str.tag255, %active.gen258
  %tag.fast.ok260 = or i1 %tag.immortal257, %tag.current259
  br i1 %tag.fast.ok260, label %str_ok256, label %tag.slow_check261

tag.slow_check247:                                ; preds = %str_ok223
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag241)
  br label %str_ok242

str_ok256:                                        ; preds = %tag.slow_check261, %str_ok242
  %cat.seg263 = load ptr, ptr %str.build.data.gep, align 8
  %fld.gep267 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %payload.ptr215, i32 0, i32 1
  %addtmp269 = add i64 %2, 1
  %call.res270 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %fld.gep267, i64 %addtmp269)
  %arena.cur271 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc272 = call ptr @dva_arena_alloc(ptr %arena.cur271, i64 16)
  store { i64, ptr } %call.res270, ptr %ret.ub.alloc272, align 8
  %cat.seg274 = load i64, ptr %ret.ub.alloc272, align 8
  %cat.seg275 = and i64 %cat.seg274, 281474976710655
  %str.tag276 = lshr i64 %cat.seg274, 48
  %tag.immortal278 = icmp eq i64 %str.tag276, 0
  %active.gen279 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current280 = icmp eq i64 %str.tag276, %active.gen279
  %tag.fast.ok281 = or i1 %tag.immortal278, %tag.current280
  br i1 %tag.fast.ok281, label %str_ok277, label %tag.slow_check282

tag.slow_check261:                                ; preds = %str_ok242
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag255)
  br label %str_ok256

str_ok277:                                        ; preds = %tag.slow_check282, %str_ok256
  %cat.seg283 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc272, i32 0, i32 1
  %cat.seg284 = load ptr, ptr %cat.seg283, align 8
  %cat.sum.len285 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg221, i64 7)
  %sum286 = extractvalue { i64, i1 } %cat.sum.len285, 0
  %ovf287 = extractvalue { i64, i1 } %cat.sum.len285, 1
  br i1 %ovf287, label %str_overflow_abort289, label %cat.sum.len288

tag.slow_check282:                                ; preds = %str_ok256
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag276)
  br label %str_ok277

cat.sum.len288:                                   ; preds = %str_ok277
  %cat.sum.len291 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum286, i64 %cat.seg240)
  %sum292 = extractvalue { i64, i1 } %cat.sum.len291, 0
  %ovf293 = extractvalue { i64, i1 } %cat.sum.len291, 1
  br i1 %ovf293, label %str_overflow_abort295, label %cat.sum.len294

str_overflow_abort289:                            ; preds = %str_ok277
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len294:                                   ; preds = %cat.sum.len288
  %cat.sum.len297 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum292, i64 4)
  %sum298 = extractvalue { i64, i1 } %cat.sum.len297, 0
  %ovf299 = extractvalue { i64, i1 } %cat.sum.len297, 1
  br i1 %ovf299, label %str_overflow_abort301, label %cat.sum.len300

str_overflow_abort295:                            ; preds = %cat.sum.len288
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len300:                                   ; preds = %cat.sum.len294
  %cat.sum.len303 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum298, i64 %cat.seg254)
  %sum304 = extractvalue { i64, i1 } %cat.sum.len303, 0
  %ovf305 = extractvalue { i64, i1 } %cat.sum.len303, 1
  br i1 %ovf305, label %str_overflow_abort307, label %cat.sum.len306

str_overflow_abort301:                            ; preds = %cat.sum.len294
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len306:                                   ; preds = %cat.sum.len300
  %cat.sum.len309 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum304, i64 1)
  %sum310 = extractvalue { i64, i1 } %cat.sum.len309, 0
  %ovf311 = extractvalue { i64, i1 } %cat.sum.len309, 1
  br i1 %ovf311, label %str_overflow_abort313, label %cat.sum.len312

str_overflow_abort307:                            ; preds = %cat.sum.len300
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len312:                                   ; preds = %cat.sum.len306
  %cat.sum.len315 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum310, i64 %cat.seg275)
  %sum316 = extractvalue { i64, i1 } %cat.sum.len315, 0
  %ovf317 = extractvalue { i64, i1 } %cat.sum.len315, 1
  br i1 %ovf317, label %str_overflow_abort319, label %cat.sum.len318

str_overflow_abort313:                            ; preds = %cat.sum.len306
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len318:                                   ; preds = %cat.sum.len312
  %concat.tot.len321 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum316, i64 1)
  %sum322 = extractvalue { i64, i1 } %concat.tot.len321, 0
  %ovf323 = extractvalue { i64, i1 } %concat.tot.len321, 1
  br i1 %ovf323, label %str_overflow_abort325, label %concat.tot.len324

str_overflow_abort319:                            ; preds = %cat.sum.len312
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len324:                                ; preds = %cat.sum.len318
  %arena.cur327 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf328 = call ptr @dva_arena_alloc(ptr %arena.cur327, i64 %sum322)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf328, ptr align 1 %cat.seg230, i64 %cat.seg221, i1 false)
  %cat.dst331 = getelementptr i8, ptr %concat.buf328, i64 %cat.seg221
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst331, ptr align 1 @str.137, i64 7, i1 false)
  %cat.off332 = add i64 %cat.seg221, 7
  %cat.dst333 = getelementptr i8, ptr %concat.buf328, i64 %cat.off332
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst333, ptr align 1 %cat.seg249, i64 %cat.seg240, i1 false)
  %cat.off334 = add i64 %cat.off332, %cat.seg240
  %cat.dst335 = getelementptr i8, ptr %concat.buf328, i64 %cat.off334
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst335, ptr align 1 @str.148, i64 4, i1 false)
  %cat.off336 = add i64 %cat.off334, 4
  %cat.dst337 = getelementptr i8, ptr %concat.buf328, i64 %cat.off336
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst337, ptr align 1 %cat.seg263, i64 %cat.seg254, i1 false)
  %cat.off338 = add i64 %cat.off336, %cat.seg254
  %cat.dst339 = getelementptr i8, ptr %concat.buf328, i64 %cat.off338
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst339, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off340 = add i64 %cat.off338, 1
  %cat.dst341 = getelementptr i8, ptr %concat.buf328, i64 %cat.off340
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst341, ptr align 1 %cat.seg284, i64 %cat.seg275, i1 false)
  %concat.nul342 = getelementptr i8, ptr %concat.buf328, i64 %sum316
  store i8 0, ptr %concat.nul342, align 1
  %arena.cur343 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str344 = call ptr @dva_arena_alloc(ptr %arena.cur343, i64 16)
  %str.tag.gen346 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift347 = shl i64 %str.tag.gen346, 48
  %str.tagged.len348 = or i64 %sum316, %str.tag.shift347
  store i64 %str.tagged.len348, ptr %concat.str344, align 8
  %str.build.data.gep349 = getelementptr inbounds { i64, ptr }, ptr %concat.str344, i32 0, i32 1
  store ptr %concat.buf328, ptr %str.build.data.gep349, align 8
  br label %choice.exit

str_overflow_abort325:                            ; preds = %cat.sum.len318
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case350:                                   ; preds = %concat.tot.len37
  %pay.gep355 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr356 = load ptr, ptr %pay.gep355, align 8
  %cat.seg361 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg362 = and i64 %cat.seg361, 281474976710655
  %str.tag363 = lshr i64 %cat.seg361, 48
  %tag.immortal365 = icmp eq i64 %str.tag363, 0
  %active.gen366 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current367 = icmp eq i64 %str.tag363, %active.gen366
  %tag.fast.ok368 = or i1 %tag.immortal365, %tag.current367
  br i1 %tag.fast.ok368, label %str_ok364, label %tag.slow_check369

str_ok364:                                        ; preds = %tag.slow_check369, %choice.case350
  %cat.seg370 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg371 = load ptr, ptr %cat.seg370, align 8
  %fld.load375 = load ptr, ptr %payload.ptr356, align 8
  %call.res376 = call { i64, ptr } @"show::show_op"(ptr %fld.load375)
  %arena.cur377 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc378 = call ptr @dva_arena_alloc(ptr %arena.cur377, i64 16)
  store { i64, ptr } %call.res376, ptr %ret.ub.alloc378, align 8
  %cat.seg380 = load i64, ptr %ret.ub.alloc378, align 8
  %cat.seg381 = and i64 %cat.seg380, 281474976710655
  %str.tag382 = lshr i64 %cat.seg380, 48
  %tag.immortal384 = icmp eq i64 %str.tag382, 0
  %active.gen385 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current386 = icmp eq i64 %str.tag382, %active.gen385
  %tag.fast.ok387 = or i1 %tag.immortal384, %tag.current386
  br i1 %tag.fast.ok387, label %str_ok383, label %tag.slow_check388

tag.slow_check369:                                ; preds = %choice.case350
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag363)
  br label %str_ok364

str_ok383:                                        ; preds = %tag.slow_check388, %str_ok364
  %cat.seg389 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc378, i32 0, i32 1
  %cat.seg390 = load ptr, ptr %cat.seg389, align 8
  %cat.seg394 = load i64, ptr %concat.str, align 8
  %cat.seg395 = and i64 %cat.seg394, 281474976710655
  %str.tag396 = lshr i64 %cat.seg394, 48
  %tag.immortal398 = icmp eq i64 %str.tag396, 0
  %active.gen399 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current400 = icmp eq i64 %str.tag396, %active.gen399
  %tag.fast.ok401 = or i1 %tag.immortal398, %tag.current400
  br i1 %tag.fast.ok401, label %str_ok397, label %tag.slow_check402

tag.slow_check388:                                ; preds = %str_ok364
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag382)
  br label %str_ok383

str_ok397:                                        ; preds = %tag.slow_check402, %str_ok383
  %cat.seg404 = load ptr, ptr %str.build.data.gep, align 8
  %fld.gep408 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr356, i32 0, i32 1
  %addtmp410 = add i64 %2, 1
  %call.res411 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %fld.gep408, i64 %addtmp410)
  %arena.cur412 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc413 = call ptr @dva_arena_alloc(ptr %arena.cur412, i64 16)
  store { i64, ptr } %call.res411, ptr %ret.ub.alloc413, align 8
  %cat.seg415 = load i64, ptr %ret.ub.alloc413, align 8
  %cat.seg416 = and i64 %cat.seg415, 281474976710655
  %str.tag417 = lshr i64 %cat.seg415, 48
  %tag.immortal419 = icmp eq i64 %str.tag417, 0
  %active.gen420 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current421 = icmp eq i64 %str.tag417, %active.gen420
  %tag.fast.ok422 = or i1 %tag.immortal419, %tag.current421
  br i1 %tag.fast.ok422, label %str_ok418, label %tag.slow_check423

tag.slow_check402:                                ; preds = %str_ok383
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag396)
  br label %str_ok397

str_ok418:                                        ; preds = %tag.slow_check423, %str_ok397
  %cat.seg424 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc413, i32 0, i32 1
  %cat.seg425 = load ptr, ptr %cat.seg424, align 8
  %fld.gep429 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr356, i32 0, i32 2
  %call.res432 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %fld.gep429, i64 %addtmp410)
  %arena.cur433 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc434 = call ptr @dva_arena_alloc(ptr %arena.cur433, i64 16)
  store { i64, ptr } %call.res432, ptr %ret.ub.alloc434, align 8
  %cat.seg436 = load i64, ptr %ret.ub.alloc434, align 8
  %cat.seg437 = and i64 %cat.seg436, 281474976710655
  %str.tag438 = lshr i64 %cat.seg436, 48
  %tag.immortal440 = icmp eq i64 %str.tag438, 0
  %active.gen441 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current442 = icmp eq i64 %str.tag438, %active.gen441
  %tag.fast.ok443 = or i1 %tag.immortal440, %tag.current442
  br i1 %tag.fast.ok443, label %str_ok439, label %tag.slow_check444

tag.slow_check423:                                ; preds = %str_ok397
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag417)
  br label %str_ok418

str_ok439:                                        ; preds = %tag.slow_check444, %str_ok418
  %cat.seg445 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc434, i32 0, i32 1
  %cat.seg446 = load ptr, ptr %cat.seg445, align 8
  %cat.sum.len447 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg362, i64 4)
  %sum448 = extractvalue { i64, i1 } %cat.sum.len447, 0
  %ovf449 = extractvalue { i64, i1 } %cat.sum.len447, 1
  br i1 %ovf449, label %str_overflow_abort451, label %cat.sum.len450

tag.slow_check444:                                ; preds = %str_ok418
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag438)
  br label %str_ok439

cat.sum.len450:                                   ; preds = %str_ok439
  %cat.sum.len453 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum448, i64 %cat.seg381)
  %sum454 = extractvalue { i64, i1 } %cat.sum.len453, 0
  %ovf455 = extractvalue { i64, i1 } %cat.sum.len453, 1
  br i1 %ovf455, label %str_overflow_abort457, label %cat.sum.len456

str_overflow_abort451:                            ; preds = %str_ok439
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len456:                                   ; preds = %cat.sum.len450
  %cat.sum.len459 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum454, i64 1)
  %sum460 = extractvalue { i64, i1 } %cat.sum.len459, 0
  %ovf461 = extractvalue { i64, i1 } %cat.sum.len459, 1
  br i1 %ovf461, label %str_overflow_abort463, label %cat.sum.len462

str_overflow_abort457:                            ; preds = %cat.sum.len450
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len462:                                   ; preds = %cat.sum.len456
  %cat.sum.len465 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum460, i64 %cat.seg395)
  %sum466 = extractvalue { i64, i1 } %cat.sum.len465, 0
  %ovf467 = extractvalue { i64, i1 } %cat.sum.len465, 1
  br i1 %ovf467, label %str_overflow_abort469, label %cat.sum.len468

str_overflow_abort463:                            ; preds = %cat.sum.len456
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len468:                                   ; preds = %cat.sum.len462
  %cat.sum.len471 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum466, i64 1)
  %sum472 = extractvalue { i64, i1 } %cat.sum.len471, 0
  %ovf473 = extractvalue { i64, i1 } %cat.sum.len471, 1
  br i1 %ovf473, label %str_overflow_abort475, label %cat.sum.len474

str_overflow_abort469:                            ; preds = %cat.sum.len462
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len474:                                   ; preds = %cat.sum.len468
  %cat.sum.len477 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum472, i64 %cat.seg416)
  %sum478 = extractvalue { i64, i1 } %cat.sum.len477, 0
  %ovf479 = extractvalue { i64, i1 } %cat.sum.len477, 1
  br i1 %ovf479, label %str_overflow_abort481, label %cat.sum.len480

str_overflow_abort475:                            ; preds = %cat.sum.len468
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len480:                                   ; preds = %cat.sum.len474
  %cat.sum.len483 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum478, i64 1)
  %sum484 = extractvalue { i64, i1 } %cat.sum.len483, 0
  %ovf485 = extractvalue { i64, i1 } %cat.sum.len483, 1
  br i1 %ovf485, label %str_overflow_abort487, label %cat.sum.len486

str_overflow_abort481:                            ; preds = %cat.sum.len474
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len486:                                   ; preds = %cat.sum.len480
  %cat.sum.len489 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum484, i64 %cat.seg437)
  %sum490 = extractvalue { i64, i1 } %cat.sum.len489, 0
  %ovf491 = extractvalue { i64, i1 } %cat.sum.len489, 1
  br i1 %ovf491, label %str_overflow_abort493, label %cat.sum.len492

str_overflow_abort487:                            ; preds = %cat.sum.len480
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len492:                                   ; preds = %cat.sum.len486
  %concat.tot.len495 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum490, i64 1)
  %sum496 = extractvalue { i64, i1 } %concat.tot.len495, 0
  %ovf497 = extractvalue { i64, i1 } %concat.tot.len495, 1
  br i1 %ovf497, label %str_overflow_abort499, label %concat.tot.len498

str_overflow_abort493:                            ; preds = %cat.sum.len486
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len498:                                ; preds = %cat.sum.len492
  %arena.cur501 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf502 = call ptr @dva_arena_alloc(ptr %arena.cur501, i64 %sum496)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf502, ptr align 1 %cat.seg371, i64 %cat.seg362, i1 false)
  %cat.dst505 = getelementptr i8, ptr %concat.buf502, i64 %cat.seg362
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst505, ptr align 1 @str.7, i64 4, i1 false)
  %cat.off506 = add i64 %cat.seg362, 4
  %cat.dst507 = getelementptr i8, ptr %concat.buf502, i64 %cat.off506
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst507, ptr align 1 %cat.seg390, i64 %cat.seg381, i1 false)
  %cat.off508 = add i64 %cat.off506, %cat.seg381
  %cat.dst509 = getelementptr i8, ptr %concat.buf502, i64 %cat.off508
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst509, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off510 = add i64 %cat.off508, 1
  %cat.dst511 = getelementptr i8, ptr %concat.buf502, i64 %cat.off510
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst511, ptr align 1 %cat.seg404, i64 %cat.seg395, i1 false)
  %cat.off512 = add i64 %cat.off510, %cat.seg395
  %cat.dst513 = getelementptr i8, ptr %concat.buf502, i64 %cat.off512
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst513, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off514 = add i64 %cat.off512, 1
  %cat.dst515 = getelementptr i8, ptr %concat.buf502, i64 %cat.off514
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst515, ptr align 1 %cat.seg425, i64 %cat.seg416, i1 false)
  %cat.off516 = add i64 %cat.off514, %cat.seg416
  %cat.dst517 = getelementptr i8, ptr %concat.buf502, i64 %cat.off516
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst517, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off518 = add i64 %cat.off516, 1
  %cat.dst519 = getelementptr i8, ptr %concat.buf502, i64 %cat.off518
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst519, ptr align 1 %cat.seg446, i64 %cat.seg437, i1 false)
  %concat.nul520 = getelementptr i8, ptr %concat.buf502, i64 %sum490
  store i8 0, ptr %concat.nul520, align 1
  %arena.cur521 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str522 = call ptr @dva_arena_alloc(ptr %arena.cur521, i64 16)
  %str.tag.gen524 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift525 = shl i64 %str.tag.gen524, 48
  %str.tagged.len526 = or i64 %sum490, %str.tag.shift525
  store i64 %str.tagged.len526, ptr %concat.str522, align 8
  %str.build.data.gep527 = getelementptr inbounds { i64, ptr }, ptr %concat.str522, i32 0, i32 1
  store ptr %concat.buf502, ptr %str.build.data.gep527, align 8
  br label %choice.exit

str_overflow_abort499:                            ; preds = %cat.sum.len492
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case528:                                   ; preds = %concat.tot.len37
  %pay.gep533 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr534 = load ptr, ptr %pay.gep533, align 8
  %cat.seg539 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg540 = and i64 %cat.seg539, 281474976710655
  %str.tag541 = lshr i64 %cat.seg539, 48
  %tag.immortal543 = icmp eq i64 %str.tag541, 0
  %active.gen544 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current545 = icmp eq i64 %str.tag541, %active.gen544
  %tag.fast.ok546 = or i1 %tag.immortal543, %tag.current545
  br i1 %tag.fast.ok546, label %str_ok542, label %tag.slow_check547

str_ok542:                                        ; preds = %tag.slow_check547, %choice.case528
  %cat.seg548 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg549 = load ptr, ptr %cat.seg548, align 8
  %fld.load553 = load ptr, ptr %payload.ptr534, align 8
  %call.res554 = call { i64, ptr } @"show::show_unop"(ptr %fld.load553)
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

tag.slow_check547:                                ; preds = %choice.case528
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag541)
  br label %str_ok542

str_ok561:                                        ; preds = %tag.slow_check566, %str_ok542
  %cat.seg567 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc556, i32 0, i32 1
  %cat.seg568 = load ptr, ptr %cat.seg567, align 8
  %cat.seg572 = load i64, ptr %concat.str, align 8
  %cat.seg573 = and i64 %cat.seg572, 281474976710655
  %str.tag574 = lshr i64 %cat.seg572, 48
  %tag.immortal576 = icmp eq i64 %str.tag574, 0
  %active.gen577 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current578 = icmp eq i64 %str.tag574, %active.gen577
  %tag.fast.ok579 = or i1 %tag.immortal576, %tag.current578
  br i1 %tag.fast.ok579, label %str_ok575, label %tag.slow_check580

tag.slow_check566:                                ; preds = %str_ok542
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag560)
  br label %str_ok561

str_ok575:                                        ; preds = %tag.slow_check580, %str_ok561
  %cat.seg582 = load ptr, ptr %str.build.data.gep, align 8
  %fld.gep586 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr534, i32 0, i32 1
  %addtmp588 = add i64 %2, 1
  %call.res589 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %fld.gep586, i64 %addtmp588)
  %arena.cur590 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc591 = call ptr @dva_arena_alloc(ptr %arena.cur590, i64 16)
  store { i64, ptr } %call.res589, ptr %ret.ub.alloc591, align 8
  %cat.seg593 = load i64, ptr %ret.ub.alloc591, align 8
  %cat.seg594 = and i64 %cat.seg593, 281474976710655
  %str.tag595 = lshr i64 %cat.seg593, 48
  %tag.immortal597 = icmp eq i64 %str.tag595, 0
  %active.gen598 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current599 = icmp eq i64 %str.tag595, %active.gen598
  %tag.fast.ok600 = or i1 %tag.immortal597, %tag.current599
  br i1 %tag.fast.ok600, label %str_ok596, label %tag.slow_check601

tag.slow_check580:                                ; preds = %str_ok561
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag574)
  br label %str_ok575

str_ok596:                                        ; preds = %tag.slow_check601, %str_ok575
  %cat.seg602 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc591, i32 0, i32 1
  %cat.seg603 = load ptr, ptr %cat.seg602, align 8
  %cat.sum.len604 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg540, i64 6)
  %sum605 = extractvalue { i64, i1 } %cat.sum.len604, 0
  %ovf606 = extractvalue { i64, i1 } %cat.sum.len604, 1
  br i1 %ovf606, label %str_overflow_abort608, label %cat.sum.len607

tag.slow_check601:                                ; preds = %str_ok575
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag595)
  br label %str_ok596

cat.sum.len607:                                   ; preds = %str_ok596
  %cat.sum.len610 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum605, i64 %cat.seg559)
  %sum611 = extractvalue { i64, i1 } %cat.sum.len610, 0
  %ovf612 = extractvalue { i64, i1 } %cat.sum.len610, 1
  br i1 %ovf612, label %str_overflow_abort614, label %cat.sum.len613

str_overflow_abort608:                            ; preds = %str_ok596
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len613:                                   ; preds = %cat.sum.len607
  %cat.sum.len616 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum611, i64 1)
  %sum617 = extractvalue { i64, i1 } %cat.sum.len616, 0
  %ovf618 = extractvalue { i64, i1 } %cat.sum.len616, 1
  br i1 %ovf618, label %str_overflow_abort620, label %cat.sum.len619

str_overflow_abort614:                            ; preds = %cat.sum.len607
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len619:                                   ; preds = %cat.sum.len613
  %cat.sum.len622 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum617, i64 %cat.seg573)
  %sum623 = extractvalue { i64, i1 } %cat.sum.len622, 0
  %ovf624 = extractvalue { i64, i1 } %cat.sum.len622, 1
  br i1 %ovf624, label %str_overflow_abort626, label %cat.sum.len625

str_overflow_abort620:                            ; preds = %cat.sum.len613
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len625:                                   ; preds = %cat.sum.len619
  %cat.sum.len628 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum623, i64 1)
  %sum629 = extractvalue { i64, i1 } %cat.sum.len628, 0
  %ovf630 = extractvalue { i64, i1 } %cat.sum.len628, 1
  br i1 %ovf630, label %str_overflow_abort632, label %cat.sum.len631

str_overflow_abort626:                            ; preds = %cat.sum.len619
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len631:                                   ; preds = %cat.sum.len625
  %cat.sum.len634 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum629, i64 %cat.seg594)
  %sum635 = extractvalue { i64, i1 } %cat.sum.len634, 0
  %ovf636 = extractvalue { i64, i1 } %cat.sum.len634, 1
  br i1 %ovf636, label %str_overflow_abort638, label %cat.sum.len637

str_overflow_abort632:                            ; preds = %cat.sum.len625
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len637:                                   ; preds = %cat.sum.len631
  %concat.tot.len640 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum635, i64 1)
  %sum641 = extractvalue { i64, i1 } %concat.tot.len640, 0
  %ovf642 = extractvalue { i64, i1 } %concat.tot.len640, 1
  br i1 %ovf642, label %str_overflow_abort644, label %concat.tot.len643

str_overflow_abort638:                            ; preds = %cat.sum.len631
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len643:                                ; preds = %cat.sum.len637
  %arena.cur646 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf647 = call ptr @dva_arena_alloc(ptr %arena.cur646, i64 %sum641)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf647, ptr align 1 %cat.seg549, i64 %cat.seg540, i1 false)
  %cat.dst650 = getelementptr i8, ptr %concat.buf647, i64 %cat.seg540
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst650, ptr align 1 @str.35, i64 6, i1 false)
  %cat.off651 = add i64 %cat.seg540, 6
  %cat.dst652 = getelementptr i8, ptr %concat.buf647, i64 %cat.off651
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst652, ptr align 1 %cat.seg568, i64 %cat.seg559, i1 false)
  %cat.off653 = add i64 %cat.off651, %cat.seg559
  %cat.dst654 = getelementptr i8, ptr %concat.buf647, i64 %cat.off653
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst654, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off655 = add i64 %cat.off653, 1
  %cat.dst656 = getelementptr i8, ptr %concat.buf647, i64 %cat.off655
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst656, ptr align 1 %cat.seg582, i64 %cat.seg573, i1 false)
  %cat.off657 = add i64 %cat.off655, %cat.seg573
  %cat.dst658 = getelementptr i8, ptr %concat.buf647, i64 %cat.off657
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst658, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off659 = add i64 %cat.off657, 1
  %cat.dst660 = getelementptr i8, ptr %concat.buf647, i64 %cat.off659
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst660, ptr align 1 %cat.seg603, i64 %cat.seg594, i1 false)
  %concat.nul661 = getelementptr i8, ptr %concat.buf647, i64 %sum635
  store i8 0, ptr %concat.nul661, align 1
  %arena.cur662 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str663 = call ptr @dva_arena_alloc(ptr %arena.cur662, i64 16)
  %str.tag.gen665 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift666 = shl i64 %str.tag.gen665, 48
  %str.tagged.len667 = or i64 %sum635, %str.tag.shift666
  store i64 %str.tagged.len667, ptr %concat.str663, align 8
  %str.build.data.gep668 = getelementptr inbounds { i64, ptr }, ptr %concat.str663, i32 0, i32 1
  store ptr %concat.buf647, ptr %str.build.data.gep668, align 8
  br label %choice.exit

str_overflow_abort644:                            ; preds = %cat.sum.len637
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case669:                                   ; preds = %concat.tot.len37
  %pay.gep674 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr675 = load ptr, ptr %pay.gep674, align 8
  %cat.seg680 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg681 = and i64 %cat.seg680, 281474976710655
  %str.tag682 = lshr i64 %cat.seg680, 48
  %tag.immortal684 = icmp eq i64 %str.tag682, 0
  %active.gen685 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current686 = icmp eq i64 %str.tag682, %active.gen685
  %tag.fast.ok687 = or i1 %tag.immortal684, %tag.current686
  br i1 %tag.fast.ok687, label %str_ok683, label %tag.slow_check688

str_ok683:                                        ; preds = %tag.slow_check688, %choice.case669
  %cat.seg689 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg690 = load ptr, ptr %cat.seg689, align 8
  %fld.load694 = load ptr, ptr %payload.ptr675, align 8
  %cat.seg696 = load i64, ptr %fld.load694, align 8
  %cat.seg697 = and i64 %cat.seg696, 281474976710655
  %str.tag698 = lshr i64 %cat.seg696, 48
  %tag.immortal700 = icmp eq i64 %str.tag698, 0
  %active.gen701 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current702 = icmp eq i64 %str.tag698, %active.gen701
  %tag.fast.ok703 = or i1 %tag.immortal700, %tag.current702
  br i1 %tag.fast.ok703, label %str_ok699, label %tag.slow_check704

tag.slow_check688:                                ; preds = %choice.case669
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag682)
  br label %str_ok683

str_ok699:                                        ; preds = %tag.slow_check704, %str_ok683
  %cat.seg705 = getelementptr inbounds { i64, ptr }, ptr %fld.load694, i32 0, i32 1
  %cat.seg706 = load ptr, ptr %cat.seg705, align 8
  %cat.seg710 = load i64, ptr %concat.str, align 8
  %cat.seg711 = and i64 %cat.seg710, 281474976710655
  %str.tag712 = lshr i64 %cat.seg710, 48
  %tag.immortal714 = icmp eq i64 %str.tag712, 0
  %active.gen715 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current716 = icmp eq i64 %str.tag712, %active.gen715
  %tag.fast.ok717 = or i1 %tag.immortal714, %tag.current716
  br i1 %tag.fast.ok717, label %str_ok713, label %tag.slow_check718

tag.slow_check704:                                ; preds = %str_ok683
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag698)
  br label %str_ok699

str_ok713:                                        ; preds = %tag.slow_check718, %str_ok699
  %cat.seg720 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len721 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg681, i64 4)
  %sum722 = extractvalue { i64, i1 } %cat.sum.len721, 0
  %ovf723 = extractvalue { i64, i1 } %cat.sum.len721, 1
  br i1 %ovf723, label %str_overflow_abort725, label %cat.sum.len724

tag.slow_check718:                                ; preds = %str_ok699
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag712)
  br label %str_ok713

cat.sum.len724:                                   ; preds = %str_ok713
  %cat.sum.len727 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum722, i64 %cat.seg697)
  %sum728 = extractvalue { i64, i1 } %cat.sum.len727, 0
  %ovf729 = extractvalue { i64, i1 } %cat.sum.len727, 1
  br i1 %ovf729, label %str_overflow_abort731, label %cat.sum.len730

str_overflow_abort725:                            ; preds = %str_ok713
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len730:                                   ; preds = %cat.sum.len724
  %cat.sum.len733 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum728, i64 1)
  %sum734 = extractvalue { i64, i1 } %cat.sum.len733, 0
  %ovf735 = extractvalue { i64, i1 } %cat.sum.len733, 1
  br i1 %ovf735, label %str_overflow_abort737, label %cat.sum.len736

str_overflow_abort731:                            ; preds = %cat.sum.len724
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len736:                                   ; preds = %cat.sum.len730
  %cat.sum.len739 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum734, i64 %cat.seg711)
  %sum740 = extractvalue { i64, i1 } %cat.sum.len739, 0
  %ovf741 = extractvalue { i64, i1 } %cat.sum.len739, 1
  br i1 %ovf741, label %str_overflow_abort743, label %cat.sum.len742

str_overflow_abort737:                            ; preds = %cat.sum.len730
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len742:                                   ; preds = %cat.sum.len736
  %concat.tot.len745 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum740, i64 1)
  %sum746 = extractvalue { i64, i1 } %concat.tot.len745, 0
  %ovf747 = extractvalue { i64, i1 } %concat.tot.len745, 1
  br i1 %ovf747, label %str_overflow_abort749, label %concat.tot.len748

str_overflow_abort743:                            ; preds = %cat.sum.len736
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len748:                                ; preds = %cat.sum.len742
  %arena.cur751 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf752 = call ptr @dva_arena_alloc(ptr %arena.cur751, i64 %sum746)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf752, ptr align 1 %cat.seg690, i64 %cat.seg681, i1 false)
  %cat.dst755 = getelementptr i8, ptr %concat.buf752, i64 %cat.seg681
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst755, ptr align 1 @str.6, i64 4, i1 false)
  %cat.off756 = add i64 %cat.seg681, 4
  %cat.dst757 = getelementptr i8, ptr %concat.buf752, i64 %cat.off756
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst757, ptr align 1 %cat.seg706, i64 %cat.seg697, i1 false)
  %cat.off758 = add i64 %cat.off756, %cat.seg697
  %cat.dst759 = getelementptr i8, ptr %concat.buf752, i64 %cat.off758
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst759, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off760 = add i64 %cat.off758, 1
  %cat.dst761 = getelementptr i8, ptr %concat.buf752, i64 %cat.off760
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst761, ptr align 1 %cat.seg720, i64 %cat.seg711, i1 false)
  %concat.nul762 = getelementptr i8, ptr %concat.buf752, i64 %sum740
  store i8 0, ptr %concat.nul762, align 1
  %arena.cur763 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str764 = call ptr @dva_arena_alloc(ptr %arena.cur763, i64 16)
  %str.tag.gen766 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift767 = shl i64 %str.tag.gen766, 48
  %str.tagged.len768 = or i64 %sum740, %str.tag.shift767
  store i64 %str.tagged.len768, ptr %concat.str764, align 8
  %str.build.data.gep769 = getelementptr inbounds { i64, ptr }, ptr %concat.str764, i32 0, i32 1
  store ptr %concat.buf752, ptr %str.build.data.gep769, align 8
  br label %choice.exit

str_overflow_abort749:                            ; preds = %cat.sum.len742
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case770:                                   ; preds = %concat.tot.len37
  %pay.gep775 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr776 = load ptr, ptr %pay.gep775, align 8
  %pay.int.null = icmp eq ptr %payload.ptr776, null
  br i1 %pay.int.null, label %pay.int.merge, label %pay.int.load

pay.int.load:                                     ; preds = %choice.case770
  %pay.int.val = load i64, ptr %payload.ptr776, align 8
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %choice.case770, %pay.int.load
  %pay.int.phi = phi i64 [ %pay.int.val, %pay.int.load ], [ 0, %choice.case770 ]
  %cat.seg780 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg781 = and i64 %cat.seg780, 281474976710655
  %str.tag782 = lshr i64 %cat.seg780, 48
  %tag.immortal784 = icmp eq i64 %str.tag782, 0
  %active.gen785 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current786 = icmp eq i64 %str.tag782, %active.gen785
  %tag.fast.ok787 = or i1 %tag.immortal784, %tag.current786
  br i1 %tag.fast.ok787, label %str_ok783, label %tag.slow_check788

str_ok783:                                        ; preds = %tag.slow_check788, %pay.int.merge
  %cat.seg789 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg790 = load ptr, ptr %cat.seg789, align 8
  %cat.ilen794 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf793, i64 %pay.int.phi, i1 false)
  %cat.seg798 = load i64, ptr %concat.str, align 8
  %cat.seg799 = and i64 %cat.seg798, 281474976710655
  %str.tag800 = lshr i64 %cat.seg798, 48
  %tag.immortal802 = icmp eq i64 %str.tag800, 0
  %active.gen803 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current804 = icmp eq i64 %str.tag800, %active.gen803
  %tag.fast.ok805 = or i1 %tag.immortal802, %tag.current804
  br i1 %tag.fast.ok805, label %str_ok801, label %tag.slow_check806

tag.slow_check788:                                ; preds = %pay.int.merge
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag782)
  br label %str_ok783

str_ok801:                                        ; preds = %tag.slow_check806, %str_ok783
  %cat.seg808 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len809 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg781, i64 7)
  %sum810 = extractvalue { i64, i1 } %cat.sum.len809, 0
  %ovf811 = extractvalue { i64, i1 } %cat.sum.len809, 1
  br i1 %ovf811, label %str_overflow_abort813, label %cat.sum.len812

tag.slow_check806:                                ; preds = %str_ok783
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag800)
  br label %str_ok801

cat.sum.len812:                                   ; preds = %str_ok801
  %cat.sum.len815 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum810, i64 %cat.ilen794)
  %sum816 = extractvalue { i64, i1 } %cat.sum.len815, 0
  %ovf817 = extractvalue { i64, i1 } %cat.sum.len815, 1
  br i1 %ovf817, label %str_overflow_abort819, label %cat.sum.len818

str_overflow_abort813:                            ; preds = %str_ok801
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len818:                                   ; preds = %cat.sum.len812
  %cat.sum.len821 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum816, i64 1)
  %sum822 = extractvalue { i64, i1 } %cat.sum.len821, 0
  %ovf823 = extractvalue { i64, i1 } %cat.sum.len821, 1
  br i1 %ovf823, label %str_overflow_abort825, label %cat.sum.len824

str_overflow_abort819:                            ; preds = %cat.sum.len812
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len824:                                   ; preds = %cat.sum.len818
  %cat.sum.len827 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum822, i64 %cat.seg799)
  %sum828 = extractvalue { i64, i1 } %cat.sum.len827, 0
  %ovf829 = extractvalue { i64, i1 } %cat.sum.len827, 1
  br i1 %ovf829, label %str_overflow_abort831, label %cat.sum.len830

str_overflow_abort825:                            ; preds = %cat.sum.len818
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len830:                                   ; preds = %cat.sum.len824
  %concat.tot.len833 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum828, i64 1)
  %sum834 = extractvalue { i64, i1 } %concat.tot.len833, 0
  %ovf835 = extractvalue { i64, i1 } %concat.tot.len833, 1
  br i1 %ovf835, label %str_overflow_abort837, label %concat.tot.len836

str_overflow_abort831:                            ; preds = %cat.sum.len824
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len836:                                ; preds = %cat.sum.len830
  %arena.cur839 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf840 = call ptr @dva_arena_alloc(ptr %arena.cur839, i64 %sum834)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf840, ptr align 1 %cat.seg790, i64 %cat.seg781, i1 false)
  %cat.dst843 = getelementptr i8, ptr %concat.buf840, i64 %cat.seg781
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst843, ptr align 1 @str.122, i64 7, i1 false)
  %cat.off844 = add i64 %cat.seg781, 7
  %cat.dst845 = getelementptr i8, ptr %concat.buf840, i64 %cat.off844
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst845, ptr align 1 %cat.ibuf793, i64 %cat.ilen794, i1 false)
  %cat.off846 = add i64 %cat.off844, %cat.ilen794
  %cat.dst847 = getelementptr i8, ptr %concat.buf840, i64 %cat.off846
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst847, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off848 = add i64 %cat.off846, 1
  %cat.dst849 = getelementptr i8, ptr %concat.buf840, i64 %cat.off848
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst849, ptr align 1 %cat.seg808, i64 %cat.seg799, i1 false)
  %concat.nul850 = getelementptr i8, ptr %concat.buf840, i64 %sum828
  store i8 0, ptr %concat.nul850, align 1
  %arena.cur851 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str852 = call ptr @dva_arena_alloc(ptr %arena.cur851, i64 16)
  %str.tag.gen854 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift855 = shl i64 %str.tag.gen854, 48
  %str.tagged.len856 = or i64 %sum828, %str.tag.shift855
  store i64 %str.tagged.len856, ptr %concat.str852, align 8
  %str.build.data.gep857 = getelementptr inbounds { i64, ptr }, ptr %concat.str852, i32 0, i32 1
  store ptr %concat.buf840, ptr %str.build.data.gep857, align 8
  br label %choice.exit

str_overflow_abort837:                            ; preds = %cat.sum.len830
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case858:                                   ; preds = %concat.tot.len37
  %pay.gep863 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr864 = load ptr, ptr %pay.gep863, align 8
  %pay.float.null = icmp eq ptr %payload.ptr864, null
  br i1 %pay.float.null, label %pay.float.merge, label %pay.float.load

pay.float.load:                                   ; preds = %choice.case858
  %pay.float.val = load double, ptr %payload.ptr864, align 8
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %choice.case858, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %choice.case858 ]
  %cat.seg868 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg869 = and i64 %cat.seg868, 281474976710655
  %str.tag870 = lshr i64 %cat.seg868, 48
  %tag.immortal872 = icmp eq i64 %str.tag870, 0
  %active.gen873 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current874 = icmp eq i64 %str.tag870, %active.gen873
  %tag.fast.ok875 = or i1 %tag.immortal872, %tag.current874
  br i1 %tag.fast.ok875, label %str_ok871, label %tag.slow_check876

str_ok871:                                        ; preds = %tag.slow_check876, %pay.float.merge
  %cat.seg877 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg878 = load ptr, ptr %cat.seg877, align 8
  %call.res881 = call { i64, ptr } @"str::from_float"(double %pay.float.phi)
  %arena.cur882 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc883 = call ptr @dva_arena_alloc(ptr %arena.cur882, i64 16)
  store { i64, ptr } %call.res881, ptr %ret.ub.alloc883, align 8
  %cat.seg885 = load i64, ptr %ret.ub.alloc883, align 8
  %cat.seg886 = and i64 %cat.seg885, 281474976710655
  %str.tag887 = lshr i64 %cat.seg885, 48
  %tag.immortal889 = icmp eq i64 %str.tag887, 0
  %active.gen890 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current891 = icmp eq i64 %str.tag887, %active.gen890
  %tag.fast.ok892 = or i1 %tag.immortal889, %tag.current891
  br i1 %tag.fast.ok892, label %str_ok888, label %tag.slow_check893

tag.slow_check876:                                ; preds = %pay.float.merge
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag870)
  br label %str_ok871

str_ok888:                                        ; preds = %tag.slow_check893, %str_ok871
  %cat.seg894 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc883, i32 0, i32 1
  %cat.seg895 = load ptr, ptr %cat.seg894, align 8
  %cat.seg899 = load i64, ptr %concat.str, align 8
  %cat.seg900 = and i64 %cat.seg899, 281474976710655
  %str.tag901 = lshr i64 %cat.seg899, 48
  %tag.immortal903 = icmp eq i64 %str.tag901, 0
  %active.gen904 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current905 = icmp eq i64 %str.tag901, %active.gen904
  %tag.fast.ok906 = or i1 %tag.immortal903, %tag.current905
  br i1 %tag.fast.ok906, label %str_ok902, label %tag.slow_check907

tag.slow_check893:                                ; preds = %str_ok871
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag887)
  br label %str_ok888

str_ok902:                                        ; preds = %tag.slow_check907, %str_ok888
  %cat.seg909 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len910 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg869, i64 9)
  %sum911 = extractvalue { i64, i1 } %cat.sum.len910, 0
  %ovf912 = extractvalue { i64, i1 } %cat.sum.len910, 1
  br i1 %ovf912, label %str_overflow_abort914, label %cat.sum.len913

tag.slow_check907:                                ; preds = %str_ok888
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag901)
  br label %str_ok902

cat.sum.len913:                                   ; preds = %str_ok902
  %cat.sum.len916 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum911, i64 %cat.seg886)
  %sum917 = extractvalue { i64, i1 } %cat.sum.len916, 0
  %ovf918 = extractvalue { i64, i1 } %cat.sum.len916, 1
  br i1 %ovf918, label %str_overflow_abort920, label %cat.sum.len919

str_overflow_abort914:                            ; preds = %str_ok902
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len919:                                   ; preds = %cat.sum.len913
  %cat.sum.len922 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum917, i64 1)
  %sum923 = extractvalue { i64, i1 } %cat.sum.len922, 0
  %ovf924 = extractvalue { i64, i1 } %cat.sum.len922, 1
  br i1 %ovf924, label %str_overflow_abort926, label %cat.sum.len925

str_overflow_abort920:                            ; preds = %cat.sum.len913
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len925:                                   ; preds = %cat.sum.len919
  %cat.sum.len928 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum923, i64 %cat.seg900)
  %sum929 = extractvalue { i64, i1 } %cat.sum.len928, 0
  %ovf930 = extractvalue { i64, i1 } %cat.sum.len928, 1
  br i1 %ovf930, label %str_overflow_abort932, label %cat.sum.len931

str_overflow_abort926:                            ; preds = %cat.sum.len919
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len931:                                   ; preds = %cat.sum.len925
  %concat.tot.len934 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum929, i64 1)
  %sum935 = extractvalue { i64, i1 } %concat.tot.len934, 0
  %ovf936 = extractvalue { i64, i1 } %concat.tot.len934, 1
  br i1 %ovf936, label %str_overflow_abort938, label %concat.tot.len937

str_overflow_abort932:                            ; preds = %cat.sum.len925
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len937:                                ; preds = %cat.sum.len931
  %arena.cur940 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf941 = call ptr @dva_arena_alloc(ptr %arena.cur940, i64 %sum935)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf941, ptr align 1 %cat.seg878, i64 %cat.seg869, i1 false)
  %cat.dst944 = getelementptr i8, ptr %concat.buf941, i64 %cat.seg869
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst944, ptr align 1 @str.123, i64 9, i1 false)
  %cat.off945 = add i64 %cat.seg869, 9
  %cat.dst946 = getelementptr i8, ptr %concat.buf941, i64 %cat.off945
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst946, ptr align 1 %cat.seg895, i64 %cat.seg886, i1 false)
  %cat.off947 = add i64 %cat.off945, %cat.seg886
  %cat.dst948 = getelementptr i8, ptr %concat.buf941, i64 %cat.off947
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst948, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off949 = add i64 %cat.off947, 1
  %cat.dst950 = getelementptr i8, ptr %concat.buf941, i64 %cat.off949
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst950, ptr align 1 %cat.seg909, i64 %cat.seg900, i1 false)
  %concat.nul951 = getelementptr i8, ptr %concat.buf941, i64 %sum929
  store i8 0, ptr %concat.nul951, align 1
  %arena.cur952 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str953 = call ptr @dva_arena_alloc(ptr %arena.cur952, i64 16)
  %str.tag.gen955 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift956 = shl i64 %str.tag.gen955, 48
  %str.tagged.len957 = or i64 %sum929, %str.tag.shift956
  store i64 %str.tagged.len957, ptr %concat.str953, align 8
  %str.build.data.gep958 = getelementptr inbounds { i64, ptr }, ptr %concat.str953, i32 0, i32 1
  store ptr %concat.buf941, ptr %str.build.data.gep958, align 8
  br label %choice.exit

str_overflow_abort938:                            ; preds = %cat.sum.len931
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case959:                                   ; preds = %concat.tot.len37
  %pay.gep964 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr965 = load ptr, ptr %pay.gep964, align 8
  %cat.seg969 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg970 = and i64 %cat.seg969, 281474976710655
  %str.tag971 = lshr i64 %cat.seg969, 48
  %tag.immortal973 = icmp eq i64 %str.tag971, 0
  %active.gen974 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current975 = icmp eq i64 %str.tag971, %active.gen974
  %tag.fast.ok976 = or i1 %tag.immortal973, %tag.current975
  br i1 %tag.fast.ok976, label %str_ok972, label %tag.slow_check977

str_ok972:                                        ; preds = %tag.slow_check977, %choice.case959
  %cat.seg978 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg979 = load ptr, ptr %cat.seg978, align 8
  %cat.seg983 = load i64, ptr %payload.ptr965, align 8
  %cat.seg984 = and i64 %cat.seg983, 281474976710655
  %str.tag985 = lshr i64 %cat.seg983, 48
  %tag.immortal987 = icmp eq i64 %str.tag985, 0
  %active.gen988 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current989 = icmp eq i64 %str.tag985, %active.gen988
  %tag.fast.ok990 = or i1 %tag.immortal987, %tag.current989
  br i1 %tag.fast.ok990, label %str_ok986, label %tag.slow_check991

tag.slow_check977:                                ; preds = %choice.case959
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag971)
  br label %str_ok972

str_ok986:                                        ; preds = %tag.slow_check991, %str_ok972
  %cat.seg992 = getelementptr inbounds { i64, ptr }, ptr %payload.ptr965, i32 0, i32 1
  %cat.seg993 = load ptr, ptr %cat.seg992, align 8
  %cat.seg997 = load i64, ptr %concat.str, align 8
  %cat.seg998 = and i64 %cat.seg997, 281474976710655
  %str.tag999 = lshr i64 %cat.seg997, 48
  %tag.immortal1001 = icmp eq i64 %str.tag999, 0
  %active.gen1002 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1003 = icmp eq i64 %str.tag999, %active.gen1002
  %tag.fast.ok1004 = or i1 %tag.immortal1001, %tag.current1003
  br i1 %tag.fast.ok1004, label %str_ok1000, label %tag.slow_check1005

tag.slow_check991:                                ; preds = %str_ok972
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag985)
  br label %str_ok986

str_ok1000:                                       ; preds = %tag.slow_check1005, %str_ok986
  %cat.seg1007 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len1008 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg970, i64 8)
  %sum1009 = extractvalue { i64, i1 } %cat.sum.len1008, 0
  %ovf1010 = extractvalue { i64, i1 } %cat.sum.len1008, 1
  br i1 %ovf1010, label %str_overflow_abort1012, label %cat.sum.len1011

tag.slow_check1005:                               ; preds = %str_ok986
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag999)
  br label %str_ok1000

cat.sum.len1011:                                  ; preds = %str_ok1000
  %cat.sum.len1014 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1009, i64 %cat.seg984)
  %sum1015 = extractvalue { i64, i1 } %cat.sum.len1014, 0
  %ovf1016 = extractvalue { i64, i1 } %cat.sum.len1014, 1
  br i1 %ovf1016, label %str_overflow_abort1018, label %cat.sum.len1017

str_overflow_abort1012:                           ; preds = %str_ok1000
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1017:                                  ; preds = %cat.sum.len1011
  %cat.sum.len1020 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1015, i64 2)
  %sum1021 = extractvalue { i64, i1 } %cat.sum.len1020, 0
  %ovf1022 = extractvalue { i64, i1 } %cat.sum.len1020, 1
  br i1 %ovf1022, label %str_overflow_abort1024, label %cat.sum.len1023

str_overflow_abort1018:                           ; preds = %cat.sum.len1011
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1023:                                  ; preds = %cat.sum.len1017
  %cat.sum.len1026 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1021, i64 %cat.seg998)
  %sum1027 = extractvalue { i64, i1 } %cat.sum.len1026, 0
  %ovf1028 = extractvalue { i64, i1 } %cat.sum.len1026, 1
  br i1 %ovf1028, label %str_overflow_abort1030, label %cat.sum.len1029

str_overflow_abort1024:                           ; preds = %cat.sum.len1017
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1029:                                  ; preds = %cat.sum.len1023
  %concat.tot.len1032 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1027, i64 1)
  %sum1033 = extractvalue { i64, i1 } %concat.tot.len1032, 0
  %ovf1034 = extractvalue { i64, i1 } %concat.tot.len1032, 1
  br i1 %ovf1034, label %str_overflow_abort1036, label %concat.tot.len1035

str_overflow_abort1030:                           ; preds = %cat.sum.len1023
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1035:                               ; preds = %cat.sum.len1029
  %arena.cur1038 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1039 = call ptr @dva_arena_alloc(ptr %arena.cur1038, i64 %sum1033)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1039, ptr align 1 %cat.seg979, i64 %cat.seg970, i1 false)
  %cat.dst1042 = getelementptr i8, ptr %concat.buf1039, i64 %cat.seg970
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1042, ptr align 1 @str.124, i64 8, i1 false)
  %cat.off1043 = add i64 %cat.seg970, 8
  %cat.dst1044 = getelementptr i8, ptr %concat.buf1039, i64 %cat.off1043
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1044, ptr align 1 %cat.seg993, i64 %cat.seg984, i1 false)
  %cat.off1045 = add i64 %cat.off1043, %cat.seg984
  %cat.dst1046 = getelementptr i8, ptr %concat.buf1039, i64 %cat.off1045
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1046, ptr align 1 @str.5, i64 2, i1 false)
  %cat.off1047 = add i64 %cat.off1045, 2
  %cat.dst1048 = getelementptr i8, ptr %concat.buf1039, i64 %cat.off1047
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1048, ptr align 1 %cat.seg1007, i64 %cat.seg998, i1 false)
  %concat.nul1049 = getelementptr i8, ptr %concat.buf1039, i64 %sum1027
  store i8 0, ptr %concat.nul1049, align 1
  %arena.cur1050 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1051 = call ptr @dva_arena_alloc(ptr %arena.cur1050, i64 16)
  %str.tag.gen1053 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1054 = shl i64 %str.tag.gen1053, 48
  %str.tagged.len1055 = or i64 %sum1027, %str.tag.shift1054
  store i64 %str.tagged.len1055, ptr %concat.str1051, align 8
  %str.build.data.gep1056 = getelementptr inbounds { i64, ptr }, ptr %concat.str1051, i32 0, i32 1
  store ptr %concat.buf1039, ptr %str.build.data.gep1056, align 8
  br label %choice.exit

str_overflow_abort1036:                           ; preds = %cat.sum.len1029
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1057:                                  ; preds = %concat.tot.len37
  %pay.gep1062 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr1063 = load ptr, ptr %pay.gep1062, align 8
  %pay.int.null1064 = icmp eq ptr %payload.ptr1063, null
  br i1 %pay.int.null1064, label %pay.int.merge1067, label %pay.int.load1065

pay.int.load1065:                                 ; preds = %choice.case1057
  %pay.int.val1068 = load i64, ptr %payload.ptr1063, align 8
  br label %pay.int.merge1067

pay.int.merge1067:                                ; preds = %choice.case1057, %pay.int.load1065
  %pay.int.phi1069 = phi i64 [ %pay.int.val1068, %pay.int.load1065 ], [ 0, %choice.case1057 ]
  %cat.seg1074 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg1075 = and i64 %cat.seg1074, 281474976710655
  %str.tag1076 = lshr i64 %cat.seg1074, 48
  %tag.immortal1078 = icmp eq i64 %str.tag1076, 0
  %active.gen1079 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1080 = icmp eq i64 %str.tag1076, %active.gen1079
  %tag.fast.ok1081 = or i1 %tag.immortal1078, %tag.current1080
  br i1 %tag.fast.ok1081, label %str_ok1077, label %tag.slow_check1082

str_ok1077:                                       ; preds = %tag.slow_check1082, %pay.int.merge1067
  %cat.seg1083 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg1084 = load ptr, ptr %cat.seg1083, align 8
  %cat.ilen1088 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf1087, i64 %pay.int.phi1069, i1 false)
  %cat.seg1092 = load i64, ptr %concat.str, align 8
  %cat.seg1093 = and i64 %cat.seg1092, 281474976710655
  %str.tag1094 = lshr i64 %cat.seg1092, 48
  %tag.immortal1096 = icmp eq i64 %str.tag1094, 0
  %active.gen1097 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1098 = icmp eq i64 %str.tag1094, %active.gen1097
  %tag.fast.ok1099 = or i1 %tag.immortal1096, %tag.current1098
  br i1 %tag.fast.ok1099, label %str_ok1095, label %tag.slow_check1100

tag.slow_check1082:                               ; preds = %pay.int.merge1067
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1076)
  br label %str_ok1077

str_ok1095:                                       ; preds = %tag.slow_check1100, %str_ok1077
  %cat.seg1102 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len1103 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg1075, i64 8)
  %sum1104 = extractvalue { i64, i1 } %cat.sum.len1103, 0
  %ovf1105 = extractvalue { i64, i1 } %cat.sum.len1103, 1
  br i1 %ovf1105, label %str_overflow_abort1107, label %cat.sum.len1106

tag.slow_check1100:                               ; preds = %str_ok1077
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1094)
  br label %str_ok1095

cat.sum.len1106:                                  ; preds = %str_ok1095
  %cat.sum.len1109 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1104, i64 %cat.ilen1088)
  %sum1110 = extractvalue { i64, i1 } %cat.sum.len1109, 0
  %ovf1111 = extractvalue { i64, i1 } %cat.sum.len1109, 1
  br i1 %ovf1111, label %str_overflow_abort1113, label %cat.sum.len1112

str_overflow_abort1107:                           ; preds = %str_ok1095
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1112:                                  ; preds = %cat.sum.len1106
  %cat.sum.len1115 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1110, i64 1)
  %sum1116 = extractvalue { i64, i1 } %cat.sum.len1115, 0
  %ovf1117 = extractvalue { i64, i1 } %cat.sum.len1115, 1
  br i1 %ovf1117, label %str_overflow_abort1119, label %cat.sum.len1118

str_overflow_abort1113:                           ; preds = %cat.sum.len1106
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1118:                                  ; preds = %cat.sum.len1112
  %cat.sum.len1121 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1116, i64 %cat.seg1093)
  %sum1122 = extractvalue { i64, i1 } %cat.sum.len1121, 0
  %ovf1123 = extractvalue { i64, i1 } %cat.sum.len1121, 1
  br i1 %ovf1123, label %str_overflow_abort1125, label %cat.sum.len1124

str_overflow_abort1119:                           ; preds = %cat.sum.len1112
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1124:                                  ; preds = %cat.sum.len1118
  %concat.tot.len1127 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1122, i64 1)
  %sum1128 = extractvalue { i64, i1 } %concat.tot.len1127, 0
  %ovf1129 = extractvalue { i64, i1 } %concat.tot.len1127, 1
  br i1 %ovf1129, label %str_overflow_abort1131, label %concat.tot.len1130

str_overflow_abort1125:                           ; preds = %cat.sum.len1118
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1130:                               ; preds = %cat.sum.len1124
  %arena.cur1133 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1134 = call ptr @dva_arena_alloc(ptr %arena.cur1133, i64 %sum1128)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1134, ptr align 1 %cat.seg1084, i64 %cat.seg1075, i1 false)
  %cat.dst1137 = getelementptr i8, ptr %concat.buf1134, i64 %cat.seg1075
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1137, ptr align 1 @str.125, i64 8, i1 false)
  %cat.off1138 = add i64 %cat.seg1075, 8
  %cat.dst1139 = getelementptr i8, ptr %concat.buf1134, i64 %cat.off1138
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1139, ptr align 1 %cat.ibuf1087, i64 %cat.ilen1088, i1 false)
  %cat.off1140 = add i64 %cat.off1138, %cat.ilen1088
  %cat.dst1141 = getelementptr i8, ptr %concat.buf1134, i64 %cat.off1140
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1141, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off1142 = add i64 %cat.off1140, 1
  %cat.dst1143 = getelementptr i8, ptr %concat.buf1134, i64 %cat.off1142
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1143, ptr align 1 %cat.seg1102, i64 %cat.seg1093, i1 false)
  %concat.nul1144 = getelementptr i8, ptr %concat.buf1134, i64 %sum1122
  store i8 0, ptr %concat.nul1144, align 1
  %arena.cur1145 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1146 = call ptr @dva_arena_alloc(ptr %arena.cur1145, i64 16)
  %str.tag.gen1148 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1149 = shl i64 %str.tag.gen1148, 48
  %str.tagged.len1150 = or i64 %sum1122, %str.tag.shift1149
  store i64 %str.tagged.len1150, ptr %concat.str1146, align 8
  %str.build.data.gep1151 = getelementptr inbounds { i64, ptr }, ptr %concat.str1146, i32 0, i32 1
  store ptr %concat.buf1134, ptr %str.build.data.gep1151, align 8
  br label %choice.exit

str_overflow_abort1131:                           ; preds = %cat.sum.len1124
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1152:                                  ; preds = %concat.tot.len37
  %pay.gep1157 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr1158 = load ptr, ptr %pay.gep1157, align 8
  %pay.int.null1159 = icmp eq ptr %payload.ptr1158, null
  br i1 %pay.int.null1159, label %pay.int.merge1162, label %pay.int.load1160

pay.int.load1160:                                 ; preds = %choice.case1152
  %pay.int.val1163 = load i1, ptr %payload.ptr1158, align 1
  br label %pay.int.merge1162

pay.int.merge1162:                                ; preds = %choice.case1152, %pay.int.load1160
  %pay.int.phi1164 = phi i1 [ %pay.int.val1163, %pay.int.load1160 ], [ false, %choice.case1152 ]
  %cat.seg1168 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg1169 = and i64 %cat.seg1168, 281474976710655
  %str.tag1170 = lshr i64 %cat.seg1168, 48
  %tag.immortal1172 = icmp eq i64 %str.tag1170, 0
  %active.gen1173 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1174 = icmp eq i64 %str.tag1170, %active.gen1173
  %tag.fast.ok1175 = or i1 %tag.immortal1172, %tag.current1174
  br i1 %tag.fast.ok1175, label %str_ok1171, label %tag.slow_check1176

str_ok1171:                                       ; preds = %tag.slow_check1176, %pay.int.merge1162
  %cat.seg1177 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg1178 = load ptr, ptr %cat.seg1177, align 8
  %str.127.struct.str.128.struct = select i1 %pay.int.phi1164, ptr @str.127.struct, ptr @str.128.struct
  %cat.seg1183 = load i64, ptr %str.127.struct.str.128.struct, align 8
  %cat.seg1184 = and i64 %cat.seg1183, 281474976710655
  %str.tag1185 = lshr i64 %cat.seg1183, 48
  %tag.immortal1187 = icmp eq i64 %str.tag1185, 0
  %active.gen1188 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1189 = icmp eq i64 %str.tag1185, %active.gen1188
  %tag.fast.ok1190 = or i1 %tag.immortal1187, %tag.current1189
  br i1 %tag.fast.ok1190, label %str_ok1186, label %tag.slow_check1191

tag.slow_check1176:                               ; preds = %pay.int.merge1162
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1170)
  br label %str_ok1171

str_ok1186:                                       ; preds = %tag.slow_check1191, %str_ok1171
  %cat.seg1192 = getelementptr inbounds { i64, ptr }, ptr %str.127.struct.str.128.struct, i32 0, i32 1
  %cat.seg1193 = load ptr, ptr %cat.seg1192, align 8
  %cat.seg1197 = load i64, ptr %concat.str, align 8
  %cat.seg1198 = and i64 %cat.seg1197, 281474976710655
  %str.tag1199 = lshr i64 %cat.seg1197, 48
  %tag.immortal1201 = icmp eq i64 %str.tag1199, 0
  %active.gen1202 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1203 = icmp eq i64 %str.tag1199, %active.gen1202
  %tag.fast.ok1204 = or i1 %tag.immortal1201, %tag.current1203
  br i1 %tag.fast.ok1204, label %str_ok1200, label %tag.slow_check1205

tag.slow_check1191:                               ; preds = %str_ok1171
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1185)
  br label %str_ok1186

str_ok1200:                                       ; preds = %tag.slow_check1205, %str_ok1186
  %cat.seg1207 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len1208 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg1169, i64 8)
  %sum1209 = extractvalue { i64, i1 } %cat.sum.len1208, 0
  %ovf1210 = extractvalue { i64, i1 } %cat.sum.len1208, 1
  br i1 %ovf1210, label %str_overflow_abort1212, label %cat.sum.len1211

tag.slow_check1205:                               ; preds = %str_ok1186
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1199)
  br label %str_ok1200

cat.sum.len1211:                                  ; preds = %str_ok1200
  %cat.sum.len1214 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1209, i64 %cat.seg1184)
  %sum1215 = extractvalue { i64, i1 } %cat.sum.len1214, 0
  %ovf1216 = extractvalue { i64, i1 } %cat.sum.len1214, 1
  br i1 %ovf1216, label %str_overflow_abort1218, label %cat.sum.len1217

str_overflow_abort1212:                           ; preds = %str_ok1200
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1217:                                  ; preds = %cat.sum.len1211
  %cat.sum.len1220 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1215, i64 1)
  %sum1221 = extractvalue { i64, i1 } %cat.sum.len1220, 0
  %ovf1222 = extractvalue { i64, i1 } %cat.sum.len1220, 1
  br i1 %ovf1222, label %str_overflow_abort1224, label %cat.sum.len1223

str_overflow_abort1218:                           ; preds = %cat.sum.len1211
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1223:                                  ; preds = %cat.sum.len1217
  %cat.sum.len1226 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1221, i64 %cat.seg1198)
  %sum1227 = extractvalue { i64, i1 } %cat.sum.len1226, 0
  %ovf1228 = extractvalue { i64, i1 } %cat.sum.len1226, 1
  br i1 %ovf1228, label %str_overflow_abort1230, label %cat.sum.len1229

str_overflow_abort1224:                           ; preds = %cat.sum.len1217
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1229:                                  ; preds = %cat.sum.len1223
  %concat.tot.len1232 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1227, i64 1)
  %sum1233 = extractvalue { i64, i1 } %concat.tot.len1232, 0
  %ovf1234 = extractvalue { i64, i1 } %concat.tot.len1232, 1
  br i1 %ovf1234, label %str_overflow_abort1236, label %concat.tot.len1235

str_overflow_abort1230:                           ; preds = %cat.sum.len1223
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1235:                               ; preds = %cat.sum.len1229
  %arena.cur1238 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1239 = call ptr @dva_arena_alloc(ptr %arena.cur1238, i64 %sum1233)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1239, ptr align 1 %cat.seg1178, i64 %cat.seg1169, i1 false)
  %cat.dst1242 = getelementptr i8, ptr %concat.buf1239, i64 %cat.seg1169
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1242, ptr align 1 @str.126, i64 8, i1 false)
  %cat.off1243 = add i64 %cat.seg1169, 8
  %cat.dst1244 = getelementptr i8, ptr %concat.buf1239, i64 %cat.off1243
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1244, ptr align 1 %cat.seg1193, i64 %cat.seg1184, i1 false)
  %cat.off1245 = add i64 %cat.off1243, %cat.seg1184
  %cat.dst1246 = getelementptr i8, ptr %concat.buf1239, i64 %cat.off1245
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1246, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off1247 = add i64 %cat.off1245, 1
  %cat.dst1248 = getelementptr i8, ptr %concat.buf1239, i64 %cat.off1247
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1248, ptr align 1 %cat.seg1207, i64 %cat.seg1198, i1 false)
  %concat.nul1249 = getelementptr i8, ptr %concat.buf1239, i64 %sum1227
  store i8 0, ptr %concat.nul1249, align 1
  %arena.cur1250 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1251 = call ptr @dva_arena_alloc(ptr %arena.cur1250, i64 16)
  %str.tag.gen1253 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1254 = shl i64 %str.tag.gen1253, 48
  %str.tagged.len1255 = or i64 %sum1227, %str.tag.shift1254
  store i64 %str.tagged.len1255, ptr %concat.str1251, align 8
  %str.build.data.gep1256 = getelementptr inbounds { i64, ptr }, ptr %concat.str1251, i32 0, i32 1
  store ptr %concat.buf1239, ptr %str.build.data.gep1256, align 8
  br label %choice.exit

str_overflow_abort1236:                           ; preds = %cat.sum.len1229
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1257:                                  ; preds = %concat.tot.len37
  %cat.seg1264 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg1265 = and i64 %cat.seg1264, 281474976710655
  %str.tag1266 = lshr i64 %cat.seg1264, 48
  %tag.immortal1268 = icmp eq i64 %str.tag1266, 0
  %active.gen1269 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1270 = icmp eq i64 %str.tag1266, %active.gen1269
  %tag.fast.ok1271 = or i1 %tag.immortal1268, %tag.current1270
  br i1 %tag.fast.ok1271, label %str_ok1267, label %tag.slow_check1272

str_ok1267:                                       ; preds = %tag.slow_check1272, %choice.case1257
  %cat.seg1273 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg1274 = load ptr, ptr %cat.seg1273, align 8
  %cat.seg1278 = load i64, ptr %concat.str, align 8
  %cat.seg1279 = and i64 %cat.seg1278, 281474976710655
  %str.tag1280 = lshr i64 %cat.seg1278, 48
  %tag.immortal1282 = icmp eq i64 %str.tag1280, 0
  %active.gen1283 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1284 = icmp eq i64 %str.tag1280, %active.gen1283
  %tag.fast.ok1285 = or i1 %tag.immortal1282, %tag.current1284
  br i1 %tag.fast.ok1285, label %str_ok1281, label %tag.slow_check1286

tag.slow_check1272:                               ; preds = %choice.case1257
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1266)
  br label %str_ok1267

str_ok1281:                                       ; preds = %tag.slow_check1286, %str_ok1267
  %cat.seg1288 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len1289 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg1265, i64 7)
  %sum1290 = extractvalue { i64, i1 } %cat.sum.len1289, 0
  %ovf1291 = extractvalue { i64, i1 } %cat.sum.len1289, 1
  br i1 %ovf1291, label %str_overflow_abort1293, label %cat.sum.len1292

tag.slow_check1286:                               ; preds = %str_ok1267
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1280)
  br label %str_ok1281

cat.sum.len1292:                                  ; preds = %str_ok1281
  %cat.sum.len1295 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1290, i64 %cat.seg1279)
  %sum1296 = extractvalue { i64, i1 } %cat.sum.len1295, 0
  %ovf1297 = extractvalue { i64, i1 } %cat.sum.len1295, 1
  br i1 %ovf1297, label %str_overflow_abort1299, label %cat.sum.len1298

str_overflow_abort1293:                           ; preds = %str_ok1281
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1298:                                  ; preds = %cat.sum.len1292
  %concat.tot.len1301 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1296, i64 1)
  %sum1302 = extractvalue { i64, i1 } %concat.tot.len1301, 0
  %ovf1303 = extractvalue { i64, i1 } %concat.tot.len1301, 1
  br i1 %ovf1303, label %str_overflow_abort1305, label %concat.tot.len1304

str_overflow_abort1299:                           ; preds = %cat.sum.len1292
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1304:                               ; preds = %cat.sum.len1298
  %arena.cur1307 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1308 = call ptr @dva_arena_alloc(ptr %arena.cur1307, i64 %sum1302)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1308, ptr align 1 %cat.seg1274, i64 %cat.seg1265, i1 false)
  %cat.dst1311 = getelementptr i8, ptr %concat.buf1308, i64 %cat.seg1265
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1311, ptr align 1 @str.129, i64 7, i1 false)
  %cat.off1312 = add i64 %cat.seg1265, 7
  %cat.dst1313 = getelementptr i8, ptr %concat.buf1308, i64 %cat.off1312
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1313, ptr align 1 %cat.seg1288, i64 %cat.seg1279, i1 false)
  %concat.nul1314 = getelementptr i8, ptr %concat.buf1308, i64 %sum1296
  store i8 0, ptr %concat.nul1314, align 1
  %arena.cur1315 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1316 = call ptr @dva_arena_alloc(ptr %arena.cur1315, i64 16)
  %str.tag.gen1318 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1319 = shl i64 %str.tag.gen1318, 48
  %str.tagged.len1320 = or i64 %sum1296, %str.tag.shift1319
  store i64 %str.tagged.len1320, ptr %concat.str1316, align 8
  %str.build.data.gep1321 = getelementptr inbounds { i64, ptr }, ptr %concat.str1316, i32 0, i32 1
  store ptr %concat.buf1308, ptr %str.build.data.gep1321, align 8
  br label %choice.exit

str_overflow_abort1305:                           ; preds = %cat.sum.len1298
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1322:                                  ; preds = %concat.tot.len37
  %pay.gep1327 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr1328 = load ptr, ptr %pay.gep1327, align 8
  %fld.load1333 = load ptr, ptr %payload.ptr1328, align 8
  %eq.lhs.len1334 = load i64, ptr %fld.load1333, align 8
  %eq.lhs.len1335 = and i64 %eq.lhs.len1334, 281474976710655
  %str.tag1336 = lshr i64 %eq.lhs.len1334, 48
  %tag.immortal1338 = icmp eq i64 %str.tag1336, 0
  %active.gen1339 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1340 = icmp eq i64 %str.tag1336, %active.gen1339
  %tag.fast.ok1341 = or i1 %tag.immortal1338, %tag.current1340
  br i1 %tag.fast.ok1341, label %str_ok1337, label %tag.slow_check1342

str_ok1337:                                       ; preds = %tag.slow_check1342, %choice.case1322
  %eq.len = icmp eq i64 %eq.lhs.len1335, 0
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

tag.slow_check1342:                               ; preds = %choice.case1322
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1336)
  br label %str_ok1337

str.eq.then:                                      ; preds = %str_ok1337
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load1333, i32 0, i32 1
  %eq.lhs.data1344 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data1344, ptr @str.49, i64 %eq.lhs.len1335)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str_ok1337, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str_ok1337 ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then1345, label %choice.else1346

choice.then1345:                                  ; preds = %str.eq.merge
  %fld.load1350 = load ptr, ptr %payload.ptr1328, align 8
  br label %choice.exit1347

choice.else1346:                                  ; preds = %str.eq.merge
  %fld.gep1353 = getelementptr inbounds { ptr, ptr, ptr }, ptr %payload.ptr1328, i32 0, i32 1
  %fld.load1354 = load ptr, ptr %fld.gep1353, align 8
  %call.res1355 = call { i64, ptr } @"show::show_typed_target"(ptr %0, ptr %fld.load1354)
  %arena.cur1356 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1357 = call ptr @dva_arena_alloc(ptr %arena.cur1356, i64 16)
  store { i64, ptr } %call.res1355, ptr %ret.ub.alloc1357, align 8
  br label %choice.exit1347

choice.exit1347:                                  ; preds = %choice.else1346, %choice.then1345
  %choice.res1358 = phi ptr [ %fld.load1350, %choice.then1345 ], [ %ret.ub.alloc1357, %choice.else1346 ]
  %fld.gep1360 = getelementptr inbounds { ptr, ptr, ptr }, ptr %payload.ptr1328, i32 0, i32 2
  %fld.load1361 = load ptr, ptr %fld.gep1360, align 8
  %a.len.query1362 = load i64, ptr %fld.load1361, align 8
  %cmptmp = icmp eq i64 %a.len.query1362, 0
  br i1 %cmptmp, label %choice.then1363, label %choice.else1364

choice.then1363:                                  ; preds = %choice.exit1347
  %cat.seg1368 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg1369 = and i64 %cat.seg1368, 281474976710655
  %str.tag1370 = lshr i64 %cat.seg1368, 48
  %tag.immortal1372 = icmp eq i64 %str.tag1370, 0
  %active.gen1373 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1374 = icmp eq i64 %str.tag1370, %active.gen1373
  %tag.fast.ok1375 = or i1 %tag.immortal1372, %tag.current1374
  br i1 %tag.fast.ok1375, label %str_ok1371, label %tag.slow_check1376

choice.else1364:                                  ; preds = %choice.exit1347
  %cat.seg1458 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg1459 = and i64 %cat.seg1458, 281474976710655
  %str.tag1460 = lshr i64 %cat.seg1458, 48
  %tag.immortal1462 = icmp eq i64 %str.tag1460, 0
  %active.gen1463 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1464 = icmp eq i64 %str.tag1460, %active.gen1463
  %tag.fast.ok1465 = or i1 %tag.immortal1462, %tag.current1464
  br i1 %tag.fast.ok1465, label %str_ok1461, label %tag.slow_check1466

str_ok1371:                                       ; preds = %tag.slow_check1376, %choice.then1363
  %cat.seg1377 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg1378 = load ptr, ptr %cat.seg1377, align 8
  %cat.seg1382 = load i64, ptr %choice.res1358, align 8
  %cat.seg1383 = and i64 %cat.seg1382, 281474976710655
  %str.tag1384 = lshr i64 %cat.seg1382, 48
  %tag.immortal1386 = icmp eq i64 %str.tag1384, 0
  %active.gen1387 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1388 = icmp eq i64 %str.tag1384, %active.gen1387
  %tag.fast.ok1389 = or i1 %tag.immortal1386, %tag.current1388
  br i1 %tag.fast.ok1389, label %str_ok1385, label %tag.slow_check1390

tag.slow_check1376:                               ; preds = %choice.then1363
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1370)
  br label %str_ok1371

str_ok1385:                                       ; preds = %tag.slow_check1390, %str_ok1371
  %cat.seg1391 = getelementptr inbounds { i64, ptr }, ptr %choice.res1358, i32 0, i32 1
  %cat.seg1392 = load ptr, ptr %cat.seg1391, align 8
  %cat.seg1396 = load i64, ptr %concat.str, align 8
  %cat.seg1397 = and i64 %cat.seg1396, 281474976710655
  %str.tag1398 = lshr i64 %cat.seg1396, 48
  %tag.immortal1400 = icmp eq i64 %str.tag1398, 0
  %active.gen1401 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1402 = icmp eq i64 %str.tag1398, %active.gen1401
  %tag.fast.ok1403 = or i1 %tag.immortal1400, %tag.current1402
  br i1 %tag.fast.ok1403, label %str_ok1399, label %tag.slow_check1404

tag.slow_check1390:                               ; preds = %str_ok1371
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1384)
  br label %str_ok1385

str_ok1399:                                       ; preds = %tag.slow_check1404, %str_ok1385
  %cat.seg1406 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len1407 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg1369, i64 5)
  %sum1408 = extractvalue { i64, i1 } %cat.sum.len1407, 0
  %ovf1409 = extractvalue { i64, i1 } %cat.sum.len1407, 1
  br i1 %ovf1409, label %str_overflow_abort1411, label %cat.sum.len1410

tag.slow_check1404:                               ; preds = %str_ok1385
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1398)
  br label %str_ok1399

cat.sum.len1410:                                  ; preds = %str_ok1399
  %cat.sum.len1413 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1408, i64 %cat.seg1383)
  %sum1414 = extractvalue { i64, i1 } %cat.sum.len1413, 0
  %ovf1415 = extractvalue { i64, i1 } %cat.sum.len1413, 1
  br i1 %ovf1415, label %str_overflow_abort1417, label %cat.sum.len1416

str_overflow_abort1411:                           ; preds = %str_ok1399
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1416:                                  ; preds = %cat.sum.len1410
  %cat.sum.len1419 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1414, i64 1)
  %sum1420 = extractvalue { i64, i1 } %cat.sum.len1419, 0
  %ovf1421 = extractvalue { i64, i1 } %cat.sum.len1419, 1
  br i1 %ovf1421, label %str_overflow_abort1423, label %cat.sum.len1422

str_overflow_abort1417:                           ; preds = %cat.sum.len1410
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1422:                                  ; preds = %cat.sum.len1416
  %cat.sum.len1425 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1420, i64 %cat.seg1397)
  %sum1426 = extractvalue { i64, i1 } %cat.sum.len1425, 0
  %ovf1427 = extractvalue { i64, i1 } %cat.sum.len1425, 1
  br i1 %ovf1427, label %str_overflow_abort1429, label %cat.sum.len1428

str_overflow_abort1423:                           ; preds = %cat.sum.len1416
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1428:                                  ; preds = %cat.sum.len1422
  %concat.tot.len1431 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1426, i64 1)
  %sum1432 = extractvalue { i64, i1 } %concat.tot.len1431, 0
  %ovf1433 = extractvalue { i64, i1 } %concat.tot.len1431, 1
  br i1 %ovf1433, label %str_overflow_abort1435, label %concat.tot.len1434

str_overflow_abort1429:                           ; preds = %cat.sum.len1422
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1434:                               ; preds = %cat.sum.len1428
  %arena.cur1437 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1438 = call ptr @dva_arena_alloc(ptr %arena.cur1437, i64 %sum1432)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1438, ptr align 1 %cat.seg1378, i64 %cat.seg1369, i1 false)
  %cat.dst1441 = getelementptr i8, ptr %concat.buf1438, i64 %cat.seg1369
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1441, ptr align 1 @str.71, i64 5, i1 false)
  %cat.off1442 = add i64 %cat.seg1369, 5
  %cat.dst1443 = getelementptr i8, ptr %concat.buf1438, i64 %cat.off1442
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1443, ptr align 1 %cat.seg1392, i64 %cat.seg1383, i1 false)
  %cat.off1444 = add i64 %cat.off1442, %cat.seg1383
  %cat.dst1445 = getelementptr i8, ptr %concat.buf1438, i64 %cat.off1444
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1445, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off1446 = add i64 %cat.off1444, 1
  %cat.dst1447 = getelementptr i8, ptr %concat.buf1438, i64 %cat.off1446
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1447, ptr align 1 %cat.seg1406, i64 %cat.seg1397, i1 false)
  %concat.nul1448 = getelementptr i8, ptr %concat.buf1438, i64 %sum1426
  store i8 0, ptr %concat.nul1448, align 1
  %arena.cur1449 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1450 = call ptr @dva_arena_alloc(ptr %arena.cur1449, i64 16)
  %str.tag.gen1452 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1453 = shl i64 %str.tag.gen1452, 48
  %str.tagged.len1454 = or i64 %sum1426, %str.tag.shift1453
  store i64 %str.tagged.len1454, ptr %concat.str1450, align 8
  %str.build.data.gep1455 = getelementptr inbounds { i64, ptr }, ptr %concat.str1450, i32 0, i32 1
  store ptr %concat.buf1438, ptr %str.build.data.gep1455, align 8
  br label %choice.exit

str_overflow_abort1435:                           ; preds = %cat.sum.len1428
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok1461:                                       ; preds = %tag.slow_check1466, %choice.else1364
  %cat.seg1467 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg1468 = load ptr, ptr %cat.seg1467, align 8
  %cat.seg1472 = load i64, ptr %choice.res1358, align 8
  %cat.seg1473 = and i64 %cat.seg1472, 281474976710655
  %str.tag1474 = lshr i64 %cat.seg1472, 48
  %tag.immortal1476 = icmp eq i64 %str.tag1474, 0
  %active.gen1477 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1478 = icmp eq i64 %str.tag1474, %active.gen1477
  %tag.fast.ok1479 = or i1 %tag.immortal1476, %tag.current1478
  br i1 %tag.fast.ok1479, label %str_ok1475, label %tag.slow_check1480

tag.slow_check1466:                               ; preds = %choice.else1364
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1460)
  br label %str_ok1461

str_ok1475:                                       ; preds = %tag.slow_check1480, %str_ok1461
  %cat.seg1481 = getelementptr inbounds { i64, ptr }, ptr %choice.res1358, i32 0, i32 1
  %cat.seg1482 = load ptr, ptr %cat.seg1481, align 8
  %cat.seg1486 = load i64, ptr %concat.str, align 8
  %cat.seg1487 = and i64 %cat.seg1486, 281474976710655
  %str.tag1488 = lshr i64 %cat.seg1486, 48
  %tag.immortal1490 = icmp eq i64 %str.tag1488, 0
  %active.gen1491 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1492 = icmp eq i64 %str.tag1488, %active.gen1491
  %tag.fast.ok1493 = or i1 %tag.immortal1490, %tag.current1492
  br i1 %tag.fast.ok1493, label %str_ok1489, label %tag.slow_check1494

tag.slow_check1480:                               ; preds = %str_ok1461
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1474)
  br label %str_ok1475

str_ok1489:                                       ; preds = %tag.slow_check1494, %str_ok1475
  %cat.seg1496 = load ptr, ptr %str.build.data.gep, align 8
  %fld.load1501 = load ptr, ptr %fld.gep1360, align 8
  %addtmp1503 = add i64 %2, 1
  %call.res1504 = call { i64, ptr } @"show::show_typed_tree_exprs"(ptr %0, ptr %fld.load1501, i64 %addtmp1503)
  %arena.cur1505 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1506 = call ptr @dva_arena_alloc(ptr %arena.cur1505, i64 16)
  store { i64, ptr } %call.res1504, ptr %ret.ub.alloc1506, align 8
  %cat.seg1508 = load i64, ptr %ret.ub.alloc1506, align 8
  %cat.seg1509 = and i64 %cat.seg1508, 281474976710655
  %str.tag1510 = lshr i64 %cat.seg1508, 48
  %tag.immortal1512 = icmp eq i64 %str.tag1510, 0
  %active.gen1513 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1514 = icmp eq i64 %str.tag1510, %active.gen1513
  %tag.fast.ok1515 = or i1 %tag.immortal1512, %tag.current1514
  br i1 %tag.fast.ok1515, label %str_ok1511, label %tag.slow_check1516

tag.slow_check1494:                               ; preds = %str_ok1475
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1488)
  br label %str_ok1489

str_ok1511:                                       ; preds = %tag.slow_check1516, %str_ok1489
  %cat.seg1517 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1506, i32 0, i32 1
  %cat.seg1518 = load ptr, ptr %cat.seg1517, align 8
  %cat.sum.len1519 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg1459, i64 5)
  %sum1520 = extractvalue { i64, i1 } %cat.sum.len1519, 0
  %ovf1521 = extractvalue { i64, i1 } %cat.sum.len1519, 1
  br i1 %ovf1521, label %str_overflow_abort1523, label %cat.sum.len1522

tag.slow_check1516:                               ; preds = %str_ok1489
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1510)
  br label %str_ok1511

cat.sum.len1522:                                  ; preds = %str_ok1511
  %cat.sum.len1525 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1520, i64 %cat.seg1473)
  %sum1526 = extractvalue { i64, i1 } %cat.sum.len1525, 0
  %ovf1527 = extractvalue { i64, i1 } %cat.sum.len1525, 1
  br i1 %ovf1527, label %str_overflow_abort1529, label %cat.sum.len1528

str_overflow_abort1523:                           ; preds = %str_ok1511
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1528:                                  ; preds = %cat.sum.len1522
  %cat.sum.len1531 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1526, i64 1)
  %sum1532 = extractvalue { i64, i1 } %cat.sum.len1531, 0
  %ovf1533 = extractvalue { i64, i1 } %cat.sum.len1531, 1
  br i1 %ovf1533, label %str_overflow_abort1535, label %cat.sum.len1534

str_overflow_abort1529:                           ; preds = %cat.sum.len1522
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1534:                                  ; preds = %cat.sum.len1528
  %cat.sum.len1537 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1532, i64 %cat.seg1487)
  %sum1538 = extractvalue { i64, i1 } %cat.sum.len1537, 0
  %ovf1539 = extractvalue { i64, i1 } %cat.sum.len1537, 1
  br i1 %ovf1539, label %str_overflow_abort1541, label %cat.sum.len1540

str_overflow_abort1535:                           ; preds = %cat.sum.len1528
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1540:                                  ; preds = %cat.sum.len1534
  %cat.sum.len1543 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1538, i64 1)
  %sum1544 = extractvalue { i64, i1 } %cat.sum.len1543, 0
  %ovf1545 = extractvalue { i64, i1 } %cat.sum.len1543, 1
  br i1 %ovf1545, label %str_overflow_abort1547, label %cat.sum.len1546

str_overflow_abort1541:                           ; preds = %cat.sum.len1534
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1546:                                  ; preds = %cat.sum.len1540
  %cat.sum.len1549 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1544, i64 %cat.seg1509)
  %sum1550 = extractvalue { i64, i1 } %cat.sum.len1549, 0
  %ovf1551 = extractvalue { i64, i1 } %cat.sum.len1549, 1
  br i1 %ovf1551, label %str_overflow_abort1553, label %cat.sum.len1552

str_overflow_abort1547:                           ; preds = %cat.sum.len1540
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1552:                                  ; preds = %cat.sum.len1546
  %concat.tot.len1555 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1550, i64 1)
  %sum1556 = extractvalue { i64, i1 } %concat.tot.len1555, 0
  %ovf1557 = extractvalue { i64, i1 } %concat.tot.len1555, 1
  br i1 %ovf1557, label %str_overflow_abort1559, label %concat.tot.len1558

str_overflow_abort1553:                           ; preds = %cat.sum.len1546
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1558:                               ; preds = %cat.sum.len1552
  %arena.cur1561 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1562 = call ptr @dva_arena_alloc(ptr %arena.cur1561, i64 %sum1556)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1562, ptr align 1 %cat.seg1468, i64 %cat.seg1459, i1 false)
  %cat.dst1565 = getelementptr i8, ptr %concat.buf1562, i64 %cat.seg1459
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1565, ptr align 1 @str.71, i64 5, i1 false)
  %cat.off1566 = add i64 %cat.seg1459, 5
  %cat.dst1567 = getelementptr i8, ptr %concat.buf1562, i64 %cat.off1566
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1567, ptr align 1 %cat.seg1482, i64 %cat.seg1473, i1 false)
  %cat.off1568 = add i64 %cat.off1566, %cat.seg1473
  %cat.dst1569 = getelementptr i8, ptr %concat.buf1562, i64 %cat.off1568
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1569, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off1570 = add i64 %cat.off1568, 1
  %cat.dst1571 = getelementptr i8, ptr %concat.buf1562, i64 %cat.off1570
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1571, ptr align 1 %cat.seg1496, i64 %cat.seg1487, i1 false)
  %cat.off1572 = add i64 %cat.off1570, %cat.seg1487
  %cat.dst1573 = getelementptr i8, ptr %concat.buf1562, i64 %cat.off1572
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1573, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off1574 = add i64 %cat.off1572, 1
  %cat.dst1575 = getelementptr i8, ptr %concat.buf1562, i64 %cat.off1574
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1575, ptr align 1 %cat.seg1518, i64 %cat.seg1509, i1 false)
  %concat.nul1576 = getelementptr i8, ptr %concat.buf1562, i64 %sum1550
  store i8 0, ptr %concat.nul1576, align 1
  %arena.cur1577 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1578 = call ptr @dva_arena_alloc(ptr %arena.cur1577, i64 16)
  %str.tag.gen1580 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1581 = shl i64 %str.tag.gen1580, 48
  %str.tagged.len1582 = or i64 %sum1550, %str.tag.shift1581
  store i64 %str.tagged.len1582, ptr %concat.str1578, align 8
  %str.build.data.gep1583 = getelementptr inbounds { i64, ptr }, ptr %concat.str1578, i32 0, i32 1
  store ptr %concat.buf1562, ptr %str.build.data.gep1583, align 8
  br label %choice.exit

str_overflow_abort1559:                           ; preds = %cat.sum.len1552
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1585:                                  ; preds = %concat.tot.len37
  %pay.gep1590 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr1591 = load ptr, ptr %pay.gep1590, align 8
  %cat.seg1595 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg1596 = and i64 %cat.seg1595, 281474976710655
  %str.tag1597 = lshr i64 %cat.seg1595, 48
  %tag.immortal1599 = icmp eq i64 %str.tag1597, 0
  %active.gen1600 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1601 = icmp eq i64 %str.tag1597, %active.gen1600
  %tag.fast.ok1602 = or i1 %tag.immortal1599, %tag.current1601
  br i1 %tag.fast.ok1602, label %str_ok1598, label %tag.slow_check1603

str_ok1598:                                       ; preds = %tag.slow_check1603, %choice.case1585
  %cat.seg1604 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg1605 = load ptr, ptr %cat.seg1604, align 8
  %cat.seg1609 = load i64, ptr %concat.str, align 8
  %cat.seg1610 = and i64 %cat.seg1609, 281474976710655
  %str.tag1611 = lshr i64 %cat.seg1609, 48
  %tag.immortal1613 = icmp eq i64 %str.tag1611, 0
  %active.gen1614 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1615 = icmp eq i64 %str.tag1611, %active.gen1614
  %tag.fast.ok1616 = or i1 %tag.immortal1613, %tag.current1615
  br i1 %tag.fast.ok1616, label %str_ok1612, label %tag.slow_check1617

tag.slow_check1603:                               ; preds = %choice.case1585
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1597)
  br label %str_ok1598

str_ok1612:                                       ; preds = %tag.slow_check1617, %str_ok1598
  %cat.seg1619 = load ptr, ptr %str.build.data.gep, align 8
  %a.null = icmp eq ptr %payload.ptr1591, null
  br i1 %a.null, label %a.create, label %a.after

tag.slow_check1617:                               ; preds = %str_ok1598
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1611)
  br label %str_ok1612

a.create:                                         ; preds = %str_ok1612
  %arena.cur1623 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1624 = call ptr @dva_arena_alloc(ptr %arena.cur1623, i64 24)
  %arena.cur1625 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1625, i64 128)
  store i64 0, ptr %a.create1624, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1624, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1624, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %str_ok1612
  %var.es.0 = phi ptr [ %a.create1624, %a.create ], [ %payload.ptr1591, %str_ok1612 ]
  %addtmp1627 = add i64 %2, 1
  %call.res1628 = call { i64, ptr } @"show::show_typed_tree_exprs"(ptr %0, ptr %var.es.0, i64 %addtmp1627)
  %arena.cur1629 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1630 = call ptr @dva_arena_alloc(ptr %arena.cur1629, i64 16)
  store { i64, ptr } %call.res1628, ptr %ret.ub.alloc1630, align 8
  %cat.seg1632 = load i64, ptr %ret.ub.alloc1630, align 8
  %cat.seg1633 = and i64 %cat.seg1632, 281474976710655
  %str.tag1634 = lshr i64 %cat.seg1632, 48
  %tag.immortal1636 = icmp eq i64 %str.tag1634, 0
  %active.gen1637 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1638 = icmp eq i64 %str.tag1634, %active.gen1637
  %tag.fast.ok1639 = or i1 %tag.immortal1636, %tag.current1638
  br i1 %tag.fast.ok1639, label %str_ok1635, label %tag.slow_check1640

str_ok1635:                                       ; preds = %tag.slow_check1640, %a.after
  %cat.seg1641 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1630, i32 0, i32 1
  %cat.seg1642 = load ptr, ptr %cat.seg1641, align 8
  %cat.sum.len1643 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg1596, i64 5)
  %sum1644 = extractvalue { i64, i1 } %cat.sum.len1643, 0
  %ovf1645 = extractvalue { i64, i1 } %cat.sum.len1643, 1
  br i1 %ovf1645, label %str_overflow_abort1647, label %cat.sum.len1646

tag.slow_check1640:                               ; preds = %a.after
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1634)
  br label %str_ok1635

cat.sum.len1646:                                  ; preds = %str_ok1635
  %cat.sum.len1649 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1644, i64 %cat.seg1610)
  %sum1650 = extractvalue { i64, i1 } %cat.sum.len1649, 0
  %ovf1651 = extractvalue { i64, i1 } %cat.sum.len1649, 1
  br i1 %ovf1651, label %str_overflow_abort1653, label %cat.sum.len1652

str_overflow_abort1647:                           ; preds = %str_ok1635
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1652:                                  ; preds = %cat.sum.len1646
  %cat.sum.len1655 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1650, i64 1)
  %sum1656 = extractvalue { i64, i1 } %cat.sum.len1655, 0
  %ovf1657 = extractvalue { i64, i1 } %cat.sum.len1655, 1
  br i1 %ovf1657, label %str_overflow_abort1659, label %cat.sum.len1658

str_overflow_abort1653:                           ; preds = %cat.sum.len1646
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1658:                                  ; preds = %cat.sum.len1652
  %cat.sum.len1661 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1656, i64 %cat.seg1633)
  %sum1662 = extractvalue { i64, i1 } %cat.sum.len1661, 0
  %ovf1663 = extractvalue { i64, i1 } %cat.sum.len1661, 1
  br i1 %ovf1663, label %str_overflow_abort1665, label %cat.sum.len1664

str_overflow_abort1659:                           ; preds = %cat.sum.len1652
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1664:                                  ; preds = %cat.sum.len1658
  %concat.tot.len1667 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1662, i64 1)
  %sum1668 = extractvalue { i64, i1 } %concat.tot.len1667, 0
  %ovf1669 = extractvalue { i64, i1 } %concat.tot.len1667, 1
  br i1 %ovf1669, label %str_overflow_abort1671, label %concat.tot.len1670

str_overflow_abort1665:                           ; preds = %cat.sum.len1658
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1670:                               ; preds = %cat.sum.len1664
  %arena.cur1673 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1674 = call ptr @dva_arena_alloc(ptr %arena.cur1673, i64 %sum1668)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1674, ptr align 1 %cat.seg1605, i64 %cat.seg1596, i1 false)
  %cat.dst1677 = getelementptr i8, ptr %concat.buf1674, i64 %cat.seg1596
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1677, ptr align 1 @str.149, i64 5, i1 false)
  %cat.off1678 = add i64 %cat.seg1596, 5
  %cat.dst1679 = getelementptr i8, ptr %concat.buf1674, i64 %cat.off1678
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1679, ptr align 1 %cat.seg1619, i64 %cat.seg1610, i1 false)
  %cat.off1680 = add i64 %cat.off1678, %cat.seg1610
  %cat.dst1681 = getelementptr i8, ptr %concat.buf1674, i64 %cat.off1680
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1681, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off1682 = add i64 %cat.off1680, 1
  %cat.dst1683 = getelementptr i8, ptr %concat.buf1674, i64 %cat.off1682
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1683, ptr align 1 %cat.seg1642, i64 %cat.seg1633, i1 false)
  %concat.nul1684 = getelementptr i8, ptr %concat.buf1674, i64 %sum1662
  store i8 0, ptr %concat.nul1684, align 1
  %arena.cur1685 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1686 = call ptr @dva_arena_alloc(ptr %arena.cur1685, i64 16)
  %str.tag.gen1688 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1689 = shl i64 %str.tag.gen1688, 48
  %str.tagged.len1690 = or i64 %sum1662, %str.tag.shift1689
  store i64 %str.tagged.len1690, ptr %concat.str1686, align 8
  %str.build.data.gep1691 = getelementptr inbounds { i64, ptr }, ptr %concat.str1686, i32 0, i32 1
  store ptr %concat.buf1674, ptr %str.build.data.gep1691, align 8
  br label %choice.exit

str_overflow_abort1671:                           ; preds = %cat.sum.len1664
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1692:                                  ; preds = %concat.tot.len37
  %pay.gep1697 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr1698 = load ptr, ptr %pay.gep1697, align 8
  %cat.seg1703 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg1704 = and i64 %cat.seg1703, 281474976710655
  %str.tag1705 = lshr i64 %cat.seg1703, 48
  %tag.immortal1707 = icmp eq i64 %str.tag1705, 0
  %active.gen1708 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1709 = icmp eq i64 %str.tag1705, %active.gen1708
  %tag.fast.ok1710 = or i1 %tag.immortal1707, %tag.current1709
  br i1 %tag.fast.ok1710, label %str_ok1706, label %tag.slow_check1711

str_ok1706:                                       ; preds = %tag.slow_check1711, %choice.case1692
  %cat.seg1712 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg1713 = load ptr, ptr %cat.seg1712, align 8
  %cat.seg1717 = load i64, ptr %concat.str, align 8
  %cat.seg1718 = and i64 %cat.seg1717, 281474976710655
  %str.tag1719 = lshr i64 %cat.seg1717, 48
  %tag.immortal1721 = icmp eq i64 %str.tag1719, 0
  %active.gen1722 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1723 = icmp eq i64 %str.tag1719, %active.gen1722
  %tag.fast.ok1724 = or i1 %tag.immortal1721, %tag.current1723
  br i1 %tag.fast.ok1724, label %str_ok1720, label %tag.slow_check1725

tag.slow_check1711:                               ; preds = %choice.case1692
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1705)
  br label %str_ok1706

str_ok1720:                                       ; preds = %tag.slow_check1725, %str_ok1706
  %cat.seg1727 = load ptr, ptr %str.build.data.gep, align 8
  %cat.seg1731 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg1732 = and i64 %cat.seg1731, 281474976710655
  %str.tag1733 = lshr i64 %cat.seg1731, 48
  %tag.immortal1735 = icmp eq i64 %str.tag1733, 0
  %active.gen1736 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1737 = icmp eq i64 %str.tag1733, %active.gen1736
  %tag.fast.ok1738 = or i1 %tag.immortal1735, %tag.current1737
  br i1 %tag.fast.ok1738, label %str_ok1734, label %tag.slow_check1739

tag.slow_check1725:                               ; preds = %str_ok1706
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1719)
  br label %str_ok1720

str_ok1734:                                       ; preds = %tag.slow_check1739, %str_ok1720
  %cat.seg1741 = load ptr, ptr %cat.seg1712, align 8
  %addtmp1747 = add i64 %2, 2
  %call.res1748 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %payload.ptr1698, i64 %addtmp1747)
  %arena.cur1749 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1750 = call ptr @dva_arena_alloc(ptr %arena.cur1749, i64 16)
  store { i64, ptr } %call.res1748, ptr %ret.ub.alloc1750, align 8
  %cat.seg1752 = load i64, ptr %ret.ub.alloc1750, align 8
  %cat.seg1753 = and i64 %cat.seg1752, 281474976710655
  %str.tag1754 = lshr i64 %cat.seg1752, 48
  %tag.immortal1756 = icmp eq i64 %str.tag1754, 0
  %active.gen1757 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1758 = icmp eq i64 %str.tag1754, %active.gen1757
  %tag.fast.ok1759 = or i1 %tag.immortal1756, %tag.current1758
  br i1 %tag.fast.ok1759, label %str_ok1755, label %tag.slow_check1760

tag.slow_check1739:                               ; preds = %str_ok1720
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1733)
  br label %str_ok1734

str_ok1755:                                       ; preds = %tag.slow_check1760, %str_ok1734
  %cat.seg1761 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1750, i32 0, i32 1
  %cat.seg1762 = load ptr, ptr %cat.seg1761, align 8
  %cat.seg1766 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg1767 = and i64 %cat.seg1766, 281474976710655
  %str.tag1768 = lshr i64 %cat.seg1766, 48
  %tag.immortal1770 = icmp eq i64 %str.tag1768, 0
  %active.gen1771 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1772 = icmp eq i64 %str.tag1768, %active.gen1771
  %tag.fast.ok1773 = or i1 %tag.immortal1770, %tag.current1772
  br i1 %tag.fast.ok1773, label %str_ok1769, label %tag.slow_check1774

tag.slow_check1760:                               ; preds = %str_ok1734
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1754)
  br label %str_ok1755

str_ok1769:                                       ; preds = %tag.slow_check1774, %str_ok1755
  %cat.seg1776 = load ptr, ptr %cat.seg1712, align 8
  %fld.gep1780 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %payload.ptr1698, i32 0, i32 1
  %fld.load1781 = load ptr, ptr %fld.gep1780, align 8
  %call.res1784 = call { i64, ptr } @"show::show_typed_tree_branches"(ptr %0, ptr %fld.load1781, i64 %addtmp1747)
  %arena.cur1785 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1786 = call ptr @dva_arena_alloc(ptr %arena.cur1785, i64 16)
  store { i64, ptr } %call.res1784, ptr %ret.ub.alloc1786, align 8
  %cat.seg1788 = load i64, ptr %ret.ub.alloc1786, align 8
  %cat.seg1789 = and i64 %cat.seg1788, 281474976710655
  %str.tag1790 = lshr i64 %cat.seg1788, 48
  %tag.immortal1792 = icmp eq i64 %str.tag1790, 0
  %active.gen1793 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1794 = icmp eq i64 %str.tag1790, %active.gen1793
  %tag.fast.ok1795 = or i1 %tag.immortal1792, %tag.current1794
  br i1 %tag.fast.ok1795, label %str_ok1791, label %tag.slow_check1796

tag.slow_check1774:                               ; preds = %str_ok1755
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1768)
  br label %str_ok1769

str_ok1791:                                       ; preds = %tag.slow_check1796, %str_ok1769
  %cat.seg1797 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1786, i32 0, i32 1
  %cat.seg1798 = load ptr, ptr %cat.seg1797, align 8
  %cat.sum.len1799 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg1704, i64 6)
  %sum1800 = extractvalue { i64, i1 } %cat.sum.len1799, 0
  %ovf1801 = extractvalue { i64, i1 } %cat.sum.len1799, 1
  br i1 %ovf1801, label %str_overflow_abort1803, label %cat.sum.len1802

tag.slow_check1796:                               ; preds = %str_ok1769
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1790)
  br label %str_ok1791

cat.sum.len1802:                                  ; preds = %str_ok1791
  %cat.sum.len1805 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1800, i64 %cat.seg1718)
  %sum1806 = extractvalue { i64, i1 } %cat.sum.len1805, 0
  %ovf1807 = extractvalue { i64, i1 } %cat.sum.len1805, 1
  br i1 %ovf1807, label %str_overflow_abort1809, label %cat.sum.len1808

str_overflow_abort1803:                           ; preds = %str_ok1791
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1808:                                  ; preds = %cat.sum.len1802
  %cat.sum.len1811 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1806, i64 1)
  %sum1812 = extractvalue { i64, i1 } %cat.sum.len1811, 0
  %ovf1813 = extractvalue { i64, i1 } %cat.sum.len1811, 1
  br i1 %ovf1813, label %str_overflow_abort1815, label %cat.sum.len1814

str_overflow_abort1809:                           ; preds = %cat.sum.len1802
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1814:                                  ; preds = %cat.sum.len1808
  %cat.sum.len1817 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1812, i64 %cat.seg1732)
  %sum1818 = extractvalue { i64, i1 } %cat.sum.len1817, 0
  %ovf1819 = extractvalue { i64, i1 } %cat.sum.len1817, 1
  br i1 %ovf1819, label %str_overflow_abort1821, label %cat.sum.len1820

str_overflow_abort1815:                           ; preds = %cat.sum.len1808
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1820:                                  ; preds = %cat.sum.len1814
  %cat.sum.len1823 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1818, i64 8)
  %sum1824 = extractvalue { i64, i1 } %cat.sum.len1823, 0
  %ovf1825 = extractvalue { i64, i1 } %cat.sum.len1823, 1
  br i1 %ovf1825, label %str_overflow_abort1827, label %cat.sum.len1826

str_overflow_abort1821:                           ; preds = %cat.sum.len1814
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1826:                                  ; preds = %cat.sum.len1820
  %cat.sum.len1829 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1824, i64 %cat.seg1753)
  %sum1830 = extractvalue { i64, i1 } %cat.sum.len1829, 0
  %ovf1831 = extractvalue { i64, i1 } %cat.sum.len1829, 1
  br i1 %ovf1831, label %str_overflow_abort1833, label %cat.sum.len1832

str_overflow_abort1827:                           ; preds = %cat.sum.len1820
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1832:                                  ; preds = %cat.sum.len1826
  %cat.sum.len1835 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1830, i64 1)
  %sum1836 = extractvalue { i64, i1 } %cat.sum.len1835, 0
  %ovf1837 = extractvalue { i64, i1 } %cat.sum.len1835, 1
  br i1 %ovf1837, label %str_overflow_abort1839, label %cat.sum.len1838

str_overflow_abort1833:                           ; preds = %cat.sum.len1826
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1838:                                  ; preds = %cat.sum.len1832
  %cat.sum.len1841 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1836, i64 %cat.seg1767)
  %sum1842 = extractvalue { i64, i1 } %cat.sum.len1841, 0
  %ovf1843 = extractvalue { i64, i1 } %cat.sum.len1841, 1
  br i1 %ovf1843, label %str_overflow_abort1845, label %cat.sum.len1844

str_overflow_abort1839:                           ; preds = %cat.sum.len1832
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1844:                                  ; preds = %cat.sum.len1838
  %cat.sum.len1847 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1842, i64 12)
  %sum1848 = extractvalue { i64, i1 } %cat.sum.len1847, 0
  %ovf1849 = extractvalue { i64, i1 } %cat.sum.len1847, 1
  br i1 %ovf1849, label %str_overflow_abort1851, label %cat.sum.len1850

str_overflow_abort1845:                           ; preds = %cat.sum.len1838
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1850:                                  ; preds = %cat.sum.len1844
  %cat.sum.len1853 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1848, i64 %cat.seg1789)
  %sum1854 = extractvalue { i64, i1 } %cat.sum.len1853, 0
  %ovf1855 = extractvalue { i64, i1 } %cat.sum.len1853, 1
  br i1 %ovf1855, label %str_overflow_abort1857, label %cat.sum.len1856

str_overflow_abort1851:                           ; preds = %cat.sum.len1844
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1856:                                  ; preds = %cat.sum.len1850
  %concat.tot.len1859 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1854, i64 1)
  %sum1860 = extractvalue { i64, i1 } %concat.tot.len1859, 0
  %ovf1861 = extractvalue { i64, i1 } %concat.tot.len1859, 1
  br i1 %ovf1861, label %str_overflow_abort1863, label %concat.tot.len1862

str_overflow_abort1857:                           ; preds = %cat.sum.len1850
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1862:                               ; preds = %cat.sum.len1856
  %arena.cur1865 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1866 = call ptr @dva_arena_alloc(ptr %arena.cur1865, i64 %sum1860)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1866, ptr align 1 %cat.seg1713, i64 %cat.seg1704, i1 false)
  %cat.dst1869 = getelementptr i8, ptr %concat.buf1866, i64 %cat.seg1704
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1869, ptr align 1 @str.150, i64 6, i1 false)
  %cat.off1870 = add i64 %cat.seg1704, 6
  %cat.dst1871 = getelementptr i8, ptr %concat.buf1866, i64 %cat.off1870
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1871, ptr align 1 %cat.seg1727, i64 %cat.seg1718, i1 false)
  %cat.off1872 = add i64 %cat.off1870, %cat.seg1718
  %cat.dst1873 = getelementptr i8, ptr %concat.buf1866, i64 %cat.off1872
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1873, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off1874 = add i64 %cat.off1872, 1
  %cat.dst1875 = getelementptr i8, ptr %concat.buf1866, i64 %cat.off1874
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1875, ptr align 1 %cat.seg1741, i64 %cat.seg1732, i1 false)
  %cat.off1876 = add i64 %cat.off1874, %cat.seg1732
  %cat.dst1877 = getelementptr i8, ptr %concat.buf1866, i64 %cat.off1876
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1877, ptr align 1 @str.117, i64 8, i1 false)
  %cat.off1878 = add i64 %cat.off1876, 8
  %cat.dst1879 = getelementptr i8, ptr %concat.buf1866, i64 %cat.off1878
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1879, ptr align 1 %cat.seg1762, i64 %cat.seg1753, i1 false)
  %cat.off1880 = add i64 %cat.off1878, %cat.seg1753
  %cat.dst1881 = getelementptr i8, ptr %concat.buf1866, i64 %cat.off1880
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1881, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off1882 = add i64 %cat.off1880, 1
  %cat.dst1883 = getelementptr i8, ptr %concat.buf1866, i64 %cat.off1882
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1883, ptr align 1 %cat.seg1776, i64 %cat.seg1767, i1 false)
  %cat.off1884 = add i64 %cat.off1882, %cat.seg1767
  %cat.dst1885 = getelementptr i8, ptr %concat.buf1866, i64 %cat.off1884
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1885, ptr align 1 @str.118, i64 12, i1 false)
  %cat.off1886 = add i64 %cat.off1884, 12
  %cat.dst1887 = getelementptr i8, ptr %concat.buf1866, i64 %cat.off1886
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1887, ptr align 1 %cat.seg1798, i64 %cat.seg1789, i1 false)
  %concat.nul1888 = getelementptr i8, ptr %concat.buf1866, i64 %sum1854
  store i8 0, ptr %concat.nul1888, align 1
  %arena.cur1889 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1890 = call ptr @dva_arena_alloc(ptr %arena.cur1889, i64 16)
  %str.tag.gen1892 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1893 = shl i64 %str.tag.gen1892, 48
  %str.tagged.len1894 = or i64 %sum1854, %str.tag.shift1893
  store i64 %str.tagged.len1894, ptr %concat.str1890, align 8
  %str.build.data.gep1895 = getelementptr inbounds { i64, ptr }, ptr %concat.str1890, i32 0, i32 1
  store ptr %concat.buf1866, ptr %str.build.data.gep1895, align 8
  br label %choice.exit

str_overflow_abort1863:                           ; preds = %cat.sum.len1856
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case1896:                                  ; preds = %concat.tot.len37
  %pay.gep1901 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr1902 = load ptr, ptr %pay.gep1901, align 8
  %cat.seg1907 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg1908 = and i64 %cat.seg1907, 281474976710655
  %str.tag1909 = lshr i64 %cat.seg1907, 48
  %tag.immortal1911 = icmp eq i64 %str.tag1909, 0
  %active.gen1912 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1913 = icmp eq i64 %str.tag1909, %active.gen1912
  %tag.fast.ok1914 = or i1 %tag.immortal1911, %tag.current1913
  br i1 %tag.fast.ok1914, label %str_ok1910, label %tag.slow_check1915

str_ok1910:                                       ; preds = %tag.slow_check1915, %choice.case1896
  %cat.seg1916 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg1917 = load ptr, ptr %cat.seg1916, align 8
  %fld.gep1920 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr %payload.ptr1902, i32 0, i32 1
  %fld.load1921 = load ptr, ptr %fld.gep1920, align 8
  %cat.seg1923 = load i64, ptr %fld.load1921, align 8
  %cat.seg1924 = and i64 %cat.seg1923, 281474976710655
  %str.tag1925 = lshr i64 %cat.seg1923, 48
  %tag.immortal1927 = icmp eq i64 %str.tag1925, 0
  %active.gen1928 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1929 = icmp eq i64 %str.tag1925, %active.gen1928
  %tag.fast.ok1930 = or i1 %tag.immortal1927, %tag.current1929
  br i1 %tag.fast.ok1930, label %str_ok1926, label %tag.slow_check1931

tag.slow_check1915:                               ; preds = %choice.case1896
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1909)
  br label %str_ok1910

str_ok1926:                                       ; preds = %tag.slow_check1931, %str_ok1910
  %cat.seg1932 = getelementptr inbounds { i64, ptr }, ptr %fld.load1921, i32 0, i32 1
  %cat.seg1933 = load ptr, ptr %cat.seg1932, align 8
  %cat.seg1937 = load i64, ptr %concat.str, align 8
  %cat.seg1938 = and i64 %cat.seg1937, 281474976710655
  %str.tag1939 = lshr i64 %cat.seg1937, 48
  %tag.immortal1941 = icmp eq i64 %str.tag1939, 0
  %active.gen1942 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1943 = icmp eq i64 %str.tag1939, %active.gen1942
  %tag.fast.ok1944 = or i1 %tag.immortal1941, %tag.current1943
  br i1 %tag.fast.ok1944, label %str_ok1940, label %tag.slow_check1945

tag.slow_check1931:                               ; preds = %str_ok1910
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1925)
  br label %str_ok1926

str_ok1940:                                       ; preds = %tag.slow_check1945, %str_ok1926
  %cat.seg1947 = load ptr, ptr %str.build.data.gep, align 8
  %addtmp1953 = add i64 %2, 1
  %call.res1954 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %payload.ptr1902, i64 %addtmp1953)
  %arena.cur1955 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1956 = call ptr @dva_arena_alloc(ptr %arena.cur1955, i64 16)
  store { i64, ptr } %call.res1954, ptr %ret.ub.alloc1956, align 8
  %cat.seg1958 = load i64, ptr %ret.ub.alloc1956, align 8
  %cat.seg1959 = and i64 %cat.seg1958, 281474976710655
  %str.tag1960 = lshr i64 %cat.seg1958, 48
  %tag.immortal1962 = icmp eq i64 %str.tag1960, 0
  %active.gen1963 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1964 = icmp eq i64 %str.tag1960, %active.gen1963
  %tag.fast.ok1965 = or i1 %tag.immortal1962, %tag.current1964
  br i1 %tag.fast.ok1965, label %str_ok1961, label %tag.slow_check1966

tag.slow_check1945:                               ; preds = %str_ok1926
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1939)
  br label %str_ok1940

str_ok1961:                                       ; preds = %tag.slow_check1966, %str_ok1940
  %cat.seg1967 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1956, i32 0, i32 1
  %cat.seg1968 = load ptr, ptr %cat.seg1967, align 8
  %cat.sum.len1969 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg1908, i64 8)
  %sum1970 = extractvalue { i64, i1 } %cat.sum.len1969, 0
  %ovf1971 = extractvalue { i64, i1 } %cat.sum.len1969, 1
  br i1 %ovf1971, label %str_overflow_abort1973, label %cat.sum.len1972

tag.slow_check1966:                               ; preds = %str_ok1940
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1960)
  br label %str_ok1961

cat.sum.len1972:                                  ; preds = %str_ok1961
  %cat.sum.len1975 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1970, i64 %cat.seg1924)
  %sum1976 = extractvalue { i64, i1 } %cat.sum.len1975, 0
  %ovf1977 = extractvalue { i64, i1 } %cat.sum.len1975, 1
  br i1 %ovf1977, label %str_overflow_abort1979, label %cat.sum.len1978

str_overflow_abort1973:                           ; preds = %str_ok1961
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1978:                                  ; preds = %cat.sum.len1972
  %cat.sum.len1981 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1976, i64 1)
  %sum1982 = extractvalue { i64, i1 } %cat.sum.len1981, 0
  %ovf1983 = extractvalue { i64, i1 } %cat.sum.len1981, 1
  br i1 %ovf1983, label %str_overflow_abort1985, label %cat.sum.len1984

str_overflow_abort1979:                           ; preds = %cat.sum.len1972
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1984:                                  ; preds = %cat.sum.len1978
  %cat.sum.len1987 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1982, i64 %cat.seg1938)
  %sum1988 = extractvalue { i64, i1 } %cat.sum.len1987, 0
  %ovf1989 = extractvalue { i64, i1 } %cat.sum.len1987, 1
  br i1 %ovf1989, label %str_overflow_abort1991, label %cat.sum.len1990

str_overflow_abort1985:                           ; preds = %cat.sum.len1978
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1990:                                  ; preds = %cat.sum.len1984
  %cat.sum.len1993 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1988, i64 1)
  %sum1994 = extractvalue { i64, i1 } %cat.sum.len1993, 0
  %ovf1995 = extractvalue { i64, i1 } %cat.sum.len1993, 1
  br i1 %ovf1995, label %str_overflow_abort1997, label %cat.sum.len1996

str_overflow_abort1991:                           ; preds = %cat.sum.len1984
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1996:                                  ; preds = %cat.sum.len1990
  %cat.sum.len1999 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1994, i64 %cat.seg1959)
  %sum2000 = extractvalue { i64, i1 } %cat.sum.len1999, 0
  %ovf2001 = extractvalue { i64, i1 } %cat.sum.len1999, 1
  br i1 %ovf2001, label %str_overflow_abort2003, label %cat.sum.len2002

str_overflow_abort1997:                           ; preds = %cat.sum.len1990
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2002:                                  ; preds = %cat.sum.len1996
  %concat.tot.len2005 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2000, i64 1)
  %sum2006 = extractvalue { i64, i1 } %concat.tot.len2005, 0
  %ovf2007 = extractvalue { i64, i1 } %concat.tot.len2005, 1
  br i1 %ovf2007, label %str_overflow_abort2009, label %concat.tot.len2008

str_overflow_abort2003:                           ; preds = %cat.sum.len1996
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2008:                               ; preds = %cat.sum.len2002
  %arena.cur2011 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2012 = call ptr @dva_arena_alloc(ptr %arena.cur2011, i64 %sum2006)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2012, ptr align 1 %cat.seg1917, i64 %cat.seg1908, i1 false)
  %cat.dst2015 = getelementptr i8, ptr %concat.buf2012, i64 %cat.seg1908
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2015, ptr align 1 @str.151, i64 8, i1 false)
  %cat.off2016 = add i64 %cat.seg1908, 8
  %cat.dst2017 = getelementptr i8, ptr %concat.buf2012, i64 %cat.off2016
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2017, ptr align 1 %cat.seg1933, i64 %cat.seg1924, i1 false)
  %cat.off2018 = add i64 %cat.off2016, %cat.seg1924
  %cat.dst2019 = getelementptr i8, ptr %concat.buf2012, i64 %cat.off2018
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2019, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off2020 = add i64 %cat.off2018, 1
  %cat.dst2021 = getelementptr i8, ptr %concat.buf2012, i64 %cat.off2020
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2021, ptr align 1 %cat.seg1947, i64 %cat.seg1938, i1 false)
  %cat.off2022 = add i64 %cat.off2020, %cat.seg1938
  %cat.dst2023 = getelementptr i8, ptr %concat.buf2012, i64 %cat.off2022
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2023, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off2024 = add i64 %cat.off2022, 1
  %cat.dst2025 = getelementptr i8, ptr %concat.buf2012, i64 %cat.off2024
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2025, ptr align 1 %cat.seg1968, i64 %cat.seg1959, i1 false)
  %concat.nul2026 = getelementptr i8, ptr %concat.buf2012, i64 %sum2000
  store i8 0, ptr %concat.nul2026, align 1
  %arena.cur2027 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str2028 = call ptr @dva_arena_alloc(ptr %arena.cur2027, i64 16)
  %str.tag.gen2030 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift2031 = shl i64 %str.tag.gen2030, 48
  %str.tagged.len2032 = or i64 %sum2000, %str.tag.shift2031
  store i64 %str.tagged.len2032, ptr %concat.str2028, align 8
  %str.build.data.gep2033 = getelementptr inbounds { i64, ptr }, ptr %concat.str2028, i32 0, i32 1
  store ptr %concat.buf2012, ptr %str.build.data.gep2033, align 8
  br label %choice.exit

str_overflow_abort2009:                           ; preds = %cat.sum.len2002
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case2034:                                  ; preds = %concat.tot.len37
  %pay.gep2039 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr2040 = load ptr, ptr %pay.gep2039, align 8
  %cat.seg2045 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg2046 = and i64 %cat.seg2045, 281474976710655
  %str.tag2047 = lshr i64 %cat.seg2045, 48
  %tag.immortal2049 = icmp eq i64 %str.tag2047, 0
  %active.gen2050 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2051 = icmp eq i64 %str.tag2047, %active.gen2050
  %tag.fast.ok2052 = or i1 %tag.immortal2049, %tag.current2051
  br i1 %tag.fast.ok2052, label %str_ok2048, label %tag.slow_check2053

str_ok2048:                                       ; preds = %tag.slow_check2053, %choice.case2034
  %cat.seg2054 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg2055 = load ptr, ptr %cat.seg2054, align 8
  %fld.gep2058 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr2040, i32 0, i32 1
  %fld.load2059 = load ptr, ptr %fld.gep2058, align 8
  %cat.seg2061 = load i64, ptr %fld.load2059, align 8
  %cat.seg2062 = and i64 %cat.seg2061, 281474976710655
  %str.tag2063 = lshr i64 %cat.seg2061, 48
  %tag.immortal2065 = icmp eq i64 %str.tag2063, 0
  %active.gen2066 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2067 = icmp eq i64 %str.tag2063, %active.gen2066
  %tag.fast.ok2068 = or i1 %tag.immortal2065, %tag.current2067
  br i1 %tag.fast.ok2068, label %str_ok2064, label %tag.slow_check2069

tag.slow_check2053:                               ; preds = %choice.case2034
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2047)
  br label %str_ok2048

str_ok2064:                                       ; preds = %tag.slow_check2069, %str_ok2048
  %cat.seg2070 = getelementptr inbounds { i64, ptr }, ptr %fld.load2059, i32 0, i32 1
  %cat.seg2071 = load ptr, ptr %cat.seg2070, align 8
  %cat.seg2075 = load i64, ptr %concat.str, align 8
  %cat.seg2076 = and i64 %cat.seg2075, 281474976710655
  %str.tag2077 = lshr i64 %cat.seg2075, 48
  %tag.immortal2079 = icmp eq i64 %str.tag2077, 0
  %active.gen2080 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2081 = icmp eq i64 %str.tag2077, %active.gen2080
  %tag.fast.ok2082 = or i1 %tag.immortal2079, %tag.current2081
  br i1 %tag.fast.ok2082, label %str_ok2078, label %tag.slow_check2083

tag.slow_check2069:                               ; preds = %str_ok2048
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2063)
  br label %str_ok2064

str_ok2078:                                       ; preds = %tag.slow_check2083, %str_ok2064
  %cat.seg2085 = load ptr, ptr %str.build.data.gep, align 8
  %addtmp2091 = add i64 %2, 1
  %call.res2092 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %payload.ptr2040, i64 %addtmp2091)
  %arena.cur2093 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc2094 = call ptr @dva_arena_alloc(ptr %arena.cur2093, i64 16)
  store { i64, ptr } %call.res2092, ptr %ret.ub.alloc2094, align 8
  %cat.seg2096 = load i64, ptr %ret.ub.alloc2094, align 8
  %cat.seg2097 = and i64 %cat.seg2096, 281474976710655
  %str.tag2098 = lshr i64 %cat.seg2096, 48
  %tag.immortal2100 = icmp eq i64 %str.tag2098, 0
  %active.gen2101 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2102 = icmp eq i64 %str.tag2098, %active.gen2101
  %tag.fast.ok2103 = or i1 %tag.immortal2100, %tag.current2102
  br i1 %tag.fast.ok2103, label %str_ok2099, label %tag.slow_check2104

tag.slow_check2083:                               ; preds = %str_ok2064
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2077)
  br label %str_ok2078

str_ok2099:                                       ; preds = %tag.slow_check2104, %str_ok2078
  %cat.seg2105 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc2094, i32 0, i32 1
  %cat.seg2106 = load ptr, ptr %cat.seg2105, align 8
  %fld.gep2110 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr2040, i32 0, i32 3
  %call.res2113 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %fld.gep2110, i64 %addtmp2091)
  %arena.cur2114 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc2115 = call ptr @dva_arena_alloc(ptr %arena.cur2114, i64 16)
  store { i64, ptr } %call.res2113, ptr %ret.ub.alloc2115, align 8
  %cat.seg2117 = load i64, ptr %ret.ub.alloc2115, align 8
  %cat.seg2118 = and i64 %cat.seg2117, 281474976710655
  %str.tag2119 = lshr i64 %cat.seg2117, 48
  %tag.immortal2121 = icmp eq i64 %str.tag2119, 0
  %active.gen2122 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2123 = icmp eq i64 %str.tag2119, %active.gen2122
  %tag.fast.ok2124 = or i1 %tag.immortal2121, %tag.current2123
  br i1 %tag.fast.ok2124, label %str_ok2120, label %tag.slow_check2125

tag.slow_check2104:                               ; preds = %str_ok2078
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2098)
  br label %str_ok2099

str_ok2120:                                       ; preds = %tag.slow_check2125, %str_ok2099
  %cat.seg2126 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc2115, i32 0, i32 1
  %cat.seg2127 = load ptr, ptr %cat.seg2126, align 8
  %cat.sum.len2128 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg2046, i64 13)
  %sum2129 = extractvalue { i64, i1 } %cat.sum.len2128, 0
  %ovf2130 = extractvalue { i64, i1 } %cat.sum.len2128, 1
  br i1 %ovf2130, label %str_overflow_abort2132, label %cat.sum.len2131

tag.slow_check2125:                               ; preds = %str_ok2099
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2119)
  br label %str_ok2120

cat.sum.len2131:                                  ; preds = %str_ok2120
  %cat.sum.len2134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2129, i64 %cat.seg2062)
  %sum2135 = extractvalue { i64, i1 } %cat.sum.len2134, 0
  %ovf2136 = extractvalue { i64, i1 } %cat.sum.len2134, 1
  br i1 %ovf2136, label %str_overflow_abort2138, label %cat.sum.len2137

str_overflow_abort2132:                           ; preds = %str_ok2120
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2137:                                  ; preds = %cat.sum.len2131
  %cat.sum.len2140 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2135, i64 1)
  %sum2141 = extractvalue { i64, i1 } %cat.sum.len2140, 0
  %ovf2142 = extractvalue { i64, i1 } %cat.sum.len2140, 1
  br i1 %ovf2142, label %str_overflow_abort2144, label %cat.sum.len2143

str_overflow_abort2138:                           ; preds = %cat.sum.len2131
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2143:                                  ; preds = %cat.sum.len2137
  %cat.sum.len2146 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2141, i64 %cat.seg2076)
  %sum2147 = extractvalue { i64, i1 } %cat.sum.len2146, 0
  %ovf2148 = extractvalue { i64, i1 } %cat.sum.len2146, 1
  br i1 %ovf2148, label %str_overflow_abort2150, label %cat.sum.len2149

str_overflow_abort2144:                           ; preds = %cat.sum.len2137
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2149:                                  ; preds = %cat.sum.len2143
  %cat.sum.len2152 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2147, i64 1)
  %sum2153 = extractvalue { i64, i1 } %cat.sum.len2152, 0
  %ovf2154 = extractvalue { i64, i1 } %cat.sum.len2152, 1
  br i1 %ovf2154, label %str_overflow_abort2156, label %cat.sum.len2155

str_overflow_abort2150:                           ; preds = %cat.sum.len2143
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2155:                                  ; preds = %cat.sum.len2149
  %cat.sum.len2158 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2153, i64 %cat.seg2097)
  %sum2159 = extractvalue { i64, i1 } %cat.sum.len2158, 0
  %ovf2160 = extractvalue { i64, i1 } %cat.sum.len2158, 1
  br i1 %ovf2160, label %str_overflow_abort2162, label %cat.sum.len2161

str_overflow_abort2156:                           ; preds = %cat.sum.len2149
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2161:                                  ; preds = %cat.sum.len2155
  %cat.sum.len2164 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2159, i64 1)
  %sum2165 = extractvalue { i64, i1 } %cat.sum.len2164, 0
  %ovf2166 = extractvalue { i64, i1 } %cat.sum.len2164, 1
  br i1 %ovf2166, label %str_overflow_abort2168, label %cat.sum.len2167

str_overflow_abort2162:                           ; preds = %cat.sum.len2155
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2167:                                  ; preds = %cat.sum.len2161
  %cat.sum.len2170 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2165, i64 %cat.seg2118)
  %sum2171 = extractvalue { i64, i1 } %cat.sum.len2170, 0
  %ovf2172 = extractvalue { i64, i1 } %cat.sum.len2170, 1
  br i1 %ovf2172, label %str_overflow_abort2174, label %cat.sum.len2173

str_overflow_abort2168:                           ; preds = %cat.sum.len2161
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2173:                                  ; preds = %cat.sum.len2167
  %concat.tot.len2176 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2171, i64 1)
  %sum2177 = extractvalue { i64, i1 } %concat.tot.len2176, 0
  %ovf2178 = extractvalue { i64, i1 } %concat.tot.len2176, 1
  br i1 %ovf2178, label %str_overflow_abort2180, label %concat.tot.len2179

str_overflow_abort2174:                           ; preds = %cat.sum.len2167
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2179:                               ; preds = %cat.sum.len2173
  %arena.cur2182 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2183 = call ptr @dva_arena_alloc(ptr %arena.cur2182, i64 %sum2177)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2183, ptr align 1 %cat.seg2055, i64 %cat.seg2046, i1 false)
  %cat.dst2186 = getelementptr i8, ptr %concat.buf2183, i64 %cat.seg2046
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2186, ptr align 1 @str.152, i64 13, i1 false)
  %cat.off2187 = add i64 %cat.seg2046, 13
  %cat.dst2188 = getelementptr i8, ptr %concat.buf2183, i64 %cat.off2187
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2188, ptr align 1 %cat.seg2071, i64 %cat.seg2062, i1 false)
  %cat.off2189 = add i64 %cat.off2187, %cat.seg2062
  %cat.dst2190 = getelementptr i8, ptr %concat.buf2183, i64 %cat.off2189
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2190, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off2191 = add i64 %cat.off2189, 1
  %cat.dst2192 = getelementptr i8, ptr %concat.buf2183, i64 %cat.off2191
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2192, ptr align 1 %cat.seg2085, i64 %cat.seg2076, i1 false)
  %cat.off2193 = add i64 %cat.off2191, %cat.seg2076
  %cat.dst2194 = getelementptr i8, ptr %concat.buf2183, i64 %cat.off2193
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2194, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off2195 = add i64 %cat.off2193, 1
  %cat.dst2196 = getelementptr i8, ptr %concat.buf2183, i64 %cat.off2195
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2196, ptr align 1 %cat.seg2106, i64 %cat.seg2097, i1 false)
  %cat.off2197 = add i64 %cat.off2195, %cat.seg2097
  %cat.dst2198 = getelementptr i8, ptr %concat.buf2183, i64 %cat.off2197
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2198, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off2199 = add i64 %cat.off2197, 1
  %cat.dst2200 = getelementptr i8, ptr %concat.buf2183, i64 %cat.off2199
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2200, ptr align 1 %cat.seg2127, i64 %cat.seg2118, i1 false)
  %concat.nul2201 = getelementptr i8, ptr %concat.buf2183, i64 %sum2171
  store i8 0, ptr %concat.nul2201, align 1
  %arena.cur2202 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str2203 = call ptr @dva_arena_alloc(ptr %arena.cur2202, i64 16)
  %str.tag.gen2205 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift2206 = shl i64 %str.tag.gen2205, 48
  %str.tagged.len2207 = or i64 %sum2171, %str.tag.shift2206
  store i64 %str.tagged.len2207, ptr %concat.str2203, align 8
  %str.build.data.gep2208 = getelementptr inbounds { i64, ptr }, ptr %concat.str2203, i32 0, i32 1
  store ptr %concat.buf2183, ptr %str.build.data.gep2208, align 8
  br label %choice.exit

str_overflow_abort2180:                           ; preds = %cat.sum.len2173
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case2209:                                  ; preds = %concat.tot.len37
  %pay.gep2214 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr2215 = load ptr, ptr %pay.gep2214, align 8
  %cat.seg2220 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg2221 = and i64 %cat.seg2220, 281474976710655
  %str.tag2222 = lshr i64 %cat.seg2220, 48
  %tag.immortal2224 = icmp eq i64 %str.tag2222, 0
  %active.gen2225 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2226 = icmp eq i64 %str.tag2222, %active.gen2225
  %tag.fast.ok2227 = or i1 %tag.immortal2224, %tag.current2226
  br i1 %tag.fast.ok2227, label %str_ok2223, label %tag.slow_check2228

str_ok2223:                                       ; preds = %tag.slow_check2228, %choice.case2209
  %cat.seg2229 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg2230 = load ptr, ptr %cat.seg2229, align 8
  %cat.seg2234 = load i64, ptr %concat.str, align 8
  %cat.seg2235 = and i64 %cat.seg2234, 281474976710655
  %str.tag2236 = lshr i64 %cat.seg2234, 48
  %tag.immortal2238 = icmp eq i64 %str.tag2236, 0
  %active.gen2239 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2240 = icmp eq i64 %str.tag2236, %active.gen2239
  %tag.fast.ok2241 = or i1 %tag.immortal2238, %tag.current2240
  br i1 %tag.fast.ok2241, label %str_ok2237, label %tag.slow_check2242

tag.slow_check2228:                               ; preds = %choice.case2209
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2222)
  br label %str_ok2223

str_ok2237:                                       ; preds = %tag.slow_check2242, %str_ok2223
  %cat.seg2244 = load ptr, ptr %str.build.data.gep, align 8
  %addtmp2250 = add i64 %2, 1
  %call.res2251 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %payload.ptr2215, i64 %addtmp2250)
  %arena.cur2252 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc2253 = call ptr @dva_arena_alloc(ptr %arena.cur2252, i64 16)
  store { i64, ptr } %call.res2251, ptr %ret.ub.alloc2253, align 8
  %cat.seg2255 = load i64, ptr %ret.ub.alloc2253, align 8
  %cat.seg2256 = and i64 %cat.seg2255, 281474976710655
  %str.tag2257 = lshr i64 %cat.seg2255, 48
  %tag.immortal2259 = icmp eq i64 %str.tag2257, 0
  %active.gen2260 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2261 = icmp eq i64 %str.tag2257, %active.gen2260
  %tag.fast.ok2262 = or i1 %tag.immortal2259, %tag.current2261
  br i1 %tag.fast.ok2262, label %str_ok2258, label %tag.slow_check2263

tag.slow_check2242:                               ; preds = %str_ok2223
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2236)
  br label %str_ok2237

str_ok2258:                                       ; preds = %tag.slow_check2263, %str_ok2237
  %cat.seg2264 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc2253, i32 0, i32 1
  %cat.seg2265 = load ptr, ptr %cat.seg2264, align 8
  %fld.gep2269 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr2215, i32 0, i32 1
  %call.res2272 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %fld.gep2269, i64 %addtmp2250)
  %arena.cur2273 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc2274 = call ptr @dva_arena_alloc(ptr %arena.cur2273, i64 16)
  store { i64, ptr } %call.res2272, ptr %ret.ub.alloc2274, align 8
  %cat.seg2276 = load i64, ptr %ret.ub.alloc2274, align 8
  %cat.seg2277 = and i64 %cat.seg2276, 281474976710655
  %str.tag2278 = lshr i64 %cat.seg2276, 48
  %tag.immortal2280 = icmp eq i64 %str.tag2278, 0
  %active.gen2281 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2282 = icmp eq i64 %str.tag2278, %active.gen2281
  %tag.fast.ok2283 = or i1 %tag.immortal2280, %tag.current2282
  br i1 %tag.fast.ok2283, label %str_ok2279, label %tag.slow_check2284

tag.slow_check2263:                               ; preds = %str_ok2237
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2257)
  br label %str_ok2258

str_ok2279:                                       ; preds = %tag.slow_check2284, %str_ok2258
  %cat.seg2285 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc2274, i32 0, i32 1
  %cat.seg2286 = load ptr, ptr %cat.seg2285, align 8
  %cat.sum.len2287 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg2221, i64 5)
  %sum2288 = extractvalue { i64, i1 } %cat.sum.len2287, 0
  %ovf2289 = extractvalue { i64, i1 } %cat.sum.len2287, 1
  br i1 %ovf2289, label %str_overflow_abort2291, label %cat.sum.len2290

tag.slow_check2284:                               ; preds = %str_ok2258
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2278)
  br label %str_ok2279

cat.sum.len2290:                                  ; preds = %str_ok2279
  %cat.sum.len2293 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2288, i64 %cat.seg2235)
  %sum2294 = extractvalue { i64, i1 } %cat.sum.len2293, 0
  %ovf2295 = extractvalue { i64, i1 } %cat.sum.len2293, 1
  br i1 %ovf2295, label %str_overflow_abort2297, label %cat.sum.len2296

str_overflow_abort2291:                           ; preds = %str_ok2279
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2296:                                  ; preds = %cat.sum.len2290
  %cat.sum.len2299 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2294, i64 1)
  %sum2300 = extractvalue { i64, i1 } %cat.sum.len2299, 0
  %ovf2301 = extractvalue { i64, i1 } %cat.sum.len2299, 1
  br i1 %ovf2301, label %str_overflow_abort2303, label %cat.sum.len2302

str_overflow_abort2297:                           ; preds = %cat.sum.len2290
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2302:                                  ; preds = %cat.sum.len2296
  %cat.sum.len2305 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2300, i64 %cat.seg2256)
  %sum2306 = extractvalue { i64, i1 } %cat.sum.len2305, 0
  %ovf2307 = extractvalue { i64, i1 } %cat.sum.len2305, 1
  br i1 %ovf2307, label %str_overflow_abort2309, label %cat.sum.len2308

str_overflow_abort2303:                           ; preds = %cat.sum.len2296
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2308:                                  ; preds = %cat.sum.len2302
  %cat.sum.len2311 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2306, i64 1)
  %sum2312 = extractvalue { i64, i1 } %cat.sum.len2311, 0
  %ovf2313 = extractvalue { i64, i1 } %cat.sum.len2311, 1
  br i1 %ovf2313, label %str_overflow_abort2315, label %cat.sum.len2314

str_overflow_abort2309:                           ; preds = %cat.sum.len2302
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2314:                                  ; preds = %cat.sum.len2308
  %cat.sum.len2317 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2312, i64 %cat.seg2277)
  %sum2318 = extractvalue { i64, i1 } %cat.sum.len2317, 0
  %ovf2319 = extractvalue { i64, i1 } %cat.sum.len2317, 1
  br i1 %ovf2319, label %str_overflow_abort2321, label %cat.sum.len2320

str_overflow_abort2315:                           ; preds = %cat.sum.len2308
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2320:                                  ; preds = %cat.sum.len2314
  %concat.tot.len2323 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2318, i64 1)
  %sum2324 = extractvalue { i64, i1 } %concat.tot.len2323, 0
  %ovf2325 = extractvalue { i64, i1 } %concat.tot.len2323, 1
  br i1 %ovf2325, label %str_overflow_abort2327, label %concat.tot.len2326

str_overflow_abort2321:                           ; preds = %cat.sum.len2314
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2326:                               ; preds = %cat.sum.len2320
  %arena.cur2329 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2330 = call ptr @dva_arena_alloc(ptr %arena.cur2329, i64 %sum2324)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2330, ptr align 1 %cat.seg2230, i64 %cat.seg2221, i1 false)
  %cat.dst2333 = getelementptr i8, ptr %concat.buf2330, i64 %cat.seg2221
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2333, ptr align 1 @str.153, i64 5, i1 false)
  %cat.off2334 = add i64 %cat.seg2221, 5
  %cat.dst2335 = getelementptr i8, ptr %concat.buf2330, i64 %cat.off2334
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2335, ptr align 1 %cat.seg2244, i64 %cat.seg2235, i1 false)
  %cat.off2336 = add i64 %cat.off2334, %cat.seg2235
  %cat.dst2337 = getelementptr i8, ptr %concat.buf2330, i64 %cat.off2336
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2337, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off2338 = add i64 %cat.off2336, 1
  %cat.dst2339 = getelementptr i8, ptr %concat.buf2330, i64 %cat.off2338
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2339, ptr align 1 %cat.seg2265, i64 %cat.seg2256, i1 false)
  %cat.off2340 = add i64 %cat.off2338, %cat.seg2256
  %cat.dst2341 = getelementptr i8, ptr %concat.buf2330, i64 %cat.off2340
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2341, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off2342 = add i64 %cat.off2340, 1
  %cat.dst2343 = getelementptr i8, ptr %concat.buf2330, i64 %cat.off2342
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2343, ptr align 1 %cat.seg2286, i64 %cat.seg2277, i1 false)
  %concat.nul2344 = getelementptr i8, ptr %concat.buf2330, i64 %sum2318
  store i8 0, ptr %concat.nul2344, align 1
  %arena.cur2345 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str2346 = call ptr @dva_arena_alloc(ptr %arena.cur2345, i64 16)
  %str.tag.gen2348 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift2349 = shl i64 %str.tag.gen2348, 48
  %str.tagged.len2350 = or i64 %sum2318, %str.tag.shift2349
  store i64 %str.tagged.len2350, ptr %concat.str2346, align 8
  %str.build.data.gep2351 = getelementptr inbounds { i64, ptr }, ptr %concat.str2346, i32 0, i32 1
  store ptr %concat.buf2330, ptr %str.build.data.gep2351, align 8
  br label %choice.exit

str_overflow_abort2327:                           ; preds = %cat.sum.len2320
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case2352:                                  ; preds = %concat.tot.len37
  %pay.gep2357 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr2358 = load ptr, ptr %pay.gep2357, align 8
  %cat.seg2363 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg2364 = and i64 %cat.seg2363, 281474976710655
  %str.tag2365 = lshr i64 %cat.seg2363, 48
  %tag.immortal2367 = icmp eq i64 %str.tag2365, 0
  %active.gen2368 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2369 = icmp eq i64 %str.tag2365, %active.gen2368
  %tag.fast.ok2370 = or i1 %tag.immortal2367, %tag.current2369
  br i1 %tag.fast.ok2370, label %str_ok2366, label %tag.slow_check2371

str_ok2366:                                       ; preds = %tag.slow_check2371, %choice.case2352
  %cat.seg2372 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg2373 = load ptr, ptr %cat.seg2372, align 8
  %cat.seg2377 = load i64, ptr %concat.str, align 8
  %cat.seg2378 = and i64 %cat.seg2377, 281474976710655
  %str.tag2379 = lshr i64 %cat.seg2377, 48
  %tag.immortal2381 = icmp eq i64 %str.tag2379, 0
  %active.gen2382 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2383 = icmp eq i64 %str.tag2379, %active.gen2382
  %tag.fast.ok2384 = or i1 %tag.immortal2381, %tag.current2383
  br i1 %tag.fast.ok2384, label %str_ok2380, label %tag.slow_check2385

tag.slow_check2371:                               ; preds = %choice.case2352
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2365)
  br label %str_ok2366

str_ok2380:                                       ; preds = %tag.slow_check2385, %str_ok2366
  %cat.seg2387 = load ptr, ptr %str.build.data.gep, align 8
  %addtmp2393 = add i64 %2, 1
  %call.res2394 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %payload.ptr2358, i64 %addtmp2393)
  %arena.cur2395 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc2396 = call ptr @dva_arena_alloc(ptr %arena.cur2395, i64 16)
  store { i64, ptr } %call.res2394, ptr %ret.ub.alloc2396, align 8
  %cat.seg2398 = load i64, ptr %ret.ub.alloc2396, align 8
  %cat.seg2399 = and i64 %cat.seg2398, 281474976710655
  %str.tag2400 = lshr i64 %cat.seg2398, 48
  %tag.immortal2402 = icmp eq i64 %str.tag2400, 0
  %active.gen2403 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2404 = icmp eq i64 %str.tag2400, %active.gen2403
  %tag.fast.ok2405 = or i1 %tag.immortal2402, %tag.current2404
  br i1 %tag.fast.ok2405, label %str_ok2401, label %tag.slow_check2406

tag.slow_check2385:                               ; preds = %str_ok2366
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2379)
  br label %str_ok2380

str_ok2401:                                       ; preds = %tag.slow_check2406, %str_ok2380
  %cat.seg2407 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc2396, i32 0, i32 1
  %cat.seg2408 = load ptr, ptr %cat.seg2407, align 8
  %fld.gep2412 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr2358, i32 0, i32 1
  %call.res2415 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %fld.gep2412, i64 %addtmp2393)
  %arena.cur2416 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc2417 = call ptr @dva_arena_alloc(ptr %arena.cur2416, i64 16)
  store { i64, ptr } %call.res2415, ptr %ret.ub.alloc2417, align 8
  %cat.seg2419 = load i64, ptr %ret.ub.alloc2417, align 8
  %cat.seg2420 = and i64 %cat.seg2419, 281474976710655
  %str.tag2421 = lshr i64 %cat.seg2419, 48
  %tag.immortal2423 = icmp eq i64 %str.tag2421, 0
  %active.gen2424 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2425 = icmp eq i64 %str.tag2421, %active.gen2424
  %tag.fast.ok2426 = or i1 %tag.immortal2423, %tag.current2425
  br i1 %tag.fast.ok2426, label %str_ok2422, label %tag.slow_check2427

tag.slow_check2406:                               ; preds = %str_ok2380
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2400)
  br label %str_ok2401

str_ok2422:                                       ; preds = %tag.slow_check2427, %str_ok2401
  %cat.seg2428 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc2417, i32 0, i32 1
  %cat.seg2429 = load ptr, ptr %cat.seg2428, align 8
  %fld.gep2433 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr2358, i32 0, i32 2
  %call.res2436 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %fld.gep2433, i64 %addtmp2393)
  %arena.cur2437 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc2438 = call ptr @dva_arena_alloc(ptr %arena.cur2437, i64 16)
  store { i64, ptr } %call.res2436, ptr %ret.ub.alloc2438, align 8
  %cat.seg2440 = load i64, ptr %ret.ub.alloc2438, align 8
  %cat.seg2441 = and i64 %cat.seg2440, 281474976710655
  %str.tag2442 = lshr i64 %cat.seg2440, 48
  %tag.immortal2444 = icmp eq i64 %str.tag2442, 0
  %active.gen2445 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2446 = icmp eq i64 %str.tag2442, %active.gen2445
  %tag.fast.ok2447 = or i1 %tag.immortal2444, %tag.current2446
  br i1 %tag.fast.ok2447, label %str_ok2443, label %tag.slow_check2448

tag.slow_check2427:                               ; preds = %str_ok2401
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2421)
  br label %str_ok2422

str_ok2443:                                       ; preds = %tag.slow_check2448, %str_ok2422
  %cat.seg2449 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc2438, i32 0, i32 1
  %cat.seg2450 = load ptr, ptr %cat.seg2449, align 8
  %cat.sum.len2451 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg2364, i64 10)
  %sum2452 = extractvalue { i64, i1 } %cat.sum.len2451, 0
  %ovf2453 = extractvalue { i64, i1 } %cat.sum.len2451, 1
  br i1 %ovf2453, label %str_overflow_abort2455, label %cat.sum.len2454

tag.slow_check2448:                               ; preds = %str_ok2422
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2442)
  br label %str_ok2443

cat.sum.len2454:                                  ; preds = %str_ok2443
  %cat.sum.len2457 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2452, i64 %cat.seg2378)
  %sum2458 = extractvalue { i64, i1 } %cat.sum.len2457, 0
  %ovf2459 = extractvalue { i64, i1 } %cat.sum.len2457, 1
  br i1 %ovf2459, label %str_overflow_abort2461, label %cat.sum.len2460

str_overflow_abort2455:                           ; preds = %str_ok2443
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2460:                                  ; preds = %cat.sum.len2454
  %cat.sum.len2463 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2458, i64 1)
  %sum2464 = extractvalue { i64, i1 } %cat.sum.len2463, 0
  %ovf2465 = extractvalue { i64, i1 } %cat.sum.len2463, 1
  br i1 %ovf2465, label %str_overflow_abort2467, label %cat.sum.len2466

str_overflow_abort2461:                           ; preds = %cat.sum.len2454
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2466:                                  ; preds = %cat.sum.len2460
  %cat.sum.len2469 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2464, i64 %cat.seg2399)
  %sum2470 = extractvalue { i64, i1 } %cat.sum.len2469, 0
  %ovf2471 = extractvalue { i64, i1 } %cat.sum.len2469, 1
  br i1 %ovf2471, label %str_overflow_abort2473, label %cat.sum.len2472

str_overflow_abort2467:                           ; preds = %cat.sum.len2460
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2472:                                  ; preds = %cat.sum.len2466
  %cat.sum.len2475 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2470, i64 1)
  %sum2476 = extractvalue { i64, i1 } %cat.sum.len2475, 0
  %ovf2477 = extractvalue { i64, i1 } %cat.sum.len2475, 1
  br i1 %ovf2477, label %str_overflow_abort2479, label %cat.sum.len2478

str_overflow_abort2473:                           ; preds = %cat.sum.len2466
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2478:                                  ; preds = %cat.sum.len2472
  %cat.sum.len2481 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2476, i64 %cat.seg2420)
  %sum2482 = extractvalue { i64, i1 } %cat.sum.len2481, 0
  %ovf2483 = extractvalue { i64, i1 } %cat.sum.len2481, 1
  br i1 %ovf2483, label %str_overflow_abort2485, label %cat.sum.len2484

str_overflow_abort2479:                           ; preds = %cat.sum.len2472
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2484:                                  ; preds = %cat.sum.len2478
  %cat.sum.len2487 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2482, i64 1)
  %sum2488 = extractvalue { i64, i1 } %cat.sum.len2487, 0
  %ovf2489 = extractvalue { i64, i1 } %cat.sum.len2487, 1
  br i1 %ovf2489, label %str_overflow_abort2491, label %cat.sum.len2490

str_overflow_abort2485:                           ; preds = %cat.sum.len2478
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2490:                                  ; preds = %cat.sum.len2484
  %cat.sum.len2493 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2488, i64 %cat.seg2441)
  %sum2494 = extractvalue { i64, i1 } %cat.sum.len2493, 0
  %ovf2495 = extractvalue { i64, i1 } %cat.sum.len2493, 1
  br i1 %ovf2495, label %str_overflow_abort2497, label %cat.sum.len2496

str_overflow_abort2491:                           ; preds = %cat.sum.len2484
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2496:                                  ; preds = %cat.sum.len2490
  %concat.tot.len2499 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2494, i64 1)
  %sum2500 = extractvalue { i64, i1 } %concat.tot.len2499, 0
  %ovf2501 = extractvalue { i64, i1 } %concat.tot.len2499, 1
  br i1 %ovf2501, label %str_overflow_abort2503, label %concat.tot.len2502

str_overflow_abort2497:                           ; preds = %cat.sum.len2490
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2502:                               ; preds = %cat.sum.len2496
  %arena.cur2505 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2506 = call ptr @dva_arena_alloc(ptr %arena.cur2505, i64 %sum2500)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2506, ptr align 1 %cat.seg2373, i64 %cat.seg2364, i1 false)
  %cat.dst2509 = getelementptr i8, ptr %concat.buf2506, i64 %cat.seg2364
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2509, ptr align 1 @str.154, i64 10, i1 false)
  %cat.off2510 = add i64 %cat.seg2364, 10
  %cat.dst2511 = getelementptr i8, ptr %concat.buf2506, i64 %cat.off2510
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2511, ptr align 1 %cat.seg2387, i64 %cat.seg2378, i1 false)
  %cat.off2512 = add i64 %cat.off2510, %cat.seg2378
  %cat.dst2513 = getelementptr i8, ptr %concat.buf2506, i64 %cat.off2512
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2513, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off2514 = add i64 %cat.off2512, 1
  %cat.dst2515 = getelementptr i8, ptr %concat.buf2506, i64 %cat.off2514
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2515, ptr align 1 %cat.seg2408, i64 %cat.seg2399, i1 false)
  %cat.off2516 = add i64 %cat.off2514, %cat.seg2399
  %cat.dst2517 = getelementptr i8, ptr %concat.buf2506, i64 %cat.off2516
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2517, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off2518 = add i64 %cat.off2516, 1
  %cat.dst2519 = getelementptr i8, ptr %concat.buf2506, i64 %cat.off2518
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2519, ptr align 1 %cat.seg2429, i64 %cat.seg2420, i1 false)
  %cat.off2520 = add i64 %cat.off2518, %cat.seg2420
  %cat.dst2521 = getelementptr i8, ptr %concat.buf2506, i64 %cat.off2520
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2521, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off2522 = add i64 %cat.off2520, 1
  %cat.dst2523 = getelementptr i8, ptr %concat.buf2506, i64 %cat.off2522
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2523, ptr align 1 %cat.seg2450, i64 %cat.seg2441, i1 false)
  %concat.nul2524 = getelementptr i8, ptr %concat.buf2506, i64 %sum2494
  store i8 0, ptr %concat.nul2524, align 1
  %arena.cur2525 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str2526 = call ptr @dva_arena_alloc(ptr %arena.cur2525, i64 16)
  %str.tag.gen2528 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift2529 = shl i64 %str.tag.gen2528, 48
  %str.tagged.len2530 = or i64 %sum2494, %str.tag.shift2529
  store i64 %str.tagged.len2530, ptr %concat.str2526, align 8
  %str.build.data.gep2531 = getelementptr inbounds { i64, ptr }, ptr %concat.str2526, i32 0, i32 1
  store ptr %concat.buf2506, ptr %str.build.data.gep2531, align 8
  br label %choice.exit

str_overflow_abort2503:                           ; preds = %cat.sum.len2496
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case2532:                                  ; preds = %concat.tot.len37
  %pay.gep2537 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr2538 = load ptr, ptr %pay.gep2537, align 8
  %cat.seg2543 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg2544 = and i64 %cat.seg2543, 281474976710655
  %str.tag2545 = lshr i64 %cat.seg2543, 48
  %tag.immortal2547 = icmp eq i64 %str.tag2545, 0
  %active.gen2548 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2549 = icmp eq i64 %str.tag2545, %active.gen2548
  %tag.fast.ok2550 = or i1 %tag.immortal2547, %tag.current2549
  br i1 %tag.fast.ok2550, label %str_ok2546, label %tag.slow_check2551

str_ok2546:                                       ; preds = %tag.slow_check2551, %choice.case2532
  %cat.seg2552 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg2553 = load ptr, ptr %cat.seg2552, align 8
  %cat.seg2557 = load i64, ptr %concat.str, align 8
  %cat.seg2558 = and i64 %cat.seg2557, 281474976710655
  %str.tag2559 = lshr i64 %cat.seg2557, 48
  %tag.immortal2561 = icmp eq i64 %str.tag2559, 0
  %active.gen2562 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2563 = icmp eq i64 %str.tag2559, %active.gen2562
  %tag.fast.ok2564 = or i1 %tag.immortal2561, %tag.current2563
  br i1 %tag.fast.ok2564, label %str_ok2560, label %tag.slow_check2565

tag.slow_check2551:                               ; preds = %choice.case2532
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2545)
  br label %str_ok2546

str_ok2560:                                       ; preds = %tag.slow_check2565, %str_ok2546
  %cat.seg2567 = load ptr, ptr %str.build.data.gep, align 8
  %addtmp2573 = add i64 %2, 1
  %call.res2574 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %payload.ptr2538, i64 %addtmp2573)
  %arena.cur2575 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc2576 = call ptr @dva_arena_alloc(ptr %arena.cur2575, i64 16)
  store { i64, ptr } %call.res2574, ptr %ret.ub.alloc2576, align 8
  %cat.seg2578 = load i64, ptr %ret.ub.alloc2576, align 8
  %cat.seg2579 = and i64 %cat.seg2578, 281474976710655
  %str.tag2580 = lshr i64 %cat.seg2578, 48
  %tag.immortal2582 = icmp eq i64 %str.tag2580, 0
  %active.gen2583 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2584 = icmp eq i64 %str.tag2580, %active.gen2583
  %tag.fast.ok2585 = or i1 %tag.immortal2582, %tag.current2584
  br i1 %tag.fast.ok2585, label %str_ok2581, label %tag.slow_check2586

tag.slow_check2565:                               ; preds = %str_ok2546
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2559)
  br label %str_ok2560

str_ok2581:                                       ; preds = %tag.slow_check2586, %str_ok2560
  %cat.seg2587 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc2576, i32 0, i32 1
  %cat.seg2588 = load ptr, ptr %cat.seg2587, align 8
  %fld.gep2592 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %payload.ptr2538, i32 0, i32 1
  %call.res2595 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %fld.gep2592, i64 %addtmp2573)
  %arena.cur2596 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc2597 = call ptr @dva_arena_alloc(ptr %arena.cur2596, i64 16)
  store { i64, ptr } %call.res2595, ptr %ret.ub.alloc2597, align 8
  %cat.seg2599 = load i64, ptr %ret.ub.alloc2597, align 8
  %cat.seg2600 = and i64 %cat.seg2599, 281474976710655
  %str.tag2601 = lshr i64 %cat.seg2599, 48
  %tag.immortal2603 = icmp eq i64 %str.tag2601, 0
  %active.gen2604 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2605 = icmp eq i64 %str.tag2601, %active.gen2604
  %tag.fast.ok2606 = or i1 %tag.immortal2603, %tag.current2605
  br i1 %tag.fast.ok2606, label %str_ok2602, label %tag.slow_check2607

tag.slow_check2586:                               ; preds = %str_ok2560
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2580)
  br label %str_ok2581

str_ok2602:                                       ; preds = %tag.slow_check2607, %str_ok2581
  %cat.seg2608 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc2597, i32 0, i32 1
  %cat.seg2609 = load ptr, ptr %cat.seg2608, align 8
  %cat.sum.len2610 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg2544, i64 5)
  %sum2611 = extractvalue { i64, i1 } %cat.sum.len2610, 0
  %ovf2612 = extractvalue { i64, i1 } %cat.sum.len2610, 1
  br i1 %ovf2612, label %str_overflow_abort2614, label %cat.sum.len2613

tag.slow_check2607:                               ; preds = %str_ok2581
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2601)
  br label %str_ok2602

cat.sum.len2613:                                  ; preds = %str_ok2602
  %cat.sum.len2616 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2611, i64 %cat.seg2558)
  %sum2617 = extractvalue { i64, i1 } %cat.sum.len2616, 0
  %ovf2618 = extractvalue { i64, i1 } %cat.sum.len2616, 1
  br i1 %ovf2618, label %str_overflow_abort2620, label %cat.sum.len2619

str_overflow_abort2614:                           ; preds = %str_ok2602
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2619:                                  ; preds = %cat.sum.len2613
  %cat.sum.len2622 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2617, i64 1)
  %sum2623 = extractvalue { i64, i1 } %cat.sum.len2622, 0
  %ovf2624 = extractvalue { i64, i1 } %cat.sum.len2622, 1
  br i1 %ovf2624, label %str_overflow_abort2626, label %cat.sum.len2625

str_overflow_abort2620:                           ; preds = %cat.sum.len2613
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2625:                                  ; preds = %cat.sum.len2619
  %cat.sum.len2628 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2623, i64 %cat.seg2579)
  %sum2629 = extractvalue { i64, i1 } %cat.sum.len2628, 0
  %ovf2630 = extractvalue { i64, i1 } %cat.sum.len2628, 1
  br i1 %ovf2630, label %str_overflow_abort2632, label %cat.sum.len2631

str_overflow_abort2626:                           ; preds = %cat.sum.len2619
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2631:                                  ; preds = %cat.sum.len2625
  %cat.sum.len2634 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2629, i64 1)
  %sum2635 = extractvalue { i64, i1 } %cat.sum.len2634, 0
  %ovf2636 = extractvalue { i64, i1 } %cat.sum.len2634, 1
  br i1 %ovf2636, label %str_overflow_abort2638, label %cat.sum.len2637

str_overflow_abort2632:                           ; preds = %cat.sum.len2625
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2637:                                  ; preds = %cat.sum.len2631
  %cat.sum.len2640 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2635, i64 %cat.seg2600)
  %sum2641 = extractvalue { i64, i1 } %cat.sum.len2640, 0
  %ovf2642 = extractvalue { i64, i1 } %cat.sum.len2640, 1
  br i1 %ovf2642, label %str_overflow_abort2644, label %cat.sum.len2643

str_overflow_abort2638:                           ; preds = %cat.sum.len2631
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2643:                                  ; preds = %cat.sum.len2637
  %concat.tot.len2646 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2641, i64 1)
  %sum2647 = extractvalue { i64, i1 } %concat.tot.len2646, 0
  %ovf2648 = extractvalue { i64, i1 } %concat.tot.len2646, 1
  br i1 %ovf2648, label %str_overflow_abort2650, label %concat.tot.len2649

str_overflow_abort2644:                           ; preds = %cat.sum.len2637
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2649:                               ; preds = %cat.sum.len2643
  %arena.cur2652 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2653 = call ptr @dva_arena_alloc(ptr %arena.cur2652, i64 %sum2647)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2653, ptr align 1 %cat.seg2553, i64 %cat.seg2544, i1 false)
  %cat.dst2656 = getelementptr i8, ptr %concat.buf2653, i64 %cat.seg2544
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2656, ptr align 1 @str.155, i64 5, i1 false)
  %cat.off2657 = add i64 %cat.seg2544, 5
  %cat.dst2658 = getelementptr i8, ptr %concat.buf2653, i64 %cat.off2657
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2658, ptr align 1 %cat.seg2567, i64 %cat.seg2558, i1 false)
  %cat.off2659 = add i64 %cat.off2657, %cat.seg2558
  %cat.dst2660 = getelementptr i8, ptr %concat.buf2653, i64 %cat.off2659
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2660, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off2661 = add i64 %cat.off2659, 1
  %cat.dst2662 = getelementptr i8, ptr %concat.buf2653, i64 %cat.off2661
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2662, ptr align 1 %cat.seg2588, i64 %cat.seg2579, i1 false)
  %cat.off2663 = add i64 %cat.off2661, %cat.seg2579
  %cat.dst2664 = getelementptr i8, ptr %concat.buf2653, i64 %cat.off2663
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2664, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off2665 = add i64 %cat.off2663, 1
  %cat.dst2666 = getelementptr i8, ptr %concat.buf2653, i64 %cat.off2665
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2666, ptr align 1 %cat.seg2609, i64 %cat.seg2600, i1 false)
  %concat.nul2667 = getelementptr i8, ptr %concat.buf2653, i64 %sum2641
  store i8 0, ptr %concat.nul2667, align 1
  %arena.cur2668 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str2669 = call ptr @dva_arena_alloc(ptr %arena.cur2668, i64 16)
  %str.tag.gen2671 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift2672 = shl i64 %str.tag.gen2671, 48
  %str.tagged.len2673 = or i64 %sum2641, %str.tag.shift2672
  store i64 %str.tagged.len2673, ptr %concat.str2669, align 8
  %str.build.data.gep2674 = getelementptr inbounds { i64, ptr }, ptr %concat.str2669, i32 0, i32 1
  store ptr %concat.buf2653, ptr %str.build.data.gep2674, align 8
  br label %choice.exit

str_overflow_abort2650:                           ; preds = %cat.sum.len2643
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case2675:                                  ; preds = %concat.tot.len37
  %pay.gep2680 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr2681 = load ptr, ptr %pay.gep2680, align 8
  %cat.seg2686 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg2687 = and i64 %cat.seg2686, 281474976710655
  %str.tag2688 = lshr i64 %cat.seg2686, 48
  %tag.immortal2690 = icmp eq i64 %str.tag2688, 0
  %active.gen2691 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2692 = icmp eq i64 %str.tag2688, %active.gen2691
  %tag.fast.ok2693 = or i1 %tag.immortal2690, %tag.current2692
  br i1 %tag.fast.ok2693, label %str_ok2689, label %tag.slow_check2694

str_ok2689:                                       ; preds = %tag.slow_check2694, %choice.case2675
  %cat.seg2695 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg2696 = load ptr, ptr %cat.seg2695, align 8
  %fld.load2700 = load i1, ptr %payload.ptr2681, align 1
  %str.51.struct.str.52.struct = select i1 %fld.load2700, ptr @str.51.struct, ptr @str.52.struct
  %cat.seg2706 = load i64, ptr %str.51.struct.str.52.struct, align 8
  %cat.seg2707 = and i64 %cat.seg2706, 281474976710655
  %str.tag2708 = lshr i64 %cat.seg2706, 48
  %tag.immortal2710 = icmp eq i64 %str.tag2708, 0
  %active.gen2711 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2712 = icmp eq i64 %str.tag2708, %active.gen2711
  %tag.fast.ok2713 = or i1 %tag.immortal2710, %tag.current2712
  br i1 %tag.fast.ok2713, label %str_ok2709, label %tag.slow_check2714

tag.slow_check2694:                               ; preds = %choice.case2675
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2688)
  br label %str_ok2689

str_ok2709:                                       ; preds = %tag.slow_check2714, %str_ok2689
  %cat.seg2715 = getelementptr inbounds { i64, ptr }, ptr %str.51.struct.str.52.struct, i32 0, i32 1
  %cat.seg2716 = load ptr, ptr %cat.seg2715, align 8
  %fld.gep2719 = getelementptr inbounds { i1, i64 }, ptr %payload.ptr2681, i32 0, i32 1
  %fld.load2720 = load i64, ptr %fld.gep2719, align 8
  %cat.ilen2722 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf2721, i64 %fld.load2720, i1 false)
  %cat.seg2726 = load i64, ptr %concat.str, align 8
  %cat.seg2727 = and i64 %cat.seg2726, 281474976710655
  %str.tag2728 = lshr i64 %cat.seg2726, 48
  %tag.immortal2730 = icmp eq i64 %str.tag2728, 0
  %active.gen2731 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2732 = icmp eq i64 %str.tag2728, %active.gen2731
  %tag.fast.ok2733 = or i1 %tag.immortal2730, %tag.current2732
  br i1 %tag.fast.ok2733, label %str_ok2729, label %tag.slow_check2734

tag.slow_check2714:                               ; preds = %str_ok2689
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2708)
  br label %str_ok2709

str_ok2729:                                       ; preds = %tag.slow_check2734, %str_ok2709
  %cat.seg2736 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len2737 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg2687, i64 10)
  %sum2738 = extractvalue { i64, i1 } %cat.sum.len2737, 0
  %ovf2739 = extractvalue { i64, i1 } %cat.sum.len2737, 1
  br i1 %ovf2739, label %str_overflow_abort2741, label %cat.sum.len2740

tag.slow_check2734:                               ; preds = %str_ok2709
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2728)
  br label %str_ok2729

cat.sum.len2740:                                  ; preds = %str_ok2729
  %cat.sum.len2743 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2738, i64 %cat.seg2707)
  %sum2744 = extractvalue { i64, i1 } %cat.sum.len2743, 0
  %ovf2745 = extractvalue { i64, i1 } %cat.sum.len2743, 1
  br i1 %ovf2745, label %str_overflow_abort2747, label %cat.sum.len2746

str_overflow_abort2741:                           ; preds = %str_ok2729
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2746:                                  ; preds = %cat.sum.len2740
  %cat.sum.len2749 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2744, i64 1)
  %sum2750 = extractvalue { i64, i1 } %cat.sum.len2749, 0
  %ovf2751 = extractvalue { i64, i1 } %cat.sum.len2749, 1
  br i1 %ovf2751, label %str_overflow_abort2753, label %cat.sum.len2752

str_overflow_abort2747:                           ; preds = %cat.sum.len2740
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2752:                                  ; preds = %cat.sum.len2746
  %cat.sum.len2755 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2750, i64 %cat.ilen2722)
  %sum2756 = extractvalue { i64, i1 } %cat.sum.len2755, 0
  %ovf2757 = extractvalue { i64, i1 } %cat.sum.len2755, 1
  br i1 %ovf2757, label %str_overflow_abort2759, label %cat.sum.len2758

str_overflow_abort2753:                           ; preds = %cat.sum.len2746
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2758:                                  ; preds = %cat.sum.len2752
  %cat.sum.len2761 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2756, i64 1)
  %sum2762 = extractvalue { i64, i1 } %cat.sum.len2761, 0
  %ovf2763 = extractvalue { i64, i1 } %cat.sum.len2761, 1
  br i1 %ovf2763, label %str_overflow_abort2765, label %cat.sum.len2764

str_overflow_abort2759:                           ; preds = %cat.sum.len2752
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2764:                                  ; preds = %cat.sum.len2758
  %cat.sum.len2767 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2762, i64 %cat.seg2727)
  %sum2768 = extractvalue { i64, i1 } %cat.sum.len2767, 0
  %ovf2769 = extractvalue { i64, i1 } %cat.sum.len2767, 1
  br i1 %ovf2769, label %str_overflow_abort2771, label %cat.sum.len2770

str_overflow_abort2765:                           ; preds = %cat.sum.len2758
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2770:                                  ; preds = %cat.sum.len2764
  %concat.tot.len2773 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2768, i64 1)
  %sum2774 = extractvalue { i64, i1 } %concat.tot.len2773, 0
  %ovf2775 = extractvalue { i64, i1 } %concat.tot.len2773, 1
  br i1 %ovf2775, label %str_overflow_abort2777, label %concat.tot.len2776

str_overflow_abort2771:                           ; preds = %cat.sum.len2764
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2776:                               ; preds = %cat.sum.len2770
  %arena.cur2779 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2780 = call ptr @dva_arena_alloc(ptr %arena.cur2779, i64 %sum2774)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2780, ptr align 1 %cat.seg2696, i64 %cat.seg2687, i1 false)
  %cat.dst2783 = getelementptr i8, ptr %concat.buf2780, i64 %cat.seg2687
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2783, ptr align 1 @str.50, i64 10, i1 false)
  %cat.off2784 = add i64 %cat.seg2687, 10
  %cat.dst2785 = getelementptr i8, ptr %concat.buf2780, i64 %cat.off2784
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2785, ptr align 1 %cat.seg2716, i64 %cat.seg2707, i1 false)
  %cat.off2786 = add i64 %cat.off2784, %cat.seg2707
  %cat.dst2787 = getelementptr i8, ptr %concat.buf2780, i64 %cat.off2786
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2787, ptr align 1 @str.34, i64 1, i1 false)
  %cat.off2788 = add i64 %cat.off2786, 1
  %cat.dst2789 = getelementptr i8, ptr %concat.buf2780, i64 %cat.off2788
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2789, ptr align 1 %cat.ibuf2721, i64 %cat.ilen2722, i1 false)
  %cat.off2790 = add i64 %cat.off2788, %cat.ilen2722
  %cat.dst2791 = getelementptr i8, ptr %concat.buf2780, i64 %cat.off2790
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2791, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off2792 = add i64 %cat.off2790, 1
  %cat.dst2793 = getelementptr i8, ptr %concat.buf2780, i64 %cat.off2792
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2793, ptr align 1 %cat.seg2736, i64 %cat.seg2727, i1 false)
  %concat.nul2794 = getelementptr i8, ptr %concat.buf2780, i64 %sum2768
  store i8 0, ptr %concat.nul2794, align 1
  %arena.cur2795 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str2796 = call ptr @dva_arena_alloc(ptr %arena.cur2795, i64 16)
  %str.tag.gen2798 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift2799 = shl i64 %str.tag.gen2798, 48
  %str.tagged.len2800 = or i64 %sum2768, %str.tag.shift2799
  store i64 %str.tagged.len2800, ptr %concat.str2796, align 8
  %str.build.data.gep2801 = getelementptr inbounds { i64, ptr }, ptr %concat.str2796, i32 0, i32 1
  store ptr %concat.buf2780, ptr %str.build.data.gep2801, align 8
  br label %choice.exit

str_overflow_abort2777:                           ; preds = %cat.sum.len2770
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case2802:                                  ; preds = %concat.tot.len37
  %pay.gep2807 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr2808 = load ptr, ptr %pay.gep2807, align 8
  %cat.seg2812 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg2813 = and i64 %cat.seg2812, 281474976710655
  %str.tag2814 = lshr i64 %cat.seg2812, 48
  %tag.immortal2816 = icmp eq i64 %str.tag2814, 0
  %active.gen2817 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2818 = icmp eq i64 %str.tag2814, %active.gen2817
  %tag.fast.ok2819 = or i1 %tag.immortal2816, %tag.current2818
  br i1 %tag.fast.ok2819, label %str_ok2815, label %tag.slow_check2820

str_ok2815:                                       ; preds = %tag.slow_check2820, %choice.case2802
  %cat.seg2821 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg2822 = load ptr, ptr %cat.seg2821, align 8
  %niche.ne.null = icmp ne ptr %payload.ptr2808, null
  br i1 %niche.ne.null, label %choice.then2825, label %choice.exit2827

tag.slow_check2820:                               ; preds = %choice.case2802
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2814)
  br label %str_ok2815

choice.then2825:                                  ; preds = %str_ok2815
  %call.res2832 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %payload.ptr2808)
  %arena.cur2833 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc2834 = call ptr @dva_arena_alloc(ptr %arena.cur2833, i64 16)
  store { i64, ptr } %call.res2832, ptr %ret.ub.alloc2834, align 8
  br label %choice.exit2827

choice.exit2827:                                  ; preds = %str_ok2815, %choice.then2825
  %choice.res2835 = phi ptr [ %ret.ub.alloc2834, %choice.then2825 ], [ @str.49.struct, %str_ok2815 ]
  %cat.seg2837 = load i64, ptr %choice.res2835, align 8
  %cat.seg2838 = and i64 %cat.seg2837, 281474976710655
  %str.tag2839 = lshr i64 %cat.seg2837, 48
  %tag.immortal2841 = icmp eq i64 %str.tag2839, 0
  %active.gen2842 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2843 = icmp eq i64 %str.tag2839, %active.gen2842
  %tag.fast.ok2844 = or i1 %tag.immortal2841, %tag.current2843
  br i1 %tag.fast.ok2844, label %str_ok2840, label %tag.slow_check2845

str_ok2840:                                       ; preds = %tag.slow_check2845, %choice.exit2827
  %cat.seg2846 = getelementptr inbounds { i64, ptr }, ptr %choice.res2835, i32 0, i32 1
  %cat.seg2847 = load ptr, ptr %cat.seg2846, align 8
  %cat.seg2851 = load i64, ptr %concat.str, align 8
  %cat.seg2852 = and i64 %cat.seg2851, 281474976710655
  %str.tag2853 = lshr i64 %cat.seg2851, 48
  %tag.immortal2855 = icmp eq i64 %str.tag2853, 0
  %active.gen2856 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2857 = icmp eq i64 %str.tag2853, %active.gen2856
  %tag.fast.ok2858 = or i1 %tag.immortal2855, %tag.current2857
  br i1 %tag.fast.ok2858, label %str_ok2854, label %tag.slow_check2859

tag.slow_check2845:                               ; preds = %choice.exit2827
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2839)
  br label %str_ok2840

str_ok2854:                                       ; preds = %tag.slow_check2859, %str_ok2840
  %cat.seg2861 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len2862 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg2813, i64 7)
  %sum2863 = extractvalue { i64, i1 } %cat.sum.len2862, 0
  %ovf2864 = extractvalue { i64, i1 } %cat.sum.len2862, 1
  br i1 %ovf2864, label %str_overflow_abort2866, label %cat.sum.len2865

tag.slow_check2859:                               ; preds = %str_ok2840
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2853)
  br label %str_ok2854

cat.sum.len2865:                                  ; preds = %str_ok2854
  %cat.sum.len2868 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2863, i64 %cat.seg2838)
  %sum2869 = extractvalue { i64, i1 } %cat.sum.len2868, 0
  %ovf2870 = extractvalue { i64, i1 } %cat.sum.len2868, 1
  br i1 %ovf2870, label %str_overflow_abort2872, label %cat.sum.len2871

str_overflow_abort2866:                           ; preds = %str_ok2854
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2871:                                  ; preds = %cat.sum.len2865
  %cat.sum.len2874 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2869, i64 1)
  %sum2875 = extractvalue { i64, i1 } %cat.sum.len2874, 0
  %ovf2876 = extractvalue { i64, i1 } %cat.sum.len2874, 1
  br i1 %ovf2876, label %str_overflow_abort2878, label %cat.sum.len2877

str_overflow_abort2872:                           ; preds = %cat.sum.len2865
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2877:                                  ; preds = %cat.sum.len2871
  %cat.sum.len2880 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2875, i64 %cat.seg2852)
  %sum2881 = extractvalue { i64, i1 } %cat.sum.len2880, 0
  %ovf2882 = extractvalue { i64, i1 } %cat.sum.len2880, 1
  br i1 %ovf2882, label %str_overflow_abort2884, label %cat.sum.len2883

str_overflow_abort2878:                           ; preds = %cat.sum.len2871
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2883:                                  ; preds = %cat.sum.len2877
  %concat.tot.len2886 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2881, i64 1)
  %sum2887 = extractvalue { i64, i1 } %concat.tot.len2886, 0
  %ovf2888 = extractvalue { i64, i1 } %concat.tot.len2886, 1
  br i1 %ovf2888, label %str_overflow_abort2890, label %concat.tot.len2889

str_overflow_abort2884:                           ; preds = %cat.sum.len2877
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2889:                               ; preds = %cat.sum.len2883
  %arena.cur2892 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2893 = call ptr @dva_arena_alloc(ptr %arena.cur2892, i64 %sum2887)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2893, ptr align 1 %cat.seg2822, i64 %cat.seg2813, i1 false)
  %cat.dst2896 = getelementptr i8, ptr %concat.buf2893, i64 %cat.seg2813
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2896, ptr align 1 @str.53, i64 7, i1 false)
  %cat.off2897 = add i64 %cat.seg2813, 7
  %cat.dst2898 = getelementptr i8, ptr %concat.buf2893, i64 %cat.off2897
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2898, ptr align 1 %cat.seg2847, i64 %cat.seg2838, i1 false)
  %cat.off2899 = add i64 %cat.off2897, %cat.seg2838
  %cat.dst2900 = getelementptr i8, ptr %concat.buf2893, i64 %cat.off2899
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2900, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off2901 = add i64 %cat.off2899, 1
  %cat.dst2902 = getelementptr i8, ptr %concat.buf2893, i64 %cat.off2901
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst2902, ptr align 1 %cat.seg2861, i64 %cat.seg2852, i1 false)
  %concat.nul2903 = getelementptr i8, ptr %concat.buf2893, i64 %sum2881
  store i8 0, ptr %concat.nul2903, align 1
  %arena.cur2904 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str2905 = call ptr @dva_arena_alloc(ptr %arena.cur2904, i64 16)
  %str.tag.gen2907 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift2908 = shl i64 %str.tag.gen2907, 48
  %str.tagged.len2909 = or i64 %sum2881, %str.tag.shift2908
  store i64 %str.tagged.len2909, ptr %concat.str2905, align 8
  %str.build.data.gep2910 = getelementptr inbounds { i64, ptr }, ptr %concat.str2905, i32 0, i32 1
  store ptr %concat.buf2893, ptr %str.build.data.gep2910, align 8
  br label %choice.exit

str_overflow_abort2890:                           ; preds = %cat.sum.len2883
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case2911:                                  ; preds = %concat.tot.len37
  %pay.gep2916 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr2917 = load ptr, ptr %pay.gep2916, align 8
  %cat.seg2921 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg2922 = and i64 %cat.seg2921, 281474976710655
  %str.tag2923 = lshr i64 %cat.seg2921, 48
  %tag.immortal2925 = icmp eq i64 %str.tag2923, 0
  %active.gen2926 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2927 = icmp eq i64 %str.tag2923, %active.gen2926
  %tag.fast.ok2928 = or i1 %tag.immortal2925, %tag.current2927
  br i1 %tag.fast.ok2928, label %str_ok2924, label %tag.slow_check2929

str_ok2924:                                       ; preds = %tag.slow_check2929, %choice.case2911
  %cat.seg2930 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg2931 = load ptr, ptr %cat.seg2930, align 8
  %cat.seg2935 = load i64, ptr %concat.str, align 8
  %cat.seg2936 = and i64 %cat.seg2935, 281474976710655
  %str.tag2937 = lshr i64 %cat.seg2935, 48
  %tag.immortal2939 = icmp eq i64 %str.tag2937, 0
  %active.gen2940 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2941 = icmp eq i64 %str.tag2937, %active.gen2940
  %tag.fast.ok2942 = or i1 %tag.immortal2939, %tag.current2941
  br i1 %tag.fast.ok2942, label %str_ok2938, label %tag.slow_check2943

tag.slow_check2929:                               ; preds = %choice.case2911
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2923)
  br label %str_ok2924

str_ok2938:                                       ; preds = %tag.slow_check2943, %str_ok2924
  %cat.seg2945 = load ptr, ptr %str.build.data.gep, align 8
  %addtmp2950 = add i64 %2, 1
  %call.res2951 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %payload.ptr2917, i64 %addtmp2950)
  %arena.cur2952 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc2953 = call ptr @dva_arena_alloc(ptr %arena.cur2952, i64 16)
  store { i64, ptr } %call.res2951, ptr %ret.ub.alloc2953, align 8
  %cat.seg2955 = load i64, ptr %ret.ub.alloc2953, align 8
  %cat.seg2956 = and i64 %cat.seg2955, 281474976710655
  %str.tag2957 = lshr i64 %cat.seg2955, 48
  %tag.immortal2959 = icmp eq i64 %str.tag2957, 0
  %active.gen2960 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2961 = icmp eq i64 %str.tag2957, %active.gen2960
  %tag.fast.ok2962 = or i1 %tag.immortal2959, %tag.current2961
  br i1 %tag.fast.ok2962, label %str_ok2958, label %tag.slow_check2963

tag.slow_check2943:                               ; preds = %str_ok2924
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2937)
  br label %str_ok2938

str_ok2958:                                       ; preds = %tag.slow_check2963, %str_ok2938
  %cat.seg2964 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc2953, i32 0, i32 1
  %cat.seg2965 = load ptr, ptr %cat.seg2964, align 8
  %cat.sum.len2966 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg2922, i64 4)
  %sum2967 = extractvalue { i64, i1 } %cat.sum.len2966, 0
  %ovf2968 = extractvalue { i64, i1 } %cat.sum.len2966, 1
  br i1 %ovf2968, label %str_overflow_abort2970, label %cat.sum.len2969

tag.slow_check2963:                               ; preds = %str_ok2938
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2957)
  br label %str_ok2958

cat.sum.len2969:                                  ; preds = %str_ok2958
  %cat.sum.len2972 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2967, i64 %cat.seg2936)
  %sum2973 = extractvalue { i64, i1 } %cat.sum.len2972, 0
  %ovf2974 = extractvalue { i64, i1 } %cat.sum.len2972, 1
  br i1 %ovf2974, label %str_overflow_abort2976, label %cat.sum.len2975

str_overflow_abort2970:                           ; preds = %str_ok2958
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2975:                                  ; preds = %cat.sum.len2969
  %cat.sum.len2978 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2973, i64 1)
  %sum2979 = extractvalue { i64, i1 } %cat.sum.len2978, 0
  %ovf2980 = extractvalue { i64, i1 } %cat.sum.len2978, 1
  br i1 %ovf2980, label %str_overflow_abort2982, label %cat.sum.len2981

str_overflow_abort2976:                           ; preds = %cat.sum.len2969
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2981:                                  ; preds = %cat.sum.len2975
  %cat.sum.len2984 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2979, i64 %cat.seg2956)
  %sum2985 = extractvalue { i64, i1 } %cat.sum.len2984, 0
  %ovf2986 = extractvalue { i64, i1 } %cat.sum.len2984, 1
  br i1 %ovf2986, label %str_overflow_abort2988, label %cat.sum.len2987

str_overflow_abort2982:                           ; preds = %cat.sum.len2975
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len2987:                                  ; preds = %cat.sum.len2981
  %concat.tot.len2990 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum2985, i64 1)
  %sum2991 = extractvalue { i64, i1 } %concat.tot.len2990, 0
  %ovf2992 = extractvalue { i64, i1 } %concat.tot.len2990, 1
  br i1 %ovf2992, label %str_overflow_abort2994, label %concat.tot.len2993

str_overflow_abort2988:                           ; preds = %cat.sum.len2981
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len2993:                               ; preds = %cat.sum.len2987
  %arena.cur2996 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf2997 = call ptr @dva_arena_alloc(ptr %arena.cur2996, i64 %sum2991)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf2997, ptr align 1 %cat.seg2931, i64 %cat.seg2922, i1 false)
  %cat.dst3000 = getelementptr i8, ptr %concat.buf2997, i64 %cat.seg2922
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst3000, ptr align 1 @str.156, i64 4, i1 false)
  %cat.off3001 = add i64 %cat.seg2922, 4
  %cat.dst3002 = getelementptr i8, ptr %concat.buf2997, i64 %cat.off3001
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst3002, ptr align 1 %cat.seg2945, i64 %cat.seg2936, i1 false)
  %cat.off3003 = add i64 %cat.off3001, %cat.seg2936
  %cat.dst3004 = getelementptr i8, ptr %concat.buf2997, i64 %cat.off3003
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst3004, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off3005 = add i64 %cat.off3003, 1
  %cat.dst3006 = getelementptr i8, ptr %concat.buf2997, i64 %cat.off3005
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst3006, ptr align 1 %cat.seg2965, i64 %cat.seg2956, i1 false)
  %concat.nul3007 = getelementptr i8, ptr %concat.buf2997, i64 %sum2985
  store i8 0, ptr %concat.nul3007, align 1
  %arena.cur3008 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str3009 = call ptr @dva_arena_alloc(ptr %arena.cur3008, i64 16)
  %str.tag.gen3011 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift3012 = shl i64 %str.tag.gen3011, 48
  %str.tagged.len3013 = or i64 %sum2985, %str.tag.shift3012
  store i64 %str.tagged.len3013, ptr %concat.str3009, align 8
  %str.build.data.gep3014 = getelementptr inbounds { i64, ptr }, ptr %concat.str3009, i32 0, i32 1
  store ptr %concat.buf2997, ptr %str.build.data.gep3014, align 8
  br label %choice.exit

str_overflow_abort2994:                           ; preds = %cat.sum.len2987
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case3015:                                  ; preds = %concat.tot.len37
  %pay.gep3020 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr3021 = load ptr, ptr %pay.gep3020, align 8
  %cat.seg3026 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg3027 = and i64 %cat.seg3026, 281474976710655
  %str.tag3028 = lshr i64 %cat.seg3026, 48
  %tag.immortal3030 = icmp eq i64 %str.tag3028, 0
  %active.gen3031 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current3032 = icmp eq i64 %str.tag3028, %active.gen3031
  %tag.fast.ok3033 = or i1 %tag.immortal3030, %tag.current3032
  br i1 %tag.fast.ok3033, label %str_ok3029, label %tag.slow_check3034

str_ok3029:                                       ; preds = %tag.slow_check3034, %choice.case3015
  %cat.seg3035 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg3036 = load ptr, ptr %cat.seg3035, align 8
  %cat.seg3040 = load i64, ptr %concat.str, align 8
  %cat.seg3041 = and i64 %cat.seg3040, 281474976710655
  %str.tag3042 = lshr i64 %cat.seg3040, 48
  %tag.immortal3044 = icmp eq i64 %str.tag3042, 0
  %active.gen3045 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current3046 = icmp eq i64 %str.tag3042, %active.gen3045
  %tag.fast.ok3047 = or i1 %tag.immortal3044, %tag.current3046
  br i1 %tag.fast.ok3047, label %str_ok3043, label %tag.slow_check3048

tag.slow_check3034:                               ; preds = %choice.case3015
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag3028)
  br label %str_ok3029

str_ok3043:                                       ; preds = %tag.slow_check3048, %str_ok3029
  %cat.seg3050 = load ptr, ptr %str.build.data.gep, align 8
  %addtmp3055 = add i64 %2, 1
  %call.res3056 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %payload.ptr3021, i64 %addtmp3055)
  %arena.cur3057 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc3058 = call ptr @dva_arena_alloc(ptr %arena.cur3057, i64 16)
  store { i64, ptr } %call.res3056, ptr %ret.ub.alloc3058, align 8
  %cat.seg3060 = load i64, ptr %ret.ub.alloc3058, align 8
  %cat.seg3061 = and i64 %cat.seg3060, 281474976710655
  %str.tag3062 = lshr i64 %cat.seg3060, 48
  %tag.immortal3064 = icmp eq i64 %str.tag3062, 0
  %active.gen3065 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current3066 = icmp eq i64 %str.tag3062, %active.gen3065
  %tag.fast.ok3067 = or i1 %tag.immortal3064, %tag.current3066
  br i1 %tag.fast.ok3067, label %str_ok3063, label %tag.slow_check3068

tag.slow_check3048:                               ; preds = %str_ok3029
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag3042)
  br label %str_ok3043

str_ok3063:                                       ; preds = %tag.slow_check3068, %str_ok3043
  %cat.seg3069 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3058, i32 0, i32 1
  %cat.seg3070 = load ptr, ptr %cat.seg3069, align 8
  %cat.sum.len3071 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg3027, i64 10)
  %sum3072 = extractvalue { i64, i1 } %cat.sum.len3071, 0
  %ovf3073 = extractvalue { i64, i1 } %cat.sum.len3071, 1
  br i1 %ovf3073, label %str_overflow_abort3075, label %cat.sum.len3074

tag.slow_check3068:                               ; preds = %str_ok3043
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag3062)
  br label %str_ok3063

cat.sum.len3074:                                  ; preds = %str_ok3063
  %cat.sum.len3077 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum3072, i64 %cat.seg3041)
  %sum3078 = extractvalue { i64, i1 } %cat.sum.len3077, 0
  %ovf3079 = extractvalue { i64, i1 } %cat.sum.len3077, 1
  br i1 %ovf3079, label %str_overflow_abort3081, label %cat.sum.len3080

str_overflow_abort3075:                           ; preds = %str_ok3063
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len3080:                                  ; preds = %cat.sum.len3074
  %cat.sum.len3083 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum3078, i64 1)
  %sum3084 = extractvalue { i64, i1 } %cat.sum.len3083, 0
  %ovf3085 = extractvalue { i64, i1 } %cat.sum.len3083, 1
  br i1 %ovf3085, label %str_overflow_abort3087, label %cat.sum.len3086

str_overflow_abort3081:                           ; preds = %cat.sum.len3074
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len3086:                                  ; preds = %cat.sum.len3080
  %cat.sum.len3089 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum3084, i64 %cat.seg3061)
  %sum3090 = extractvalue { i64, i1 } %cat.sum.len3089, 0
  %ovf3091 = extractvalue { i64, i1 } %cat.sum.len3089, 1
  br i1 %ovf3091, label %str_overflow_abort3093, label %cat.sum.len3092

str_overflow_abort3087:                           ; preds = %cat.sum.len3080
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len3092:                                  ; preds = %cat.sum.len3086
  %concat.tot.len3095 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum3090, i64 1)
  %sum3096 = extractvalue { i64, i1 } %concat.tot.len3095, 0
  %ovf3097 = extractvalue { i64, i1 } %concat.tot.len3095, 1
  br i1 %ovf3097, label %str_overflow_abort3099, label %concat.tot.len3098

str_overflow_abort3093:                           ; preds = %cat.sum.len3086
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len3098:                               ; preds = %cat.sum.len3092
  %arena.cur3101 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf3102 = call ptr @dva_arena_alloc(ptr %arena.cur3101, i64 %sum3096)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf3102, ptr align 1 %cat.seg3036, i64 %cat.seg3027, i1 false)
  %cat.dst3105 = getelementptr i8, ptr %concat.buf3102, i64 %cat.seg3027
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst3105, ptr align 1 @str.157, i64 10, i1 false)
  %cat.off3106 = add i64 %cat.seg3027, 10
  %cat.dst3107 = getelementptr i8, ptr %concat.buf3102, i64 %cat.off3106
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst3107, ptr align 1 %cat.seg3050, i64 %cat.seg3041, i1 false)
  %cat.off3108 = add i64 %cat.off3106, %cat.seg3041
  %cat.dst3109 = getelementptr i8, ptr %concat.buf3102, i64 %cat.off3108
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst3109, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off3110 = add i64 %cat.off3108, 1
  %cat.dst3111 = getelementptr i8, ptr %concat.buf3102, i64 %cat.off3110
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst3111, ptr align 1 %cat.seg3070, i64 %cat.seg3061, i1 false)
  %concat.nul3112 = getelementptr i8, ptr %concat.buf3102, i64 %sum3090
  store i8 0, ptr %concat.nul3112, align 1
  %arena.cur3113 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str3114 = call ptr @dva_arena_alloc(ptr %arena.cur3113, i64 16)
  %str.tag.gen3116 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift3117 = shl i64 %str.tag.gen3116, 48
  %str.tagged.len3118 = or i64 %sum3090, %str.tag.shift3117
  store i64 %str.tagged.len3118, ptr %concat.str3114, align 8
  %str.build.data.gep3119 = getelementptr inbounds { i64, ptr }, ptr %concat.str3114, i32 0, i32 1
  store ptr %concat.buf3102, ptr %str.build.data.gep3119, align 8
  br label %choice.exit

str_overflow_abort3099:                           ; preds = %cat.sum.len3092
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case3120:                                  ; preds = %concat.tot.len37
  %pay.gep3125 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr3126 = load ptr, ptr %pay.gep3125, align 8
  %cat.seg3130 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg3131 = and i64 %cat.seg3130, 281474976710655
  %str.tag3132 = lshr i64 %cat.seg3130, 48
  %tag.immortal3134 = icmp eq i64 %str.tag3132, 0
  %active.gen3135 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current3136 = icmp eq i64 %str.tag3132, %active.gen3135
  %tag.fast.ok3137 = or i1 %tag.immortal3134, %tag.current3136
  br i1 %tag.fast.ok3137, label %str_ok3133, label %tag.slow_check3138

str_ok3133:                                       ; preds = %tag.slow_check3138, %choice.case3120
  %cat.seg3139 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg3140 = load ptr, ptr %cat.seg3139, align 8
  %fld.gep3143 = getelementptr inbounds { ptr, i64 }, ptr %payload.ptr3126, i32 0, i32 1
  %fld.load3144 = load i64, ptr %fld.gep3143, align 8
  %cat.ilen3146 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf3145, i64 %fld.load3144, i1 false)
  %cat.seg3150 = load i64, ptr %concat.str, align 8
  %cat.seg3151 = and i64 %cat.seg3150, 281474976710655
  %str.tag3152 = lshr i64 %cat.seg3150, 48
  %tag.immortal3154 = icmp eq i64 %str.tag3152, 0
  %active.gen3155 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current3156 = icmp eq i64 %str.tag3152, %active.gen3155
  %tag.fast.ok3157 = or i1 %tag.immortal3154, %tag.current3156
  br i1 %tag.fast.ok3157, label %str_ok3153, label %tag.slow_check3158

tag.slow_check3138:                               ; preds = %choice.case3120
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag3132)
  br label %str_ok3133

str_ok3153:                                       ; preds = %tag.slow_check3158, %str_ok3133
  %cat.seg3160 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len3161 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg3131, i64 9)
  %sum3162 = extractvalue { i64, i1 } %cat.sum.len3161, 0
  %ovf3163 = extractvalue { i64, i1 } %cat.sum.len3161, 1
  br i1 %ovf3163, label %str_overflow_abort3165, label %cat.sum.len3164

tag.slow_check3158:                               ; preds = %str_ok3133
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag3152)
  br label %str_ok3153

cat.sum.len3164:                                  ; preds = %str_ok3153
  %cat.sum.len3167 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum3162, i64 %cat.ilen3146)
  %sum3168 = extractvalue { i64, i1 } %cat.sum.len3167, 0
  %ovf3169 = extractvalue { i64, i1 } %cat.sum.len3167, 1
  br i1 %ovf3169, label %str_overflow_abort3171, label %cat.sum.len3170

str_overflow_abort3165:                           ; preds = %str_ok3153
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len3170:                                  ; preds = %cat.sum.len3164
  %cat.sum.len3173 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum3168, i64 1)
  %sum3174 = extractvalue { i64, i1 } %cat.sum.len3173, 0
  %ovf3175 = extractvalue { i64, i1 } %cat.sum.len3173, 1
  br i1 %ovf3175, label %str_overflow_abort3177, label %cat.sum.len3176

str_overflow_abort3171:                           ; preds = %cat.sum.len3164
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len3176:                                  ; preds = %cat.sum.len3170
  %cat.sum.len3179 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum3174, i64 %cat.seg3151)
  %sum3180 = extractvalue { i64, i1 } %cat.sum.len3179, 0
  %ovf3181 = extractvalue { i64, i1 } %cat.sum.len3179, 1
  br i1 %ovf3181, label %str_overflow_abort3183, label %cat.sum.len3182

str_overflow_abort3177:                           ; preds = %cat.sum.len3170
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len3182:                                  ; preds = %cat.sum.len3176
  %concat.tot.len3185 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum3180, i64 1)
  %sum3186 = extractvalue { i64, i1 } %concat.tot.len3185, 0
  %ovf3187 = extractvalue { i64, i1 } %concat.tot.len3185, 1
  br i1 %ovf3187, label %str_overflow_abort3189, label %concat.tot.len3188

str_overflow_abort3183:                           ; preds = %cat.sum.len3176
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len3188:                               ; preds = %cat.sum.len3182
  %arena.cur3191 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf3192 = call ptr @dva_arena_alloc(ptr %arena.cur3191, i64 %sum3186)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf3192, ptr align 1 %cat.seg3140, i64 %cat.seg3131, i1 false)
  %cat.dst3195 = getelementptr i8, ptr %concat.buf3192, i64 %cat.seg3131
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst3195, ptr align 1 @str.143, i64 9, i1 false)
  %cat.off3196 = add i64 %cat.seg3131, 9
  %cat.dst3197 = getelementptr i8, ptr %concat.buf3192, i64 %cat.off3196
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst3197, ptr align 1 %cat.ibuf3145, i64 %cat.ilen3146, i1 false)
  %cat.off3198 = add i64 %cat.off3196, %cat.ilen3146
  %cat.dst3199 = getelementptr i8, ptr %concat.buf3192, i64 %cat.off3198
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst3199, ptr align 1 @str.1, i64 1, i1 false)
  %cat.off3200 = add i64 %cat.off3198, 1
  %cat.dst3201 = getelementptr i8, ptr %concat.buf3192, i64 %cat.off3200
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst3201, ptr align 1 %cat.seg3160, i64 %cat.seg3151, i1 false)
  %concat.nul3202 = getelementptr i8, ptr %concat.buf3192, i64 %sum3180
  store i8 0, ptr %concat.nul3202, align 1
  %arena.cur3203 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str3204 = call ptr @dva_arena_alloc(ptr %arena.cur3203, i64 16)
  %str.tag.gen3206 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift3207 = shl i64 %str.tag.gen3206, 48
  %str.tagged.len3208 = or i64 %sum3180, %str.tag.shift3207
  store i64 %str.tagged.len3208, ptr %concat.str3204, align 8
  %str.build.data.gep3209 = getelementptr inbounds { i64, ptr }, ptr %concat.str3204, i32 0, i32 1
  store ptr %concat.buf3192, ptr %str.build.data.gep3209, align 8
  br label %choice.exit

str_overflow_abort3189:                           ; preds = %cat.sum.len3182
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case3210:                                  ; preds = %concat.tot.len37
  %pay.gep3215 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %payload.ptr3216 = load ptr, ptr %pay.gep3215, align 8
  %cat.seg3221 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg3222 = and i64 %cat.seg3221, 281474976710655
  %str.tag3223 = lshr i64 %cat.seg3221, 48
  %tag.immortal3225 = icmp eq i64 %str.tag3223, 0
  %active.gen3226 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current3227 = icmp eq i64 %str.tag3223, %active.gen3226
  %tag.fast.ok3228 = or i1 %tag.immortal3225, %tag.current3227
  br i1 %tag.fast.ok3228, label %str_ok3224, label %tag.slow_check3229

choice.next3211:                                  ; preds = %concat.tot.len37
  %call.res3319 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %1)
  %arena.cur3320 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc3321 = call ptr @dva_arena_alloc(ptr %arena.cur3320, i64 16)
  store { i64, ptr } %call.res3319, ptr %ret.ub.alloc3321, align 8
  %concat.lhs3322 = load i64, ptr %ret.ub.alloc, align 8
  %concat.lhs3323 = and i64 %concat.lhs3322, 281474976710655
  %str.tag3324 = lshr i64 %concat.lhs3322, 48
  %tag.immortal3326 = icmp eq i64 %str.tag3324, 0
  %active.gen3327 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current3328 = icmp eq i64 %str.tag3324, %active.gen3327
  %tag.fast.ok3329 = or i1 %tag.immortal3326, %tag.current3328
  br i1 %tag.fast.ok3329, label %str_ok3325, label %tag.slow_check3330

str_ok3224:                                       ; preds = %tag.slow_check3229, %choice.case3210
  %cat.seg3230 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg3231 = load ptr, ptr %cat.seg3230, align 8
  %cat.seg3235 = load i64, ptr %concat.str, align 8
  %cat.seg3236 = and i64 %cat.seg3235, 281474976710655
  %str.tag3237 = lshr i64 %cat.seg3235, 48
  %tag.immortal3239 = icmp eq i64 %str.tag3237, 0
  %active.gen3240 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current3241 = icmp eq i64 %str.tag3237, %active.gen3240
  %tag.fast.ok3242 = or i1 %tag.immortal3239, %tag.current3241
  br i1 %tag.fast.ok3242, label %str_ok3238, label %tag.slow_check3243

tag.slow_check3229:                               ; preds = %choice.case3210
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag3223)
  br label %str_ok3224

str_ok3238:                                       ; preds = %tag.slow_check3243, %str_ok3224
  %cat.seg3245 = load ptr, ptr %str.build.data.gep, align 8
  %addtmp3251 = add i64 %2, 1
  %call.res3252 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %payload.ptr3216, i64 %addtmp3251)
  %arena.cur3253 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc3254 = call ptr @dva_arena_alloc(ptr %arena.cur3253, i64 16)
  store { i64, ptr } %call.res3252, ptr %ret.ub.alloc3254, align 8
  %cat.seg3256 = load i64, ptr %ret.ub.alloc3254, align 8
  %cat.seg3257 = and i64 %cat.seg3256, 281474976710655
  %str.tag3258 = lshr i64 %cat.seg3256, 48
  %tag.immortal3260 = icmp eq i64 %str.tag3258, 0
  %active.gen3261 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current3262 = icmp eq i64 %str.tag3258, %active.gen3261
  %tag.fast.ok3263 = or i1 %tag.immortal3260, %tag.current3262
  br i1 %tag.fast.ok3263, label %str_ok3259, label %tag.slow_check3264

tag.slow_check3243:                               ; preds = %str_ok3224
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag3237)
  br label %str_ok3238

str_ok3259:                                       ; preds = %tag.slow_check3264, %str_ok3238
  %cat.seg3265 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3254, i32 0, i32 1
  %cat.seg3266 = load ptr, ptr %cat.seg3265, align 8
  %cat.sum.len3267 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg3222, i64 9)
  %sum3268 = extractvalue { i64, i1 } %cat.sum.len3267, 0
  %ovf3269 = extractvalue { i64, i1 } %cat.sum.len3267, 1
  br i1 %ovf3269, label %str_overflow_abort3271, label %cat.sum.len3270

tag.slow_check3264:                               ; preds = %str_ok3238
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag3258)
  br label %str_ok3259

cat.sum.len3270:                                  ; preds = %str_ok3259
  %cat.sum.len3273 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum3268, i64 %cat.seg3236)
  %sum3274 = extractvalue { i64, i1 } %cat.sum.len3273, 0
  %ovf3275 = extractvalue { i64, i1 } %cat.sum.len3273, 1
  br i1 %ovf3275, label %str_overflow_abort3277, label %cat.sum.len3276

str_overflow_abort3271:                           ; preds = %str_ok3259
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len3276:                                  ; preds = %cat.sum.len3270
  %cat.sum.len3279 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum3274, i64 1)
  %sum3280 = extractvalue { i64, i1 } %cat.sum.len3279, 0
  %ovf3281 = extractvalue { i64, i1 } %cat.sum.len3279, 1
  br i1 %ovf3281, label %str_overflow_abort3283, label %cat.sum.len3282

str_overflow_abort3277:                           ; preds = %cat.sum.len3270
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len3282:                                  ; preds = %cat.sum.len3276
  %cat.sum.len3285 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum3280, i64 %cat.seg3257)
  %sum3286 = extractvalue { i64, i1 } %cat.sum.len3285, 0
  %ovf3287 = extractvalue { i64, i1 } %cat.sum.len3285, 1
  br i1 %ovf3287, label %str_overflow_abort3289, label %cat.sum.len3288

str_overflow_abort3283:                           ; preds = %cat.sum.len3276
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len3288:                                  ; preds = %cat.sum.len3282
  %concat.tot.len3291 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum3286, i64 1)
  %sum3292 = extractvalue { i64, i1 } %concat.tot.len3291, 0
  %ovf3293 = extractvalue { i64, i1 } %concat.tot.len3291, 1
  br i1 %ovf3293, label %str_overflow_abort3295, label %concat.tot.len3294

str_overflow_abort3289:                           ; preds = %cat.sum.len3282
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len3294:                               ; preds = %cat.sum.len3288
  %arena.cur3297 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf3298 = call ptr @dva_arena_alloc(ptr %arena.cur3297, i64 %sum3292)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf3298, ptr align 1 %cat.seg3231, i64 %cat.seg3222, i1 false)
  %cat.dst3301 = getelementptr i8, ptr %concat.buf3298, i64 %cat.seg3222
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst3301, ptr align 1 @str.158, i64 9, i1 false)
  %cat.off3302 = add i64 %cat.seg3222, 9
  %cat.dst3303 = getelementptr i8, ptr %concat.buf3298, i64 %cat.off3302
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst3303, ptr align 1 %cat.seg3245, i64 %cat.seg3236, i1 false)
  %cat.off3304 = add i64 %cat.off3302, %cat.seg3236
  %cat.dst3305 = getelementptr i8, ptr %concat.buf3298, i64 %cat.off3304
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst3305, ptr align 1 @str.111, i64 1, i1 false)
  %cat.off3306 = add i64 %cat.off3304, 1
  %cat.dst3307 = getelementptr i8, ptr %concat.buf3298, i64 %cat.off3306
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst3307, ptr align 1 %cat.seg3266, i64 %cat.seg3257, i1 false)
  %concat.nul3308 = getelementptr i8, ptr %concat.buf3298, i64 %sum3286
  store i8 0, ptr %concat.nul3308, align 1
  %arena.cur3309 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str3310 = call ptr @dva_arena_alloc(ptr %arena.cur3309, i64 16)
  %str.tag.gen3312 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift3313 = shl i64 %str.tag.gen3312, 48
  %str.tagged.len3314 = or i64 %sum3286, %str.tag.shift3313
  store i64 %str.tagged.len3314, ptr %concat.str3310, align 8
  %str.build.data.gep3315 = getelementptr inbounds { i64, ptr }, ptr %concat.str3310, i32 0, i32 1
  store ptr %concat.buf3298, ptr %str.build.data.gep3315, align 8
  br label %choice.exit

str_overflow_abort3295:                           ; preds = %cat.sum.len3288
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok3325:                                       ; preds = %tag.slow_check3330, %choice.next3211
  %concat.lhs3331 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %concat.lhs3332 = load ptr, ptr %concat.lhs3331, align 8
  %concat.rhs3333 = load i64, ptr %ret.ub.alloc3321, align 8
  %concat.rhs3334 = and i64 %concat.rhs3333, 281474976710655
  %str.tag3335 = lshr i64 %concat.rhs3333, 48
  %tag.immortal3337 = icmp eq i64 %str.tag3335, 0
  %active.gen3338 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current3339 = icmp eq i64 %str.tag3335, %active.gen3338
  %tag.fast.ok3340 = or i1 %tag.immortal3337, %tag.current3339
  br i1 %tag.fast.ok3340, label %str_ok3336, label %tag.slow_check3341

tag.slow_check3330:                               ; preds = %choice.next3211
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag3324)
  br label %str_ok3325

str_ok3336:                                       ; preds = %tag.slow_check3341, %str_ok3325
  %concat.rhs3342 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3321, i32 0, i32 1
  %concat.rhs3343 = load ptr, ptr %concat.rhs3342, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs3323, i64 %concat.rhs3334)
  %sum3344 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf3345 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf3345, label %str_overflow_abort3347, label %concat.sum.len3346

tag.slow_check3341:                               ; preds = %str_ok3325
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag3335)
  br label %str_ok3336

concat.sum.len3346:                               ; preds = %str_ok3336
  %concat.tot.len3349 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum3344, i64 1)
  %sum3350 = extractvalue { i64, i1 } %concat.tot.len3349, 0
  %ovf3351 = extractvalue { i64, i1 } %concat.tot.len3349, 1
  br i1 %ovf3351, label %str_overflow_abort3353, label %concat.tot.len3352

str_overflow_abort3347:                           ; preds = %str_ok3336
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len3352:                               ; preds = %concat.sum.len3346
  %arena.cur3355 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf3356 = call ptr @dva_arena_alloc(ptr %arena.cur3355, i64 %sum3350)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf3356, ptr align 1 %concat.lhs3332, i64 %concat.lhs3323, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf3356, i64 %concat.lhs3323
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs3343, i64 %concat.rhs3334, i1 false)
  %concat.nul3357 = getelementptr i8, ptr %concat.buf3356, i64 %sum3344
  store i8 0, ptr %concat.nul3357, align 1
  %arena.cur3358 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str3359 = call ptr @dva_arena_alloc(ptr %arena.cur3358, i64 16)
  %str.tag.gen3361 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift3362 = shl i64 %str.tag.gen3361, 48
  %str.tagged.len3363 = or i64 %sum3344, %str.tag.shift3362
  store i64 %str.tagged.len3363, ptr %concat.str3359, align 8
  %str.build.data.gep3364 = getelementptr inbounds { i64, ptr }, ptr %concat.str3359, i32 0, i32 1
  store ptr %concat.buf3356, ptr %str.build.data.gep3364, align 8
  br label %choice.exit

str_overflow_abort3353:                           ; preds = %concat.sum.len3346
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"show::show_typed_tree_branches"(ptr %0, ptr %1, i64 %2) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 17)
  store i8 0, ptr %b.buf, align 1
  %call.res = call { i64, ptr } @"show::show_indent"(i64 %2)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %a.null = icmp eq ptr %1, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 24)
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 128)
  store i64 0, ptr %a.create5, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.bs.0 = phi ptr [ %a.create5, %a.create ], [ %1, %entry ]
  %arr.cycle.len7 = load i64, ptr %var.bs.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.bs.0, i32 0, i32 1
  %arr.cycle.data8 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.192

loop.header.192:                                  ; preds = %b.grow_done185, %a.after
  %builder.new.salloc.sroa.18.0 = phi i64 [ 16, %a.after ], [ %builder.new.salloc.sroa.18.2, %b.grow_done185 ]
  %builder.new.salloc.sroa.9.0 = phi ptr [ %b.buf, %a.after ], [ %builder.new.salloc.sroa.9.2, %b.grow_done185 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 0, %a.after ], [ %sum175, %b.grow_done185 ]
  %loop.idx.192.0 = phi i64 [ 0, %a.after ], [ %loop.next, %b.grow_done185 ]
  %loop.cond = icmp slt i64 %loop.idx.192.0, %arr.cycle.len7
  br i1 %loop.cond, label %loop.body.192, label %loop.exit.192

loop.body.192:                                    ; preds = %loop.header.192
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data8, i64 %loop.idx.192.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.load = load ptr, ptr %slot.i2p, align 8
  %tag.id = load i64, ptr %fld.load, align 8
  switch i64 %tag.id, label %choice.next60 [
    i64 2, label %choice.case
    i64 1, label %choice.exit
    i64 0, label %choice.case39
    i64 3, label %choice.case59
  ]

loop.exit.192:                                    ; preds = %loop.header.192
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.exit:                                      ; preds = %choice.then48, %choice.case39, %loop.body.192, %choice.next60, %choice.case59, %a.rd.done
  %choice.res64 = phi ptr [ %choice.res, %a.rd.done ], [ @str.68.struct, %choice.case59 ], [ @str.68.struct, %choice.next60 ], [ @str.67.struct, %loop.body.192 ], [ %ret.ub.alloc57, %choice.then48 ], [ @str.49.struct, %choice.case39 ]
  %cmptmp66 = icmp sgt i64 %loop.idx.192.0, 0
  %str.111.struct.str.49.struct = select i1 %cmptmp66, ptr @str.111.struct, ptr @str.49.struct
  %app.str.len71 = load i64, ptr %str.111.struct.str.49.struct, align 8
  %app.str.len72 = and i64 %app.str.len71, 281474976710655
  %str.tag = lshr i64 %app.str.len71, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.case:                                      ; preds = %loop.body.192
  %fld.gep11 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %slot.i2p, i32 0, i32 3
  %fld.load12 = load ptr, ptr %fld.gep11, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load12, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %choice.case
  %a.rd.len13 = load i64, ptr %fld.load12, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len13
  br i1 %a.rd.lt, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load12, i32 0, i32 1
  %a.rd.data14 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem = load i64, ptr %a.rd.data14, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %choice.case
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 56)
  store i64 4011, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.64.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.65.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 56)
  store i64 4011, ptr %err.alloc17, align 8
  %err.msg.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 1
  store ptr @str.66.struct, ptr %err.msg.gep19, align 8
  %err.file.gep20 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 2
  store ptr @str.65.struct, ptr %err.file.gep20, align 8
  %err.line.gep21 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 3
  store i64 0, ptr %err.line.gep21, align 8
  %err.col.gep22 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 4
  store i64 0, ptr %err.col.gep22, align 8
  %err.ctx.gep23 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep23, align 8
  %err.ctx1.gep25 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep23, i32 0, i32 1
  store i64 %a.rd.len13, ptr %err.ctx1.gep25, align 8
  %err.p2i26 = ptrtoint ptr %err.alloc17 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i26, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %pay.ptr = inttoptr i64 %a.rd.pay to ptr
  %choice.res = select i1 %a.rd.tag, ptr %pay.ptr, ptr @str.49.struct
  br label %choice.exit

choice.case39:                                    ; preds = %loop.body.192
  %fld.gep45 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %slot.i2p, i32 0, i32 1
  %fld.load46 = load ptr, ptr %fld.gep45, align 8
  %a.len.query47 = load i64, ptr %fld.load46, align 8
  %cmptmp = icmp slt i64 0, %a.len.query47
  br i1 %cmptmp, label %choice.then48, label %choice.exit

choice.then48:                                    ; preds = %choice.case39
  %call.res55 = call { i64, ptr } @"show::show_typed_exprs"(ptr %0, ptr %fld.load46)
  %arena.cur56 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc57 = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 16)
  store { i64, ptr } %call.res55, ptr %ret.ub.alloc57, align 8
  br label %choice.exit

choice.case59:                                    ; preds = %loop.body.192
  br label %choice.exit

choice.next60:                                    ; preds = %loop.body.192
  br label %choice.exit

str_ok:                                           ; preds = %tag.slow_check, %choice.exit
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.111.struct.str.49.struct, i32 0, i32 1
  %app.str.data73 = load ptr, ptr %app.str.data, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 %app.str.len72)
  %sum75 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf76 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf76, label %str_overflow_abort78, label %b.app.new.len77

tag.slow_check:                                   ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

b.app.new.len77:                                  ; preds = %str_ok
  %b.need.grow = icmp slt i64 %builder.new.salloc.sroa.18.0, %sum75
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort78:                             ; preds = %str_ok
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len77
  %b.cap2 = mul i64 %builder.new.salloc.sroa.18.0, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum75
  %b.new.cap = select i1 %b.cap.need, i64 %sum75, i64 %b.cap.grow
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum83 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf84 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf84, label %str_overflow_abort86, label %b.new.buf.len285

b.grow_done:                                      ; preds = %b.app.new.len77, %b.new.buf.len285
  %builder.new.salloc.sroa.18.1 = phi i64 [ %b.new.cap, %b.new.buf.len285 ], [ %builder.new.salloc.sroa.18.0, %b.app.new.len77 ]
  %builder.new.salloc.sroa.9.1 = phi ptr [ %b.new.buf2, %b.new.buf.len285 ], [ %builder.new.salloc.sroa.9.0, %b.app.new.len77 ]
  %b.app.dst = getelementptr i8, ptr %builder.new.salloc.sroa.9.1, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data73, i64 %app.str.len72, i1 false)
  %b.app.nul = getelementptr i8, ptr %builder.new.salloc.sroa.9.1, i64 %sum75
  store i8 0, ptr %b.app.nul, align 1
  %cat.seg93 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg94 = and i64 %cat.seg93, 281474976710655
  %str.tag95 = lshr i64 %cat.seg93, 48
  %tag.immortal97 = icmp eq i64 %str.tag95, 0
  %active.gen98 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current99 = icmp eq i64 %str.tag95, %active.gen98
  %tag.fast.ok100 = or i1 %tag.immortal97, %tag.current99
  br i1 %tag.fast.ok100, label %str_ok96, label %tag.slow_check101

b.new.buf.len285:                                 ; preds = %b.grow2
  %arena.cur88 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 %sum83)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %builder.new.salloc.sroa.9.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul, align 1
  br label %b.grow_done

str_overflow_abort86:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok96:                                         ; preds = %tag.slow_check101, %b.grow_done
  %cat.seg102 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg103 = load ptr, ptr %cat.seg102, align 8
  %cat.seg106 = load i64, ptr %choice.res64, align 8
  %cat.seg107 = and i64 %cat.seg106, 281474976710655
  %str.tag108 = lshr i64 %cat.seg106, 48
  %tag.immortal110 = icmp eq i64 %str.tag108, 0
  %active.gen111 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current112 = icmp eq i64 %str.tag108, %active.gen111
  %tag.fast.ok113 = or i1 %tag.immortal110, %tag.current112
  br i1 %tag.fast.ok113, label %str_ok109, label %tag.slow_check114

tag.slow_check101:                                ; preds = %b.grow_done
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag95)
  br label %str_ok96

str_ok109:                                        ; preds = %tag.slow_check114, %str_ok96
  %cat.seg115 = getelementptr inbounds { i64, ptr }, ptr %choice.res64, i32 0, i32 1
  %cat.seg116 = load ptr, ptr %cat.seg115, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg94, i64 1)
  %sum118 = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf119 = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf119, label %str_overflow_abort121, label %cat.sum.len120

tag.slow_check114:                                ; preds = %str_ok96
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag108)
  br label %str_ok109

cat.sum.len120:                                   ; preds = %str_ok109
  %cat.sum.len123 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum118, i64 %cat.seg107)
  %sum124 = extractvalue { i64, i1 } %cat.sum.len123, 0
  %ovf125 = extractvalue { i64, i1 } %cat.sum.len123, 1
  br i1 %ovf125, label %str_overflow_abort127, label %cat.sum.len126

str_overflow_abort121:                            ; preds = %str_ok109
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len126:                                   ; preds = %cat.sum.len120
  %cat.sum.len129 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum124, i64 2)
  %sum130 = extractvalue { i64, i1 } %cat.sum.len129, 0
  %ovf131 = extractvalue { i64, i1 } %cat.sum.len129, 1
  br i1 %ovf131, label %str_overflow_abort133, label %cat.sum.len132

str_overflow_abort127:                            ; preds = %cat.sum.len120
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len132:                                   ; preds = %cat.sum.len126
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum130, i64 1)
  %sum135 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf136 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf136, label %str_overflow_abort138, label %concat.tot.len137

str_overflow_abort133:                            ; preds = %cat.sum.len126
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len137:                                ; preds = %cat.sum.len132
  %arena.cur140 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 %sum135)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %cat.seg103, i64 %cat.seg94, i1 false)
  %cat.dst141 = getelementptr i8, ptr %concat.buf, i64 %cat.seg94
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst141, ptr align 1 @str.119, i64 1, i1 false)
  %cat.off142 = add i64 %cat.seg94, 1
  %cat.dst143 = getelementptr i8, ptr %concat.buf, i64 %cat.off142
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst143, ptr align 1 %cat.seg116, i64 %cat.seg107, i1 false)
  %cat.off144 = add i64 %cat.off142, %cat.seg107
  %cat.dst145 = getelementptr i8, ptr %concat.buf, i64 %cat.off144
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst145, ptr align 1 @str.120, i64 2, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum130
  store i8 0, ptr %concat.nul, align 1
  %arena.cur146 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum130, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %b.str.len147 = load i64, ptr %concat.str, align 8
  %b.str.len148 = and i64 %b.str.len147, 281474976710655
  %str.tag149 = lshr i64 %b.str.len147, 48
  %tag.immortal151 = icmp eq i64 %str.tag149, 0
  %active.gen152 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current153 = icmp eq i64 %str.tag149, %active.gen152
  %tag.fast.ok154 = or i1 %tag.immortal151, %tag.current153
  br i1 %tag.fast.ok154, label %str_ok150, label %tag.slow_check155

str_overflow_abort138:                            ; preds = %cat.sum.len132
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok150:                                        ; preds = %tag.slow_check155, %concat.tot.len137
  %fld.gep158 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %slot.i2p, i32 0, i32 5
  %addtmp = add i64 %2, 1
  %call.res160 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %fld.gep158, i64 %addtmp)
  %arena.cur161 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc162 = call ptr @dva_arena_alloc(ptr %arena.cur161, i64 16)
  store { i64, ptr } %call.res160, ptr %ret.ub.alloc162, align 8
  %b.str.len164 = load i64, ptr %ret.ub.alloc162, align 8
  %b.str.len165 = and i64 %b.str.len164, 281474976710655
  %str.tag166 = lshr i64 %b.str.len164, 48
  %tag.immortal168 = icmp eq i64 %str.tag166, 0
  %active.gen169 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current170 = icmp eq i64 %str.tag166, %active.gen169
  %tag.fast.ok171 = or i1 %tag.immortal168, %tag.current170
  br i1 %tag.fast.ok171, label %str_ok167, label %tag.slow_check172

tag.slow_check155:                                ; preds = %concat.tot.len137
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag149)
  br label %str_ok150

str_ok167:                                        ; preds = %tag.slow_check172, %str_ok150
  %b.add.len173 = add i64 %b.str.len148, %b.str.len165
  %b.rec.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum75, i64 %b.add.len173)
  %sum175 = extractvalue { i64, i1 } %b.rec.new.len, 0
  %ovf176 = extractvalue { i64, i1 } %b.rec.new.len, 1
  br i1 %ovf176, label %str_overflow_abort178, label %b.rec.new.len177

tag.slow_check172:                                ; preds = %str_ok150
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag166)
  br label %str_ok167

b.rec.new.len177:                                 ; preds = %str_ok167
  %b.need.grow182 = icmp slt i64 %builder.new.salloc.sroa.18.1, %sum175
  br i1 %b.need.grow182, label %b.grow2183, label %b.grow_done185

str_overflow_abort178:                            ; preds = %str_ok167
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2183:                                       ; preds = %b.rec.new.len177
  %b.cap2186 = mul i64 %builder.new.salloc.sroa.18.1, 2
  %b.cap.small187 = icmp slt i64 %b.cap2186, 16
  %b.cap.grow188 = select i1 %b.cap.small187, i64 16, i64 %b.cap2186
  %b.cap.need189 = icmp slt i64 %b.cap.grow188, %sum175
  %b.new.cap190 = select i1 %b.cap.need189, i64 %sum175, i64 %b.cap.grow188
  %b.new.buf.len2195 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap190, i64 1)
  %sum196 = extractvalue { i64, i1 } %b.new.buf.len2195, 0
  %ovf197 = extractvalue { i64, i1 } %b.new.buf.len2195, 1
  br i1 %ovf197, label %str_overflow_abort199, label %b.new.buf.len2198

b.grow_done185:                                   ; preds = %b.rec.new.len177, %b.new.buf.len2198
  %builder.new.salloc.sroa.18.2 = phi i64 [ %b.new.cap190, %b.new.buf.len2198 ], [ %builder.new.salloc.sroa.18.1, %b.rec.new.len177 ]
  %builder.new.salloc.sroa.9.2 = phi ptr [ %b.new.buf2202, %b.new.buf.len2198 ], [ %builder.new.salloc.sroa.9.1, %b.rec.new.len177 ]
  %b.rec.dst = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %sum75
  %b.str.data207 = load ptr, ptr %str.build.data.gep, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst, ptr align 1 %b.str.data207, i64 %b.str.len148, i1 false)
  %b.rec.off = add i64 %sum75, %b.str.len148
  %b.rec.dst208 = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %b.rec.off
  %b.str.data209 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc162, i32 0, i32 1
  %b.str.data210 = load ptr, ptr %b.str.data209, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst208, ptr align 1 %b.str.data210, i64 %b.str.len165, i1 false)
  %b.rec.nul = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %sum175
  store i8 0, ptr %b.rec.nul, align 1
  %loop.next = add i64 %loop.idx.192.0, 1
  br label %loop.header.192

b.new.buf.len2198:                                ; preds = %b.grow2183
  %arena.cur201 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2202 = call ptr @dva_arena_alloc(ptr %arena.cur201, i64 %sum196)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2202, ptr align 1 %builder.new.salloc.sroa.9.1, i64 %sum75, i1 false)
  %b.grow2.nul203 = getelementptr i8, ptr %b.new.buf2202, i64 %sum75
  store i8 0, ptr %b.grow2.nul203, align 1
  br label %b.grow_done185

str_overflow_abort199:                            ; preds = %b.grow2183
  call void @dva_abort_str_overflow_msg()
  unreachable

b.freeze.check:                                   ; preds = %loop.exit.192
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %builder.new.salloc.sroa.9.0, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %builder.new.salloc.sroa.9.0, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %builder.new.salloc.sroa.9.0, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %builder.new.salloc.sroa.0.0, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %builder.new.salloc.sroa.9.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.192
  %b.freeze.data217 = phi ptr [ %builder.new.salloc.sroa.9.0, %loop.exit.192 ], [ %builder.new.salloc.sroa.9.0, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur218 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur218, i64 16)
  %str.tag.gen220 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift221 = shl i64 %str.tag.gen220, 48
  %str.tagged.len222 = or i64 %builder.new.salloc.sroa.0.0, %str.tag.shift221
  store i64 %str.tagged.len222, ptr %builder.freeze, align 8
  %str.build.data.gep223 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data217, ptr %str.build.data.gep223, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"show::show_typed_stmt"(ptr %0, ptr %1) #3 {
entry:
  %tag.id = load i64, ptr %1, align 8
  switch i64 %tag.id, label %choice.exit [
    i64 0, label %choice.case
    i64 1, label %choice.case3
    i64 2, label %choice.case51
    i64 3, label %choice.case127
  ]

choice.exit:                                      ; preds = %entry, %concat.tot.len159, %concat.tot.len109, %concat.tot.len43, %choice.case
  %choice.res = phi ptr [ %ret.ub.alloc, %choice.case ], [ %concat.str, %concat.tot.len43 ], [ %concat.str121, %concat.tot.len109 ], [ %concat.str166, %concat.tot.len159 ], [ @str.49.struct, %entry ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %call.res = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %payload.ptr)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  br label %choice.exit

choice.case3:                                     ; preds = %entry
  %pay.gep8 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr9 = load ptr, ptr %pay.gep8, align 8
  %fld.load = load ptr, ptr %payload.ptr9, align 8
  %cat.seg12 = load i64, ptr %fld.load, align 8
  %cat.seg13 = and i64 %cat.seg12, 281474976710655
  %str.tag = lshr i64 %cat.seg12, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %choice.case3
  %cat.seg14 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %cat.seg15 = load ptr, ptr %cat.seg14, align 8
  %fld.gep18 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr9, i32 0, i32 2
  %call.res19 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %fld.gep18)
  %arena.cur20 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc21 = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 16)
  store { i64, ptr } %call.res19, ptr %ret.ub.alloc21, align 8
  %cat.seg23 = load i64, ptr %ret.ub.alloc21, align 8
  %cat.seg24 = and i64 %cat.seg23, 281474976710655
  %str.tag25 = lshr i64 %cat.seg23, 48
  %tag.immortal27 = icmp eq i64 %str.tag25, 0
  %active.gen28 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current29 = icmp eq i64 %str.tag25, %active.gen28
  %tag.fast.ok30 = or i1 %tag.immortal27, %tag.current29
  br i1 %tag.fast.ok30, label %str_ok26, label %tag.slow_check31

tag.slow_check:                                   ; preds = %choice.case3
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok26:                                         ; preds = %tag.slow_check31, %str_ok
  %cat.seg32 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc21, i32 0, i32 1
  %cat.seg33 = load ptr, ptr %cat.seg32, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg13, i64 3)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len34

tag.slow_check31:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag25)
  br label %str_ok26

cat.sum.len34:                                    ; preds = %str_ok26
  %cat.sum.len35 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg24)
  %sum36 = extractvalue { i64, i1 } %cat.sum.len35, 0
  %ovf37 = extractvalue { i64, i1 } %cat.sum.len35, 1
  br i1 %ovf37, label %str_overflow_abort39, label %cat.sum.len38

str_overflow_abort:                               ; preds = %str_ok26
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len38:                                    ; preds = %cat.sum.len34
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum36, i64 1)
  %sum41 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf42 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf42, label %str_overflow_abort44, label %concat.tot.len43

str_overflow_abort39:                             ; preds = %cat.sum.len34
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len43:                                 ; preds = %cat.sum.len38
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 %sum41)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %cat.seg15, i64 %cat.seg13, i1 false)
  %cat.dst47 = getelementptr i8, ptr %concat.buf, i64 %cat.seg13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst47, ptr align 1 @str.131, i64 3, i1 false)
  %cat.off48 = add i64 %cat.seg13, 3
  %cat.dst49 = getelementptr i8, ptr %concat.buf, i64 %cat.off48
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst49, ptr align 1 %cat.seg33, i64 %cat.seg24, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum36
  store i8 0, ptr %concat.nul, align 1
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum36, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_overflow_abort44:                             ; preds = %cat.sum.len38
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case51:                                    ; preds = %entry
  %pay.gep56 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr57 = load ptr, ptr %pay.gep56, align 8
  %fld.load62 = load ptr, ptr %payload.ptr57, align 8
  %cat.seg64 = load i64, ptr %fld.load62, align 8
  %cat.seg65 = and i64 %cat.seg64, 281474976710655
  %str.tag66 = lshr i64 %cat.seg64, 48
  %tag.immortal68 = icmp eq i64 %str.tag66, 0
  %active.gen69 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current70 = icmp eq i64 %str.tag66, %active.gen69
  %tag.fast.ok71 = or i1 %tag.immortal68, %tag.current70
  br i1 %tag.fast.ok71, label %str_ok67, label %tag.slow_check72

str_ok67:                                         ; preds = %tag.slow_check72, %choice.case51
  %cat.seg73 = getelementptr inbounds { i64, ptr }, ptr %fld.load62, i32 0, i32 1
  %cat.seg74 = load ptr, ptr %cat.seg73, align 8
  %fld.gep78 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr57, i32 0, i32 2
  %call.res79 = call { i64, ptr } @"show::show_typed_expr"(ptr %0, ptr %fld.gep78)
  %arena.cur80 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc81 = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 16)
  store { i64, ptr } %call.res79, ptr %ret.ub.alloc81, align 8
  %cat.seg83 = load i64, ptr %ret.ub.alloc81, align 8
  %cat.seg84 = and i64 %cat.seg83, 281474976710655
  %str.tag85 = lshr i64 %cat.seg83, 48
  %tag.immortal87 = icmp eq i64 %str.tag85, 0
  %active.gen88 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current89 = icmp eq i64 %str.tag85, %active.gen88
  %tag.fast.ok90 = or i1 %tag.immortal87, %tag.current89
  br i1 %tag.fast.ok90, label %str_ok86, label %tag.slow_check91

tag.slow_check72:                                 ; preds = %choice.case51
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag66)
  br label %str_ok67

str_ok86:                                         ; preds = %tag.slow_check91, %str_ok67
  %cat.seg92 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc81, i32 0, i32 1
  %cat.seg93 = load ptr, ptr %cat.seg92, align 8
  %cat.sum.len94 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg65, i64 5)
  %sum95 = extractvalue { i64, i1 } %cat.sum.len94, 0
  %ovf96 = extractvalue { i64, i1 } %cat.sum.len94, 1
  br i1 %ovf96, label %str_overflow_abort98, label %cat.sum.len97

tag.slow_check91:                                 ; preds = %str_ok67
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag85)
  br label %str_ok86

cat.sum.len97:                                    ; preds = %str_ok86
  %cat.sum.len100 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum95, i64 %cat.seg84)
  %sum101 = extractvalue { i64, i1 } %cat.sum.len100, 0
  %ovf102 = extractvalue { i64, i1 } %cat.sum.len100, 1
  br i1 %ovf102, label %str_overflow_abort104, label %cat.sum.len103

str_overflow_abort98:                             ; preds = %str_ok86
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len103:                                   ; preds = %cat.sum.len97
  %concat.tot.len106 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum101, i64 1)
  %sum107 = extractvalue { i64, i1 } %concat.tot.len106, 0
  %ovf108 = extractvalue { i64, i1 } %concat.tot.len106, 1
  br i1 %ovf108, label %str_overflow_abort110, label %concat.tot.len109

str_overflow_abort104:                            ; preds = %cat.sum.len97
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len109:                                ; preds = %cat.sum.len103
  %arena.cur112 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf113 = call ptr @dva_arena_alloc(ptr %arena.cur112, i64 %sum107)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf113, ptr align 1 %cat.seg74, i64 %cat.seg65, i1 false)
  %cat.dst116 = getelementptr i8, ptr %concat.buf113, i64 %cat.seg65
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst116, ptr align 1 @str.159, i64 5, i1 false)
  %cat.off117 = add i64 %cat.seg65, 5
  %cat.dst118 = getelementptr i8, ptr %concat.buf113, i64 %cat.off117
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst118, ptr align 1 %cat.seg93, i64 %cat.seg84, i1 false)
  %concat.nul119 = getelementptr i8, ptr %concat.buf113, i64 %sum101
  store i8 0, ptr %concat.nul119, align 1
  %arena.cur120 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 16)
  %str.tag.gen123 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift124 = shl i64 %str.tag.gen123, 48
  %str.tagged.len125 = or i64 %sum101, %str.tag.shift124
  store i64 %str.tagged.len125, ptr %concat.str121, align 8
  %str.build.data.gep126 = getelementptr inbounds { i64, ptr }, ptr %concat.str121, i32 0, i32 1
  store ptr %concat.buf113, ptr %str.build.data.gep126, align 8
  br label %choice.exit

str_overflow_abort110:                            ; preds = %cat.sum.len103
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case127:                                   ; preds = %entry
  %pay.gep132 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr133 = load ptr, ptr %pay.gep132, align 8
  %fld.load137 = load ptr, ptr %payload.ptr133, align 8
  %concat.rhs140 = load i64, ptr %fld.load137, align 8
  %concat.rhs141 = and i64 %concat.rhs140, 281474976710655
  %str.tag142 = lshr i64 %concat.rhs140, 48
  %tag.immortal144 = icmp eq i64 %str.tag142, 0
  %active.gen145 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current146 = icmp eq i64 %str.tag142, %active.gen145
  %tag.fast.ok147 = or i1 %tag.immortal144, %tag.current146
  br i1 %tag.fast.ok147, label %str_ok143, label %tag.slow_check148

str_ok143:                                        ; preds = %tag.slow_check148, %choice.case127
  %concat.rhs149 = getelementptr inbounds { i64, ptr }, ptr %fld.load137, i32 0, i32 1
  %concat.rhs150 = load ptr, ptr %concat.rhs149, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 5, i64 %concat.rhs141)
  %sum151 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf152 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf152, label %str_overflow_abort154, label %concat.sum.len153

tag.slow_check148:                                ; preds = %choice.case127
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag142)
  br label %str_ok143

concat.sum.len153:                                ; preds = %str_ok143
  %concat.tot.len156 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum151, i64 1)
  %sum157 = extractvalue { i64, i1 } %concat.tot.len156, 0
  %ovf158 = extractvalue { i64, i1 } %concat.tot.len156, 1
  br i1 %ovf158, label %str_overflow_abort160, label %concat.tot.len159

str_overflow_abort154:                            ; preds = %str_ok143
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len159:                                ; preds = %concat.sum.len153
  %arena.cur162 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf163 = call ptr @dva_arena_alloc(ptr %arena.cur162, i64 %sum157)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf163, ptr align 1 @str.160, i64 5, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf163, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs150, i64 %concat.rhs141, i1 false)
  %concat.nul164 = getelementptr i8, ptr %concat.buf163, i64 %sum151
  store i8 0, ptr %concat.nul164, align 1
  %arena.cur165 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str166 = call ptr @dva_arena_alloc(ptr %arena.cur165, i64 16)
  %str.tag.gen168 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift169 = shl i64 %str.tag.gen168, 48
  %str.tagged.len170 = or i64 %sum151, %str.tag.shift169
  store i64 %str.tagged.len170, ptr %concat.str166, align 8
  %str.build.data.gep171 = getelementptr inbounds { i64, ptr }, ptr %concat.str166, i32 0, i32 1
  store ptr %concat.buf163, ptr %str.build.data.gep171, align 8
  br label %choice.exit

str_overflow_abort160:                            ; preds = %concat.sum.len153
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"show::show_typed_tree_stmt"(ptr %0, ptr %1, i64 %2) #3 {
entry:
  %call.res = call { i64, ptr } @"show::show_indent"(i64 %2)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %tag.id = load i64, ptr %1, align 8
  switch i64 %tag.id, label %choice.exit [
    i64 0, label %choice.case
    i64 1, label %choice.case8
    i64 2, label %choice.case87
    i64 3, label %choice.case195
  ]

choice.exit:                                      ; preds = %entry, %concat.tot.len254, %concat.tot.len173, %concat.tot.len75, %choice.case
  %choice.res = phi ptr [ %ret.ub.alloc7, %choice.case ], [ %concat.str, %concat.tot.len75 ], [ %concat.str189, %concat.tot.len173 ], [ %concat.str268, %concat.tot.len254 ], [ @str.49.struct, %entry ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %call.res5 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %payload.ptr, i64 %2)
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 16)
  store { i64, ptr } %call.res5, ptr %ret.ub.alloc7, align 8
  br label %choice.exit

choice.case8:                                     ; preds = %entry
  %pay.gep13 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr14 = load ptr, ptr %pay.gep13, align 8
  %cat.seg17 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg18 = and i64 %cat.seg17, 281474976710655
  %str.tag = lshr i64 %cat.seg17, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %choice.case8
  %cat.seg19 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg20 = load ptr, ptr %cat.seg19, align 8
  %fld.load = load ptr, ptr %payload.ptr14, align 8
  %cat.seg23 = load i64, ptr %fld.load, align 8
  %cat.seg24 = and i64 %cat.seg23, 281474976710655
  %str.tag25 = lshr i64 %cat.seg23, 48
  %tag.immortal27 = icmp eq i64 %str.tag25, 0
  %active.gen28 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current29 = icmp eq i64 %str.tag25, %active.gen28
  %tag.fast.ok30 = or i1 %tag.immortal27, %tag.current29
  br i1 %tag.fast.ok30, label %str_ok26, label %tag.slow_check31

tag.slow_check:                                   ; preds = %choice.case8
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok26:                                         ; preds = %tag.slow_check31, %str_ok
  %cat.seg32 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %cat.seg33 = load ptr, ptr %cat.seg32, align 8
  %fld.gep37 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr14, i32 0, i32 2
  %addtmp = add i64 %2, 1
  %call.res39 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %fld.gep37, i64 %addtmp)
  %arena.cur40 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc41 = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 16)
  store { i64, ptr } %call.res39, ptr %ret.ub.alloc41, align 8
  %cat.seg43 = load i64, ptr %ret.ub.alloc41, align 8
  %cat.seg44 = and i64 %cat.seg43, 281474976710655
  %str.tag45 = lshr i64 %cat.seg43, 48
  %tag.immortal47 = icmp eq i64 %str.tag45, 0
  %active.gen48 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current49 = icmp eq i64 %str.tag45, %active.gen48
  %tag.fast.ok50 = or i1 %tag.immortal47, %tag.current49
  br i1 %tag.fast.ok50, label %str_ok46, label %tag.slow_check51

tag.slow_check31:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag25)
  br label %str_ok26

str_ok46:                                         ; preds = %tag.slow_check51, %str_ok26
  %cat.seg52 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc41, i32 0, i32 1
  %cat.seg53 = load ptr, ptr %cat.seg52, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg18, i64 8)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len54

tag.slow_check51:                                 ; preds = %str_ok26
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag45)
  br label %str_ok46

cat.sum.len54:                                    ; preds = %str_ok46
  %cat.sum.len55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg24)
  %sum56 = extractvalue { i64, i1 } %cat.sum.len55, 0
  %ovf57 = extractvalue { i64, i1 } %cat.sum.len55, 1
  br i1 %ovf57, label %str_overflow_abort59, label %cat.sum.len58

str_overflow_abort:                               ; preds = %str_ok46
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len58:                                    ; preds = %cat.sum.len54
  %cat.sum.len61 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum56, i64 2)
  %sum62 = extractvalue { i64, i1 } %cat.sum.len61, 0
  %ovf63 = extractvalue { i64, i1 } %cat.sum.len61, 1
  br i1 %ovf63, label %str_overflow_abort65, label %cat.sum.len64

str_overflow_abort59:                             ; preds = %cat.sum.len54
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len64:                                    ; preds = %cat.sum.len58
  %cat.sum.len67 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum62, i64 %cat.seg44)
  %sum68 = extractvalue { i64, i1 } %cat.sum.len67, 0
  %ovf69 = extractvalue { i64, i1 } %cat.sum.len67, 1
  br i1 %ovf69, label %str_overflow_abort71, label %cat.sum.len70

str_overflow_abort65:                             ; preds = %cat.sum.len58
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len70:                                    ; preds = %cat.sum.len64
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum68, i64 1)
  %sum73 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf74 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf74, label %str_overflow_abort76, label %concat.tot.len75

str_overflow_abort71:                             ; preds = %cat.sum.len64
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len75:                                 ; preds = %cat.sum.len70
  %arena.cur78 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 %sum73)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %cat.seg20, i64 %cat.seg18, i1 false)
  %cat.dst79 = getelementptr i8, ptr %concat.buf, i64 %cat.seg18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst79, ptr align 1 @str.161, i64 8, i1 false)
  %cat.off80 = add i64 %cat.seg18, 8
  %cat.dst81 = getelementptr i8, ptr %concat.buf, i64 %cat.off80
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst81, ptr align 1 %cat.seg33, i64 %cat.seg24, i1 false)
  %cat.off82 = add i64 %cat.off80, %cat.seg24
  %cat.dst83 = getelementptr i8, ptr %concat.buf, i64 %cat.off82
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst83, ptr align 1 @str.113, i64 2, i1 false)
  %cat.off84 = add i64 %cat.off82, 2
  %cat.dst85 = getelementptr i8, ptr %concat.buf, i64 %cat.off84
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst85, ptr align 1 %cat.seg53, i64 %cat.seg44, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum68
  store i8 0, ptr %concat.nul, align 1
  %arena.cur86 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur86, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum68, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_overflow_abort76:                             ; preds = %cat.sum.len70
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case87:                                    ; preds = %entry
  %pay.gep92 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr93 = load ptr, ptr %pay.gep92, align 8
  %cat.seg98 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg99 = and i64 %cat.seg98, 281474976710655
  %str.tag100 = lshr i64 %cat.seg98, 48
  %tag.immortal102 = icmp eq i64 %str.tag100, 0
  %active.gen103 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current104 = icmp eq i64 %str.tag100, %active.gen103
  %tag.fast.ok105 = or i1 %tag.immortal102, %tag.current104
  br i1 %tag.fast.ok105, label %str_ok101, label %tag.slow_check106

str_ok101:                                        ; preds = %tag.slow_check106, %choice.case87
  %cat.seg107 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg108 = load ptr, ptr %cat.seg107, align 8
  %fld.load112 = load ptr, ptr %payload.ptr93, align 8
  %cat.seg114 = load i64, ptr %fld.load112, align 8
  %cat.seg115 = and i64 %cat.seg114, 281474976710655
  %str.tag116 = lshr i64 %cat.seg114, 48
  %tag.immortal118 = icmp eq i64 %str.tag116, 0
  %active.gen119 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current120 = icmp eq i64 %str.tag116, %active.gen119
  %tag.fast.ok121 = or i1 %tag.immortal118, %tag.current120
  br i1 %tag.fast.ok121, label %str_ok117, label %tag.slow_check122

tag.slow_check106:                                ; preds = %choice.case87
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag100)
  br label %str_ok101

str_ok117:                                        ; preds = %tag.slow_check122, %str_ok101
  %cat.seg123 = getelementptr inbounds { i64, ptr }, ptr %fld.load112, i32 0, i32 1
  %cat.seg124 = load ptr, ptr %cat.seg123, align 8
  %fld.gep128 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr93, i32 0, i32 2
  %addtmp130 = add i64 %2, 1
  %call.res131 = call { i64, ptr } @"show::show_typed_tree"(ptr %0, ptr %fld.gep128, i64 %addtmp130)
  %arena.cur132 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 16)
  store { i64, ptr } %call.res131, ptr %ret.ub.alloc133, align 8
  %cat.seg135 = load i64, ptr %ret.ub.alloc133, align 8
  %cat.seg136 = and i64 %cat.seg135, 281474976710655
  %str.tag137 = lshr i64 %cat.seg135, 48
  %tag.immortal139 = icmp eq i64 %str.tag137, 0
  %active.gen140 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current141 = icmp eq i64 %str.tag137, %active.gen140
  %tag.fast.ok142 = or i1 %tag.immortal139, %tag.current141
  br i1 %tag.fast.ok142, label %str_ok138, label %tag.slow_check143

tag.slow_check122:                                ; preds = %str_ok101
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag116)
  br label %str_ok117

str_ok138:                                        ; preds = %tag.slow_check143, %str_ok117
  %cat.seg144 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc133, i32 0, i32 1
  %cat.seg145 = load ptr, ptr %cat.seg144, align 8
  %cat.sum.len146 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg99, i64 14)
  %sum147 = extractvalue { i64, i1 } %cat.sum.len146, 0
  %ovf148 = extractvalue { i64, i1 } %cat.sum.len146, 1
  br i1 %ovf148, label %str_overflow_abort150, label %cat.sum.len149

tag.slow_check143:                                ; preds = %str_ok117
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag137)
  br label %str_ok138

cat.sum.len149:                                   ; preds = %str_ok138
  %cat.sum.len152 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum147, i64 %cat.seg115)
  %sum153 = extractvalue { i64, i1 } %cat.sum.len152, 0
  %ovf154 = extractvalue { i64, i1 } %cat.sum.len152, 1
  br i1 %ovf154, label %str_overflow_abort156, label %cat.sum.len155

str_overflow_abort150:                            ; preds = %str_ok138
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len155:                                   ; preds = %cat.sum.len149
  %cat.sum.len158 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum153, i64 2)
  %sum159 = extractvalue { i64, i1 } %cat.sum.len158, 0
  %ovf160 = extractvalue { i64, i1 } %cat.sum.len158, 1
  br i1 %ovf160, label %str_overflow_abort162, label %cat.sum.len161

str_overflow_abort156:                            ; preds = %cat.sum.len149
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len161:                                   ; preds = %cat.sum.len155
  %cat.sum.len164 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum159, i64 %cat.seg136)
  %sum165 = extractvalue { i64, i1 } %cat.sum.len164, 0
  %ovf166 = extractvalue { i64, i1 } %cat.sum.len164, 1
  br i1 %ovf166, label %str_overflow_abort168, label %cat.sum.len167

str_overflow_abort162:                            ; preds = %cat.sum.len155
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len167:                                   ; preds = %cat.sum.len161
  %concat.tot.len170 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum165, i64 1)
  %sum171 = extractvalue { i64, i1 } %concat.tot.len170, 0
  %ovf172 = extractvalue { i64, i1 } %concat.tot.len170, 1
  br i1 %ovf172, label %str_overflow_abort174, label %concat.tot.len173

str_overflow_abort168:                            ; preds = %cat.sum.len161
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len173:                                ; preds = %cat.sum.len167
  %arena.cur176 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf177 = call ptr @dva_arena_alloc(ptr %arena.cur176, i64 %sum171)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf177, ptr align 1 %cat.seg108, i64 %cat.seg99, i1 false)
  %cat.dst180 = getelementptr i8, ptr %concat.buf177, i64 %cat.seg99
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst180, ptr align 1 @str.162, i64 14, i1 false)
  %cat.off181 = add i64 %cat.seg99, 14
  %cat.dst182 = getelementptr i8, ptr %concat.buf177, i64 %cat.off181
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst182, ptr align 1 %cat.seg124, i64 %cat.seg115, i1 false)
  %cat.off183 = add i64 %cat.off181, %cat.seg115
  %cat.dst184 = getelementptr i8, ptr %concat.buf177, i64 %cat.off183
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst184, ptr align 1 @str.113, i64 2, i1 false)
  %cat.off185 = add i64 %cat.off183, 2
  %cat.dst186 = getelementptr i8, ptr %concat.buf177, i64 %cat.off185
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst186, ptr align 1 %cat.seg145, i64 %cat.seg136, i1 false)
  %concat.nul187 = getelementptr i8, ptr %concat.buf177, i64 %sum165
  store i8 0, ptr %concat.nul187, align 1
  %arena.cur188 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str189 = call ptr @dva_arena_alloc(ptr %arena.cur188, i64 16)
  %str.tag.gen191 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift192 = shl i64 %str.tag.gen191, 48
  %str.tagged.len193 = or i64 %sum165, %str.tag.shift192
  store i64 %str.tagged.len193, ptr %concat.str189, align 8
  %str.build.data.gep194 = getelementptr inbounds { i64, ptr }, ptr %concat.str189, i32 0, i32 1
  store ptr %concat.buf177, ptr %str.build.data.gep194, align 8
  br label %choice.exit

str_overflow_abort174:                            ; preds = %cat.sum.len167
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case195:                                   ; preds = %entry
  %pay.gep200 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr201 = load ptr, ptr %pay.gep200, align 8
  %cat.seg205 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg206 = and i64 %cat.seg205, 281474976710655
  %str.tag207 = lshr i64 %cat.seg205, 48
  %tag.immortal209 = icmp eq i64 %str.tag207, 0
  %active.gen210 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current211 = icmp eq i64 %str.tag207, %active.gen210
  %tag.fast.ok212 = or i1 %tag.immortal209, %tag.current211
  br i1 %tag.fast.ok212, label %str_ok208, label %tag.slow_check213

str_ok208:                                        ; preds = %tag.slow_check213, %choice.case195
  %cat.seg214 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg215 = load ptr, ptr %cat.seg214, align 8
  %fld.load219 = load ptr, ptr %payload.ptr201, align 8
  %cat.seg221 = load i64, ptr %fld.load219, align 8
  %cat.seg222 = and i64 %cat.seg221, 281474976710655
  %str.tag223 = lshr i64 %cat.seg221, 48
  %tag.immortal225 = icmp eq i64 %str.tag223, 0
  %active.gen226 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current227 = icmp eq i64 %str.tag223, %active.gen226
  %tag.fast.ok228 = or i1 %tag.immortal225, %tag.current227
  br i1 %tag.fast.ok228, label %str_ok224, label %tag.slow_check229

tag.slow_check213:                                ; preds = %choice.case195
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag207)
  br label %str_ok208

str_ok224:                                        ; preds = %tag.slow_check229, %str_ok208
  %cat.seg230 = getelementptr inbounds { i64, ptr }, ptr %fld.load219, i32 0, i32 1
  %cat.seg231 = load ptr, ptr %cat.seg230, align 8
  %cat.sum.len233 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg206, i64 9)
  %sum234 = extractvalue { i64, i1 } %cat.sum.len233, 0
  %ovf235 = extractvalue { i64, i1 } %cat.sum.len233, 1
  br i1 %ovf235, label %str_overflow_abort237, label %cat.sum.len236

tag.slow_check229:                                ; preds = %str_ok208
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag223)
  br label %str_ok224

cat.sum.len236:                                   ; preds = %str_ok224
  %cat.sum.len239 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum234, i64 %cat.seg222)
  %sum240 = extractvalue { i64, i1 } %cat.sum.len239, 0
  %ovf241 = extractvalue { i64, i1 } %cat.sum.len239, 1
  br i1 %ovf241, label %str_overflow_abort243, label %cat.sum.len242

str_overflow_abort237:                            ; preds = %str_ok224
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len242:                                   ; preds = %cat.sum.len236
  %cat.sum.len245 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum240, i64 1)
  %sum246 = extractvalue { i64, i1 } %cat.sum.len245, 0
  %ovf247 = extractvalue { i64, i1 } %cat.sum.len245, 1
  br i1 %ovf247, label %str_overflow_abort249, label %cat.sum.len248

str_overflow_abort243:                            ; preds = %cat.sum.len236
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len248:                                   ; preds = %cat.sum.len242
  %concat.tot.len251 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum246, i64 1)
  %sum252 = extractvalue { i64, i1 } %concat.tot.len251, 0
  %ovf253 = extractvalue { i64, i1 } %concat.tot.len251, 1
  br i1 %ovf253, label %str_overflow_abort255, label %concat.tot.len254

str_overflow_abort249:                            ; preds = %cat.sum.len242
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len254:                                ; preds = %cat.sum.len248
  %arena.cur257 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf258 = call ptr @dva_arena_alloc(ptr %arena.cur257, i64 %sum252)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf258, ptr align 1 %cat.seg215, i64 %cat.seg206, i1 false)
  %cat.dst261 = getelementptr i8, ptr %concat.buf258, i64 %cat.seg206
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst261, ptr align 1 @str.103, i64 9, i1 false)
  %cat.off262 = add i64 %cat.seg206, 9
  %cat.dst263 = getelementptr i8, ptr %concat.buf258, i64 %cat.off262
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst263, ptr align 1 %cat.seg231, i64 %cat.seg222, i1 false)
  %cat.off264 = add i64 %cat.off262, %cat.seg222
  %cat.dst265 = getelementptr i8, ptr %concat.buf258, i64 %cat.off264
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst265, ptr align 1 @str.1, i64 1, i1 false)
  %concat.nul266 = getelementptr i8, ptr %concat.buf258, i64 %sum246
  store i8 0, ptr %concat.nul266, align 1
  %arena.cur267 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str268 = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 16)
  %str.tag.gen270 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift271 = shl i64 %str.tag.gen270, 48
  %str.tagged.len272 = or i64 %sum246, %str.tag.shift271
  store i64 %str.tagged.len272, ptr %concat.str268, align 8
  %str.build.data.gep273 = getelementptr inbounds { i64, ptr }, ptr %concat.str268, i32 0, i32 1
  store ptr %concat.buf258, ptr %str.build.data.gep273, align 8
  br label %choice.exit

str_overflow_abort255:                            ; preds = %cat.sum.len248
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define void @"show::dump_typed_program"(ptr %0, ptr %1, i1 %2) #3 {
entry:
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
  %var.prog.0 = phi ptr [ %a.create1, %a.create ], [ %1, %entry ]
  %arr.cycle.len3 = load i64, ptr %var.prog.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.prog.0, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.193

loop.header.193:                                  ; preds = %choice.exit, %a.after
  %loop.idx.193.0 = phi i64 [ 0, %a.after ], [ %loop.next, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.193.0, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.193, label %loop.exit.193

loop.body.193:                                    ; preds = %loop.header.193
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %loop.idx.193.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  br i1 %2, label %choice.then, label %choice.else

loop.exit.193:                                    ; preds = %loop.header.193
  ret void

choice.then:                                      ; preds = %loop.body.193
  %call.res = call { i64, ptr } @"show::show_typed_tree_stmt"(ptr %0, ptr %slot.i2p, i64 0)
  %arena.cur8 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %call.res9 = call i64 @"show::#print"(ptr %ret.ub.alloc)
  br label %choice.exit

choice.else:                                      ; preds = %loop.body.193
  %call.res12 = call { i64, ptr } @"show::show_typed_stmt"(ptr %0, ptr %slot.i2p)
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc14 = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 16)
  store { i64, ptr } %call.res12, ptr %ret.ub.alloc14, align 8
  %call.res15 = call i64 @"show::#print"(ptr %ret.ub.alloc14)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %loop.next = add i64 %loop.idx.193.0, 1
  br label %loop.header.193
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { "nounwind" }
attributes #4 = { cold noinline "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { cold noreturn "nounwind" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
