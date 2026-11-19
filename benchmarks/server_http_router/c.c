#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    const char *ptr;
    size_t len;
} Slice;

static const char *find_sub(const char *hay, size_t hay_len, const char *needle, size_t needle_len) {
    if (needle_len == 0) return hay;
    if (hay_len < needle_len) return NULL;
    size_t limit = hay_len - needle_len;
    for (size_t i = 0; i <= limit; i++) {
        if (hay[i] == needle[0] && memcmp(hay + i, needle, needle_len) == 0) {
            return hay + i;
        }
    }
    return NULL;
}

static bool parse_http_req(const char *raw, size_t raw_len, Slice *method, Slice *path, Slice *body) {
    const char *hdr_end_p = find_sub(raw, raw_len, "\r\n\r\n", 4);
    if (!hdr_end_p) return false;
    size_t hdr_end = (size_t)(hdr_end_p - raw);
    const char *head = raw;
    size_t head_len = hdr_end;
    body->ptr = raw + hdr_end + 4;
    body->len = raw_len - (hdr_end + 4);

    const char *eol_p = find_sub(head, head_len, "\r\n", 2);
    size_t eol = eol_p ? (size_t)(eol_p - head) : head_len;
    const char *req_line = head;
    size_t req_line_len = eol;

    const char *sp1_p = (const char *)memchr(req_line, ' ', req_line_len);
    if (!sp1_p) return false;
    size_t sp1 = (size_t)(sp1_p - req_line);
    method->ptr = req_line;
    method->len = sp1;

    const char *rest1 = req_line + sp1 + 1;
    size_t rest1_len = req_line_len - (sp1 + 1);
    const char *sp2_p = (const char *)memchr(rest1, ' ', rest1_len);
    size_t sp2 = sp2_p ? (size_t)(sp2_p - rest1) : rest1_len;
    const char *target = rest1;
    size_t target_len = sp2;

    const char *q_p = (const char *)memchr(target, '?', target_len);
    size_t q_pos = q_p ? (size_t)(q_p - target) : target_len;
    path->ptr = target;
    path->len = q_pos;
    return true;
}

int main(int argc, char **argv) {
    int64_t n = 40000;
    if (argc >= 2) {
        int64_t parsed = atoll(argv[1]);
        if (parsed > 0) n = parsed;
    }

    int64_t digest = 0;
    int64_t c200 = 0;
    int64_t c201 = 0;
    int64_t c404 = 0;
    char raw[256];
    char body_buf[128];
    char resp_buf[256];

    for (int64_t i = 0; i < n; i++) {
        int raw_len = 0;
        switch (i % 4) {
            case 0:
                memcpy(raw, "GET /health HTTP/1.1\r\nHost: localhost\r\nConnection: keep-alive\r\n\r\n", 65);
                raw_len = 65;
                break;
            case 1:
                raw_len = snprintf(
                    raw,
                    sizeof(raw),
                    "POST /items/%lld?mode=fast HTTP/1.1\r\nHost: localhost\r\nContent-Length: 11\r\n\r\nhello=world",
                    (long long)(i % 97)
                );
                break;
            case 2:
                raw_len = snprintf(
                    raw,
                    sizeof(raw),
                    "GET /users/%lld HTTP/1.1\r\nHost: localhost\r\nX-Req-Id: %lld\r\n\r\n",
                    (long long)(i % 53),
                    (long long)i
                );
                break;
            default:
                raw_len = snprintf(
                    raw,
                    sizeof(raw),
                    "GET /unknown/%lld HTTP/1.1\r\nHost: localhost\r\n\r\n",
                    (long long)(i % 19)
                );
                break;
        }

        int64_t st = 500;
        int64_t rlen = 0;
        Slice method, path, rbody;
        if (raw_len > 0 && parse_http_req(raw, (size_t)raw_len, &method, &path, &rbody)) {
            int body_len = 0;
            if (method.len == 3 && memcmp(method.ptr, "GET", 3) == 0 &&
                path.len == 7 && memcmp(path.ptr, "/health", 7) == 0) {
                memcpy(body_buf, "{\"status\":\"ok\"}", 15);
                body_buf[15] = '\0';
                body_len = 15;
                st = 200;
            } else if (method.len == 4 && memcmp(method.ptr, "POST", 4) == 0 &&
                       path.len >= 7 && memcmp(path.ptr, "/items/", 7) == 0) {
                body_len = snprintf(
                    body_buf,
                    sizeof(body_buf),
                    "created:%.*s:%zu",
                    (int)(path.len - 7),
                    path.ptr + 7,
                    rbody.len
                );
                st = 201;
            } else if (method.len == 3 && memcmp(method.ptr, "GET", 3) == 0 &&
                       path.len >= 7 && memcmp(path.ptr, "/users/", 7) == 0) {
                body_len = snprintf(
                    body_buf,
                    sizeof(body_buf),
                    "user:%.*s",
                    (int)(path.len - 7),
                    path.ptr + 7
                );
                st = 200;
            } else {
                memcpy(body_buf, "not_found", 9);
                body_buf[9] = '\0';
                body_len = 9;
                st = 404;
            }
            int resp_len = snprintf(
                resp_buf,
                sizeof(resp_buf),
                "HTTP/1.1 %lld OK\r\nContent-Length: %d\r\n\r\n%.*s",
                (long long)st,
                body_len,
                body_len,
                body_buf
            );
            rlen = resp_len > 0 ? (int64_t)resp_len : 0;
        }

        digest = (digest * 31 + st * 131 + rlen) % 1000000007LL;
        if (st == 200) {
            c200++;
        } else if (st == 201) {
            c201++;
        } else {
            c404++;
        }
    }

    printf("digest=%lld,200=%lld,201=%lld,404=%lld\n",
           (long long)digest, (long long)c200, (long long)c201, (long long)c404);
    return 0;
}
