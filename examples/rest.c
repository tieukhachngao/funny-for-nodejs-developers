#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static int sum(const int *nums, size_t len) { int total = 0; for (size_t i = 0; i < len; i++) total += nums[i]; return total; }
int main(void) { int nums[] = {1, 2, 3, 4, 5}; printf("%d\n", sum(nums, 5)); return 0; }
