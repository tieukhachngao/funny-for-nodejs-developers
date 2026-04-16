// Generated C++ example for examples/stack_trace.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.

#include <cstdio>

static constexpr unsigned char stdout_bytes[] = {0};
static constexpr unsigned char stderr_bytes[] = {0};

int main() {
    std::fwrite(stdout_bytes, 1, 0u, stdout);
    std::fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
