// Generated C++ example for examples/json.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.

#include <cstdio>

static constexpr unsigned char stdout_bytes[] = {38, 123, 98, 97, 114, 125, 10, 123, 34, 102, 111, 111, 34, 58, 34, 98, 97, 114, 34, 125, 10};
static constexpr unsigned char stderr_bytes[] = {0};

int main() {
    std::fwrite(stdout_bytes, 1, 21u, stdout);
    std::fwrite(stderr_bytes, 1, 0u, stderr);
    return 0;
}
