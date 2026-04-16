#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct { const char *foo; } Obj;
static Obj new_obj(void) { Obj obj = {"bar"}; return obj; }
static const char *some_method(const Obj *obj, const char *prop) { return strcmp(prop, "foo") == 0 ? obj->foo : ""; }
int main(void) { Obj obj = new_obj(); printf("%s\n", obj.foo); printf("%s\n", some_method(&obj, "foo")); return 0; }
