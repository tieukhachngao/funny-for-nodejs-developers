#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static void print_ints(const int *values, size_t len) {
    printf("[");
    for (size_t i = 0; i < len; i++) printf("%s%d", i ? " " : "", values[i]);
    printf("]\n");
}

int main(void) {
    int array[] = {1, 2, 3, 4, 5};
    print_ints(array, 5);
    int clone[5];
    memcpy(clone, array, sizeof(array));
    print_ints(clone, 5);
    print_ints(array + 2, 2);
    int concatenated[] = {1, 2, 3, 4, 5, 6, 7};
    print_ints(concatenated, 7);
    int prepended[] = {-2, -1, 0, 1, 2, 3, 4, 5, 6, 7};
    print_ints(prepended, 10);
    return 0;
}
