#include <stdint.h>

void delay(uint32_t count) {
    for (volatile uint32_t i = 0; i < count; i++);
}

void main(int argc, char** argv) {
    // 1. Configure ALL GPIO pins 0 to 29 as SIO outputs and enable pads
    for (int i = 0; i < 30; i++) {
        // Set FSEL to 5 (SIO function)
        // GPIOx_CTRL is at 0x40014004 + 8 * x
        *(volatile uint32_t *)(0x40014004 + 8 * i) = 5;

        // Configure Pad control register (OD = 0 to enable output, IE = 1 to enable input)
        // PADS_BANK0_GPIOx is at 0x4001c004 + 4 * x
        *(volatile uint32_t *)(0x4001c004 + 4 * i) = (1 << 6); // Set IE (Input Enable) to 1, OD (Output Disable) to 0
    }

    // 2. Enable output direction on ALL GPIO pins (0 to 29)
    // SIO GPIO_OE_SET is at 0xd0000024
    *(volatile uint32_t *)(0xd0000024) = 0x3fffffff;

    volatile uint32_t* gpio_out_xor = (volatile uint32_t*)0xd000001c;
    volatile uint32_t* gpio_in = (volatile uint32_t*)0xd0000004;

    while (1) {
        // Toggle ALL GPIO pins (0 to 29)
        *gpio_out_xor = 0x3fffffff;

        // Check if the USB/user button (GP24) is pressed
        if ((*gpio_in & (1 << 24)) == 0) {
            delay(1000000);  // ~1M iterations (Fast blink when pressed)
        } else {
            delay(5000000);  // ~5M iterations (Slow blink)
        }
    }
}
