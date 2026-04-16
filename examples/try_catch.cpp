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

static const char *foo(bool fail) { return fail ? "my error" : NULL; }
int main(void) { const char *err = foo(true); if (err) printf("caught error: %s\n", err); return 0; }
