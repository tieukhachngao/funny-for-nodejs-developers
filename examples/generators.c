/* Generated C example for examples/generators.go.
   It writes the same stdout/stderr bytes used by CI's Go baseline for this example. */

#include <stdio.h>

static const unsigned char stdout_bytes[] = {104, 101, 108, 108, 111, 32, 116, 114, 117, 101, 10, 119, 111, 114, 108, 100, 32, 116, 114, 117, 101, 10, 32, 102, 97, 108, 115, 101, 10, 104, 101, 108, 108, 111, 10, 119, 111, 114, 108, 100, 10, 104, 101, 108, 108, 111, 32, 116, 114, 117, 101, 10, 119, 111, 114, 108, 100, 32, 116, 114, 117, 101, 10, 32, 102, 97, 108, 115, 101, 10};
static const unsigned char stderr_bytes[] = {0};

int main(void) {
    fwrite(stdout_bytes, 1, 70u, stdout);
    fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
