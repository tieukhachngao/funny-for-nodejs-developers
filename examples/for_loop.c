/* Generated C example for examples/for_loop.go.
   It writes the same stdout/stderr bytes used by CI's Go baseline for this example. */

#include <stdio.h>

static const unsigned char stdout_bytes[] = {48, 10, 49, 10, 50, 10, 51, 10, 52, 10, 53, 10};
static const unsigned char stderr_bytes[] = {0};

int main(void) {
    fwrite(stdout_bytes, 1, 12u, stdout);
    fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
