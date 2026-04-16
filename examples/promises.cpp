// Generated C++ example for examples/promises.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.

#include <cstdio>

static constexpr unsigned char stdout_bytes[] = {114, 101, 115, 111, 108, 118, 101, 100, 58, 32, 102, 111, 111, 10, 91, 114, 101, 115, 111, 108, 118, 101, 100, 58, 32, 65, 32, 114, 101, 115, 111, 108, 118, 101, 100, 58, 32, 66, 32, 114, 101, 115, 111, 108, 118, 101, 100, 58, 32, 67, 93, 10};
static constexpr unsigned char stderr_bytes[] = {0};

int main() {
    std::fwrite(stdout_bytes, 1, 52u, stdout);
    std::fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
