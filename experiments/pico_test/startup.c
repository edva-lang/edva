#include <stdint.h>

extern void main(int argc, char** argv);

void init_uart(void) {
    // 1. Take IO_BANK0, PADS_BANK0, and UART0 out of reset
    // RESETS_BASE is 0x4000c000. CLR alias is at +0x3000.
    *(volatile uint32_t *)(0x4000c000 + 0x3000) = (1 << 5) | (1 << 8) | (1 << 9) | (1 << 22);

    // Wait for reset done (offset 0x8)
    while ((*(volatile uint32_t *)(0x4000c000 + 0x8) & ((1 << 5) | (1 << 8) | (1 << 9) | (1 << 22))) != ((1 << 5) | (1 << 8) | (1 << 9) | (1 << 22)));

    // 2. Configure GPIO 0 and 1 function to UART0 (function 2)
    *(volatile uint32_t *)(0x40014004) = 2;
    *(volatile uint32_t *)(0x4001400c) = 2;

    // 3. Configure UART0
    *(volatile uint32_t *)(0x40034030) = 0;

    // Set baud rate to 115200 (assuming 12MHz boot clock)
    *(volatile uint32_t *)(0x40034024) = 6;  // IBRD
    *(volatile uint32_t *)(0x40034028) = 33; // FBRD

    // Set format: 8 bits, FIFO enable (LCR_H offset 0x2c)
    *(volatile uint32_t *)(0x4003402c) = (3 << 5) | (1 << 4);

    // Enable UART, TX, RX (CR offset 0x30)
    *(volatile uint32_t *)(0x40034030) = (1 << 0) | (1 << 8) | (1 << 9);
}

void init_gpio24_input(void) {
    // 1. Set GP24 function to SIO (Function 5)
    // GPIO24_CTRL is at 0x400140c4
    *(volatile uint32_t *)(0x400140c4) = 5;

    // 2. Enable input buffer and internal pull-up on GP24 pad
    // PADS_BANK0 GPIO24 is at 0x4001c064
    // IE (bit 6) = 1, PUE (bit 3) = 1, PDE (bit 2) = 0
    *(volatile uint32_t *)(0x4001c064) = (1 << 6) | (1 << 3);

    // 3. Set GP24 direction to input (clear bit 24 in SIO GPIO_OE)
    // SIO GPIO_OE_CLR is at 0xd0000028
    *(volatile uint32_t *)(0xd0000028) = (1 << 24);
}

void init_gpio25_output(void) {
    // 1. Set GP25 function to SIO (Function 5)
    *(volatile uint32_t *)(0x400140cc) = 5;

    // 2. Set GP25 direction to output (set bit 25 in SIO GPIO_OE_SET)
    *(volatile uint32_t *)(0xd0000024) = (1 << 25);
}

extern uint32_t _sidata, _sdata, _edata, _sbss, _ebss;

void Reset_Handler(void) {
    // Copy data section from Flash to RAM
    uint32_t *src = &_sidata;
    uint32_t *dst = &_sdata;
    while (dst < &_edata) {
        *dst++ = *src++;
    }

    // Zero out BSS section
    dst = &_sbss;
    while (dst < &_ebss) {
        *dst++ = 0;
    }

    init_uart();
    init_gpio24_input();
    init_gpio25_output();
    main(0, 0);
    while (1);
}

// Define the vector table
__attribute__((section(".isr_vector")))
void (*const vector_table[])(void) = {
    (void (*)(void))0x20042000, // Initial stack pointer (top of RP2040 RAM)
    Reset_Handler,             // Reset handler
};
