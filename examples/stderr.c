/* Generated C example for examples/stderr.go.
   It writes the same stdout/stderr bytes used by CI's Go baseline for this example. */

#include <stdio.h>

static const unsigned char stdout_bytes[] = {104, 101, 108, 108, 111, 32, 101, 114, 114, 111, 114, 10};
static const unsigned char stderr_bytes[] = {0};

int main(void) {
    fwrite(stdout_bytes, 1, 12u, stdout);
    fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
