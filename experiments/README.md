# Dva Bare-Metal Experiments

This directory contains experiments for running the `dva` language on bare-metal
architectures (specifically ARM Cortex-M) using the native compiler (`edva`).

It provides a complete pipeline to compile, link, and run freestanding Dva code on simulated hardware without an operating system.

---

## Project Structure (`experiments/pico_test/`)

*   **`main.dva`**: The Dva source code. Demonstrates volatile raw-memory writing (`@[Address] = val`), SIO GPIO input polling, and loop cycles.
*   **`startup.c`**: Vector table and Reset Handler. Performs low-level register initialization (enabling UART0, routing TX/RX pins, setting 115200 baud, and setting up GPIO18 input pulls).
*   **`runtime.c`**: Custom freestanding C runtime. Implements a static bump-allocator that intercepts Dva's default `1MB` heap request and returns a smaller `32KB` static buffer in SRAM.
*   **`boot2.S` / `boot2_generic_03h.padded.bin`**: The mandatory 256-byte Boot Stage 2 loader to configure the external QSPI Flash on the RP2040 chip.
*   **`linker.ld`**: Linker script mapping the RP2040 Flash segments (including `.boot2` at `0x10000000` and `.text` at `0x10000100`) and SRAM (`0x20000000`).
*   **`uf2conv.py`**: A Python script to package compiled raw binaries into the Microsoft UF2 format.
*   **`diagram.json` / `wokwi.toml`**: Hardware definitions and configuration files for Wokwi.

---

## Setup Requirements

Ensure you have the ARM GCC cross-compiler toolchain installed:
```bash
# Arch Linux
sudo pacman -S arm-none-eabi-gcc arm-none-eabi-newlib
```

---

## How to Build & Run

All steps are automated via the [Makefile](pico_test/Makefile) inside `experiments/pico_test/`.

```bash
cd experiments/pico_test
```

### 1. Build the Firmware
Compiles the Dva code to LLVM IR, translates it to assembly, compiles the startup files, and links them into ELF, raw binary, and UF2 formats:
```bash
make
```

### 2. Run Wokwi Simulation (Interactive)
The generated `firmware.uf2` is configured to run in the Wokwi simulator. 

*   To run headlessly via terminal (requires `WOKWI_CLI_TOKEN`):
    ```bash
    make run
    ```
*   To run **interactively in the browser**:
    1. Open [Wokwi Pi Pico C Template](https://wokwi.com/projects/new/pi-pico).
    2. Add a Pushbutton connected between **GND** and **GP18**.
    3. Click inside the code editor, press **`F1`**, select **"Upload Hex File and Start Simulation"**, and choose `experiments/pico_test/firmware.uf2`.
    4. Click the green **Start Simulation** button and press the pushbutton to see `Key Pressed!` output.
