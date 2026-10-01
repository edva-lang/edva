package main

import "core:fmt"

main :: proc() {
	sum := 0
	for i in 1..<800000000 {
		sum = sum + i
	}
	fmt.println(sum)
}
