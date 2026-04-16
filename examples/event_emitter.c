#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef void (*Listener)(const char *message);
static void print_listener(const char *message) { printf("%s\n", message); }
int main(void) { Listener my_event = print_listener; Listener my_other_event = print_listener; my_event("hello world"); my_other_event("hello other world"); return 0; }
