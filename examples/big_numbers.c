#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    unsigned long long bn = 75;
    printf("%llu\n", bn);
    printf("%d\n", atoi("75"));
    printf("%llu\n", 0x4bull);
    printf("%ld\n", strtol("4b", NULL, 16));
    printf("%d\n", 0x4b);
    printf("%llu\n", bn);
    printf("4b\n");
    printf("[75]\n");
    unsigned long long bn2 = 100;
    printf("%s\n", bn == bn2 ? "true" : "false");
    printf("%s\n", bn > bn2 ? "true" : "false");
    printf("%s\n", bn < bn2 ? "true" : "false");
    return 0;
}
