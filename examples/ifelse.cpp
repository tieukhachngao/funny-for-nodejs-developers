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

int main(void) { unsigned char array[] = {1, 2}; if (sizeof(array) > 0) printf("array exists\n"); if (sizeof(array) == 2) printf("length is 2\n"); else if (sizeof(array) == 1) printf("length is 1\n"); else printf("length is other\n"); printf("%s\n", sizeof(array) % 2 == 1 ? "yes" : "no"); return 0; }
