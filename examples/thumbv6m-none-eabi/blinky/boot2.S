// RP2040 Boot Stage 2. The padded bin is the official pico-sdk
// boot2_w25q080 (the boot2 used by blink.uf2), checksummed per the
// bootrom's crc32_small (first 252 bytes, seed 0xffffffff, polynomial
// 0x4c11db7, per-byte byte-reverse + the 8-bit rotate-xor loop in
// bootrom/bootrom_misc.S). The bootrom REFUSES to boot if the stored 4-byte
// word != crc32_small(boot2, 252, 0xffffffff), so never regenerate this bin
// by hand without recomputing that checksum.
.section .boot2, "ax"
.incbin "boot2_w25q080.padded.bin"