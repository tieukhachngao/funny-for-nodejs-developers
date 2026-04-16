#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) { unsigned char array[] = {1, 2}; if (sizeof(array) > 0) printf("array exists\n"); if (sizeof(array) == 2) printf("length is 2\n"); else if (sizeof(array) == 1) printf("length is 1\n"); else printf("length is other\n"); printf("%s\n", sizeof(array) % 2 == 1 ? "yes" : "no"); return 0; }
