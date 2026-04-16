#include <algorithm>
#include <iostream>
#include <string>
#include <vector>

struct Person {
    std::string first;
    std::string last;
    int age;
};

template <typename T>
static void print_values(const std::vector<T>& values) {
    std::cout << "[";
    for (size_t i = 0; i < values.size(); ++i) {
        std::cout << (i ? " " : "") << values[i];
    }
    std::cout << "]\n";
}

static void print_people(const std::vector<Person>& people) {
    std::cout << "[";
    for (size_t i = 0; i < people.size(); ++i) {
        const auto& person = people[i];
        std::cout << (i ? " " : "") << "{" << person.first << " " << person.last << " " << person.age << "}";
    }
    std::cout << "]\n";
}

int main() {
    std::vector<int> ints{1, 3, 5, 9, 4, 2, 0};
    std::sort(ints.begin(), ints.end());
    print_values(ints);
    std::sort(ints.rbegin(), ints.rend());
    print_values(ints);

    std::vector<std::string> strings{"a", "d", "z", "b", "c", "y"};
    std::sort(strings.begin(), strings.end());
    print_values(strings);
    std::sort(strings.rbegin(), strings.rend());
    print_values(strings);

    std::vector<Person> people{{"Li", "L", 8}, {"Json", "C", 3}, {"Zack", "W", 15}, {"Yi", "M", 2}};
    std::sort(people.begin(), people.end(), [](const Person& a, const Person& b) { return a.age < b.age; });
    print_people(people);
    std::sort(people.begin(), people.end(), [](const Person& a, const Person& b) { return a.age > b.age; });
    print_people(people);
}
