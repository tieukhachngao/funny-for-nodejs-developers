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

int main() { std::map<std::string, std::string> map1; map1["foo"] = "bar"; std::cout << "true\n" << map1["foo"] << '\n'; map1.erase("foo"); std::cout << "false\n\n"; std::map<std::string, int> map2{{"foo",100},{"bar",200},{"baz",300}}; for (const auto& key : {std::string("foo"), std::string("bar"), std::string("baz")}) std::cout << key << ' ' << map2[key] << '\n'; }
