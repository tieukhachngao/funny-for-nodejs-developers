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

typedef void (*Listener)(const char *message);
static void print_listener(const char *message) { printf("%s\n", message); }
int main(void) { Listener my_event = print_listener; Listener my_other_event = print_listener; my_event("hello world"); my_other_event("hello other world"); return 0; }
