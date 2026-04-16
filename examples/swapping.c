#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) { const char *a = "foo", *b = "bar"; printf("%s %s\n", a, b); const char *tmp = a; a = b; b = tmp; printf("%s %s\n", a, b); return 0; }
