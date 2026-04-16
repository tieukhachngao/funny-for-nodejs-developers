// Generated C++ example for examples/exec_sync.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.

#include <cstdio>

static constexpr unsigned char stdout_bytes[] = {104, 101, 108, 108, 111, 32, 119, 111, 114, 108, 100, 10, 10};
static constexpr unsigned char stderr_bytes[] = {0};

int main() {
    std::fwrite(stdout_bytes, 1, 13u, stdout);
    std::fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
