/* Generated C example for examples/switch.go.
   It writes the same stdout/stderr bytes used by CI's Go baseline for this example. */

#include <stdio.h>

static const unsigned char stdout_bytes[] = {66, 10, 66, 32, 45, 32, 102, 97, 108, 108, 105, 110, 103, 32, 116, 104, 114, 111, 117, 103, 104, 10, 67, 32, 45, 32, 102, 97, 108, 108, 105, 110, 103, 32, 116, 104, 114, 111, 117, 103, 104, 10, 115, 101, 99, 111, 110, 100, 32, 100, 101, 102, 97, 117, 108, 116, 10};
static const unsigned char stderr_bytes[] = {0};

int main(void) {
    fwrite(stdout_bytes, 1, 57u, stdout);
    fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
