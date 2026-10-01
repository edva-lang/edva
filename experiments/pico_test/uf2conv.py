#!/usr/bin/env python3
import sys
import struct

# RP2040 uses Family ID 0xe48bff56
# Flash base is 0x10000000
FAMILY_ID = 0xe48bff56
TARGET_ADDR = 0x10000000

def main():
    if len(sys.argv) < 3:
        print("Usage: uf2conv.py <input.bin> <output.uf2>")
        sys.exit(1)

    infile = sys.argv[1]
    outfile = sys.argv[2]

    with open(infile, "rb") as f:
        data = f.read()

    # Align data to 256 bytes
    if len(data) % 256 != 0:
        data += b"\x00" * (256 - (len(data) % 256))

    num_blocks = len(data) // 256
    out_blocks = []

    for block_no in range(num_blocks):
        # Header (32 bytes)
        magic_start_0 = 0x0A324655 # "UF2\n"
        magic_start_1 = 0x9E5D5157
        flags = 0x00002000         # Family ID present
        target_addr = TARGET_ADDR + (block_no * 256)
        payload_size = 256
        block_idx = block_no
        num_blocks_total = num_blocks
        family_id = FAMILY_ID

        header = struct.pack(
            "<IIIIIIII",
            magic_start_0,
            magic_start_1,
            flags,
            target_addr,
            payload_size,
            block_idx,
            num_blocks_total,
            family_id
        )

        # Payload (476 bytes total, but only 256 used)
        payload = data[block_no * 256 : (block_no + 1) * 256]
        padding = b"\x00" * (476 - 256)

        # Footer (4 bytes)
        magic_end = 0x0AB16F30

        block = header + payload + padding + struct.pack("<I", magic_end)
        assert len(block) == 512
        out_blocks.append(block)

    with open(outfile, "wb") as f:
        f.write(b"".join(out_blocks))

    print(f"Converted {infile} to {outfile} ({num_blocks} blocks).")

if __name__ == "__main__":
    main()
