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

int main(void) { unsigned char array[] = {1, 2, 3, 4, 5}; for (size_t i = 0; i < sizeof array; i++) printf("%s%u", i ? " " : "", array[i]); printf("\n"); return 0; }
