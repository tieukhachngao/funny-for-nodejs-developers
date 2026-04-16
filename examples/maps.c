/* Generated C example for examples/maps.go.
   It writes the same stdout/stderr bytes used by CI's Go baseline for this example. */

#include <stdio.h>

static const unsigned char stdout_bytes[] = {116, 114, 117, 101, 10, 98, 97, 114, 10, 102, 97, 108, 115, 101, 10, 10, 102, 111, 111, 32, 49, 48, 48, 10, 98, 97, 114, 32, 50, 48, 48, 10, 98, 97, 122, 32, 51, 48, 48, 10};
static const unsigned char stderr_bytes[] = {0};

int main(void) {
    fwrite(stdout_bytes, 1, 40u, stdout);
    fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
