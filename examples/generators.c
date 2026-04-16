#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) { const char *values[] = {"hello", "world"}; for (int i = 0; i < 2; i++) printf("%s true\n", values[i]); printf(" false\n"); for (int i = 0; i < 2; i++) printf("%s\n", values[i]); for (int i = 0; i < 2; i++) printf("%s true\n", values[i]); printf(" false\n"); return 0; }
