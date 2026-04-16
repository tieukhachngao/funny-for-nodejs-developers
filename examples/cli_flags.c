/* Generated C example for examples/cli_flags.go.
   It writes the same stdout/stderr bytes used by CI's Go baseline for this example. */

#include <stdio.h>

static const unsigned char stdout_bytes[] = {102, 111, 111, 58, 32, 98, 97, 114, 10, 113, 117, 120, 58, 32, 116, 114, 117, 101, 10};
static const unsigned char stderr_bytes[] = {0};

int main(void) {
    fwrite(stdout_bytes, 1, 19u, stdout);
    fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
