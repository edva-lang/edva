#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

typedef struct {
    int64_t id;
    int64_t tenant;
    int64_t service;
    int64_t latency_ms;
    int64_t payload_bytes;
    int ok;
} MetricEvent;

typedef struct {
    MetricEvent event;
    int64_t weight;
    int64_t bucket;
    int64_t score;
} EnrichedEvent;

typedef struct {
    int64_t tenant;
    int64_t count;
    int64_t ok_count;
    int64_t err_count;
    int64_t total_score;
    int64_t max_latency;
} TenantSummary;

static inline int64_t clamp_val(int64_t v, int64_t lo, int64_t hi) {
    return (v < lo) ? lo : ((v > hi) ? hi : v);
}

static inline int64_t hash_mix(int64_t a, int64_t b) {
    int64_t h0 = (a * 1103515245LL + 12345LL + b * 2654435761LL) & 0x7FFFFFFFLL;
    return (h0 ^ (h0 >> 11)) & 0x7FFFFFFFLL;
}

static MetricEvent decode_event(int64_t seq) {
    int64_t h1 = hash_mix(seq, 17);
    int64_t h2 = hash_mix(h1, 53);
    MetricEvent ev;
    ev.id = seq + 1;
    ev.tenant = (seq * 7 + h1) % 16;
    ev.service = (seq * 13 + h2) % 8;
    int64_t raw_lat = (h1 % 480) + 5;
    ev.latency_ms = clamp_val(raw_lat, 5, 500);
    ev.payload_bytes = ((h2 % 32) + 1) * 64;
    ev.ok = ((seq + h1) % 7) != 0;
    return ev;
}

static int64_t classify_bucket(int64_t lat) {
    if (lat >= 0 && lat <= 25) return 0;
    if (lat >= 26 && lat <= 100) return 1;
    if (lat >= 101 && lat <= 250) return 2;
    return 3;
}

static int64_t compute_weight(MetricEvent ev, int64_t base_bias) {
    int64_t svc_mult = (ev.service % 4) + 1;
    int64_t status_mult = ev.ok ? 2 : 5;
    return ev.latency_ms * svc_mult * status_mult + (ev.payload_bytes / 32) + base_bias;
}

static int64_t evaluate_checkpoint(const TenantSummary *tbl, int64_t epoch, int64_t *out_ok, int64_t *out_err) {
    int64_t digest = 0;
    int64_t total_ok = 0;
    int64_t total_err = 0;
    for (int t = 0; t < 16; t++) {
        TenantSummary row = tbl[t];
        int64_t term = (row.tenant + 1) * 97 + row.count * 13 + row.total_score +
                       row.max_latency * ((epoch % 7) + 1);
        digest = (digest * 131 + term) % 1000000007LL;
        total_ok += row.ok_count;
        total_err += row.err_count;
    }
    if (out_ok) *out_ok = total_ok;
    if (out_err) *out_err = total_err;
    return digest;
}

int main(int argc, char **argv) {
    int64_t n = 12000;
    if (argc >= 2) {
        int64_t parsed = atoll(argv[1]);
        if (parsed > 0) n = parsed;
    }
    int64_t batch_sz = 60;
    int64_t batches = n / batch_sz;
    int64_t eff_batches = (batches > 0) ? batches : 1;

    TenantSummary summaries[16];
    for (int t = 0; t < 16; t++) {
        summaries[t].tenant = t;
        summaries[t].count = 0;
        summaries[t].ok_count = 0;
        summaries[t].err_count = 0;
        summaries[t].total_score = 0;
        summaries[t].max_latency = 0;
    }

    int64_t rolling_digest = 0;
    MetricEvent raw_events[60];
    EnrichedEvent enriched[60];

    for (int64_t b = 0; b < eff_batches; b++) {
        for (int64_t k = 0; k < batch_sz; k++) {
            raw_events[k] = decode_event(b * batch_sz + k);
        }
        int64_t bias = (b * 29 + 7) % 101;
        int64_t n_enriched = 0;
        for (int64_t k = 0; k < batch_sz; k++) {
            MetricEvent ev = raw_events[k];
            int64_t bkt = classify_bucket(ev.latency_ms);
            int64_t w = compute_weight(ev, bkt * 11);
            int64_t sc = ((w + ev.tenant * 19) * 17 + bias) % 100003;
            if (!ev.ok || bkt > 0 || (sc % 3 == 0)) {
                enriched[n_enriched].event = ev;
                enriched[n_enriched].weight = w;
                enriched[n_enriched].bucket = bkt;
                enriched[n_enriched].score = sc;
                n_enriched++;
            }
        }
        for (int64_t i = 0; i < n_enriched; i++) {
            EnrichedEvent item = enriched[i];
            MetricEvent ev = item.event;
            int64_t t = ev.tenant;
            TenantSummary cur = summaries[t];
            int64_t ok_inc = ev.ok ? 1 : 0;
            int64_t err_inc = ev.ok ? 0 : 1;
            int64_t max_l = (ev.latency_ms > cur.max_latency) ? ev.latency_ms : cur.max_latency;
            int64_t next_score = (cur.total_score + item.score + item.weight) % 1000000007LL;
            summaries[t].count = cur.count + 1;
            summaries[t].ok_count = cur.ok_count + ok_inc;
            summaries[t].err_count = cur.err_count + err_inc;
            summaries[t].total_score = next_score;
            summaries[t].max_latency = max_l;
        }
        int64_t b_digest = evaluate_checkpoint(summaries, b, NULL, NULL);
        rolling_digest = (rolling_digest * 31 + b_digest) % 1000000007LL;
    }

    int64_t final_ok = 0, final_err = 0;
    int64_t final_digest = evaluate_checkpoint(summaries, eff_batches, &final_ok, &final_err);
    printf("app_digest=%lld,kept_ok=%lld,kept_err=%lld,roll=%lld\n",
           (long long)final_digest, (long long)final_ok, (long long)final_err, (long long)rolling_digest);
    return 0;
}
