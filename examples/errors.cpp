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

typedef struct { const char *message; } FooError;
int main(void) { FooError err2 = {"my custom error"}; printf("some error\n"); printf("%s\n", err2.message); return 0; }
