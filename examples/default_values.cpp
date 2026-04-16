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

static const char *greet(const char *name) { return name ? name : "stranger"; }
int main(void) { printf("hello %s\n", greet(NULL)); printf("hello %s\n", greet("bob")); return 0; }
