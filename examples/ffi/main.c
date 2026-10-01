#include <stdio.h>
long dva_add(long, long);
long dva_fact(long);
long dva_greet(long);

int main(void) {
    printf("dva_add(2,3)   = %ld\n", dva_add(2, 3));
    printf("dva_fact(5)    = %ld\n", dva_fact(5));
    printf("dva_greet(5)   = %ld (byte length of greeting)\n", dva_greet(5));
    return 0;
}
