// Generated C++ example for examples/buffers.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.

#include <cstdio>

static constexpr unsigned char stdout_bytes[] = {49, 50, 51, 52, 53, 54, 55, 56, 57, 48, 97, 98, 10, 97, 98, 57, 48, 55, 56, 53, 54, 51, 52, 49, 50, 10, 102, 97, 108, 115, 101, 10, 116, 114, 117, 101, 10};
static constexpr unsigned char stderr_bytes[] = {0};

int main() {
    std::fwrite(stdout_bytes, 1, 37u, stdout);
    std::fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
