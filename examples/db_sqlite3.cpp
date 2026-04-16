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

int main(void) { const char *names[] = {"alice", "bob", "charlie"}; for (int i = 0; i < 3; i++) printf("%d %s\n", i + 1, names[i]); return 0; }
