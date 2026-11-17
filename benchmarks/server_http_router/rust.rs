use std::env;
use std::fmt::Write;

fn parse_http_req(raw: &str) -> Option<(&str, &str, &str)> {
    let hdr_end = raw.find("\r\n\r\n")?;
    let head = &raw[..hdr_end];
    let body = &raw[hdr_end + 4..];
    let eol = head.find("\r\n").unwrap_or(head.len());
    let req_line = &head[..eol];
    let sp1 = req_line.find(' ')?;
    let method = &req_line[..sp1];
    let rest1 = &req_line[sp1 + 1..];
    let sp2 = rest1.find(' ').unwrap_or(rest1.len());
    let target = &rest1[..sp2];
    let q_pos = target.find('?').unwrap_or(target.len());
    Some((method, &target[..q_pos], body))
}

fn main() {
    let n: i64 = env::args()
        .nth(1)
        .and_then(|s| s.parse::<i64>().ok())
        .filter(|&v| v > 0)
        .unwrap_or(40000);

    let mut digest: i64 = 0;
    let mut c200: i64 = 0;
    let mut c201: i64 = 0;
    let mut c404: i64 = 0;
    let mut raw = String::with_capacity(256);
    let mut body = String::with_capacity(128);
    let mut resp = String::with_capacity(256);

    for i in 0..n {
        raw.clear();
        match i % 4 {
            0 => raw.push_str("GET /health HTTP/1.1\r\nHost: localhost\r\nConnection: keep-alive\r\n\r\n"),
            1 => {
                let _ = write!(&mut raw, "POST /items/{}?mode=fast HTTP/1.1\r\nHost: localhost\r\nContent-Length: 11\r\n\r\nhello=world", i % 97);
            }
            2 => {
                let _ = write!(&mut raw, "GET /users/{} HTTP/1.1\r\nHost: localhost\r\nX-Req-Id: {}\r\n\r\n", i % 53, i);
            }
            _ => {
                let _ = write!(&mut raw, "GET /unknown/{} HTTP/1.1\r\nHost: localhost\r\n\r\n", i % 19);
            }
        }

        let (st, rlen) = if let Some((method, path, rbody)) = parse_http_req(&raw) {
            body.clear();
            let st = if method == "GET" && path == "/health" {
                body.push_str("{\"status\":\"ok\"}");
                200i64
            } else if method == "POST" && path.starts_with("/items/") {
                let _ = write!(&mut body, "created:{}:{}", &path[7..], rbody.len());
                201i64
            } else if method == "GET" && path.starts_with("/users/") {
                let _ = write!(&mut body, "user:{}", &path[7..]);
                200i64
            } else {
                body.push_str("not_found");
                404i64
            };
            resp.clear();
            let _ = write!(&mut resp, "HTTP/1.1 {} OK\r\nContent-Length: {}\r\n\r\n{}", st, body.len(), body);
            (st, resp.len() as i64)
        } else {
            (500i64, 0i64)
        };

        digest = (digest * 31 + st * 131 + rlen) % 1_000_000_007;
        match st {
            200 => c200 += 1,
            201 => c201 += 1,
            _ => c404 += 1,
        }
    }

    println!("digest={},200={},201={},404={}", digest, c200, c201, c404);
}
