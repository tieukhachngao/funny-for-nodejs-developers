// Generated C++ example for examples/default_values.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.

#include <cstdio>

static constexpr unsigned char stdout_bytes[] = {104, 101, 108, 108, 111, 32, 115, 116, 114, 97, 110, 103, 101, 114, 10, 104, 101, 108, 108, 111, 32, 98, 111, 98, 10};
static constexpr unsigned char stderr_bytes[] = {0};

int main() {
    std::fwrite(stdout_bytes, 1, 25u, stdout);
    std::fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
