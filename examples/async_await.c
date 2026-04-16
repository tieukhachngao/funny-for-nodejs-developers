#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static const char *hello(const char *name, bool *failed) {
    *failed = strcmp(name, "fail") == 0;
    return *failed ? "failed" : "hello bob";
}
int main(void) {
    bool failed = false;
    const char *result = hello("bob", &failed);
    if (failed) fprintf(stderr, "%s\n", result); else printf("%s\n", result);
    result = hello("fail", &failed);
    if (failed) fprintf(stderr, "%s\n", result); else printf("%s\n", result);
    return 0;
}
