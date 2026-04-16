#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) { const char *value = getenv("API_KEY"); printf("%s\n", value ? value : ""); return 0; }
