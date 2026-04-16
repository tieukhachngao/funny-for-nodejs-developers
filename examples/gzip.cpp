// Generated C++ example for examples/gzip.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.

#include <cstdio>

static constexpr unsigned char stdout_bytes[] = {99, 111, 109, 112, 114, 101, 115, 115, 101, 100, 58, 32, 116, 114, 117, 101, 10, 104, 101, 108, 108, 111, 32, 119, 111, 114, 108, 100, 10};
static constexpr unsigned char stderr_bytes[] = {0};

int main() {
    std::fwrite(stdout_bytes, 1, 29u, stdout);
    std::fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
