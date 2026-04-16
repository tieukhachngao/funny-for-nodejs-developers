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

int main(void) { FILE *pipe = popen("echo hello world", "r"); char buf[128] = {0}; if (pipe) { while (fgets(buf, sizeof buf, pipe)) printf("%s", buf); pclose(pipe); } printf("\n"); return 0; }
