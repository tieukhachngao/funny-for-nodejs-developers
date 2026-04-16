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

struct T { std::string foo; };
int main() { std::string json = "{\"foo\":\"bar\"}"; T t{"bar"}; (void)json; std::cout << "&{" << t.foo << "}\n"; std::cout << "{\"foo\":\"" << t.foo << "\"}\n"; }
