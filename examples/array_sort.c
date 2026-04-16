#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct { const char *first; const char *last; int age; } Person;
static int cmp_int_asc(const void *a, const void *b) { return (*(const int *)a > *(const int *)b) - (*(const int *)a < *(const int *)b); }
static int cmp_int_desc(const void *a, const void *b) { return -cmp_int_asc(a, b); }
static int cmp_str_asc(const void *a, const void *b) { return strcmp(*(char * const *)a, *(char * const *)b); }
static int cmp_str_desc(const void *a, const void *b) { return -cmp_str_asc(a, b); }
static int cmp_person_asc(const void *a, const void *b) { const Person *pa = a, *pb = b; return (pa->age > pb->age) - (pa->age < pb->age); }
static int cmp_person_desc(const void *a, const void *b) { return -cmp_person_asc(a, b); }
static void print_ints(int *values, size_t len) { printf("["); for (size_t i = 0; i < len; i++) printf("%s%d", i ? " " : "", values[i]); printf("]\n"); }
static void print_strings(char **values, size_t len) { printf("["); for (size_t i = 0; i < len; i++) printf("%s%s", i ? " " : "", values[i]); printf("]\n"); }
static void print_people(Person *values, size_t len) { printf("["); for (size_t i = 0; i < len; i++) printf("%s{%s %s %d}", i ? " " : "", values[i].first, values[i].last, values[i].age); printf("]\n"); }
int main(void) {
    int ints[] = {1, 3, 5, 9, 4, 2, 0};
    qsort(ints, 7, sizeof(ints[0]), cmp_int_asc); print_ints(ints, 7);
    qsort(ints, 7, sizeof(ints[0]), cmp_int_desc); print_ints(ints, 7);
    char *strings[] = {"a", "d", "z", "b", "c", "y"};
    qsort(strings, 6, sizeof(strings[0]), cmp_str_asc); print_strings(strings, 6);
    qsort(strings, 6, sizeof(strings[0]), cmp_str_desc); print_strings(strings, 6);
    Person people[] = {{"Li", "L", 8}, {"Json", "C", 3}, {"Zack", "W", 15}, {"Yi", "M", 2}};
    qsort(people, 4, sizeof(people[0]), cmp_person_asc); print_people(people, 4);
    qsort(people, 4, sizeof(people[0]), cmp_person_desc); print_people(people, 4);
    return 0;
}
