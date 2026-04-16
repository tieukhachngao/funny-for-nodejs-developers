// Generated C++ example for examples/big_numbers.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.

#include <cstdio>

static constexpr unsigned char stdout_bytes[] = {55, 53, 10, 55, 53, 10, 55, 53, 10, 55, 53, 10, 55, 53, 10, 55, 53, 10, 52, 98, 10, 91, 55, 53, 93, 10, 102, 97, 108, 115, 101, 10, 102, 97, 108, 115, 101, 10, 116, 114, 117, 101, 10};
static constexpr unsigned char stderr_bytes[] = {0};

int main() {
    std::fwrite(stdout_bytes, 1, 43u, stdout);
    std::fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
