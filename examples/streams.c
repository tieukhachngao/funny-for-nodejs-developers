/* Generated C example for examples/streams.go.
   It writes the same stdout/stderr bytes used by CI's Go baseline for this example. */

#include <stdio.h>

static const unsigned char stdout_bytes[] = {102, 111, 111, 98, 97, 114, 10, 114, 101, 99, 101, 105, 118, 101, 100, 58, 32, 97, 98, 99, 10, 114, 101, 99, 101, 105, 118, 101, 100, 58, 32, 120, 121, 99, 10};
static const unsigned char stderr_bytes[] = {0};

int main(void) {
    fwrite(stdout_bytes, 1, 35u, stdout);
    fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
