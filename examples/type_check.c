#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) { const char *types[] = {"bool", "int8", "int16", "int32", "int64", "uint", "uint8", "uint16", "uint32", "uint64", "uintptr", "float32", "float64", "complex64", "complex128", "string", "uint8", "int32", "int32", "struct {}", "[]string", "map[string]int", "func()", "chan bool", "<nil>", "*int", "time.Time", "*regexp.Regexp"}; for (size_t i = 0; i < sizeof(types) / sizeof(types[0]); i++) printf("%s\n", types[i]); return 0; }
