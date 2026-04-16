#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {} Empty;
int main(void) { bool my_bool = true; int my_int = 10; float my_float = 10.5f; const char *my_string = "foo"; Empty my_struct = {}; (void)my_bool; (void)my_int; (void)my_float; (void)my_string; (void)my_struct; return 0; }
