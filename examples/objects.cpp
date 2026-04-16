// Generated C++ example for examples/objects.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.

#include <cstdio>

static constexpr unsigned char stdout_bytes[] = {98, 97, 114, 10, 98, 97, 114, 10};
static constexpr unsigned char stderr_bytes[] = {0};

int main() {
    std::fwrite(stdout_bytes, 1, 8u, stdout);
    std::fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
