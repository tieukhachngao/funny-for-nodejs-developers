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

static void print_vec(const std::vector<std::string>& values) { std::cout << "["; for (size_t i = 0; i < values.size(); ++i) std::cout << (i ? " " : "") << values[i]; std::cout << "]\n"; }
int main() { std::vector<std::string> array{"a","b","c"}; for (size_t i = 0; i < array.size(); ++i) std::cout << i << " " << array[i] << "\n"; std::vector<std::string> mapped; for (auto v : array) { std::transform(v.begin(), v.end(), v.begin(), ::toupper); mapped.push_back(v); } print_vec(mapped); std::vector<std::string> filtered, reduced; for (size_t i = 0; i < array.size(); ++i) if (i % 2 == 0) { filtered.push_back(array[i]); reduced.push_back(mapped[i]); } print_vec(filtered); print_vec(reduced); }
