// Generated C++ example for examples/arrays.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.

#include <cstdio>

static constexpr unsigned char stdout_bytes[] = {91, 49, 32, 50, 32, 51, 32, 52, 32, 53, 93, 10, 91, 49, 32, 50, 32, 51, 32, 52, 32, 53, 93, 10, 91, 51, 32, 52, 93, 10, 91, 49, 32, 50, 32, 51, 32, 52, 32, 53, 32, 54, 32, 55, 93, 10, 91, 45, 50, 32, 45, 49, 32, 48, 32, 49, 32, 50, 32, 51, 32, 52, 32, 53, 32, 54, 32, 55, 93, 10};
static constexpr unsigned char stderr_bytes[] = {0};

int main() {
    std::fwrite(stdout_bytes, 1, 70u, stdout);
    std::fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
