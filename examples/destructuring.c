#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct { const char *key; const char *value; } Obj;
static void read_obj(const Obj *obj, const char **key, const char **value) { *key = obj->key; *value = obj->value; }
int main(void) { Obj obj = {"foo", "bar"}; const char *key = obj.key, *value = obj.value; printf("%s %s\n", key, value); read_obj(&obj, &key, &value); printf("%s %s\n", key, value); return 0; }
