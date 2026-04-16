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

static int sum(const int *nums, size_t len) { int total = 0; for (size_t i = 0; i < len; i++) total += nums[i]; return total; }
int main(void) { int nums[] = {1, 2, 3, 4, 5}; printf("%d\n", sum(nums, 5)); return 0; }
