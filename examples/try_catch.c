#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static const char *foo(bool fail) { return fail ? "my error" : NULL; }
int main(void) { const char *err = foo(true); if (err) printf("caught error: %s\n", err); return 0; }
