#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct { const char *name; } Person;
static Person new_person(const char *name) { Person person = {name}; return person; }
static const char *get_name(const Person *person) { return person->name; }
int main(void) { Person person = new_person("bob"); printf("%s\n", get_name(&person)); return 0; }
