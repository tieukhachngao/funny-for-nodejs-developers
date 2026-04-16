#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct { const char *message; } FooError;
int main(void) { FooError err2 = {"my custom error"}; printf("some error\n"); printf("%s\n", err2.message); return 0; }
