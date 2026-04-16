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

typedef struct { const char *key; const char *value; } Obj;
static void read_obj(const Obj *obj, const char **key, const char **value) { *key = obj->key; *value = obj->value; }
int main(void) { Obj obj = {"foo", "bar"}; const char *key = obj.key, *value = obj.value; printf("%s %s\n", key, value); read_obj(&obj, &key, &value); printf("%s %s\n", key, value); return 0; }
