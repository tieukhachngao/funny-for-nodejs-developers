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

int main(void) { const char *path = "test.txt"; FILE *file = fopen(path, "w+"); fputs("hello world.", file); rewind(file); char buf[13] = {0}; fread(buf, 1, 12, file); printf("%s\n", buf); fclose(file); remove(path); return 0; }
