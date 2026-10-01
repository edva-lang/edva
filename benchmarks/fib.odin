package main

import "core:fmt"

fib :: proc(n: int) -> int {
	if n < 2 {
		return n
	}
	return fib(n - 1) + fib(n - 2)
}

main :: proc() {
	res := fib(40)
	fmt.println(res)
}
