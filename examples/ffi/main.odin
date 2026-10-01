package main

import "core:fmt"

foreign import dva "lib.o"
foreign dva {
	dva_add   :: proc(a, b: i64) -> i64 ---
	dva_fact  :: proc(n: i64) -> i64 ---
	dva_greet :: proc(n: i64) -> i64 ---
}

main :: proc() {
	fmt.println("dva_add(2,3)   =", dva_add(2, 3))
	fmt.println("dva_fact(5)    =", dva_fact(5))
	fmt.println("dva_greet(5)   =", dva_greet(5), "(byte length of greeting)")
}
