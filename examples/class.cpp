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

class Foo { public: explicit Foo(std::string value) : item(std::move(value)) {} const std::string& get_item() const { return item; } void set_item(std::string value) { item = std::move(value); } std::string item; };
int main() { Foo foo("bar"); std::cout << foo.item << '\n'; foo.set_item("qux"); std::cout << foo.get_item() << '\n'; }
