#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv) { printf("["); for (int i = 1; i < argc; i++) printf("%s%s", i > 1 ? " " : "", argv[i]); printf("]\n"); return 0; }
