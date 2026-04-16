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

int main(void) { const char *values[] = {"hello", "world"}; for (int i = 0; i < 2; i++) printf("%s true\n", values[i]); printf(" false\n"); for (int i = 0; i < 2; i++) printf("%s\n", values[i]); for (int i = 0; i < 2; i++) printf("%s true\n", values[i]); printf(" false\n"); return 0; }
