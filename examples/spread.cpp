// Generated C++ example for examples/spread.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.

#include <cstdio>

static constexpr unsigned char stdout_bytes[] = {49, 32, 50, 32, 51, 32, 52, 32, 53, 10};
static constexpr unsigned char stderr_bytes[] = {0};

int main() {
    std::fwrite(stdout_bytes, 1, 10u, stdout);
    std::fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
