#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) { char in_stream[16] = {0}; strcat(in_stream, "foo"); strcat(in_stream, "bar"); printf("%s\n", in_stream); const char *lines[] = {"abc", "xyc"}; for (int i = 0; i < 2; i++) printf("received: %s\n", lines[i]); return 0; }
