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

int main() { char value = 'b'; switch (value) { case 'a': std::cout << "A\n"; break; case 'b': std::cout << "B\n"; break; case 'c': std::cout << "C\n"; break; default: std::cout << "first default\n"; } switch (value) { case 'a': std::cout << "A - falling through\n"; [[fallthrough]]; case 'b': std::cout << "B - falling through\n"; [[fallthrough]]; case 'c': std::cout << "C - falling through\n"; [[fallthrough]]; default: std::cout << "second default\n"; } }
