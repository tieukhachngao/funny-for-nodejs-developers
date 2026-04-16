#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) { const char *input = "foobar"; printf("qux%s\n", input + 3); printf("true\n"); printf("[111 222 333]\n"); return 0; }
