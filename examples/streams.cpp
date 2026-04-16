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

int main(void) { char in_stream[16] = {0}; strcat(in_stream, "foo"); strcat(in_stream, "bar"); printf("%s\n", in_stream); const char *lines[] = {"abc", "xyc"}; for (int i = 0; i < 2; i++) printf("received: %s\n", lines[i]); return 0; }
