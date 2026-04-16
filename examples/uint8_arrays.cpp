// Generated C++ example for examples/uint8_arrays.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.

#include <cstdio>

static constexpr unsigned char stdout_bytes[] = {91, 48, 32, 48, 32, 48, 32, 48, 32, 48, 32, 48, 32, 48, 32, 48, 32, 48, 32, 48, 93, 10, 91, 48, 32, 49, 32, 50, 32, 51, 32, 48, 32, 48, 32, 48, 32, 48, 32, 48, 32, 48, 93, 10, 91, 50, 32, 51, 32, 48, 32, 48, 32, 48, 32, 48, 32, 48, 32, 48, 93, 10, 91, 50, 32, 51, 93, 10, 91, 48, 32, 49, 32, 50, 32, 51, 32, 48, 32, 48, 32, 48, 32, 48, 32, 48, 32, 48, 93, 10, 91, 48, 32, 49, 32, 50, 32, 51, 32, 48, 32, 57, 32, 57, 32, 57, 32, 57, 32, 57, 93, 10, 49, 48, 10};
static constexpr unsigned char stderr_bytes[] = {0};

int main() {
    std::fwrite(stdout_bytes, 1, 115u, stdout);
    std::fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
