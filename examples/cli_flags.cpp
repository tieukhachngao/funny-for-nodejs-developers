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

int main(int argc, char **argv) { const char *foo = "default value"; bool qux = false; for (int i = 1; i < argc; i++) { if (strcmp(argv[i], "--foo") == 0 && i + 1 < argc) foo = argv[++i]; else if (strcmp(argv[i], "--qux") == 0) qux = true; } printf("foo: %s\n", foo); printf("qux: %s\n", qux ? "true" : "false"); return 0; }
