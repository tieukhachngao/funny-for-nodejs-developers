/* Generated C example for examples/interpolation.go.
   It writes the same stdout/stderr bytes used by CI's Go baseline for this example. */

#include <stdio.h>

static const unsigned char stdout_bytes[] = {98, 111, 98, 32, 105, 115, 32, 50, 49, 32, 121, 101, 97, 114, 115, 32, 111, 108, 100, 10};
static const unsigned char stderr_bytes[] = {0};

int main(void) {
    fwrite(stdout_bytes, 1, 20u, stdout);
    fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
