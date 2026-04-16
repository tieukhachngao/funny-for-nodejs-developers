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

struct Empty {};
int main() { bool my_bool = true; int my_int = 10; float my_float = 10.5f; std::string my_string = "foo"; std::vector<std::string> my_array; std::map<std::string,int> my_map; auto my_function = []{}; Empty my_struct; (void)my_bool; (void)my_int; (void)my_float; (void)my_string; (void)my_array; (void)my_map; (void)my_function; (void)my_struct; }
