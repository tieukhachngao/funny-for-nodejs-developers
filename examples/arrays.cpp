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

template <typename T> void print_vec(const std::vector<T>& values) { std::cout << "["; for (size_t i = 0; i < values.size(); ++i) std::cout << (i ? " " : "") << values[i]; std::cout << "]\n"; }
int main() { std::vector<int> array{1,2,3,4,5}; print_vec(array); auto clone = array; print_vec(clone); std::vector<int> sub(array.begin()+2, array.begin()+4); print_vec(sub); auto concatenated = array; concatenated.insert(concatenated.end(), {6,7}); print_vec(concatenated); std::vector<int> prepended{-2,-1,0}; prepended.insert(prepended.end(), concatenated.begin(), concatenated.end()); print_vec(prepended); }
