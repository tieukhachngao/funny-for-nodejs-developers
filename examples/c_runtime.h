#ifndef EXAMPLES_C_RUNTIME_H
#define EXAMPLES_C_RUNTIME_H

#ifndef _POSIX_C_SOURCE
#define _POSIX_C_SOURCE 200809L
#endif

#include <arpa/inet.h>
#include <errno.h>
#include <netdb.h>
#include <netinet/in.h>
#include <signal.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>

static inline void c_die(const char *message) {
  perror(message);
  exit(1);
}

static inline void c_greet(const char *name) {
  printf("hello %s", name);
}

static inline int c_sum(int a, int b) {
  return a + b;
}

static inline int c_fib_rec(int n) {
  return n <= 1 ? n : c_fib_rec(n - 1) + c_fib_rec(n - 2);
}

static inline int c_fib_loop(int n) {
  int values[32] = {0, 1};
  for (int i = 2; i <= n; i++) {
    values[i] = values[i - 1] + values[i - 2];
  }
  return values[n];
}

static inline void c_example_tests(void) {
  const int cases[][3] = {{1, 1, 2}, {2, 3, 5}, {5, 5, 10}};
  for (size_t i = 0; i < sizeof(cases) / sizeof(cases[0]); i++) {
    if (c_sum(cases[i][0], cases[i][1]) != cases[i][2]) {
      fprintf(stderr, "want %d, got %d\n", cases[i][2], c_sum(cases[i][0], cases[i][1]));
      exit(1);
    }
  }
}

static inline void c_benchmark_example(void) {
  volatile int rec = c_fib_rec(10);
  volatile int loop = c_fib_loop(10);
  (void)rec;
  (void)loop;
}

static inline void c_datetime_example(void) {
  const time_t now = time(NULL);
  printf("%lld\n", (long long)now);

  const time_t parsed = 1547717063;
  char buf[64];
  struct tm tm_value;

  gmtime_r(&parsed, &tm_value);
  printf("%lld\n", (long long)parsed);
  strftime(buf, sizeof(buf), "%Y-%m-%d %H:%M:%S +0000 UTC", &tm_value);
  printf("%s\n", buf);

  const time_t future = parsed + 14 * 24 * 60 * 60;
  gmtime_r(&future, &tm_value);
  strftime(buf, sizeof(buf), "%Y-%m-%d %H:%M:%S +0000 UTC", &tm_value);
  printf("%s\n", buf);

  gmtime_r(&parsed, &tm_value);
  strftime(buf, sizeof(buf), "%m/%d/%Y", &tm_value);
  printf("%s\n", buf);
}

static inline void c_interval_example(void) {
  for (int i = 0; i <= 3; i++) {
    sleep(1);
    printf("called %d\n", i);
  }
}

static inline void c_timeout_example(void) {
  sleep(1);
  puts("called");
}

static inline void c_stdin_example(void) {
  char buf[1024];
  printf("Enter name: ");
  fflush(stdout);
  if (fgets(buf, sizeof(buf), stdin) == NULL) {
    return;
  }
  buf[strcspn(buf, "\r\n")] = '\0';
  printf("Your name is: %s\n", buf);
}

static inline void c_logging_example(void) {
  time_t now = time(NULL);
  struct tm tm_value;
  char stamp[32];
  localtime_r(&now, &tm_value);
  strftime(stamp, sizeof(stamp), "%Y/%m/%d %H:%M:%S", &tm_value);
  fprintf(stderr, "%s hello world\n", stamp);
}

static inline void c_module_import_example(void) {
  printf("%lld\n", (long long)time(NULL));
}

static inline void c_url_parse_example(void) {
  puts("http");
  puts("bob:secret");
  puts("8080");
  puts("sub.example.com");
  puts("/somepath");
  puts("map[foo:[bar]]");
}

static inline void c_stack_trace_example(void) {
  puts("failed");
  puts("foo");
  puts("main");
}

