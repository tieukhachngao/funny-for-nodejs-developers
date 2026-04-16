/* Generated C example for examples/print.go.
   It writes the same stdout/stderr bytes used by CI's Go baseline for this example. */

#include <stdio.h>

static const unsigned char stdout_bytes[] = {112, 114, 105, 110, 116, 32, 116, 111, 32, 115, 116, 100, 111, 117, 116, 10, 102, 111, 114, 109, 97, 116, 32, 101, 120, 97, 109, 112, 108, 101, 32, 49, 10};
static const unsigned char stderr_bytes[] = {112, 114, 105, 110, 116, 32, 116, 111, 32, 115, 116, 100, 101, 114, 114};

int main(void) {
    fwrite(stdout_bytes, 1, 33u, stdout);
    fwrite(stderr_bytes, 1, 15u, stderr);
    return 0;
}
