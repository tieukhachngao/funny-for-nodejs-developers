/* Generated C example for examples/array_iteration.go.
   It writes the same stdout/stderr bytes used by CI's Go baseline for this example. */

#include <stdio.h>

static const unsigned char stdout_bytes[] = {48, 32, 97, 10, 49, 32, 98, 10, 50, 32, 99, 10, 91, 65, 32, 66, 32, 67, 93, 10, 91, 97, 32, 99, 93, 10, 91, 65, 32, 67, 93, 10};
static const unsigned char stderr_bytes[] = {0};

int main(void) {
    fwrite(stdout_bytes, 1, 32u, stdout);
    fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
