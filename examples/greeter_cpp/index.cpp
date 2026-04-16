#include <iostream>

int main(int argc, char **argv) {
    const char *name = argc > 1 ? argv[1] : "bob";
    std::cout << "hello " << name;
    return 0;
}
