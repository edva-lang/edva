#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    const char *ptr;
    size_t len;
} Slice;

static void skip_ws(const char *b, size_t len, size_t *i) {
    while (*i < len) {
        char c = b[*i];
        if (c == ' ' || c == '\t' || c == '\r' || c == '\n') {
            (*i)++;
        } else {
            break;
        }
    }
}

static bool parse_str(const char *b, size_t len, size_t *i, Slice *out) {
    if (*i >= len || b[*i] != '"') return false;
    (*i)++;
    size_t start = *i;
    while (*i < len && b[*i] != '"') {
        if (b[*i] == '\\') (*i)++;
        (*i)++;
    }
    if (*i >= len) return false;
    out->ptr = b + start;
    out->len = *i - start;
    (*i)++;
    return true;
}

static bool parse_i64(const char *b, size_t len, size_t *i, int64_t *out) {
    bool neg = false;
    if (*i < len && b[*i] == '-') {
        neg = true;
        (*i)++;
    }
    size_t start = *i;
    int64_t v = 0;
    while (*i < len && b[*i] >= '0' && b[*i] <= '9') {
        v = v * 10 + (int64_t)(b[*i] - '0');
        (*i)++;
    }
    if (*i == start) return false;
    *out = neg ? -v : v;
    return true;
}

static bool parse_log_json(const char *b, size_t len, int64_t *out_id, bool *out_ok, int64_t *out_lat) {
    size_t i = 0;
    skip_ws(b, len, &i);
    if (i >= len || b[i] != '{') return false;
    i++;
    int64_t id = 0;
    int64_t lat = 0;
    bool ok = false;
    for (;;) {
        skip_ws(b, len, &i);
        if (i < len && b[i] == '}') break;
        Slice key;
        if (!parse_str(b, len, &i, &key)) return false;
        skip_ws(b, len, &i);
        if (i >= len || b[i] != ':') return false;
        i++;
        skip_ws(b, len, &i);
        if (key.len == 2 && memcmp(key.ptr, "id", 2) == 0) {
            if (!parse_i64(b, len, &i, &id)) return false;
        } else if (key.len == 3 && memcmp(key.ptr, "lat", 3) == 0) {
            if (!parse_i64(b, len, &i, &lat)) return false;
        } else if (key.len == 2 && memcmp(key.ptr, "ok", 2) == 0) {
            if (i + 4 <= len && memcmp(b + i, "true", 4) == 0) {
                ok = true;
                i += 4;
            } else if (i + 5 <= len && memcmp(b + i, "false", 5) == 0) {
                ok = false;
                i += 5;
            } else {
                return false;
            }
        } else {
            Slice skipped;
            if (!parse_str(b, len, &i, &skipped)) return false;
        }
        skip_ws(b, len, &i);
        if (i < len && b[i] == ',') {
            i++;
        } else {
            break;
        }
    }
    *out_id = id;
    *out_ok = ok;
    *out_lat = lat;
    return true;
}

int main(int argc, char **argv) {
    int64_t n = 20000;
    if (argc >= 2) {
        int64_t parsed = atoll(argv[1]);
        if (parsed > 0) n = parsed;
    }

    int64_t checksum = 0;
    int64_t ok_cnt = 0;
    int64_t err_cnt = 0;
    char line[256];

    for (int64_t i = 0; i < n; i++) {
        int64_t id = i * 7 + 3;
        int64_t lat = (i * 131 + 17) % 500 + 1;
        bool is_ok = (i % 5) != 0;
        int64_t svc = i % 4;
        int len = snprintf(
            line,
            sizeof(line),
            "{\"id\":%lld,\"svc\":\"svc_%lld\",\"ok\":%s,\"lat\":%lld}",
            (long long)id,
            (long long)svc,
            is_ok ? "true" : "false",
            (long long)lat
        );
        if (len > 0) {
            int64_t pid = 0, plat = 0;
            bool pok = false;
            if (parse_log_json(line, (size_t)len, &pid, &pok, &plat)) {
                if (pok) {
                    ok_cnt++;
                    checksum = (checksum + pid + plat * 3) % 1000000007LL;
                } else {
                    err_cnt++;
                    checksum = (checksum + pid + plat * 7) % 1000000007LL;
                }
            }
        }
    }

    printf("checksum=%lld,ok=%lld,err=%lld\n", (long long)checksum, (long long)ok_cnt, (long long)err_cnt);
    return 0;
}
