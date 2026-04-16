#include <stdio.h>

int main(int argc, char **argv) {
    const char *name = argc > 1 ? argv[1] : "bob";
    printf("hello %s", name);
    return 0;
}
