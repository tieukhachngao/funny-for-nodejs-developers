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

class Obj { public: Obj() : some_properties{{"foo", "bar"}} {} std::string some_method(const std::string& prop) const { return some_properties.at(prop); } std::map<std::string, std::string> some_properties; };
int main() { Obj obj; std::cout << obj.some_properties["foo"] << '\n'; std::cout << obj.some_method("foo") << '\n'; }
