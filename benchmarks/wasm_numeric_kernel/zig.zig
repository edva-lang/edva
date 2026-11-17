const std = @import("std");

const Body = struct {
    x: i64,
    y: i64,
    z: i64,
    vx: i64,
    vy: i64,
    vz: i64,
};

fn runSteps(steps: i64) i64 {
    var b: [8]Body = undefined;
    for (0..8) |k| {
        const ki: i64 = @intCast(k);
        b[k] = .{
            .x = (ki + 1) * 1000,
            .y = (ki + 2) * 2000,
            .z = (ki + 3) * 3000,
            .vx = @rem(ki, 3) - 1,
            .vy = @rem(ki + 1, 3) - 1,
            .vz = @rem(ki + 2, 3) - 1,
        };
    }

    var s: i64 = 0;
    while (s < steps) : (s += 1) {
        for (0..8) |i| {
            const bi = b[i];
            var ax: i64 = 0;
            var ay: i64 = 0;
            var az: i64 = 0;
            for (0..8) |j| {
                if (j != i) {
                    const bj = b[j];
                    const dx = bj.x - bi.x;
                    const dy = bj.y - bi.y;
                    const dz = bj.z - bi.z;
                    const r2 = dx * dx + dy * dy + dz * dz + 1000;
                    const inv = @divTrunc(@as(i64, 1_000_000_000), r2);
                    ax += @divTrunc(dx * inv, 1024);
                    ay += @divTrunc(dy * inv, 1024);
                    az += @divTrunc(dz * inv, 1024);
                }
            }
            b[i].vx = @rem(bi.vx + ax, 100_000);
            b[i].vy = @rem(bi.vy + ay, 100_000);
            b[i].vz = @rem(bi.vz + az, 100_000);
        }
        for (0..8) |i| {
            b[i].x = @rem(b[i].x + b[i].vx, 1_000_000);
            b[i].y = @rem(b[i].y + b[i].vy, 1_000_000);
            b[i].z = @rem(b[i].z + b[i].vz, 1_000_000);
        }
    }

    var sum: i64 = 0;
    for (0..8) |i| {
        sum = @rem(sum + b[i].x * 3 + b[i].y * 5 + b[i].z * 7 + b[i].vx * 11, 1_000_000_007);
    }
    return @mod(sum, 1_000_000_007);
}

pub fn main(init: std.process.Init.Minimal) !void {
    var args = std.process.Args.Iterator.init(init.args);
    _ = args.skip();
    var n: i64 = 400_000;
    if (args.next()) |a1| {
        if (std.fmt.parseInt(i64, a1, 10)) |v| {
            if (v > 0) n = v;
        } else |_| {}
    }
    var out_buf: [64]u8 = undefined;
    const out = try std.fmt.bufPrint(&out_buf, "kernel={d}\n", .{runSteps(n)});
    _ = std.os.linux.write(1, out.ptr, out.len);
}
