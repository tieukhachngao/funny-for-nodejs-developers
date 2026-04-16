#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) { printf("print to stdout\n"); printf("format %s %d\n", "example", 1); fprintf(stderr, "print to stderr"); return 0; }
