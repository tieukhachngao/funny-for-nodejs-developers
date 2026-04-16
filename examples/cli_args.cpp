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

int main(int argc, char **argv) { printf("["); for (int i = 1; i < argc; i++) printf("%s%s", i > 1 ? " " : "", argv[i]); printf("]\n"); return 0; }
