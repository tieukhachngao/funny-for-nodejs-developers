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

int main(void) { const char *a = "foo", *b = "bar"; printf("%s %s\n", a, b); const char *tmp = a; a = b; b = tmp; printf("%s %s\n", a, b); return 0; }
