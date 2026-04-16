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

typedef struct { const char *name; } Person;
static Person new_person(const char *name) { Person person = {name}; return person; }
static const char *get_name(const Person *person) { return person->name; }
int main(void) { Person person = new_person("bob"); printf("%s\n", get_name(&person)); return 0; }
