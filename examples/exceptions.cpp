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

static void foo() { throw std::runtime_error("my exception"); }
int main() { try { foo(); } catch (const std::exception& e) { std::cout << "caught exception: " << e.what(); } }
