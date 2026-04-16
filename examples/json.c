#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct { const char *foo; } T;
int main(void) { T t = {"bar"}; printf("&{%s}\n", t.foo); printf("{\"foo\":\"%s\"}\n", t.foo); return 0; }
