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

int main() { std::string input = "foobar"; std::cout << std::regex_replace(input, std::regex("foo(.*)", std::regex_constants::icase), "qux$1") << '\n'; std::cout << (std::regex_search(input, std::regex("o{2}", std::regex_constants::icase)) ? "true" : "false") << '\n'; input = "111-222-333"; std::regex re("[0-9]+"); std::cout << "["; bool first = true; for (std::sregex_iterator it(input.begin(), input.end(), re), end; it != end; ++it) { std::cout << (first ? "" : " ") << it->str(); first = false; } std::cout << "]\n"; }
