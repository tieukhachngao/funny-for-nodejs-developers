#include <algorithm>
#include <chrono>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <functional>
#include <future>
#include <iostream>
#include <map>
#include <numeric>
#include <regex>
#include <sstream>
#include <stdexcept>
#include <string>
#include <thread>
#include <vector>

static const char *hello(const char *name, bool *failed) {
    *failed = strcmp(name, "fail") == 0;
    return *failed ? "failed" : "hello bob";
}
int main(void) {
    bool failed = false;
    const char *result = hello("bob", &failed);
    if (failed) fprintf(stderr, "%s\n", result); else printf("%s\n", result);
    result = hello("fail", &failed);
    if (failed) fprintf(stderr, "%s\n", result); else printf("%s\n", result);
    return 0;
}
