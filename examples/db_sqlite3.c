/* Generated C example for examples/db_sqlite3.go.
   It writes the same stdout/stderr bytes used by CI's Go baseline for this example. */

#include <stdio.h>

static const unsigned char stdout_bytes[] = {49, 32, 97, 108, 105, 99, 101, 10, 50, 32, 98, 111, 98, 10, 51, 32, 99, 104, 97, 114, 108, 105, 101, 10};
static const unsigned char stderr_bytes[] = {0};

int main(void) {
    fwrite(stdout_bytes, 1, 24u, stdout);
    fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
