#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static const char *greet(const char *name) { return name ? name : "stranger"; }
int main(void) { printf("hello %s\n", greet(NULL)); printf("hello %s\n", greet("bob")); return 0; }
