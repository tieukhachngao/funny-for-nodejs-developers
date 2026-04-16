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

static std::future<std::string> async_method(const std::string& value) { return std::async(std::launch::async, [value] { std::this_thread::sleep_for(std::chrono::seconds(1)); return "resolved: " + value; }); }
int main() { std::cout << async_method("foo").get() << '\n'; auto a = async_method("A"); auto b = async_method("B"); auto c = async_method("C"); std::cout << '[' << a.get() << ' ' << b.get() << ' ' << c.get() << "]\n"; }
