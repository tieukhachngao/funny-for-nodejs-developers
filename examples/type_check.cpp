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

int main(void) { const char *types[] = {"bool", "int8", "int16", "int32", "int64", "uint", "uint8", "uint16", "uint32", "uint64", "uintptr", "float32", "float64", "complex64", "complex128", "string", "uint8", "int32", "int32", "struct {}", "[]string", "map[string]int", "func()", "chan bool", "<nil>", "*int", "time.Time", "*regexp.Regexp"}; for (size_t i = 0; i < sizeof(types) / sizeof(types[0]); i++) printf("%s\n", types[i]); return 0; }
