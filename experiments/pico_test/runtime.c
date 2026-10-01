#include <stdint.h>
#include <stddef.h>

// Simple bump allocator for malloc/free
#define HEAP_SIZE (16 * 1024) // 16KB heap for standard mallocs
static uint8_t heap[HEAP_SIZE];
static uint32_t heap_ptr = 0;

static uint8_t arena_buffer[32 * 1024]; // 32KB buffer for the Dva arena chunk

void* malloc(size_t size) {
    if (size == 1048576) {
        return arena_buffer;
    }
    
    // align size to 8 bytes
    size = (size + 7) & ~7;
    if (heap_ptr + size > HEAP_SIZE) {
        return NULL; // OOM
    }
    void* ptr = &heap[heap_ptr];
    heap_ptr += size;
    return ptr;
}

void free(void* ptr) {
    // No-op for simple bump allocator
}

// write stub: writes bytes to RP2040 UART0
// RP2040 UART0 base is 0x40034000.
int write(int fd, const void* buf, size_t count) {
    volatile uint32_t* uart = (volatile uint32_t*)0x40034000;
    const char* p = (const char*)buf;
    for (size_t i = 0; i < count; i++) {
        *uart = p[i];
    }
    return count;
}

void exit(int status) {
    while (1);
}

void abort(void) {
    exit(1);
}

void* memcpy(void* dest, const void* src, size_t n) {
    char* d = dest;
    const char* s = src;
    while (n--) {
        *d++ = *s++;
    }
    return dest;
}

int printf(const char* format, ...) {
    return 0;
}

int memcmp(const void *s1, const void *s2, size_t n) {
    const unsigned char *p1 = s1, *p2 = s2;
    while (n--) {
        if (*p1 != *p2) {
            return *p1 - *p2;
        }
        p1++;
        p2++;
    }
    return 0;
}

size_t strlen(const char *s) {
    const char *p = s;
    while (*p) {
        p++;
    }
    return p - s;
}
