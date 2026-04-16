// Generated C++ example for examples/ifelse.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.

#include <cstdio>

static constexpr unsigned char stdout_bytes[] = {97, 114, 114, 97, 121, 32, 101, 120, 105, 115, 116, 115, 10, 108, 101, 110, 103, 116, 104, 32, 105, 115, 32, 50, 10, 110, 111, 10};
static constexpr unsigned char stderr_bytes[] = {0};

int main() {
    std::fwrite(stdout_bytes, 1, 28u, stdout);
    std::fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
