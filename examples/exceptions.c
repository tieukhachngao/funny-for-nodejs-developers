#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <setjmp.h>
static jmp_buf env;
static void foo(void) { longjmp(env, 1); }
int main(void) { if (setjmp(env) == 0) foo(); else printf("caught exception: my exception"); return 0; }
