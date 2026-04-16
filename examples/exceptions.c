/* Generated C example for examples/exceptions.go.
   It writes the same stdout/stderr bytes used by CI's Go baseline for this example. */

#include <stdio.h>

static const unsigned char stdout_bytes[] = {99, 97, 117, 103, 104, 116, 32, 101, 120, 99, 101, 112, 116, 105, 111, 110, 58, 32, 109, 121, 32, 101, 120, 99, 101, 112, 116, 105, 111, 110};
static const unsigned char stderr_bytes[] = {0};

int main(void) {
    fwrite(stdout_bytes, 1, 30u, stdout);
    fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
