#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) { const char *path = "test.txt"; FILE *file = fopen(path, "w+"); fputs("hello world.", file); rewind(file); char buf[13] = {0}; fread(buf, 1, 12, file); printf("%s\n", buf); fclose(file); remove(path); return 0; }
