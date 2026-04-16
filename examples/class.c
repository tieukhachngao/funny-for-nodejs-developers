#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct { const char *item; } Foo;
static Foo new_foo(const char *value) { Foo foo = {value}; return foo; }
static const char *get_item(const Foo *foo) { return foo->item; }
static void set_item(Foo *foo, const char *value) { foo->item = value; }
int main(void) { Foo foo = new_foo("bar"); printf("%s\n", foo.item); set_item(&foo, "qux"); printf("%s\n", get_item(&foo)); return 0; }
