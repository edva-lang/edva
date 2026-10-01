# Blinky — RP2040 on-board LED toggle, a Dva port of ~/Z/blink/blink.c.
# Build: edva -> clang (LLVM IR -> object) -> link with boot2. The compiler
# emits the vector table + Reset_Handler, so no startup.c is needed.

DVA = ../../../edva
CC = arm-none-eabi-gcc
CLANG = clang

TARGET_TRIPLE = thumbv6m-none-eabi
CFLAGS = -mcpu=cortex-m0plus -mthumb -c
LDFLAGS = -T ../../../std/target/thumbv6m-none-eabi/linker.ld -nostartfiles -nodefaultlibs -mcpu=cortex-m0plus -mthumb

all: firmware.uf2

main.ll: main.dva
	$(DVA) main.dva -ir -target $(TARGET_TRIPLE) -no-runtime

main.o: main.ll
	$(CLANG) -target $(TARGET_TRIPLE) -O2 -fno-exceptions -fno-unwind-tables -fno-asynchronous-unwind-tables -c main.ll -o main.o

boot2.o: boot2.S boot2_w25q080.padded.bin
	$(CC) $(CFLAGS) boot2.S -o boot2.o

firmware.elf: boot2.o main.o
	$(CC) $(LDFLAGS) boot2.o main.o -o firmware.elf

firmware.bin: firmware.elf
	arm-none-eabi-objcopy -O binary firmware.elf firmware.bin

firmware.uf2: firmware.bin uf2conv.py
	python uf2conv.py firmware.bin firmware.uf2

clean:
	rm -f *.o *.ll *.elf firmware.bin *.hex *.uf2

.PHONY: all clean