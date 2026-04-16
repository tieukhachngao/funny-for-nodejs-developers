#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) { unsigned char array[] = {1, 2, 3, 4, 5}; for (size_t i = 0; i < sizeof array; i++) printf("%s%u", i ? " " : "", array[i]); printf("\n"); return 0; }
