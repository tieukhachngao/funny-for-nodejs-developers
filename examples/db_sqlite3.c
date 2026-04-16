#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) { const char *names[] = {"alice", "bob", "charlie"}; for (int i = 0; i < 3; i++) printf("%d %s\n", i + 1, names[i]); return 0; }
