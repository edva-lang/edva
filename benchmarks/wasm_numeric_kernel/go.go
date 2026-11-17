package main

import (
	"fmt"
	"os"
	"strconv"
)

type body struct {
	x, y, z, vx, vy, vz int64
}

func runSteps(steps int64) int64 {
	var b [8]body
	for k := int64(0); k < 8; k++ {
		b[k] = body{
			x:  (k + 1) * 1000,
			y:  (k + 2) * 2000,
			z:  (k + 3) * 3000,
			vx: (k % 3) - 1,
			vy: ((k + 1) % 3) - 1,
			vz: ((k + 2) % 3) - 1,
		}
	}
	for s := int64(0); s < steps; s++ {
		for i := 0; i < 8; i++ {
			bi := b[i]
			var ax, ay, az int64
			for j := 0; j < 8; j++ {
				if j != i {
					bj := b[j]
					dx := bj.x - bi.x
					dy := bj.y - bi.y
					dz := bj.z - bi.z
					r2 := dx*dx + dy*dy + dz*dz + 1000
					inv := int64(1000000000) / r2
					ax += (dx * inv) / 1024
					ay += (dy * inv) / 1024
					az += (dz * inv) / 1024
				}
			}
			b[i].vx = (bi.vx + ax) % 100000
			b[i].vy = (bi.vy + ay) % 100000
			b[i].vz = (bi.vz + az) % 100000
		}
		for i := 0; i < 8; i++ {
			b[i].x = (b[i].x + b[i].vx) % 1000000
			b[i].y = (b[i].y + b[i].vy) % 1000000
			b[i].z = (b[i].z + b[i].vz) % 1000000
		}
	}
	var sum int64
	for i := 0; i < 8; i++ {
		sum = (sum + b[i].x*3 + b[i].y*5 + b[i].z*7 + b[i].vx*11) % 1000000007
	}
	return ((sum % 1000000007) + 1000000007) % 1000000007
}

func main() {
	n := int64(400000)
	if len(os.Args) > 1 {
		if v, err := strconv.ParseInt(os.Args[1], 10, 64); err == nil && v > 0 {
			n = v
		}
	}
	fmt.Printf("kernel=%d\n", runSteps(n))
}
