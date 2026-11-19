#ifdef __wasm__
typedef __INT64_TYPE__ int64_t;
#else
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#endif

typedef struct {
    int64_t x, y, z;
    int64_t vx, vy, vz;
} Body;

__attribute__((noinline))
int64_t run_steps(int64_t steps) {
    Body b[8];
    for (int64_t k = 0; k < 8; k++) {
        b[k].x = (k + 1) * 1000;
        b[k].y = (k + 2) * 2000;
        b[k].z = (k + 3) * 3000;
        b[k].vx = (k % 3) - 1;
        b[k].vy = ((k + 1) % 3) - 1;
        b[k].vz = ((k + 2) % 3) - 1;
    }

    for (int64_t s = 0; s < steps; s++) {
        for (int i = 0; i < 8; i++) {
            Body bi = b[i];
            int64_t ax = 0, ay = 0, az = 0;
            for (int j = 0; j < 8; j++) {
                if (j != i) {
                    Body bj = b[j];
                    int64_t dx = bj.x - bi.x;
                    int64_t dy = bj.y - bi.y;
                    int64_t dz = bj.z - bi.z;
                    int64_t r2 = dx * dx + dy * dy + dz * dz + 1000;
                    int64_t inv = 1000000000LL / r2;
                    ax += (dx * inv) / 1024;
                    ay += (dy * inv) / 1024;
                    az += (dz * inv) / 1024;
                }
            }
            b[i].vx = (bi.vx + ax) % 100000;
            b[i].vy = (bi.vy + ay) % 100000;
            b[i].vz = (bi.vz + az) % 100000;
        }
        for (int i = 0; i < 8; i++) {
            b[i].x = (b[i].x + b[i].vx) % 1000000;
            b[i].y = (b[i].y + b[i].vy) % 1000000;
            b[i].z = (b[i].z + b[i].vz) % 1000000;
        }
    }

    int64_t sum = 0;
    for (int i = 0; i < 8; i++) {
        sum = (sum + b[i].x * 3 + b[i].y * 5 + b[i].z * 7 + b[i].vx * 11) % 1000000007LL;
    }
    return ((sum % 1000000007LL) + 1000000007LL) % 1000000007LL;
}

int64_t run_kernel(int64_t n) {
    return run_steps(n);
}

#ifndef __wasm__
int main(int argc, char **argv) {
    int64_t n = 400000;
    if (argc >= 2) {
        int64_t parsed = atoll(argv[1]);
        if (parsed > 0) n = parsed;
    }
    printf("kernel=%lld\n", (long long)run_steps(n));
    return 0;
}
#endif
