#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static void print_hex(const unsigned char *buf, size_t len) { for (size_t i = 0; i < len; i++) printf("%02x", buf[i]); printf("\n"); }
int main(void) {
    unsigned char be[] = {0x12, 0x34, 0x56, 0x78, 0x90, 0xab};
    unsigned char le[] = {0xab, 0x90, 0x78, 0x56, 0x34, 0x12};
    print_hex(be, sizeof be);
    print_hex(le, sizeof le);
    printf("%s\n", memcmp(be, le, sizeof be) == 0 ? "true" : "false");
    printf("%s\n", memcmp(be, be, sizeof be) == 0 ? "true" : "false");
    return 0;
}
