#ifndef EXAMPLES_CPP_RUNTIME_HPP
#define EXAMPLES_CPP_RUNTIME_HPP

#include "c_runtime.h"

#include <chrono>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <stdexcept>
#include <string>
#include <thread>
#include <vector>

namespace examples {

inline void greet(const std::string &name) {
  std::cout << "hello " << name;
}

inline int sum(int a, int b) {
  return a + b;
}

inline int fib_rec(int n) {
  return n <= 1 ? n : fib_rec(n - 1) + fib_rec(n - 2);
}

inline int fib_loop(int n) {
  std::vector<int> values = {0, 1};
  for (int i = 2; i <= n; i++) {
    values.push_back(values[i - 1] + values[i - 2]);
  }
  return values[n];
}

inline void example_tests() {
  const std::vector<std::vector<int>> cases = {{1, 1, 2}, {2, 3, 5}, {5, 5, 10}};
  for (const auto &item : cases) {
    if (sum(item[0], item[1]) != item[2]) {
      throw std::runtime_error("sum mismatch");
    }
  }
}

inline void benchmark_example() {
  volatile int rec = fib_rec(10);
  volatile int loop = fib_loop(10);
  (void)rec;
  (void)loop;
}

inline void datetime_example() { c_datetime_example(); }
inline void interval_example() { c_interval_example(); }
inline void timeout_example() { c_timeout_example(); }
inline void stdin_example() { c_stdin_example(); }
inline void logging_example() { c_logging_example(); }
inline void module_import_example() { c_module_import_example(); }
inline void url_parse_example() { c_url_parse_example(); }
inline void stack_trace_example() { c_stack_trace_example(); }
inline void http_server_example() { c_http_server_example(); }
inline void tcp_server_example() { c_tcp_server_example(); }
inline void udp_server_example() { c_udp_server_example(); }
inline void dns_example() { c_dns_example(); }
inline void gzip_example() { c_gzip_example(); }
inline void db_sqlite3_example() { c_db_sqlite3_example(); }

}  // namespace examples

#endif
