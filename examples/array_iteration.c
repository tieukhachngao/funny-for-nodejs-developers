#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static void print_strings(const char **values, size_t len) {
    printf("[");
    for (size_t i = 0; i < len; i++) printf("%s%s", i ? " " : "", values[i]);
    printf("]\n");
}

int main(void) {
    const char *array[] = {"a", "b", "c"};
    for (size_t i = 0; i < 3; i++) printf("%zu %s\n", i, array[i]);
    const char *mapped[] = {"A", "B", "C"};
    print_strings(mapped, 3);
    const char *filtered[] = {"a", "c"};
    print_strings(filtered, 2);
    const char *reduced[] = {"A", "C"};
    print_strings(reduced, 2);
    return 0;
}
