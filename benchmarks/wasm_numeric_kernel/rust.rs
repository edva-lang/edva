use std::env;

#[derive(Clone, Copy)]
struct Body {
    x: i64,
    y: i64,
    z: i64,
    vx: i64,
    vy: i64,
    vz: i64,
}

fn run_steps(steps: i64) -> i64 {
    let mut b = [Body { x: 0, y: 0, z: 0, vx: 0, vy: 0, vz: 0 }; 8];
    for k in 0..8usize {
        let ki = k as i64;
        b[k] = Body {
            x: (ki + 1) * 1000,
            y: (ki + 2) * 2000,
            z: (ki + 3) * 3000,
            vx: (ki % 3) - 1,
            vy: ((ki + 1) % 3) - 1,
            vz: ((ki + 2) % 3) - 1,
        };
    }

    for _ in 0..steps {
        for i in 0..8usize {
            let bi = b[i];
            let mut ax = 0i64;
            let mut ay = 0i64;
            let mut az = 0i64;
            for j in 0..8usize {
                if j != i {
                    let bj = b[j];
                    let dx = bj.x - bi.x;
                    let dy = bj.y - bi.y;
                    let dz = bj.z - bi.z;
                    let r2 = dx * dx + dy * dy + dz * dz + 1000;
                    let inv = 1_000_000_000 / r2;
                    ax += (dx * inv) / 1024;
                    ay += (dy * inv) / 1024;
                    az += (dz * inv) / 1024;
                }
            }
            b[i].vx = (bi.vx + ax) % 100_000;
            b[i].vy = (bi.vy + ay) % 100_000;
            b[i].vz = (bi.vz + az) % 100_000;
        }
        for i in 0..8usize {
            b[i].x = (b[i].x + b[i].vx) % 1_000_000;
            b[i].y = (b[i].y + b[i].vy) % 1_000_000;
            b[i].z = (b[i].z + b[i].vz) % 1_000_000;
        }
    }

    let mut sum = 0i64;
    for i in 0..8usize {
        sum = (sum + b[i].x * 3 + b[i].y * 5 + b[i].z * 7 + b[i].vx * 11) % 1_000_000_007;
    }
    ((sum % 1_000_000_007) + 1_000_000_007) % 1_000_000_007
}

fn main() {
    let n: i64 = env::args()
        .nth(1)
        .and_then(|s| s.parse::<i64>().ok())
        .filter(|&v| v > 0)
        .unwrap_or(400_000);
    println!("kernel={}", run_steps(n));
}
