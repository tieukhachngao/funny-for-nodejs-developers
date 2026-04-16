#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static void greet(const char *name) { printf("hello %s", name); }
int main(void) { greet("bob"); return 0; }
