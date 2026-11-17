const std = @import("std");

pub fn main(init: std.process.Init.Minimal) !void {
    var args = std.process.Args.Iterator.init(init.args);
    _ = args.skip();
    var n: i64 = 20000;
    if (args.next()) |a1| {
        if (std.fmt.parseInt(i64, a1, 10)) |v| {
            if (v > 0) n = v;
        } else |_| {}
    }

    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const alloc = arena.allocator();

    const Log = struct { id: i64, svc: []const u8, ok: bool, lat: i64 };
    var checksum: i64 = 0;
    var ok_cnt: i64 = 0;
    var err_cnt: i64 = 0;
    var buf: [256]u8 = undefined;

    var i: i64 = 0;
    while (i < n) : (i += 1) {
        const id = i * 7 + 3;
        const lat = @mod(i * 131 + 17, 500) + 1;
        const is_ok = @mod(i, 5) != 0;
        const svc = @mod(i, 4);
        const line = try std.fmt.bufPrint(&buf, "{{\"id\":{d},\"svc\":\"svc_{d}\",\"ok\":{},\"lat\":{d}}}", .{ id, svc, is_ok, lat });
        const parsed = try std.json.parseFromSlice(Log, alloc, line, .{});
        if (parsed.value.ok) {
            ok_cnt += 1;
            checksum = @mod(checksum + parsed.value.id + parsed.value.lat * 3, 1000000007);
        } else {
            err_cnt += 1;
            checksum = @mod(checksum + parsed.value.id + parsed.value.lat * 7, 1000000007);
        }
        if (@mod(i, 256) == 255) {
            _ = arena.reset(.retain_capacity);
        }
    }

    var out_buf: [128]u8 = undefined;
    const out = try std.fmt.bufPrint(&out_buf, "checksum={d},ok={d},err={d}\n", .{ checksum, ok_cnt, err_cnt });
    _ = std.os.linux.write(1, out.ptr, out.len);
}
