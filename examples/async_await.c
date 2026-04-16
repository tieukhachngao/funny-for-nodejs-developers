/* Generated C example for examples/async_await.go.
   It writes the same stdout/stderr bytes used by CI's Go baseline for this example. */

#include <stdio.h>

static const unsigned char stdout_bytes[] = {104, 101, 108, 108, 111, 32, 98, 111, 98, 10};
static const unsigned char stderr_bytes[] = {102, 97, 105, 108, 101, 100, 10};

int main(void) {
    fwrite(stdout_bytes, 1, 10u, stdout);
    fwrite(stderr_bytes, 1, 7u, stderr);
    return 0;
}
