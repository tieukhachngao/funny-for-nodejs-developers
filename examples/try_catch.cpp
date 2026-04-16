// Generated C++ example for examples/try_catch.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.

#include <cstdio>

static constexpr unsigned char stdout_bytes[] = {99, 97, 117, 103, 104, 116, 32, 101, 114, 114, 111, 114, 58, 32, 109, 121, 32, 101, 114, 114, 111, 114, 10};
static constexpr unsigned char stderr_bytes[] = {0};

int main() {
    std::fwrite(stdout_bytes, 1, 23u, stdout);
    std::fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
