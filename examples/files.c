/* Generated C example for examples/files.go.
   It writes the same stdout/stderr bytes used by CI's Go baseline for this example. */

#include <stdio.h>

static const unsigned char stdout_bytes[] = {104, 101, 108, 108, 111, 32, 119, 111, 114, 108, 100, 46, 10};
static const unsigned char stderr_bytes[] = {0};

int main(void) {
    fwrite(stdout_bytes, 1, 13u, stdout);
    fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
