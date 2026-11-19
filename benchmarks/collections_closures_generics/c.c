#ifdef __wasm__
typedef __INT64_TYPE__ int64_t;
#else
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#endif

typedef struct {
    int64_t id;
    int64_t group;
    int64_t weight;
    int64_t tag;
} Sample;

typedef struct {
    int64_t a;
    int64_t b;
} Pair;

typedef int64_t (*unary_fn)(int64_t, int64_t);

static inline int64_t scale_fn(int64_t x, int64_t _ctx) {
    (void)_ctx;
    return (x * 3 + 7) % 10007;
}

static inline int64_t shift_fn(int64_t x, int64_t b_idx) {
    return (x + (b_idx % 97) + 11) % 10007;
}

__attribute__((noinline))
static int64_t compose_twice(unary_fn f, unary_fn g, int64_t b_idx, int64_t x) {
    int64_t y1 = g(f(x, b_idx), b_idx);
    return g(f(y1, b_idx), b_idx);
}

__attribute__((noinline))
static void run_batch(int64_t b_idx, int64_t *out_digest, int64_t *out_kept, int64_t *out_heavy) {
    Sample samples[64];
    Pair filtered[64];
    int64_t scores[64];
    int64_t n_filtered = 0;

    for (int64_t k = 0; k < 64; k++) {
        int64_t idx = b_idx * 64 + k;
        samples[k].id = idx;
        samples[k].group = (idx * 7 + 3) % 8;
        samples[k].weight = (idx * 31 + 17) % 251 + 1;
        samples[k].tag = (idx * 13 + 5) % 16;
    }

    for (int64_t k = 0; k < 64; k++) {
        Sample s = samples[k];
        if ((s.group % 2 == 0) || (s.tag >= 11)) {
            filtered[n_filtered].a = s.id % 997;
            filtered[n_filtered].b = s.weight * (s.group + 1);
            n_filtered++;
        }
    }

    for (int64_t i = 0; i < n_filtered; i++) {
        scores[i] = compose_twice(scale_fn, shift_fn, b_idx, filtered[i].a + filtered[i].b);
    }

    int64_t fold_sum = 0;
    for (int64_t i = 0; i < n_filtered; i++) {
        fold_sum = (fold_sum * 33 + scores[i]) % 1000000007LL;
    }

    int64_t weighted_sum = 0;
    for (int64_t i = 0; i < n_filtered; i++) {
        weighted_sum = (weighted_sum + filtered[i].a * 5 + filtered[i].b * 3) % 1000000007LL;
    }

    int64_t heavy_cnt = 0;
    for (int64_t k = 0; k < 64; k++) {
        if (samples[k].weight > 125) heavy_cnt++;
    }

    int64_t bonus = (heavy_cnt > 20) ? (heavy_cnt * 19 + n_filtered * 7) : 13;
    *out_digest = (fold_sum + weighted_sum * 17 + bonus) % 1000000007LL;
    *out_kept = n_filtered;
    *out_heavy = heavy_cnt;
}

__attribute__((noinline))
void run_pipeline_all(int64_t n, int64_t *out_digest, int64_t *out_kept, int64_t *out_heavy) {
    int64_t batches = n / 64;
    int64_t eff_batches = (batches > 0) ? batches : 1;
    int64_t digest = 0, kept = 0, heavy = 0;
    for (int64_t b = 0; b < eff_batches; b++) {
        int64_t bd = 0, bk = 0, bh = 0;
        run_batch(b, &bd, &bk, &bh);
        digest = (digest * 131 + bd) % 1000000007LL;
        kept += bk;
        heavy += bh;
    }
    *out_digest = digest;
    *out_kept = kept;
    *out_heavy = heavy;
}

int64_t run_kernel(int64_t n) {
    int64_t d = 0, k = 0, h = 0;
    run_pipeline_all(n, &d, &k, &h);
    return d;
}

#ifndef __wasm__
int main(int argc, char **argv) {
    int64_t n = 16000;
    if (argc >= 2) {
        int64_t parsed = atoll(argv[1]);
        if (parsed > 0) n = parsed;
    }
    int64_t digest = 0, kept = 0, heavy = 0;
    run_pipeline_all(n, &digest, &kept, &heavy);
    printf("pipeline=%lld,kept=%lld,heavy=%lld\n",
           (long long)digest, (long long)kept, (long long)heavy);
    return 0;
}
#endif
