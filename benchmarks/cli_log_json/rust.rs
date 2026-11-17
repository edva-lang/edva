use std::env;

fn skip_ws(b: &[u8], i: &mut usize) {
    while *i < b.len() && matches!(b[*i], b' ' | b'\t' | b'\r' | b'\n') {
        *i += 1;
    }
}

fn parse_str<'a>(b: &'a [u8], i: &mut usize) -> Option<&'a str> {
    if *i >= b.len() || b[*i] != b'"' {
        return None;
    }
    *i += 1;
    let start = *i;
    while *i < b.len() && b[*i] != b'"' {
        if b[*i] == b'\\' {
            *i += 1;
        }
        *i += 1;
    }
    if *i >= b.len() {
        return None;
    }
    let s = std::str::from_utf8(&b[start..*i]).ok()?;
    *i += 1;
    Some(s)
}

fn parse_i64(b: &[u8], i: &mut usize) -> Option<i64> {
    let mut neg = false;
    if *i < b.len() && b[*i] == b'-' {
        neg = true;
        *i += 1;
    }
    let start = *i;
    let mut v: i64 = 0;
    while *i < b.len() && b[*i].is_ascii_digit() {
        v = v * 10 + (b[*i] - b'0') as i64;
        *i += 1;
    }
    if *i == start {
        return None;
    }
    Some(if neg { -v } else { v })
}

fn parse_log_json(line: &str) -> Option<(i64, bool, i64)> {
    let b = line.as_bytes();
    let mut i = 0usize;
    skip_ws(b, &mut i);
    if i >= b.len() || b[i] != b'{' {
        return None;
    }
    i += 1;
    let mut id = 0i64;
    let mut lat = 0i64;
    let mut ok = false;
    loop {
        skip_ws(b, &mut i);
        if i < b.len() && b[i] == b'}' {
            break;
        }
        let key = parse_str(b, &mut i)?;
        skip_ws(b, &mut i);
        if i >= b.len() || b[i] != b':' {
            return None;
        }
        i += 1;
        skip_ws(b, &mut i);
        match key {
            "id" => id = parse_i64(b, &mut i)?,
            "lat" => lat = parse_i64(b, &mut i)?,
            "ok" => {
                if b[i..].starts_with(b"true") {
                    ok = true;
                    i += 4;
                } else if b[i..].starts_with(b"false") {
                    ok = false;
                    i += 5;
                } else {
                    return None;
                }
            }
            _ => {
                let _ = parse_str(b, &mut i)?;
            }
        }
        skip_ws(b, &mut i);
        if i < b.len() && b[i] == b',' {
            i += 1;
        } else {
            break;
        }
    }
    Some((id, ok, lat))
}

fn main() {
    let n: i64 = env::args()
        .nth(1)
        .and_then(|s| s.parse::<i64>().ok())
        .filter(|&v| v > 0)
        .unwrap_or(20000);

    let mut checksum: i64 = 0;
    let mut ok_cnt: i64 = 0;
    let mut err_cnt: i64 = 0;
    let mut line = String::with_capacity(128);

    for i in 0..n {
        let id = i * 7 + 3;
        let lat = (i * 131 + 17) % 500 + 1;
        let is_ok = (i % 5) != 0;
        let svc = i % 4;
        line.clear();
        use std::fmt::Write;
        let _ = write!(
            &mut line,
            "{{\"id\":{},\"svc\":\"svc_{}\",\"ok\":{},\"lat\":{}}}",
            id,
            svc,
            if is_ok { "true" } else { "false" },
            lat
        );
        if let Some((pid, pok, plat)) = parse_log_json(&line) {
            if pok {
                ok_cnt += 1;
                checksum = (checksum + pid + plat * 3) % 1_000_000_007;
            } else {
                err_cnt += 1;
                checksum = (checksum + pid + plat * 7) % 1_000_000_007;
            }
        }
    }

    println!("checksum={},ok={},err={}", checksum, ok_cnt, err_cnt);
}
