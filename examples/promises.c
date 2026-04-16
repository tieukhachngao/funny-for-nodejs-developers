#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static const char *async_method(const char *value, char *buf, size_t len) { snprintf(buf, len, "resolved: %s", value); return buf; }
int main(void) { char a[32], b[32], cbuf[32], foo[32]; printf("%s\n", async_method("foo", foo, sizeof foo)); printf("[%s %s %s]\n", async_method("A", a, sizeof a), async_method("B", b, sizeof b), async_method("C", cbuf, sizeof cbuf)); return 0; }
