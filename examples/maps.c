#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) { const char *map1_foo = "bar"; printf("true\n%s\n", map1_foo); map1_foo = NULL; printf("%s\n", map1_foo ? "true" : "false"); printf("\n"); const char *keys[] = {"foo", "bar", "baz"}; int values[] = {100, 200, 300}; for (int i = 0; i < 3; i++) printf("%s %d\n", keys[i], values[i]); return 0; }