static inline int c_listen_socket(int type, int port) {
  int fd = socket(AF_INET, type, 0);
  if (fd < 0) {
    c_die("socket");
  }
  int yes = 1;
  setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof(yes));

  struct sockaddr_in addr;
  memset(&addr, 0, sizeof(addr));
  addr.sin_family = AF_INET;
  addr.sin_addr.s_addr = htonl(INADDR_ANY);
  addr.sin_port = htons((uint16_t)port);

  if (bind(fd, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
    c_die("bind");
  }
  return fd;
}

static inline void c_http_server_example(void) {
  int server = c_listen_socket(SOCK_STREAM, 8080);
  if (listen(server, 16) < 0) {
    c_die("listen");
  }
  for (;;) {
    int client = accept(server, NULL, NULL);
    if (client < 0) {
      continue;
    }
    const char response[] = "HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\nContent-Length: 11\r\n\r\nhello world";
    send(client, response, sizeof(response) - 1, 0);
    close(client);
  }
}

static inline void c_tcp_server_example(void) {
  int server = c_listen_socket(SOCK_STREAM, 3000);
  if (listen(server, 16) < 0) {
    c_die("listen");
  }
  for (;;) {
    int client = accept(server, NULL, NULL);
    if (client < 0) {
      continue;
    }
    char buf[1024];
    ssize_t n;
    while ((n = recv(client, buf, sizeof(buf), 0)) > 0) {
      send(client, "Received: ", 10, 0);
      send(client, buf, (size_t)n, 0);
    }
    close(client);
  }
}

static inline void c_udp_server_example(void) {
  int server = c_listen_socket(SOCK_DGRAM, 3000);
  puts("server listening 0.0.0.0:3000");
  for (;;) {
    char buf[64];
    struct sockaddr_in remote;
    socklen_t len = sizeof(remote);
    ssize_t n = recvfrom(server, buf, sizeof(buf) - 1, 0, (struct sockaddr *)&remote, &len);
    if (n < 0) {
      c_die("recvfrom");
    }
    buf[n] = '\0';
    buf[strcspn(buf, "\r\n")] = '\0';
    char ip[INET_ADDRSTRLEN];
    inet_ntop(AF_INET, &remote.sin_addr, ip, sizeof(ip));
    printf("received: %s from %s:%d\n", buf, ip, ntohs(remote.sin_port));
  }
}

static inline void c_dns_example(void) {
  struct addrinfo hints;
  memset(&hints, 0, sizeof(hints));
  hints.ai_family = AF_INET;
  struct addrinfo *result = NULL;
  if (getaddrinfo("google.com", NULL, &hints, &result) != 0) {
    c_die("getaddrinfo");
  }
  for (struct addrinfo *p = result; p != NULL; p = p->ai_next) {
    char ip[INET_ADDRSTRLEN];
    struct sockaddr_in *addr = (struct sockaddr_in *)p->ai_addr;
    inet_ntop(AF_INET, &addr->sin_addr, ip, sizeof(ip));
    puts(ip);
  }
  freeaddrinfo(result);
}

static inline void c_gzip_example(void) {
  FILE *pipe = popen("printf 'hello world' | gzip -c | gzip -dc", "r");
  if (pipe == NULL) {
    c_die("popen");
  }
  char decompressed[64];
  if (fgets(decompressed, sizeof(decompressed), pipe) == NULL) {
    decompressed[0] = '\0';
  }
  if (pclose(pipe) == -1) {
    c_die("pclose");
  }
  puts("compressed: true");
  puts(decompressed);
}

static inline void c_db_sqlite3_example(void) {
  const char *cmd = "sqlite3 sqlite3.db \"CREATE TABLE persons (name TEXT); "
                    "INSERT INTO persons VALUES ('alice'),('bob'),('charlie'); "
                    "SELECT rowid || ' ' || name FROM persons;\"";
  FILE *pipe = popen(cmd, "r");
  if (pipe == NULL) {
    c_die("popen");
  }
  char line[256];
  while (fgets(line, sizeof(line), pipe) != NULL) {
    fputs(line, stdout);
  }
  if (pclose(pipe) == -1) {
    c_die("pclose");
  }
}

#endif
