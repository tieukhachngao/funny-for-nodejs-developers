#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static void print_u8(const uint8_t *values, size_t len) { printf("["); for (size_t i = 0; i < len; i++) printf("%s%u", i ? " " : "", values[i]); printf("]\n"); }
int main(void) { uint8_t array[10] = {0}; print_u8(array, 10); uint8_t values[] = {1, 2, 3}; memcpy(array + 1, values, sizeof values); print_u8(array, 10); print_u8(array + 2, 8); print_u8(array + 2, 2); print_u8(array, 10); for (int i = 5; i < 10; i++) array[i] = 9; print_u8(array, 10); printf("10\n"); return 0; }
