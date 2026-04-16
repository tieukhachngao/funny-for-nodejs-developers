#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) { char value = 'b'; switch (value) { case 'a': printf("A\n"); break; case 'b': printf("B\n"); break; case 'c': printf("C\n"); break; default: printf("first default\n"); } switch (value) { case 'a': printf("A - falling through\n"); /* fallthrough */ case 'b': printf("B - falling through\n"); /* fallthrough */ case 'c': printf("C - falling through\n"); /* fallthrough */ default: printf("second default\n"); } return 0; }
