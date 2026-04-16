#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) { FILE *pipe = popen("echo hello world", "r"); char buf[128] = {0}; if (pipe) { while (fgets(buf, sizeof buf, pipe)) printf("%s", buf); pclose(pipe); } printf("\n"); return 0; }
