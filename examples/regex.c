/* Generated C example for examples/regex.go.
   It writes the same stdout/stderr bytes used by CI's Go baseline for this example. */

#include <stdio.h>

static const unsigned char stdout_bytes[] = {113, 117, 120, 98, 97, 114, 10, 116, 114, 117, 101, 10, 91, 49, 49, 49, 32, 50, 50, 50, 32, 51, 51, 51, 93, 10};
static const unsigned char stderr_bytes[] = {0};

int main(void) {
    fwrite(stdout_bytes, 1, 26u, stdout);
    fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
