const std = @import("std");

pub fn main(init: std.process.Init.Minimal) !void {
    var args = std.process.Args.Iterator.init(init.args);
    _ = args.skip();
    var n: i64 = 40000;
    if (args.next()) |a1| {
        if (std.fmt.parseInt(i64, a1, 10)) |v| {
            if (v > 0) n = v;
        } else |_| {}
    }

    var digest: i64 = 0;
    var c200: i64 = 0;
    var c201: i64 = 0;
    var c404: i64 = 0;
    var raw_buf: [256]u8 = undefined;
    var body_buf: [128]u8 = undefined;
    var resp_buf: [256]u8 = undefined;

    var i: i64 = 0;
    while (i < n) : (i += 1) {
        const raw = switch (@mod(i, 4)) {
            0 => "GET /health HTTP/1.1\r\nHost: localhost\r\nConnection: keep-alive\r\n\r\n",
            1 => try std.fmt.bufPrint(&raw_buf, "POST /items/{d}?mode=fast HTTP/1.1\r\nHost: localhost\r\nContent-Length: 11\r\n\r\nhello=world", .{@mod(i, 97)}),
            2 => try std.fmt.bufPrint(&raw_buf, "GET /users/{d} HTTP/1.1\r\nHost: localhost\r\nX-Req-Id: {d}\r\n\r\n", .{ @mod(i, 53), i }),
            else => try std.fmt.bufPrint(&raw_buf, "GET /unknown/{d} HTTP/1.1\r\nHost: localhost\r\n\r\n", .{@mod(i, 19)}),
        };
        const hdr_end = std.mem.indexOf(u8, raw, "\r\n\r\n") orelse raw.len;
        const head = raw[0..hdr_end];
        const rbody = if (hdr_end + 4 <= raw.len) raw[hdr_end + 4 ..] else "";
        const eol = std.mem.indexOf(u8, head, "\r\n") orelse head.len;
        const req_line = head[0..eol];
        const sp1 = std.mem.indexOfScalar(u8, req_line, ' ') orelse 0;
        const method = req_line[0..sp1];
        const rest1 = req_line[sp1 + 1 ..];
        const sp2 = std.mem.indexOfScalar(u8, rest1, ' ') orelse rest1.len;
        const target = rest1[0..sp2];
        const q_pos = std.mem.indexOfScalar(u8, target, '?') orelse target.len;
        const path = target[0..q_pos];

        var st: i64 = 404;
        var body: []const u8 = "not_found";
        if (std.mem.eql(u8, method, "GET") and std.mem.eql(u8, path, "/health")) {
            st = 200;
            body = "{\"status\":\"ok\"}";
        } else if (std.mem.eql(u8, method, "POST") and std.mem.startsWith(u8, path, "/items/")) {
            st = 201;
            body = try std.fmt.bufPrint(&body_buf, "created:{s}:{d}", .{ path[7..], rbody.len });
        } else if (std.mem.eql(u8, method, "GET") and std.mem.startsWith(u8, path, "/users/")) {
            st = 200;
            body = try std.fmt.bufPrint(&body_buf, "user:{s}", .{path[7..]});
        }
        const resp = try std.fmt.bufPrint(&resp_buf, "HTTP/1.1 {d} OK\r\nContent-Length: {d}\r\n\r\n{s}", .{ st, body.len, body });
        digest = @mod(digest * 31 + st * 131 + @as(i64, @intCast(resp.len)), 1000000007);
        if (st == 200) c200 += 1 else if (st == 201) c201 += 1 else c404 += 1;
    }

    var out_buf: [128]u8 = undefined;
    const out = try std.fmt.bufPrint(&out_buf, "digest={d},200={d},201={d},404={d}\n", .{ digest, c200, c201, c404 });
    _ = std.os.linux.write(1, out.ptr, out.len);
}
