<h3 align="center">
  <br />
  <img src="https://user-images.githubusercontent.com/168240/114315374-8ff5b480-9ab3-11eb-8323-b83858e8e74f.png" alt="logo" width="800" />
  <br />
  <br />
  <br />
</h3>

# Golang for Node.js, C, C++, Ruby, Shell Script, Batch, PowerShell, and NASM Assembly Developers

> Examples of [Golang](https://golang.org/) examples compared to [Node.js](https://nodejs.org/), C, C++, Ruby, Linux shell scripts, Windows Batch, PowerShell, and NASM Assembly for learning

[![License](http://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/tieukhachngao/funny-for-nodejs-developers/master/LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](#contributing)

This guide full of examples is intended for people learning Go that are coming from Node.js, C, C++, Ruby, Linux shell scripting, Windows Batch, PowerShell, or NASM Assembly, although the vice versa can work too. This is not meant to be a complete guide and it is assumed that you've gone through the [Tour of Go](https://tour.golang.org/) tutorial. This guide is meant to be barely good enough to help you at a high level understand how to do *X* in *Y* and doing further learning on your own is of course required.

## Attribution

This project is built on top of the ideas, structure, and code from [miguelmota/golang-for-nodejs-developers](https://github.com/miguelmota/golang-for-nodejs-developers). The original project is licensed under the MIT License, and this repository keeps that license, preserves the original copyright notice, and clearly credits the upstream work.

The goal of this repository is to inherit that learning resource honestly and extend it further for the community. The current version adds C, C++, Ruby, Linux Shell Script, Windows Batch, PowerShell, and NASM Assembly examples, keeps the Node.js and Go comparison style, updates project paths for this fork, and adds CI checks so the examples stay consistent. Everything remains free to use, copy, modify, and share under the MIT License.

## Contents

- [Attribution](#attribution)
- [Examples](#examples)
  - [Language coverage](#language-coverage)
  - [Helper modules](#helper-modules)
  - [comments](#comments)
  - [printing](#printing)
  - [logging](#logging)
  - [variables](#variables)
  - [types](#types)
    - [bool](#types)
    - [number](#types)
    - [string](#types)
    - [array](#types)
    - [object](#types)
    - [function](#types)
  - [type check](#type-check)
  - [interpolation](#interpolation)
  - [if/else](#ifelse)
    - [ternary](#ifelse)
  - [for](#for)
  - [while](#while)
  - [switch](#switch)
  - [arrays](#arrays)
    - [slicing](#arrays)
    - [copying](#arrays)
    - [appending](#arrays)
    - [prepending](#arrays)
  - [uint8 arrays](#uint8-arrays)
  - [array iteration](#array-iteration)
    - [looping](#array-iteration)
    - [mapping](#array-iteration)
    - [filtering](#array-iteration)
    - [reducing](#array-iteration)
	- [sorting](#array-sorting)
  - [buffers](#buffers)
    - [allocate](#buffers)
    - [big endian](#buffers)
    - [little endian](#buffers)
    - [hex](#buffers)
    - [compare](#buffers)
    - [equals](#buffers)
  - [maps](#maps)
    - [iteration](#maps)
  - [objects](#objects)
  - [functions](#functions)
  - [default values](#default-values)
  - [destructuring](#destructuring)
  - [spread operator](#spread-operator)
  - [rest operator](#rest-operator)
  - [swapping](#swapping)
  - [classes](#classes)
    - [constructors](#classes)
    - [instantiation](#classes)
    - ["this"](#classes)
  - [generators](#generators)
  - [datetime](#datetime)
    - [parsing](#datetime)
    - [formatting](#datetime)
    - [unix timestamp](#datetime)
  - [timeout](#timeout)
  - [interval](#interval)
  - [IIFE](#iife)
  - [files](#files)
    - [creating](#files)
    - [opening](#files)
    - [writing](#files)
    - [reading](#files)
    - [closing](#files)
    - [deleting](#files)
    - [file descriptors](#files)
  - [json](#json)
    - [parse](#json)
    - [stringify](#json)
  - [big numbers](#big-numbers)
    - [uint](#big-numbers)
    - [string](#big-numbers)
    - [hex](#big-numbers)
    - [buffers](#big-numbers)
    - [compare](#buffers)
    - [equals](#buffers)
  - [promises](#promises)
    - [then](#promises)
    - [all](#promises)
  - [async/await](#async-await)
  - [streams](#streams)
    - [reading](#streams)
    - [writing](#streams)
  - [event emitter](#event-emitter)
  <!--
    - [transform](#streams)
  - [concurrency](#concurrency)
    - [threads](#concurrency)
    - [forking](#concurrency)
  - [message passing](#message-passing)
  - [first-class functions](#first-class-functions)
  -->
  - [errors](#errors)
  - [try/catch](#trycatch)
  - [exceptions](#exceptions)
  - [regex](#regex)
  - [exec (sync)](#exec-sync)
  - [exec (async)](#exec-async)
  - [tcp server](#tcp-server)
  - [udp server](#udp-server)
  - [http server](#http-server)
  - [url parse](#url-parse)
  - [gzip](#gzip)
    - [compress](#gzip)
    - [decompress](#gzip)
  - [dns](#dns)
    - [ns lookup](#dns)
    - [ip lookup](#dns)
    - [mx lookup](#dns)
    - [txt lookup](#dns)
    - [set resolution servers](#dns)
  - [crypto](#crypto)
    - [sha256](#crypto)
  - [env vars](#env-vars)
  - [cli args](#cli-args)
  - [cli flags](#cli-flags)
  - [stdout](#stdout)
  - [stderr](#stderr)
  - [stdin](#stdin)
  - [modules](#modules)
    - [installing](#modules)
    - [updating](#modules)
    - [removing](#modules)
    - [importing](#modules)
    - [exporting](#modules)
    - [publishing](#modules)
  - [stack trace](#stack-trace)
  - [databases](#databases)
    - [sqlite3](#databases)
  - [testing](#testing)
  - [benchmarking](#benchmarking)
  - [documentation](#documentation)
- [Contributing](#contributing)
- [License](#license)

## Examples

All sample code is available in [examples/](examples/). C, C++, Ruby, Shell Script, Batch, PowerShell, and NASM Assembly examples use the same basename as the matching Node.js and Go examples, for example `print.js`, `print.go`, `print.c`, `print.cpp`, `print.rb`, `print.sh`, `print.bat`, `print.ps1`, and `print.s`.

Assembly examples are written in NASM syntax and assembled by CI with `nasm` plus the platform linker.

### Language coverage

Every top-level example has matching Go, Node.js, C, C++, Ruby, Shell Script, Batch, PowerShell, and NASM Assembly files. The detailed guide below keeps the original comparison format, while this table is the full language index for the repository.

| Example | Go | Node.js | C | C++ | Ruby | Shell Script | Batch | PowerShell | NASM Assembly |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `array iteration` | [array_iteration.go](examples/array_iteration.go) | [array_iteration.js](examples/array_iteration.js) | [array_iteration.c](examples/array_iteration.c) | [array_iteration.cpp](examples/array_iteration.cpp) | [array_iteration.rb](examples/array_iteration.rb) | [array_iteration.sh](examples/array_iteration.sh) | [array_iteration.bat](examples/array_iteration.bat) | [array_iteration.ps1](examples/array_iteration.ps1) | [array_iteration.s](examples/array_iteration.s) |
| `array sort` | [array_sort.go](examples/array_sort.go) | [array_sort.js](examples/array_sort.js) | [array_sort.c](examples/array_sort.c) | [array_sort.cpp](examples/array_sort.cpp) | [array_sort.rb](examples/array_sort.rb) | [array_sort.sh](examples/array_sort.sh) | [array_sort.bat](examples/array_sort.bat) | [array_sort.ps1](examples/array_sort.ps1) | [array_sort.s](examples/array_sort.s) |
| `arrays` | [arrays.go](examples/arrays.go) | [arrays.js](examples/arrays.js) | [arrays.c](examples/arrays.c) | [arrays.cpp](examples/arrays.cpp) | [arrays.rb](examples/arrays.rb) | [arrays.sh](examples/arrays.sh) | [arrays.bat](examples/arrays.bat) | [arrays.ps1](examples/arrays.ps1) | [arrays.s](examples/arrays.s) |
| `async await` | [async_await.go](examples/async_await.go) | [async_await.js](examples/async_await.js) | [async_await.c](examples/async_await.c) | [async_await.cpp](examples/async_await.cpp) | [async_await.rb](examples/async_await.rb) | [async_await.sh](examples/async_await.sh) | [async_await.bat](examples/async_await.bat) | [async_await.ps1](examples/async_await.ps1) | [async_await.s](examples/async_await.s) |
| `benchmark test` | [benchmark_test.go](examples/benchmark_test.go) | [benchmark_test.js](examples/benchmark_test.js) | [benchmark_test.c](examples/benchmark_test.c) | [benchmark_test.cpp](examples/benchmark_test.cpp) | [benchmark_test.rb](examples/benchmark_test.rb) | [benchmark_test.sh](examples/benchmark_test.sh) | [benchmark_test.bat](examples/benchmark_test.bat) | [benchmark_test.ps1](examples/benchmark_test.ps1) | [benchmark_test.s](examples/benchmark_test.s) |
| `big numbers` | [big_numbers.go](examples/big_numbers.go) | [big_numbers.js](examples/big_numbers.js) | [big_numbers.c](examples/big_numbers.c) | [big_numbers.cpp](examples/big_numbers.cpp) | [big_numbers.rb](examples/big_numbers.rb) | [big_numbers.sh](examples/big_numbers.sh) | [big_numbers.bat](examples/big_numbers.bat) | [big_numbers.ps1](examples/big_numbers.ps1) | [big_numbers.s](examples/big_numbers.s) |
| `buffers` | [buffers.go](examples/buffers.go) | [buffers.js](examples/buffers.js) | [buffers.c](examples/buffers.c) | [buffers.cpp](examples/buffers.cpp) | [buffers.rb](examples/buffers.rb) | [buffers.sh](examples/buffers.sh) | [buffers.bat](examples/buffers.bat) | [buffers.ps1](examples/buffers.ps1) | [buffers.s](examples/buffers.s) |
| `class` | [class.go](examples/class.go) | [class.js](examples/class.js) | [class.c](examples/class.c) | [class.cpp](examples/class.cpp) | [class.rb](examples/class.rb) | [class.sh](examples/class.sh) | [class.bat](examples/class.bat) | [class.ps1](examples/class.ps1) | [class.s](examples/class.s) |
| `cli args` | [cli_args.go](examples/cli_args.go) | [cli_args.js](examples/cli_args.js) | [cli_args.c](examples/cli_args.c) | [cli_args.cpp](examples/cli_args.cpp) | [cli_args.rb](examples/cli_args.rb) | [cli_args.sh](examples/cli_args.sh) | [cli_args.bat](examples/cli_args.bat) | [cli_args.ps1](examples/cli_args.ps1) | [cli_args.s](examples/cli_args.s) |
| `cli flags` | [cli_flags.go](examples/cli_flags.go) | [cli_flags.js](examples/cli_flags.js) | [cli_flags.c](examples/cli_flags.c) | [cli_flags.cpp](examples/cli_flags.cpp) | [cli_flags.rb](examples/cli_flags.rb) | [cli_flags.sh](examples/cli_flags.sh) | [cli_flags.bat](examples/cli_flags.bat) | [cli_flags.ps1](examples/cli_flags.ps1) | [cli_flags.s](examples/cli_flags.s) |
| `comments` | [comments.go](examples/comments.go) | [comments.js](examples/comments.js) | [comments.c](examples/comments.c) | [comments.cpp](examples/comments.cpp) | [comments.rb](examples/comments.rb) | [comments.sh](examples/comments.sh) | [comments.bat](examples/comments.bat) | [comments.ps1](examples/comments.ps1) | [comments.s](examples/comments.s) |
| `crypto` | [crypto.go](examples/crypto.go) | [crypto.js](examples/crypto.js) | [crypto.c](examples/crypto.c) | [crypto.cpp](examples/crypto.cpp) | [crypto.rb](examples/crypto.rb) | [crypto.sh](examples/crypto.sh) | [crypto.bat](examples/crypto.bat) | [crypto.ps1](examples/crypto.ps1) | [crypto.s](examples/crypto.s) |
| `datetime` | [datetime.go](examples/datetime.go) | [datetime.js](examples/datetime.js) | [datetime.c](examples/datetime.c) | [datetime.cpp](examples/datetime.cpp) | [datetime.rb](examples/datetime.rb) | [datetime.sh](examples/datetime.sh) | [datetime.bat](examples/datetime.bat) | [datetime.ps1](examples/datetime.ps1) | [datetime.s](examples/datetime.s) |
| `db sqlite3` | [db_sqlite3.go](examples/db_sqlite3.go) | [db_sqlite3.js](examples/db_sqlite3.js) | [db_sqlite3.c](examples/db_sqlite3.c) | [db_sqlite3.cpp](examples/db_sqlite3.cpp) | [db_sqlite3.rb](examples/db_sqlite3.rb) | [db_sqlite3.sh](examples/db_sqlite3.sh) | [db_sqlite3.bat](examples/db_sqlite3.bat) | [db_sqlite3.ps1](examples/db_sqlite3.ps1) | [db_sqlite3.s](examples/db_sqlite3.s) |
| `default values` | [default_values.go](examples/default_values.go) | [default_values.js](examples/default_values.js) | [default_values.c](examples/default_values.c) | [default_values.cpp](examples/default_values.cpp) | [default_values.rb](examples/default_values.rb) | [default_values.sh](examples/default_values.sh) | [default_values.bat](examples/default_values.bat) | [default_values.ps1](examples/default_values.ps1) | [default_values.s](examples/default_values.s) |
| `destructuring` | [destructuring.go](examples/destructuring.go) | [destructuring.js](examples/destructuring.js) | [destructuring.c](examples/destructuring.c) | [destructuring.cpp](examples/destructuring.cpp) | [destructuring.rb](examples/destructuring.rb) | [destructuring.sh](examples/destructuring.sh) | [destructuring.bat](examples/destructuring.bat) | [destructuring.ps1](examples/destructuring.ps1) | [destructuring.s](examples/destructuring.s) |
| `dns` | [dns.go](examples/dns.go) | [dns.js](examples/dns.js) | [dns.c](examples/dns.c) | [dns.cpp](examples/dns.cpp) | [dns.rb](examples/dns.rb) | [dns.sh](examples/dns.sh) | [dns.bat](examples/dns.bat) | [dns.ps1](examples/dns.ps1) | [dns.s](examples/dns.s) |
| `documentation` | [documentation.go](examples/documentation.go) | [documentation.js](examples/documentation.js) | [documentation.c](examples/documentation.c) | [documentation.cpp](examples/documentation.cpp) | [documentation.rb](examples/documentation.rb) | [documentation.sh](examples/documentation.sh) | [documentation.bat](examples/documentation.bat) | [documentation.ps1](examples/documentation.ps1) | [documentation.s](examples/documentation.s) |
| `env vars` | [env_vars.go](examples/env_vars.go) | [env_vars.js](examples/env_vars.js) | [env_vars.c](examples/env_vars.c) | [env_vars.cpp](examples/env_vars.cpp) | [env_vars.rb](examples/env_vars.rb) | [env_vars.sh](examples/env_vars.sh) | [env_vars.bat](examples/env_vars.bat) | [env_vars.ps1](examples/env_vars.ps1) | [env_vars.s](examples/env_vars.s) |
| `errors` | [errors.go](examples/errors.go) | [errors.js](examples/errors.js) | [errors.c](examples/errors.c) | [errors.cpp](examples/errors.cpp) | [errors.rb](examples/errors.rb) | [errors.sh](examples/errors.sh) | [errors.bat](examples/errors.bat) | [errors.ps1](examples/errors.ps1) | [errors.s](examples/errors.s) |
| `event emitter` | [event_emitter.go](examples/event_emitter.go) | [event_emitter.js](examples/event_emitter.js) | [event_emitter.c](examples/event_emitter.c) | [event_emitter.cpp](examples/event_emitter.cpp) | [event_emitter.rb](examples/event_emitter.rb) | [event_emitter.sh](examples/event_emitter.sh) | [event_emitter.bat](examples/event_emitter.bat) | [event_emitter.ps1](examples/event_emitter.ps1) | [event_emitter.s](examples/event_emitter.s) |
| `example test` | [example_test.go](examples/example_test.go) | [example_test.js](examples/example_test.js) | [example_test.c](examples/example_test.c) | [example_test.cpp](examples/example_test.cpp) | [example_test.rb](examples/example_test.rb) | [example_test.sh](examples/example_test.sh) | [example_test.bat](examples/example_test.bat) | [example_test.ps1](examples/example_test.ps1) | [example_test.s](examples/example_test.s) |
| `exceptions` | [exceptions.go](examples/exceptions.go) | [exceptions.js](examples/exceptions.js) | [exceptions.c](examples/exceptions.c) | [exceptions.cpp](examples/exceptions.cpp) | [exceptions.rb](examples/exceptions.rb) | [exceptions.sh](examples/exceptions.sh) | [exceptions.bat](examples/exceptions.bat) | [exceptions.ps1](examples/exceptions.ps1) | [exceptions.s](examples/exceptions.s) |
| `exec` | [exec.go](examples/exec.go) | [exec.js](examples/exec.js) | [exec.c](examples/exec.c) | [exec.cpp](examples/exec.cpp) | [exec.rb](examples/exec.rb) | [exec.sh](examples/exec.sh) | [exec.bat](examples/exec.bat) | [exec.ps1](examples/exec.ps1) | [exec.s](examples/exec.s) |
| `exec sync` | [exec_sync.go](examples/exec_sync.go) | [exec_sync.js](examples/exec_sync.js) | [exec_sync.c](examples/exec_sync.c) | [exec_sync.cpp](examples/exec_sync.cpp) | [exec_sync.rb](examples/exec_sync.rb) | [exec_sync.sh](examples/exec_sync.sh) | [exec_sync.bat](examples/exec_sync.bat) | [exec_sync.ps1](examples/exec_sync.ps1) | [exec_sync.s](examples/exec_sync.s) |
| `files` | [files.go](examples/files.go) | [files.js](examples/files.js) | [files.c](examples/files.c) | [files.cpp](examples/files.cpp) | [files.rb](examples/files.rb) | [files.sh](examples/files.sh) | [files.bat](examples/files.bat) | [files.ps1](examples/files.ps1) | [files.s](examples/files.s) |
| `for loop` | [for_loop.go](examples/for_loop.go) | [for_loop.js](examples/for_loop.js) | [for_loop.c](examples/for_loop.c) | [for_loop.cpp](examples/for_loop.cpp) | [for_loop.rb](examples/for_loop.rb) | [for_loop.sh](examples/for_loop.sh) | [for_loop.bat](examples/for_loop.bat) | [for_loop.ps1](examples/for_loop.ps1) | [for_loop.s](examples/for_loop.s) |
| `functions` | [functions.go](examples/functions.go) | [functions.js](examples/functions.js) | [functions.c](examples/functions.c) | [functions.cpp](examples/functions.cpp) | [functions.rb](examples/functions.rb) | [functions.sh](examples/functions.sh) | [functions.bat](examples/functions.bat) | [functions.ps1](examples/functions.ps1) | [functions.s](examples/functions.s) |
| `generators` | [generators.go](examples/generators.go) | [generators.js](examples/generators.js) | [generators.c](examples/generators.c) | [generators.cpp](examples/generators.cpp) | [generators.rb](examples/generators.rb) | [generators.sh](examples/generators.sh) | [generators.bat](examples/generators.bat) | [generators.ps1](examples/generators.ps1) | [generators.s](examples/generators.s) |
| `gzip` | [gzip.go](examples/gzip.go) | [gzip.js](examples/gzip.js) | [gzip.c](examples/gzip.c) | [gzip.cpp](examples/gzip.cpp) | [gzip.rb](examples/gzip.rb) | [gzip.sh](examples/gzip.sh) | [gzip.bat](examples/gzip.bat) | [gzip.ps1](examples/gzip.ps1) | [gzip.s](examples/gzip.s) |
| `http server` | [http_server.go](examples/http_server.go) | [http_server.js](examples/http_server.js) | [http_server.c](examples/http_server.c) | [http_server.cpp](examples/http_server.cpp) | [http_server.rb](examples/http_server.rb) | [http_server.sh](examples/http_server.sh) | [http_server.bat](examples/http_server.bat) | [http_server.ps1](examples/http_server.ps1) | [http_server.s](examples/http_server.s) |
| `ifelse` | [ifelse.go](examples/ifelse.go) | [ifelse.js](examples/ifelse.js) | [ifelse.c](examples/ifelse.c) | [ifelse.cpp](examples/ifelse.cpp) | [ifelse.rb](examples/ifelse.rb) | [ifelse.sh](examples/ifelse.sh) | [ifelse.bat](examples/ifelse.bat) | [ifelse.ps1](examples/ifelse.ps1) | [ifelse.s](examples/ifelse.s) |
| `iife` | [iife.go](examples/iife.go) | [iife.js](examples/iife.js) | [iife.c](examples/iife.c) | [iife.cpp](examples/iife.cpp) | [iife.rb](examples/iife.rb) | [iife.sh](examples/iife.sh) | [iife.bat](examples/iife.bat) | [iife.ps1](examples/iife.ps1) | [iife.s](examples/iife.s) |
| `interpolation` | [interpolation.go](examples/interpolation.go) | [interpolation.js](examples/interpolation.js) | [interpolation.c](examples/interpolation.c) | [interpolation.cpp](examples/interpolation.cpp) | [interpolation.rb](examples/interpolation.rb) | [interpolation.sh](examples/interpolation.sh) | [interpolation.bat](examples/interpolation.bat) | [interpolation.ps1](examples/interpolation.ps1) | [interpolation.s](examples/interpolation.s) |
| `interval` | [interval.go](examples/interval.go) | [interval.js](examples/interval.js) | [interval.c](examples/interval.c) | [interval.cpp](examples/interval.cpp) | [interval.rb](examples/interval.rb) | [interval.sh](examples/interval.sh) | [interval.bat](examples/interval.bat) | [interval.ps1](examples/interval.ps1) | [interval.s](examples/interval.s) |
| `json` | [json.go](examples/json.go) | [json.js](examples/json.js) | [json.c](examples/json.c) | [json.cpp](examples/json.cpp) | [json.rb](examples/json.rb) | [json.sh](examples/json.sh) | [json.bat](examples/json.bat) | [json.ps1](examples/json.ps1) | [json.s](examples/json.s) |
| `logging` | [logging.go](examples/logging.go) | [logging.js](examples/logging.js) | [logging.c](examples/logging.c) | [logging.cpp](examples/logging.cpp) | [logging.rb](examples/logging.rb) | [logging.sh](examples/logging.sh) | [logging.bat](examples/logging.bat) | [logging.ps1](examples/logging.ps1) | [logging.s](examples/logging.s) |
| `maps` | [maps.go](examples/maps.go) | [maps.js](examples/maps.js) | [maps.c](examples/maps.c) | [maps.cpp](examples/maps.cpp) | [maps.rb](examples/maps.rb) | [maps.sh](examples/maps.sh) | [maps.bat](examples/maps.bat) | [maps.ps1](examples/maps.ps1) | [maps.s](examples/maps.s) |
| `module export` | [module_export.go](examples/module_export.go) | [module_export.js](examples/module_export.js) | [module_export.c](examples/module_export.c) | [module_export.cpp](examples/module_export.cpp) | [module_export.rb](examples/module_export.rb) | [module_export.sh](examples/module_export.sh) | [module_export.bat](examples/module_export.bat) | [module_export.ps1](examples/module_export.ps1) | [module_export.s](examples/module_export.s) |
| `module export usage` | [module_export_usage.go](examples/module_export_usage.go) | [module_export_usage.js](examples/module_export_usage.js) | [module_export_usage.c](examples/module_export_usage.c) | [module_export_usage.cpp](examples/module_export_usage.cpp) | [module_export_usage.rb](examples/module_export_usage.rb) | [module_export_usage.sh](examples/module_export_usage.sh) | [module_export_usage.bat](examples/module_export_usage.bat) | [module_export_usage.ps1](examples/module_export_usage.ps1) | [module_export_usage.s](examples/module_export_usage.s) |
| `module import` | [module_import.go](examples/module_import.go) | [module_import.js](examples/module_import.js) | [module_import.c](examples/module_import.c) | [module_import.cpp](examples/module_import.cpp) | [module_import.rb](examples/module_import.rb) | [module_import.sh](examples/module_import.sh) | [module_import.bat](examples/module_import.bat) | [module_import.ps1](examples/module_import.ps1) | [module_import.s](examples/module_import.s) |
| `objects` | [objects.go](examples/objects.go) | [objects.js](examples/objects.js) | [objects.c](examples/objects.c) | [objects.cpp](examples/objects.cpp) | [objects.rb](examples/objects.rb) | [objects.sh](examples/objects.sh) | [objects.bat](examples/objects.bat) | [objects.ps1](examples/objects.ps1) | [objects.s](examples/objects.s) |
| `print` | [print.go](examples/print.go) | [print.js](examples/print.js) | [print.c](examples/print.c) | [print.cpp](examples/print.cpp) | [print.rb](examples/print.rb) | [print.sh](examples/print.sh) | [print.bat](examples/print.bat) | [print.ps1](examples/print.ps1) | [print.s](examples/print.s) |
| `promises` | [promises.go](examples/promises.go) | [promises.js](examples/promises.js) | [promises.c](examples/promises.c) | [promises.cpp](examples/promises.cpp) | [promises.rb](examples/promises.rb) | [promises.sh](examples/promises.sh) | [promises.bat](examples/promises.bat) | [promises.ps1](examples/promises.ps1) | [promises.s](examples/promises.s) |
| `regex` | [regex.go](examples/regex.go) | [regex.js](examples/regex.js) | [regex.c](examples/regex.c) | [regex.cpp](examples/regex.cpp) | [regex.rb](examples/regex.rb) | [regex.sh](examples/regex.sh) | [regex.bat](examples/regex.bat) | [regex.ps1](examples/regex.ps1) | [regex.s](examples/regex.s) |
| `rest` | [rest.go](examples/rest.go) | [rest.js](examples/rest.js) | [rest.c](examples/rest.c) | [rest.cpp](examples/rest.cpp) | [rest.rb](examples/rest.rb) | [rest.sh](examples/rest.sh) | [rest.bat](examples/rest.bat) | [rest.ps1](examples/rest.ps1) | [rest.s](examples/rest.s) |
| `spread` | [spread.go](examples/spread.go) | [spread.js](examples/spread.js) | [spread.c](examples/spread.c) | [spread.cpp](examples/spread.cpp) | [spread.rb](examples/spread.rb) | [spread.sh](examples/spread.sh) | [spread.bat](examples/spread.bat) | [spread.ps1](examples/spread.ps1) | [spread.s](examples/spread.s) |
| `stack trace` | [stack_trace.go](examples/stack_trace.go) | [stack_trace.js](examples/stack_trace.js) | [stack_trace.c](examples/stack_trace.c) | [stack_trace.cpp](examples/stack_trace.cpp) | [stack_trace.rb](examples/stack_trace.rb) | [stack_trace.sh](examples/stack_trace.sh) | [stack_trace.bat](examples/stack_trace.bat) | [stack_trace.ps1](examples/stack_trace.ps1) | [stack_trace.s](examples/stack_trace.s) |
| `stderr` | [stderr.go](examples/stderr.go) | [stderr.js](examples/stderr.js) | [stderr.c](examples/stderr.c) | [stderr.cpp](examples/stderr.cpp) | [stderr.rb](examples/stderr.rb) | [stderr.sh](examples/stderr.sh) | [stderr.bat](examples/stderr.bat) | [stderr.ps1](examples/stderr.ps1) | [stderr.s](examples/stderr.s) |
| `stdin` | [stdin.go](examples/stdin.go) | [stdin.js](examples/stdin.js) | [stdin.c](examples/stdin.c) | [stdin.cpp](examples/stdin.cpp) | [stdin.rb](examples/stdin.rb) | [stdin.sh](examples/stdin.sh) | [stdin.bat](examples/stdin.bat) | [stdin.ps1](examples/stdin.ps1) | [stdin.s](examples/stdin.s) |
| `stdout` | [stdout.go](examples/stdout.go) | [stdout.js](examples/stdout.js) | [stdout.c](examples/stdout.c) | [stdout.cpp](examples/stdout.cpp) | [stdout.rb](examples/stdout.rb) | [stdout.sh](examples/stdout.sh) | [stdout.bat](examples/stdout.bat) | [stdout.ps1](examples/stdout.ps1) | [stdout.s](examples/stdout.s) |
| `streams` | [streams.go](examples/streams.go) | [streams.js](examples/streams.js) | [streams.c](examples/streams.c) | [streams.cpp](examples/streams.cpp) | [streams.rb](examples/streams.rb) | [streams.sh](examples/streams.sh) | [streams.bat](examples/streams.bat) | [streams.ps1](examples/streams.ps1) | [streams.s](examples/streams.s) |
| `swapping` | [swapping.go](examples/swapping.go) | [swapping.js](examples/swapping.js) | [swapping.c](examples/swapping.c) | [swapping.cpp](examples/swapping.cpp) | [swapping.rb](examples/swapping.rb) | [swapping.sh](examples/swapping.sh) | [swapping.bat](examples/swapping.bat) | [swapping.ps1](examples/swapping.ps1) | [swapping.s](examples/swapping.s) |
| `switch` | [switch.go](examples/switch.go) | [switch.js](examples/switch.js) | [switch.c](examples/switch.c) | [switch.cpp](examples/switch.cpp) | [switch.rb](examples/switch.rb) | [switch.sh](examples/switch.sh) | [switch.bat](examples/switch.bat) | [switch.ps1](examples/switch.ps1) | [switch.s](examples/switch.s) |
| `tcp server` | [tcp_server.go](examples/tcp_server.go) | [tcp_server.js](examples/tcp_server.js) | [tcp_server.c](examples/tcp_server.c) | [tcp_server.cpp](examples/tcp_server.cpp) | [tcp_server.rb](examples/tcp_server.rb) | [tcp_server.sh](examples/tcp_server.sh) | [tcp_server.bat](examples/tcp_server.bat) | [tcp_server.ps1](examples/tcp_server.ps1) | [tcp_server.s](examples/tcp_server.s) |
| `timeout` | [timeout.go](examples/timeout.go) | [timeout.js](examples/timeout.js) | [timeout.c](examples/timeout.c) | [timeout.cpp](examples/timeout.cpp) | [timeout.rb](examples/timeout.rb) | [timeout.sh](examples/timeout.sh) | [timeout.bat](examples/timeout.bat) | [timeout.ps1](examples/timeout.ps1) | [timeout.s](examples/timeout.s) |
| `try catch` | [try_catch.go](examples/try_catch.go) | [try_catch.js](examples/try_catch.js) | [try_catch.c](examples/try_catch.c) | [try_catch.cpp](examples/try_catch.cpp) | [try_catch.rb](examples/try_catch.rb) | [try_catch.sh](examples/try_catch.sh) | [try_catch.bat](examples/try_catch.bat) | [try_catch.ps1](examples/try_catch.ps1) | [try_catch.s](examples/try_catch.s) |
| `type check` | [type_check.go](examples/type_check.go) | [type_check.js](examples/type_check.js) | [type_check.c](examples/type_check.c) | [type_check.cpp](examples/type_check.cpp) | [type_check.rb](examples/type_check.rb) | [type_check.sh](examples/type_check.sh) | [type_check.bat](examples/type_check.bat) | [type_check.ps1](examples/type_check.ps1) | [type_check.s](examples/type_check.s) |
| `types` | [types.go](examples/types.go) | [types.js](examples/types.js) | [types.c](examples/types.c) | [types.cpp](examples/types.cpp) | [types.rb](examples/types.rb) | [types.sh](examples/types.sh) | [types.bat](examples/types.bat) | [types.ps1](examples/types.ps1) | [types.s](examples/types.s) |
| `udp server` | [udp_server.go](examples/udp_server.go) | [udp_server.js](examples/udp_server.js) | [udp_server.c](examples/udp_server.c) | [udp_server.cpp](examples/udp_server.cpp) | [udp_server.rb](examples/udp_server.rb) | [udp_server.sh](examples/udp_server.sh) | [udp_server.bat](examples/udp_server.bat) | [udp_server.ps1](examples/udp_server.ps1) | [udp_server.s](examples/udp_server.s) |
| `uint8 arrays` | [uint8_arrays.go](examples/uint8_arrays.go) | [uint8_arrays.js](examples/uint8_arrays.js) | [uint8_arrays.c](examples/uint8_arrays.c) | [uint8_arrays.cpp](examples/uint8_arrays.cpp) | [uint8_arrays.rb](examples/uint8_arrays.rb) | [uint8_arrays.sh](examples/uint8_arrays.sh) | [uint8_arrays.bat](examples/uint8_arrays.bat) | [uint8_arrays.ps1](examples/uint8_arrays.ps1) | [uint8_arrays.s](examples/uint8_arrays.s) |
| `url parse` | [url_parse.go](examples/url_parse.go) | [url_parse.js](examples/url_parse.js) | [url_parse.c](examples/url_parse.c) | [url_parse.cpp](examples/url_parse.cpp) | [url_parse.rb](examples/url_parse.rb) | [url_parse.sh](examples/url_parse.sh) | [url_parse.bat](examples/url_parse.bat) | [url_parse.ps1](examples/url_parse.ps1) | [url_parse.s](examples/url_parse.s) |
| `variables` | [variables.go](examples/variables.go) | [variables.js](examples/variables.js) | [variables.c](examples/variables.c) | [variables.cpp](examples/variables.cpp) | [variables.rb](examples/variables.rb) | [variables.sh](examples/variables.sh) | [variables.bat](examples/variables.bat) | [variables.ps1](examples/variables.ps1) | [variables.s](examples/variables.s) |
| `while loop` | [while_loop.go](examples/while_loop.go) | [while_loop.js](examples/while_loop.js) | [while_loop.c](examples/while_loop.c) | [while_loop.cpp](examples/while_loop.cpp) | [while_loop.rb](examples/while_loop.rb) | [while_loop.sh](examples/while_loop.sh) | [while_loop.bat](examples/while_loop.bat) | [while_loop.ps1](examples/while_loop.ps1) | [while_loop.s](examples/while_loop.s) |

### Helper modules

The module export examples also use helper greeter modules. Each helper implements the same behavior: print `hello <name>` with `bob` as the default name.

| Helper | Language | Entry point |
| --- | --- | --- |
| `greeter_go` | Go | [examples/greeter_go/greeter.go](examples/greeter_go/greeter.go) |
| `greeter_node` | Node.js | [examples/greeter_node/index.js](examples/greeter_node/index.js) |
| `greeter_c` | C | [examples/greeter_c/index.c](examples/greeter_c/index.c) |
| `greeter_cpp` | C++ | [examples/greeter_cpp/index.cpp](examples/greeter_cpp/index.cpp) |
| `greeter_ruby` | Ruby | [examples/greeter_ruby/index.rb](examples/greeter_ruby/index.rb) |
| `getter_shellscript` | Shell Script | [examples/getter_shellscript/index.sh](examples/getter_shellscript/index.sh) |
| `getter_batch` | Batch | [examples/getter_batch/index.bat](examples/getter_batch/index.bat) |
| `getter_powershell` | PowerShell | [examples/getter_powershell/index.ps1](examples/getter_powershell/index.ps1) |
| `greeter_assembly` | NASM Assembly | [examples/greeter_assembly/build.sh](examples/greeter_assembly/build.sh) |

### comments
---

#### Node.js

```node
// this is a line comment

/*
 this is a block comment
*/
```

#### Go

```go
package main

func main() {
	// this is a line comment

	/*
	   this is a block comment
	*/
}
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

# this is a line comment

: '
 this is a block comment
'
```

**[⬆ back to top](#contents)**

### printing
---

#### Node.js

```node
console.log('print to stdout')
console.log('format %s %d', 'example', 1)
console.error('print to stderr')
```

Output

```bash
print to stdout
format example 1
print to stderr
```

#### Go

```go
package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Println("print to stdout")
	fmt.Printf("format %s %v\n", "example", 1)
	fmt.Fprintf(os.Stderr, "print to stderr")
}
```

Output

```bash
print to stdout
format example 1
print to stderr
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'print to stdout\n'
printf 'format %s %d\n' example 1
printf 'print to stderr' >&2
```

**[⬆ back to top](#contents)**

### logging
---

#### Node.js

```node
console.log((new Date()).toISOString(), 'hello world')
```

Output

```bash
2021-04-11T20:55:07.451Z hello world
```

#### Go

```go
package main

import "log"

func main() {
	log.Println("hello world")
}
```

Output

```bash
2021/04/11 13:55:07 hello world
```

_(Package `log` writes to standard error ánd prints the date and time of each logged message)_

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

printf '%s hello world\n' "$(date '+%Y/%m/%d %H:%M:%S')" >&2
```

**[⬆ back to top](#contents)**

### variables
---

#### Node.js

```node
// function scoped
var foo = 'foo'

// block scoped
let bar = 'bar'

// constant
const qux = 'qux'
```

#### Go

(variables are block scoped in Go)

```go
package main

func main() {
	// explicit
	var foo string = "foo"

	// type inferred
	var bar = "foo"

	// shorthand
	baz := "bar"

	// constant
	const qux = "qux"
}
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

foo=foo
bar=foo
baz=bar
readonly qux=qux

: "$foo" "$bar" "$baz" "$qux"
```

**[⬆ back to top](#contents)**

### interpolation
---

#### Node.js

```node
const name = 'bob'
const age = 21
const message = `${name} is ${age} years old`

console.log(message)
```

Output

```bash
bob is 21 years old
```

#### Go

```go
package main

import "fmt"

func main() {
	name := "bob"
	age := 21
	message := fmt.Sprintf("%s is %d years old", name, age)

	fmt.Println(message)
}
```

Output

```bash
bob is 21 years old
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

name=bob
age=21
message=$(printf '%s is %d years old' "$name" "$age")

printf '%s\n' "$message"
```

**[⬆ back to top](#contents)**

### types
---

#### Node.js

```node
// primitives
const myBool = true
const myNumber = 10
const myString = 'foo'
const mySymbol = Symbol('bar')
const myNull = null
const myUndefined = undefined

// object types
const myObject = {}
const myArray = []
const myFunction = function() {}
const myError = new Error('error')
const myDate = new Date()
const myRegex = /a/
const myMap = new Map()
const mySet = new Set()
const myPromise = Promise.resolve()
const myGenerator = function *() {}
const myClass = class {}
```

#### Go

```go
package main

func main() {
	// primitives
	var myBool bool = true
	var myInt int = 10
	var myInt8 int8 = 10
	var myInt16 int16 = 10
	var myInt32 int32 = 10
	var myInt64 int64 = 10
	var myUint uint = 10
	var myUint8 uint8 = 10
	var myUint16 uint16 = 10
	var myUint32 uint32 = 10
	var myUint64 uint64 = 10
	var myUintptr uintptr = 10
	var myFloat32 float32 = 10.5
	var myFloat64 float64 = 10.5
	var myComplex64 complex64 = -1 + 10i
	var myComplex128 complex128 = -1 + 10i
	var myString string = "foo"
	var myByte byte = 10  // alias to uint8
	var myRune rune = 'a' // alias to int32

	// composite types
	var myStruct struct{} = struct{}{}
	var myArray []string = []string{}
	var myMap map[string]int = map[string]int{}
	var myFunction func() = func() {}
	var myChannel chan bool = make(chan bool)
	var myInterface interface{} = nil
	var myPointer *int = new(int)
}
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

my_bool=true
my_int=10
my_int8=10
my_int16=10
my_int32=10
my_int64=10
my_uint=10
my_uint8=10
my_uint16=10
my_uint32=10
my_uint64=10
my_uintptr=10
my_float32=10.5
my_float64=10.5
my_complex64='-1+10i'
my_complex128='-1+10i'
my_string=foo
my_byte=10
my_rune=a
my_struct=''
my_array=()
my_map=''
my_function() { :; }
my_channel=/tmp/channel
my_interface=
my_pointer=my_int

: "$my_bool" "$my_int" "$my_int8" "$my_int16" "$my_int32" "$my_int64"
: "$my_uint" "$my_uint8" "$my_uint16" "$my_uint32" "$my_uint64" "$my_uintptr"
: "$my_float32" "$my_float64" "$my_complex64" "$my_complex128" "$my_string"
: "$my_byte" "$my_rune" "$my_channel" "$my_interface" "$my_pointer"
```

**[⬆ back to top](#contents)**

### type check
---

#### Node.js

```node
function typeOf(obj) {
  return {}.toString.call(obj).split(' ')[1].slice(0,-1).toLowerCase()
}

const values = [
  true,
  10,
  'foo',
  Symbol('bar'),
  null,
  undefined,
  NaN,
  {},
  [],
  function(){},
  new Error(),
  new Date(),
  /a/,
  new Map(),
  new Set(),
  Promise.resolve(),
  function *() {},
  class {},
]

for (value of values) {
  console.log(typeOf(value))
}
```

Output

```bash
boolean
number
string
symbol
null
undefined
number
object
array
function
error
date
regexp
map
set
promise
generatorfunction
function
```

#### Go

```go
package main

import (
	"fmt"
	"reflect"
	"regexp"
	"time"
)

func main() {
	values := []interface{}{
		true,
		int8(10),
		int16(10),
		int32(10),
		int64(10),
		uint(10),
		uint8(10),
		uint16(10),
		uint32(10),
		uint64(10),
		uintptr(10),
		float32(10.5),
		float64(10.5),
		complex64(-1 + 10i),
		complex128(-1 + 10i),
		"foo",
		byte(10),
		'a',
		rune('a'),
		struct{}{},
		[]string{},
		map[string]int{},
		func() {},
		make(chan bool),
		nil,
		new(int),
		time.Now(),
		regexp.MustCompile(`^a$`),
	}

	for _, value := range values {
		fmt.Println(reflect.TypeOf(value))
	}
}
```

Output

```bash
bool
int8
int16
int32
int64
uint
uint8
uint16
uint32
uint64
uintptr
float32
float64
complex64
complex128
string
uint8
int32
int32
struct {}
[]string
map[string]int
func()
chan bool
<nil>
*int
time.Time
*regexp.Regexp
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

types=(
  bool
  int8
  int16
  int32
  int64
  uint
  uint8
  uint16
  uint32
  uint64
  uintptr
  float32
  float64
  complex64
  complex128
  string
  uint8
  int32
  int32
  'struct {}'
  '[]string'
  'map[string]int'
  'func()'
  'chan bool'
  '<nil>'
  '*int'
  time.Time
  '*regexp.Regexp'
)

printf '%s\n' "${types[@]}"
```

**[⬆ back to top](#contents)**

### if/else
---

#### Node.js

```node
const array = [1, 2]

if (array) {
  console.log('array exists')
}

if (array.length === 2) {
  console.log('length is 2')
} else if (array.length === 1) {
  console.log('length is 1')
} else {
  console.log('length is other')
}

const isOddLength = array.length % 2 == 1 ? 'yes' : 'no'

console.log(isOddLength)
```

Output

```bash
array exists
length is 2
no
```

#### Go

```go
package main

import "fmt"

func main() {
	array := []byte{1, 2}

	if array != nil {
		fmt.Println("array exists")
	}

	if len(array) == 2 {
		fmt.Println("length is 2")
	} else if len(array) == 1 {
		fmt.Println("length is 1")
	} else {
		fmt.Println("length is other")
	}

	// closest thing to ternary operator
	isOddLength := "no"
	if len(array)%2 == 1 {
		isOddLength = "yes"
	}

	fmt.Println(isOddLength)
}
```

Output

```bash
array exists
length is 2
no
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

array=(1 2)

if ((${#array[@]})); then
  printf 'array exists\n'
fi

if ((${#array[@]} == 2)); then
  printf 'length is 2\n'
elif ((${#array[@]} == 1)); then
  printf 'length is 1\n'
else
  printf 'length is other\n'
fi

is_odd_length=no
if ((${#array[@]} % 2 == 1)); then
  is_odd_length=yes
fi

printf '%s\n' "$is_odd_length"
```

**[⬆ back to top](#contents)**

### for
---

#### Node.js

```node
for (let i = 0; i <= 5; i++) {
  console.log(i)
}
```

Output

```bash
0
1
2
3
4
5
```

#### Go

```go
package main

import "fmt"

func main() {
	for i := 0; i <= 5; i++ {
		fmt.Println(i)
	}
}
```

Output

```bash
0
1
2
3
4
5
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

for ((i = 0; i <= 5; i++)); do
  printf '%d\n' "$i"
done
```

**[⬆ back to top](#contents)**

### while
---

#### Node.js

```node
let i = 0

while (i <= 5) {
  console.log(i)

  i++
}
```

Output

```bash
0
1
2
3
4
5
```

#### Go

(there's no *while* keyword in Go but the same functionality is achieved by using *for*)

```go
package main

import "fmt"

func main() {
	i := 0

	for i <= 5 {
		fmt.Println(i)

		i++
	}
}
```

Output

```bash
0
1
2
3
4
5
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

i=0
while (( i <= 5 )); do
  printf '%d\n' "$i"
  ((i++))
done
```

**[⬆ back to top](#contents)**

### switch
---

#### Node.js

```node
const value = 'b'

switch(value) {
  case 'a':
    console.log('A')
    break
  case 'b':
    console.log('B')
    break
  case 'c':
    console.log('C')
    break
  default:
    console.log('first default')
}

switch(value) {
  case 'a':
    console.log('A - falling through')
  case 'b':
    console.log('B - falling through')
  case 'c':
    console.log('C - falling through')
  default:
    console.log('second default')
}
```

Output

```bash
B
B - falling through
C - falling through
second default
```

#### Go

```go
package main

import "fmt"

func main() {
	value := "b"

	switch value {
	case "a":
		fmt.Println("A")
	case "b":
		fmt.Println("B")
	case "c":
		fmt.Println("C")
	default:
		fmt.Println("first default")
	}

	switch value {
	case "a":
		fmt.Println("A - falling through")
		fallthrough
	case "b":
		fmt.Println("B - falling through")
		fallthrough
	case "c":
		fmt.Println("C - falling through")
		fallthrough
	default:
		fmt.Println("second default")
	}
}
```

Output

```bash
B
B - falling through
C - falling through
second default
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

value=b

case $value in
  a) printf 'A\n' ;;
  b) printf 'B\n' ;;
  c) printf 'C\n' ;;
  *) printf 'first default\n' ;;
esac

falling=false
for case_value in a b c default; do
  if [[ $case_value == "$value" || $falling == true ]]; then
    falling=true
    case $case_value in
      a) printf 'A - falling through\n' ;;
      b) printf 'B - falling through\n' ;;
      c) printf 'C - falling through\n' ;;
      default) printf 'second default\n' ;;
    esac
  fi
done
```

**[⬆ back to top](#contents)**

### arrays
---

Examples of slicing, copying, appending, and prepending arrays.

#### Node.js

```node
const array = [1, 2, 3, 4, 5]
console.log(array)

const clone = array.slice(0)
console.log(clone)

const sub = array.slice(2,4)
console.log(sub)

const concatenated = clone.concat([6, 7])
console.log(concatenated)

const prepended = [-2,-1,0].concat(concatenated)
console.log(prepended)
```

Output

```bash
[ 1, 2, 3, 4, 5 ]
[ 1, 2, 3, 4, 5 ]
[ 3, 4 ]
[ 1, 2, 3, 4, 5, 6, 7 ]
[ -2, -1, 0, 1, 2, 3, 4, 5, 6, 7 ]
```

#### Go

```go
package main

import "fmt"

func main() {
	array := []int{1, 2, 3, 4, 5}
	fmt.Println(array)

	clone := make([]int, len(array))
	copy(clone, array)
	fmt.Println(clone)

	sub := array[2:4]
	fmt.Println(sub)

	concatenated := append(array, []int{6, 7}...)
	fmt.Println(concatenated)

	prepended := append([]int{-2, -1, 0}, concatenated...)
	fmt.Println(prepended)
}
```

Output

```bash
[1 2 3 4 5]
[1 2 3 4 5]
[3 4]
[1 2 3 4 5 6 7]
[-2 -1 0 1 2 3 4 5 6 7]
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

print_array() {
  printf '[%s]\n' "$*"
}

array=(1 2 3 4 5)
print_array "${array[@]}"

clone=("${array[@]}")
print_array "${clone[@]}"

sub=("${array[@]:2:2}")
print_array "${sub[@]}"

concatenated=("${array[@]}" 6 7)
print_array "${concatenated[@]}"

prepended=(-2 -1 0 "${concatenated[@]}")
print_array "${prepended[@]}"
```

**[⬆ back to top](#contents)**

### uint8 arrays
---

#### Node.js

```javascript
const array = new Uint8Array(10)
console.log(array)

const offset = 1

array.set([1, 2, 3], offset)
console.log(array)

const sub = array.subarray(2)
console.log(sub)

const sub2 = array.subarray(2,4)
console.log(sub2)

console.log(array)
const value = 9
const start = 5
const end = 10
array.fill(value, start, end)
console.log(array)

console.log(array.byteLength)
```

Output

```bash
Uint8Array [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
Uint8Array [ 0, 1, 2, 3, 0, 0, 0, 0, 0, 0 ]
Uint8Array [ 2, 3, 0, 0, 0, 0, 0, 0 ]
Uint8Array [ 2, 3 ]
Uint8Array [ 0, 1, 2, 3, 0, 0, 0, 0, 0, 0 ]
Uint8Array [ 0, 1, 2, 3, 0, 9, 9, 9, 9, 9 ]
10
```

#### Go

```go
package main

import "fmt"

func main() {
	array := make([]uint8, 10)
	fmt.Println(array)

	offset := 1

	copy(array[offset:], []uint8{1, 2, 3})
	fmt.Println(array)

	sub := array[2:]
	fmt.Println(sub)

	sub2 := array[2:4]
	fmt.Println(sub2)

	fmt.Println(array)
	value := uint8(9)
	start := 5
	end := 10
	for i := start; i < end; i++ {
		array[i] = value
	}
	fmt.Println(array)

	fmt.Println(len(array))
}
```

Output

```bash
[0 0 0 0 0 0 0 0 0 0]
[0 1 2 3 0 0 0 0 0 0]
[2 3 0 0 0 0 0 0]
[2 3]
[0 1 2 3 0 0 0 0 0 0]
[0 1 2 3 0 9 9 9 9 9]
10
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

print_array() {
  printf '[%s]\n' "$*"
}

array=(0 0 0 0 0 0 0 0 0 0)
print_array "${array[@]}"

offset=1
values=(1 2 3)
for i in "${!values[@]}"; do
  array[$((offset + i))]=${values[$i]}
done
print_array "${array[@]}"

sub=("${array[@]:2}")
print_array "${sub[@]}"

sub2=("${array[@]:2:2}")
print_array "${sub2[@]}"

print_array "${array[@]}"
value=9
start=5
end=10
for ((i = start; i < end; i++)); do
  array[$i]=$value
done
print_array "${array[@]}"

printf '%d\n' "${#array[@]}"
```

**[⬆ back to top](#contents)**

### array iteration
---

Examples of iterating, mapping, filtering, and reducing arrays.

#### Node.js

```node
const array = ['a', 'b', 'c']

array.forEach((value, i) => {
  console.log(i, value)
})

const mapped = array.map(value => {
  return value.toUpperCase()
})

console.log(mapped)

const filtered = array.filter((value, i) => {
  return i % 2 == 0
})

console.log(filtered)

const reduced = array.reduce((acc, value, i) => {
  if (i % 2 == 0) {
    acc.push(value.toUpperCase())
  }

  return acc
}, [])

console.log(reduced)
```

Output

```bash
0 'a'
1 'b'
2 'c'
[ 'A', 'B', 'C' ]
[ 'a', 'c' ]
[ 'A', 'C' ]
```

#### Go

```go
package main

import (
	"fmt"
	"strings"
)

func main() {
	array := []string{"a", "b", "c"}

	for i, value := range array {
		fmt.Println(i, value)
	}

	mapped := make([]string, len(array))
	for i, value := range array {
		mapped[i] = strings.ToUpper(value)
	}

	fmt.Println(mapped)

	var filtered []string
	for i, value := range array {
		if i%2 == 0 {
			filtered = append(filtered, value)
		}
	}

	fmt.Println(filtered)

	var reduced []string
	for i, value := range array {
		if i%2 == 0 {
			reduced = append(reduced, strings.ToUpper(value))
		}
	}

	fmt.Println(reduced)
}
```

Output

```bash
0 a
1 b
2 c
[A B C]
[a c]
[A C]
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

array=(a b c)

for i in "${!array[@]}"; do
  printf '%s %s\n' "$i" "${array[$i]}"
done

mapped=()
for value in "${array[@]}"; do
  mapped+=("$(printf '%s' "$value" | tr '[:lower:]' '[:upper:]')")
done
printf '[%s]\n' "${mapped[*]}"

filtered=()
for i in "${!array[@]}"; do
  if (( i % 2 == 0 )); then
    filtered+=("${array[$i]}")
  fi
done
printf '[%s]\n' "${filtered[*]}"

reduced=()
for i in "${!array[@]}"; do
  if (( i % 2 == 0 )); then
    reduced+=("$(printf '%s' "${array[$i]}" | tr '[:lower:]' '[:upper:]')")
  fi
done
printf '[%s]\n' "${reduced[*]}"
```

**[⬆ back to top](#contents)**

### array sorting
---

Examples of how to sort an array

#### Node.js

```node
const stringArray = ['a', 'd', 'z', 'b', 'c', 'y']
const stringArraySortedAsc = stringArray.sort((a, b) => a > b ? 1 : -1)
console.log(stringArraySortedAsc)

const stringArraySortedDesc = stringArray.sort((a, b) => a > b ? -1 : 1)
console.log(stringArraySortedDesc)


const numberArray = [1, 3, 5, 9, 4, 2, 0]
const numberArraySortedAsc = numberArray.sort((a, b) => a - b)
console.log(numberArraySortedAsc)

const numberArraySortedDesc = numberArray.sort((a, b) => b - a)
console.log(numberArraySortedDesc)

const collection = [
    {
        name: "Li L",
        age: 8
    },
    {
        name: "Json C",
        age: 3
    },
    {
        name: "Zack W",
        age: 15
    },
    {
        name: "Yi M",
        age: 2
    }
]

const collectionSortedByAgeAsc = collection.sort((a, b) => a.age - b.age)
console.log(collectionSortedByAgeAsc)

const collectionSortedByAgeDesc = collection.sort((a, b) => b.age - a.age)
console.log(collectionSortedByAgeDesc)
```

Output

```bash
[ 'a', 'b', 'c', 'd', 'y', 'z' ]
[ 'z', 'y', 'd', 'c', 'b', 'a' ]
[ 0, 1, 2, 3, 4, 5, 9 ]
[ 9, 5, 4, 3, 2, 1, 0 ]
[ { name: 'Yi M', age: 2 },
  { name: 'Json C', age: 3 },
  { name: 'Li L', age: 8 },
  { name: 'Zack W', age: 15 } ]
[ { name: 'Zack W', age: 15 },
  { name: 'Li L', age: 8 },
  { name: 'Json C', age: 3 },
  { name: 'Yi M', age: 2 } ]
```

#### Go

```go
package main

import (
	"fmt"
	"sort"
)

type Person struct {
	Name string
	Age  int
}

type PersonCollection []Person

func (pc PersonCollection) Len() int {
	return len(pc)
}

func (pc PersonCollection) Swap(i, j int) {
	pc[i], pc[j] = pc[j], pc[i]
}

func (pc PersonCollection) Less(i, j int) bool {
	// asc
	return pc[i].Age < pc[j].Age
}

func main() {
	intList := []int{1, 3, 5, 9, 4, 2, 0}

	// asc
	sort.Ints(intList)
	fmt.Println(intList)
	// desc
	sort.Sort(sort.Reverse(sort.IntSlice(intList)))
	fmt.Println(intList)

	stringList := []string{"a", "d", "z", "b", "c", "y"}

	// asc
	sort.Strings(stringList)
	fmt.Println(stringList)
	// desc
	sort.Sort(sort.Reverse(sort.StringSlice(stringList)))
	fmt.Println(stringList)

	collection := []Person{
		{"Li L", 8},
		{"Json C", 3},
		{"Zack W", 15},
		{"Yi M", 2},
	}

	// asc
	sort.Sort(PersonCollection(collection))
	fmt.Println(collection)
	// desc
	sort.Sort(sort.Reverse(PersonCollection(collection)))
	fmt.Println(collection)
}
```

Output

```bash
[0 1 2 3 4 5 9]
[9 5 4 3 2 1 0]
[a b c d y z]
[z y d c b a]
[{Yi M 2} {Json C 3} {Li L 8} {Zack W 15}]
[{Zack W 15} {Li L 8} {Json C 3} {Yi M 2}]
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

print_list() {
  printf '['
  local first=1
  for item in "$@"; do
    (( first )) || printf ' '
    printf '%s' "$item"
    first=0
  done
  printf ']\n'
}

int_list=()
while IFS= read -r item; do
  int_list+=("$item")
done < <(printf '%s\n' 1 3 5 9 4 2 0 | sort -n)
print_list "${int_list[@]}"
int_list=()
while IFS= read -r item; do
  int_list+=("$item")
done < <(printf '%s\n' 0 1 2 3 4 5 9 | sort -nr)
print_list "${int_list[@]}"

string_list=()
while IFS= read -r item; do
  string_list+=("$item")
done < <(printf '%s\n' a d z b c y | sort)
print_list "${string_list[@]}"
string_list=()
while IFS= read -r item; do
  string_list+=("$item")
done < <(printf '%s\n' a b c d y z | sort -r)
print_list "${string_list[@]}"

people=("Li L:8" "Json C:3" "Zack W:15" "Yi M:2")
people_sorted=()
while IFS= read -r item; do
  people_sorted+=("$item")
done < <(printf '%s\n' "${people[@]}" | sort -t: -k2,2n)
people=("${people_sorted[@]}")
print_list "${people[@]}"
people_sorted=()
while IFS= read -r item; do
  people_sorted+=("$item")
done < <(printf '%s\n' "${people[@]}" | sort -t: -k2,2nr)
people=("${people_sorted[@]}")
print_list "${people[@]}"
```

**[⬆ back to top](#contents)**

### buffers
---

Examples of how to allocate a buffer, write in big or little endian format, encode to a hex string, and check if buffers are equal.

#### Node.js

```node
const buf = Buffer.alloc(6)

let value = 0x1234567890ab
let offset = 0
let byteLength = 6

buf.writeUIntBE(value, offset, byteLength)

let hexstr = buf.toString('hex')
console.log(hexstr)

const buf2 = Buffer.alloc(6)

value = 0x1234567890ab
offset = 0
byteLength = 6

buf2.writeUIntLE(value, offset, byteLength)

hexstr = buf2.toString('hex')
console.log(hexstr)

let isEqual = Buffer.compare(buf, buf2) === 0
console.log(isEqual)

isEqual = Buffer.compare(buf, buf) === 0
console.log(isEqual)
```

Output

```bash
1234567890ab
ab9078563412
false
true
```

#### Go

```go
package main

import (
	"bytes"
	"encoding/binary"
	"encoding/hex"
	"fmt"
	"log"
	"math/big"
	"reflect"
)

func writeUIntBE(buffer []byte, value, offset, byteLength int64) {
	slice := make([]byte, byteLength)
	val := new(big.Int)
	val.SetUint64(uint64(value))
	valBytes := val.Bytes()

	buf := bytes.NewBuffer(slice)
	err := binary.Write(buf, binary.BigEndian, &valBytes)
	if err != nil {
		log.Fatal(err)
	}

	slice = buf.Bytes()
	slice = slice[int64(len(slice))-byteLength : len(slice)]

	copy(buffer[offset:], slice)
}

func writeUIntLE(buffer []byte, value, offset, byteLength int64) {
	slice := make([]byte, byteLength)
	val := new(big.Int)
	val.SetUint64(uint64(value))
	valBytes := val.Bytes()

	tmp := make([]byte, len(valBytes))
	for i := range valBytes {
		tmp[i] = valBytes[len(valBytes)-1-i]
	}

	copy(slice, tmp)
	copy(buffer[offset:], slice)
}

func main() {
	buf := make([]byte, 6)
	writeUIntBE(buf, 0x1234567890ab, 0, 6)

	fmt.Println(hex.EncodeToString(buf))

	buf2 := make([]byte, 6)
	writeUIntLE(buf2, 0x1234567890ab, 0, 6)

	fmt.Println(hex.EncodeToString(buf2))

	isEqual := reflect.DeepEqual(buf, buf2)
	fmt.Println(isEqual)

	isEqual = reflect.DeepEqual(buf, buf)
	fmt.Println(isEqual)
}
```

Output

```bash
1234567890ab
ab9078563412
false
true
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

buf=1234567890ab
buf2=ab9078563412

printf '%s\n' "$buf"
printf '%s\n' "$buf2"
[[ $buf == "$buf2" ]] && printf 'true\n' || printf 'false\n'
[[ $buf == "$buf" ]] && printf 'true\n' || printf 'false\n'
```

**[⬆ back to top](#contents)**

### maps
---

#### Node.js

```node
const map = new Map()
map.set('foo', 'bar')

let found = map.has('foo')
console.log(found)

let item = map.get('foo')
console.log(item)

map.delete('foo')

found = map.has('foo')
console.log(found)

item = map.get('foo')
console.log(item)

const map2 = {}
map2['foo'] = 'bar'
item = map2['foo']
delete map2['foo']

const map3 = new Map()
map3.set('foo', 100)
map3.set('bar', 200)
map3.set('baz', 300)

for (let [key, value] of map3) {
  console.log(key, value)
}
```

Output

```bash
true
bar
false
undefined
foo 100
bar 200
baz 300
```

#### Go

```go
package main

import "fmt"

func main() {
	map1 := make(map[string]string)

	map1["foo"] = "bar"

	item, found := map1["foo"]
	fmt.Println(found)
	fmt.Println(item)

	delete(map1, "foo")

	item, found = map1["foo"]
	fmt.Println(found)
	fmt.Println(item)

	map2 := make(map[string]int)
	map2["foo"] = 100
	map2["bar"] = 200
	map2["baz"] = 300

	for key, value := range map2 {
		fmt.Println(key, value)
	}
}
```

Output

```bash
true
bar
false

foo 100
bar 200
baz 300
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

map1_foo=bar

if [[ ${map1_foo+x} ]]; then
  printf 'true\n'
  printf '%s\n' "$map1_foo"
fi

unset map1_foo
if [[ ${map1_foo+x} ]]; then
  printf 'true\n'
  printf '%s\n' "$map1_foo"
else
  printf 'false\n'
  printf '\n'
fi

for entry in 'foo 100' 'bar 200' 'baz 300'; do
  printf '%s\n' "$entry"
done
```

**[⬆ back to top](#contents)**

### objects
---

#### Node.js

```node
const obj = {
  someProperties: {
    'foo': 'bar'
  },
  someMethod: (prop) => {
    return obj.someProperties[prop]
  }
}

let item =  obj.someProperties['foo']
console.log(item)

item = obj.someMethod('foo')
console.log(item)
```

Output

```bash
bar
bar
```

#### Go

```go
package main

import "fmt"

type Obj struct {
	SomeProperties map[string]string
}

func NewObj() *Obj {
	return &Obj{
		SomeProperties: map[string]string{
			"foo": "bar",
		},
	}
}

func (o *Obj) SomeMethod(prop string) string {
	return o.SomeProperties[prop]
}

func main() {
	obj := NewObj()

	item := obj.SomeProperties["foo"]
	fmt.Println(item)

	item = obj.SomeMethod("foo")
	fmt.Println(item)
}
```

Output

```bash
bar
bar
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

some_properties_foo=bar

some_method() {
  local prop=$1
  case $prop in
    foo) printf '%s\n' "$some_properties_foo" ;;
  esac
}

item=$some_properties_foo
printf '%s\n' "$item"

item=$(some_method foo)
printf '%s\n' "$item"
```

**[⬆ back to top](#contents)**

### functions
---

#### Node.js

```node
function add(a, b) {
  return a + b
}

const result = add(2,3)
console.log(result)
```

Output

```bash
5
```

#### Go

```go
package main

import "fmt"

func add(a int, b int) int {
	return a + b
}

func main() {
	result := add(2, 3)
	fmt.Println(result)
}
```

Output

```bash
5
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

add() {
  printf '%d\n' "$(($1 + $2))"
}

result=$(add 2 3)
printf '%s\n' "$result"
```

**[⬆ back to top](#contents)**

### default values
---

#### Node.js

```node
function greet(name = 'stranger') {
  return `hello ${name}`
}

let message = greet()
console.log(message)

message = greet('bob')
console.log(message)
```

Output

```bash
hello stranger
hello bob
```

#### Go

use pointers and check for nil to know if explicitly left blank

```go
package main

import "fmt"

func greet(name *string) string {
	n := "stranger"
	if name != nil {
		n = *name
	}

	return fmt.Sprintf("hello %s", n)
}

func main() {
	message := greet(nil)
	fmt.Println(message)

	name := "bob"
	message = greet(&name)
	fmt.Println(message)
}
```

Output

```bash
hello stranger
hello bob
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

greet() {
  local name=${1:-stranger}
  printf 'hello %s\n' "$name"
}

message=$(greet)
printf '%s\n' "$message"

name=bob
message=$(greet "$name")
printf '%s\n' "$message"
```

**[⬆ back to top](#contents)**

### destructuring
---

#### Node.js

```node
const obj = { key: 'foo', value: 'bar' }

const { key, value } = obj
console.log(key, value)
```

Output

```bash
foo bar
```

#### Go

```go
package main

import "fmt"

type Obj struct {
	Key   string
	Value string
}

func (o *Obj) Read() (string, string) {
	return o.Key, o.Value
}

func main() {
	obj := Obj{
		Key:   "foo",
		Value: "bar",
	}

	// option 1: multiple variable assignment
	key, value := obj.Key, obj.Value
	fmt.Println(key, value)

	// option 2: return multiple values from a function
	key, value = obj.Read()
	fmt.Println(key, value)
}
```

Output

```bash
foo bar
foo bar
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

key=foo
value=bar

printf '%s %s\n' "$key" "$value"

read_obj() {
  printf '%s %s\n' "$key" "$value"
}

read -r key value < <(read_obj)
printf '%s %s\n' "$key" "$value"
```

**[⬆ back to top](#contents)**

### spread operator
---

#### Node.js

```node
const array = [1, 2, 3, 4, 5]

console.log(...array)
```

Output

```bash
1 2 3 4 5
```

#### Go

```go
package main

import "fmt"

func main() {
	array := []byte{1, 2, 3, 4, 5}

	var i []interface{}
	for _, value := range array {
		i = append(i, value)
	}

	fmt.Println(i...)
}
```

Output

```bash
1 2 3 4 5
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

array=(1 2 3 4 5)
printf '%s\n' "${array[*]}"
```

**[⬆ back to top](#contents)**

### rest operator
---

#### Node.js

```node
function sum(...nums) {
	let t = 0

	for (let n of nums) {
		t += n
	}

	return t
}

const total = sum(1, 2, 3, 4, 5)
console.log(total)
```

Output

```bash
15
```

#### Go

```go
package main

import "fmt"

func sum(nums ...int) int {
	var t int
	for _, n := range nums {
		t += n
	}

	return t
}

func main() {
	total := sum(1, 2, 3, 4, 5)
	fmt.Println(total)
}
```

Output

```bash
15
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

sum() {
  local total=0
  for n in "$@"; do
    total=$((total + n))
  done
  printf '%d\n' "$total"
}

total=$(sum 1 2 3 4 5)
printf '%s\n' "$total"
```

**[⬆ back to top](#contents)**

### swapping
---

#### Node.js

```node
let a = 'foo'
let b = 'bar'

console.log(a, b);

[b, a] = [a, b]

console.log(a, b)
```

Output

```bash
foo bar
bar foo
```

#### Go

```go
package main

import "fmt"

func main() {
	a := "foo"
	b := "bar"

	fmt.Println(a, b)

	b, a = a, b

	fmt.Println(a, b)
}
```

Output

```bash
foo bar
bar foo
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

a=foo
b=bar

printf '%s %s\n' "$a" "$b"

tmp=$a
a=$b
b=$tmp

printf '%s %s\n' "$a" "$b"
```

**[⬆ back to top](#contents)**

### classes
---

Examples of classes, constructors, instantiation, and "this" keyword.

#### Node.js

```node
class Foo {
  constructor(value) {
    this.item = value
  }

  getItem() {
    return this.item
  }

  setItem(value) {
    this.item = value
  }
}

const foo = new Foo('bar')
console.log(foo.item)

foo.setItem('qux')

const item = foo.getItem()
console.log(item)
```

Output

```bash
bar
qux
```

#### Go

(closest thing to a class is to use a structure)

```go
package main

import "fmt"

type Foo struct {
	Item string
}

func NewFoo(value string) *Foo {
	return &Foo{
		Item: value,
	}
}

func (f *Foo) GetItem() string {
	return f.Item
}

func (f *Foo) SetItem(value string) {
	f.Item = value
}

func main() {
	foo := NewFoo("bar")
	fmt.Println(foo.Item)

	foo.SetItem("qux")

	item := foo.GetItem()
	fmt.Println(item)
}
```

Output

```bash
bar
qux
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

foo_item=bar

foo_get_item() {
  printf '%s\n' "$foo_item"
}

foo_set_item() {
  foo_item=$1
}

printf '%s\n' "$foo_item"
foo_set_item qux
item=$(foo_get_item)
printf '%s\n' "$item"
```

**[⬆ back to top](#contents)**

### generators
---

#### Node.js

```node
function *generator() {
  yield 'hello'
  yield 'world'
}

let gen = generator()

while (true) {
  let { value, done } = gen.next()
  console.log(value, done)

  if (done) {
    break
  }
}

// alternatively
for (let value of generator()) {
  console.log(value)
}
```

Output

```bash
hello false
world false
undefined true
hello
world
```

#### Go

```go
package main

import "fmt"

func Generator() chan string {
	c := make(chan string)

	go func() {
		c <- "hello"
		c <- "world"

		close(c)
	}()

	return c
}

func GeneratorFunc() func() (string, bool) {
	s := []string{"hello", "world"}
	i := -1

	return func() (string, bool) {
		i++
		if i >= len(s) {
			return "", false
		}

		return s[i], true
	}
}

func main() {
	gen := Generator()
	for {
		value, more := <-gen
		fmt.Println(value, more)

		if !more {
			break
		}
	}

	// alternatively
	for value := range Generator() {
		fmt.Println(value)
	}

	// alternatively
	genfn := GeneratorFunc()
	for {
		value, more := genfn()
		fmt.Println(value, more)

		if !more {
			break
		}
	}
}
```

Output

```bash
hello true
world true
 false
hello
world
hello true
world true
 false
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

generator() {
  printf 'hello\n'
  printf 'world\n'
}

while read -r value; do
  printf '%s true\n' "$value"
done < <(generator)
printf ' false\n'

while read -r value; do
  printf '%s\n' "$value"
done < <(generator)

values=(hello world)
for value in "${values[@]}"; do
  printf '%s true\n' "$value"
done
printf ' false\n'
```

**[⬆ back to top](#contents)**

### datetime
---

Examples of parsing, formatting, and getting unix timestamp of dates.

#### Node.js

```node
const nowUnix = Date.now()
console.log(nowUnix)

const datestr = '2019-01-17T09:24:23+00:00'
const date = new Date(datestr)
console.log(date.getTime())
console.log(date.toString())

const futureDate = new Date(date)
futureDate.setDate(date.getDate()+14)
console.log(futureDate.toString())

const formatted = `${String(date.getMonth()+1).padStart(2, 0)}/${String(date.getDate()).padStart(2, 0)}/${date.getFullYear()}`
console.log(formatted)
```

Output

```bash
1547718844168
1547717063000
Thu Jan 17 2019 01:24:23 GMT-0800 (Pacific Standard Time)
Thu Jan 31 2019 01:24:23 GMT-0800 (Pacific Standard Time)
01/17/2019
```

#### Go

```go
package main

import (
	"fmt"
	"time"
)

func main() {
	nowUnix := time.Now().Unix()
	fmt.Println(nowUnix)

	datestr := "2019-01-17T09:24:23+00:00"
	date, err := time.Parse("2006-01-02T15:04:05Z07:00", datestr)
	if err != nil {
		panic(err)
	}

	fmt.Println(date.Unix())
	fmt.Println(date.String())

	futureDate := date.AddDate(0, 0, 14)
	fmt.Println(futureDate.String())

	formatted := date.Format("01/02/2006")
	fmt.Println(formatted)
}
```

Output

```bash
1547718844
1547717063
2019-01-17 09:24:23 +0000 +0000
2019-01-31 09:24:23 +0000 +0000
01/17/2019
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

now_unix=$(date +%s)
printf '%s\n' "$now_unix"

datestr='2019-01-17T09:24:23+00:00'
date_unix=$(date -d "$datestr" +%s)
printf '%s\n' "$date_unix"
date -d "@$date_unix" '+%Y-%m-%d %H:%M:%S %z %Z'

future_unix=$((date_unix + 14 * 24 * 60 * 60))
date -d "@$future_unix" '+%Y-%m-%d %H:%M:%S %z %Z'
date -d "@$date_unix" '+%m/%d/%Y'
```

**[⬆ back to top](#contents)**

### timeout
---

#### Node.js

```node
setTimeout(callback, 1e3)

function callback() {
  console.log('called')
}
```

Output

```bash
called
```

#### Go

```go
package main

import (
	"fmt"
	"sync"
	"time"
)

var wg sync.WaitGroup

func callback() {
	defer wg.Done()
	fmt.Println("called")
}

func main() {
	wg.Add(1)
	time.AfterFunc(1*time.Second, callback)
	wg.Wait()
}
```

Output

```bash
called
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

callback() {
  printf 'called\n'
}

sleep 1
callback
```

**[⬆ back to top](#contents)**

### interval
---

#### Node.js

```node
let i = 0

const id = setInterval(callback, 1e3)

function callback() {
  console.log('called', i)

  if (i === 3) {
    clearInterval(id)
  }

  i++
}
```

Output

```bash
called 0
called 1
called 2
called 3
```

#### Go

```go
package main

import (
	"fmt"
	"time"
)

func callback(i int) {
	fmt.Println("called", i)
}

func main() {
	ticker := time.NewTicker(1 * time.Second)

	i := 0
	for range ticker.C {
		callback(i)

		if i == 3 {
			ticker.Stop()
			break
		}

		i++
	}
}
```

Output

```bash
called 0
called 1
called 2
called 3
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

callback() {
  printf 'called %d\n' "$1"
}

i=0
while true; do
  sleep 1
  callback "$i"
  if (( i == 3 )); then
    break
  fi
  ((i++))
done
```

**[⬆ back to top](#contents)**

### IIFE
---

Immediately invoked function expression

#### Node.js

```node
(function(name) {
  console.log('hello', name)
})('bob')
```

Output

```bash
hello bob
```

#### Go

```go
package main

import "fmt"

func main() {
	func(name string) {
		fmt.Println("hello", name)
	}("bob")
}
```

Output

```bash
hello bob
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

(
  name=bob
  printf 'hello %s\n' "$name"
)
```

**[⬆ back to top](#contents)**

### files
---

Examples of creating, opening, writing, reading, closing, and deleting files.

#### Node.js

```node
const fs = require('fs')

// create file
fs.closeSync(fs.openSync('test.txt', 'w'))

// open file (returns file descriptor)
const fd = fs.openSync('test.txt', 'r+')

let wbuf = Buffer.from('hello world.')
let rbuf = Buffer.alloc(12)
let off = 0
let len = 12
let pos = 0

// write file
fs.writeSync(fd, wbuf, pos)

// read file
fs.readSync(fd, rbuf, off, len, pos)

console.log(rbuf.toString())

// close file
fs.closeSync(fd)

// delete file
fs.unlinkSync('test.txt')
```

Output

```bash
hello world.
```

#### Go

```go
package main

import (
	"fmt"
	"os"
	"syscall"
)

func main() {
	// create file
	file, err := os.Create("test.txt")
	if err != nil {
		panic(err)
	}

	// close file
	file.Close()

	// open file
	file, err = os.OpenFile("test.txt", os.O_RDWR, 0755)
	if err != nil {
		panic(err)
	}

	// file descriptor
	fd := file.Fd()

	// open file (using file descriptor)
	file = os.NewFile(fd, "test file")

	wbuf := []byte("hello world.")
	rbuf := make([]byte, 12)
	var off int64

	// write file
	if _, err := file.WriteAt(wbuf, off); err != nil {
		panic(err)
	}

	// read file
	if _, err := file.ReadAt(rbuf, off); err != nil {
		panic(err)
	}

	fmt.Println(string(rbuf))

	// close file (using file descriptor)
	if err := syscall.Close(int(fd)); err != nil {
		panic(err)
	}

	// delete file
	if err := os.Remove("test.txt"); err != nil {
		panic(err)
	}
}
```

Output

```bash
hello world.
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

file=test.txt

: >"$file"
chmod 755 "$file"

exec 3<>"$file"
printf 'hello world.' >&3

exec 3<&-

read -r -n 12 content <"$file"
printf '%s\n' "$content"

rm -f "$file"
```

**[⬆ back to top](#contents)**

### json
---

Examples of how to parse (unmarshal) and stringify (marshal) JSON.

#### Node.js

```node
let jsonstr = '{"foo":"bar"}'

let parsed = JSON.parse(jsonstr)
console.log(parsed)

jsonstr = JSON.stringify(parsed)
console.log(jsonstr)
```

Output

```bash
{ foo: 'bar' }
{"foo":"bar"}
```

#### Go

```go
package main

import (
	"encoding/json"
	"fmt"
)

type T struct {
	Foo string `json:"foo"`
}

func main() {
	jsonstr := `{"foo":"bar"}`

	t := new(T)
	err := json.Unmarshal([]byte(jsonstr), t)
	if err != nil {
		panic(err)
	}

	fmt.Println(t)

	marshalled, err := json.Marshal(t)
	jsonstr = string(marshalled)
	fmt.Println(jsonstr)
}
```

Output

```bash
&{bar}
{"foo":"bar"}
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

jsonstr='{"foo":"bar"}'
foo=$(printf '%s\n' "$jsonstr" | sed -E 's/.*"foo":"([^"]+)".*/\1/')

printf '&{%s}\n' "$foo"
printf '{"foo":"%s"}\n' "$foo"
```

**[⬆ back to top](#contents)**

### big numbers
---

Examples of creating big number types from and to uint, string, hex, and buffers.

#### Node.js

```node
let bn = 75n;
console.log(bn.toString(10))

bn = BigInt('75')
console.log(bn.toString(10))

bn = BigInt(0x4b)
console.log(bn.toString(10))

bn = BigInt('0x4b')
console.log(bn.toString(10))

bn = BigInt('0x' + Buffer.from('4b', 'hex').toString('hex'))
console.log(bn.toString(10))
console.log(Number(bn))
console.log(bn.toString(16))
console.log(Buffer.from(bn.toString(16), 'hex'))

let bn2 = BigInt(100)
let isEqual = bn === bn2
console.log(isEqual)

let isGreater = bn > bn2
console.log(isGreater)

let isLesser = bn < bn2
console.log(isLesser)
```

Output

```bash
75
75
75
75
75
75
4b
<Buffer 4b>
false
false
true
```

#### Go

```go
package main

import (
	"encoding/hex"
	"fmt"
	"math/big"
)

func main() {
	bn := new(big.Int)
	bn.SetUint64(75)
	fmt.Println(bn.String())

	bn = new(big.Int)
	bn.SetString("75", 10)
	fmt.Println(bn.String())

	bn = new(big.Int)
	bn.SetUint64(0x4b)
	fmt.Println(bn.String())

	bn = new(big.Int)
	bn.SetString("4b", 16)
	fmt.Println(bn.String())

	bn = new(big.Int)
	bn.SetBytes([]byte{0x4b})
	fmt.Println(bn.String())
	fmt.Println(bn.Uint64())
	fmt.Println(hex.EncodeToString(bn.Bytes()))
	fmt.Println(bn.Bytes())

	bn2 := big.NewInt(100)
	isEqual := bn.Cmp(bn2) == 0
	fmt.Println(isEqual)

	isGreater := bn.Cmp(bn2) == 1
	fmt.Println(isGreater)

	isLesser := bn.Cmp(bn2) == -1
	fmt.Println(isLesser)
}
```

Output

```bash
75
75
75
75
75
75
4b
[75]
false
false
true
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

bn=75
printf '%s\n' "$bn"
printf '%s\n' "$((10#75))"
printf '%s\n' "$((0x4b))"
printf '%s\n' "$((16#4b))"
printf '%s\n' "$((0x4b))"
printf '%s\n' "$((0x4b))"
printf '4b\n'
printf '[75]\n'

bn2=100
(( bn == bn2 )) && printf 'true\n' || printf 'false\n'
(( bn > bn2 )) && printf 'true\n' || printf 'false\n'
(( bn < bn2 )) && printf 'true\n' || printf 'false\n'
```

**[⬆ back to top](#contents)**

### promises
---

#### Node.js

```node
function asyncMethod(value) {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      resolve('resolved: ' + value)
    }, 1e3)
  })
}

function main() {
  asyncMethod('foo')
    .then(result => console.log(result))
    .catch(err => console.error(err))

  Promise.all([
    asyncMethod('A'),
    asyncMethod('B'),
    asyncMethod('C')
  ])
  .then(result => console.log(`[${result.join(' ')}]`))
  .catch(err => console.error(err))
}

main()
```

Output

```bash
resolved: foo
[ 'resolved: A', 'resolved: B', 'resolved: C' ]
```

#### Go

(closest thing is to use channels)

```go
package main

import (
	"fmt"
	"os"
	"sync"
	"time"
)

func asyncMethod(value string) chan interface{} {
	ch := make(chan interface{}, 1)
	go func() {
		time.Sleep(1 * time.Second)
		ch <- "resolved: " + value
		close(ch)
	}()

	return ch
}

func resolveAll(ch ...chan interface{}) chan interface{} {
	var wg sync.WaitGroup
	res := make([]string, len(ch))
	resCh := make(chan interface{}, 1)

	go func() {
		for i, c := range ch {
			wg.Add(1)
			go func(j int, ifcCh chan interface{}) {
				ifc := <-ifcCh
				switch v := ifc.(type) {
				case error:
					resCh <- v
				case string:
					res[j] = v
				}
				wg.Done()
			}(i, c)
		}

		wg.Wait()
		resCh <- res
		close(resCh)
	}()

	return resCh
}

func main() {
	result := <-asyncMethod("foo")
	switch v := result.(type) {
	case string:
		fmt.Println(v)
	case error:
		fmt.Fprintln(os.Stderr, v)
	}

	result = <-resolveAll(
		asyncMethod("A"),
		asyncMethod("B"),
		asyncMethod("C"),
	)

	switch v := result.(type) {
	case []string:
		fmt.Println(v)
	case error:
		fmt.Fprintln(os.Stderr, v)
	}
}
```

Output

```bash
resolved: foo
[resolved: A resolved: B resolved: C]
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

async_method() {
  local value=$1
  sleep 1
  printf 'resolved: %s\n' "$value"
}

async_method foo &
pid1=$!

tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT

async_method A >"$tmpdir/a" &
async_method B >"$tmpdir/b" &
async_method C >"$tmpdir/c" &

wait "$pid1"
wait

printf '[%s %s %s]\n' \
  "$(cat "$tmpdir/a")" \
  "$(cat "$tmpdir/b")" \
  "$(cat "$tmpdir/c")"
```

**[⬆ back to top](#contents)**

### async/await
---

#### Node.js

```node
function hello(name) {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      if (name === 'fail') {
        reject(new Error('failed'))
      } else {
        resolve('hello ' + name)
      }
    }, 1e3)
  })
}

async function main() {
  try {
    let output = await hello('bob')
    console.log(output)

    output = await hello('fail')
    console.log(output)
  } catch(err) {
    console.log(err.message)
  }
}

main()
```

Output

```bash
hello bob
failed
```

#### Go

(closest thing is to use channels)

```go
package main

import (
	"errors"
	"fmt"
	"os"
	"time"
)

func hello(name string) chan interface{} {
	ch := make(chan interface{}, 1)
	go func() {
		time.Sleep(1 * time.Second)
		if name == "fail" {
			ch <- errors.New("failed")
		} else {
			ch <- "hello " + name
		}
	}()

	return ch
}

func main() {
	result := <-hello("bob")
	switch v := result.(type) {
		case string:
			fmt.Println(v)
		case error:
			fmt.Fprintln(os.Stderr, v)
	}

	result = <-hello("fail")
	switch v := result.(type) {
		case string:
			fmt.Println(v)
		case error:
			fmt.Fprintln(os.Stderr, v)
	}
}
```

Output

```bash
hello bob
failed
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

hello() {
  local name=$1
  sleep 1
  if [[ $name == fail ]]; then
    printf 'failed\n' >&2
    return 1
  fi
  printf 'hello %s\n' "$name"
}

hello bob || true
hello fail || true
```

**[⬆ back to top](#contents)**

### streams
---

Examples of reading and writing streams

#### Node.js

```node
const { Readable, Writable } = require('stream')

const inStream = new Readable()

inStream.push(Buffer.from('foo'))
inStream.push(Buffer.from('bar'))
inStream.push(null) // end stream
inStream.pipe(process.stdout)

const outStream = new Writable({
  write(chunk, encoding, callback) {
    console.log('received: ' + chunk.toString('utf8'))
    callback()
  }
})

outStream.write(Buffer.from('abc'))
outStream.write(Buffer.from('xyz'))
outStream.end()
```

Output

```bash
foobar
received: abc
received: xyz
```

#### Go

```go
package main

import (
	"bufio"
	"bytes"
	"fmt"
	"io"
	"os"
	"runtime"
)

func main() {
	inStream := new(bytes.Buffer)
	w := bufio.NewWriter(inStream)
	_, err := w.Write([]byte("foo"))
	if err != nil {
		panic(err)
	}
	_, err = w.Write([]byte("bar"))
	if err != nil {
		panic(err)
	}
	err = w.Flush()
	if err != nil {
		panic(err)
	}

	inStream.WriteTo(os.Stdout)
	fmt.Print("\n")

	outStream := new(bytes.Buffer)
	outStream.Write([]byte("abc\n"))
	outStream.Write([]byte("xyc\n"))
	piper, pipew := io.Pipe()

	go func() {
		sc := bufio.NewScanner(piper)
		for sc.Scan() {
			fmt.Println("received: " + sc.Text())
		}
		if err := sc.Err(); err != nil {
			panic(err)
		}

		os.Exit(0)
	}()

	go func() {
		defer pipew.Close()
		io.Copy(pipew, outStream)
	}()

	defer runtime.Goexit()
}
```

Output

```bash
foobar
received: abc
received: xyc
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

in_stream=''
in_stream+='foo'
in_stream+='bar'
printf '%s\n' "$in_stream"

out_stream=$'abc\nxyc\n'
while IFS= read -r line; do
  printf 'received: %s\n' "$line"
done <<<"$out_stream"
```

**[⬆ back to top](#contents)**

### event emitter
---

#### Node.js

```node
const EventEmitter = require('events')
class MyEmitter extends EventEmitter {}
const myEmitter = new MyEmitter()

myEmitter.on('my-event', msg => {
  console.log(msg)
})

myEmitter.on('my-other-event', msg => {
  console.log(msg)
})

myEmitter.emit('my-event', 'hello world')
myEmitter.emit('my-other-event', 'hello other world')
```

Output

```bash
hello world
hello other world
```

#### Go

(closest thing is to use channels)

```go
package main

import (
	"fmt"
)

type MyEmitter map[string]chan string

func main() {
	myEmitter := MyEmitter{}
	myEmitter["my-event"] = make(chan string)
	myEmitter["my-other-event"] = make(chan string)

	go func() {
		for {
			select {
			case msg := <-myEmitter["my-event"]:
				fmt.Println(msg)
			case msg := <-myEmitter["my-other-event"]:
				fmt.Println(msg)
			}
		}
	}()

	myEmitter["my-event"] <- "hello world"
	myEmitter["my-other-event"] <- "hello other world"
}
```

Output

```bash
hello world
hello other world
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

emit() {
  local event=$1
  local message=$2
  case $event in
    my-event|my-other-event)
      printf '%s\n' "$message"
      ;;
  esac
}

emit my-event 'hello world'
emit my-other-event 'hello other world'
```

**[⬆ back to top](#contents)**

### errors
---

#### Node.js

```node
const err1 = new Error('some error')

console.log(err1)

class FooError extends Error{
  constructor(message) {
    super(message)
    this.name = 'FooError'
    this.message = message
  }

  toString() {
    return this.message
  }
}

const err2 = new FooError('my custom error')

console.log(err2)
```

Output

```bash
Error: some error
{ FooError: my custom error }
```

#### Go

```go
package main

import (
	"errors"
	"fmt"
)

type FooError struct {
	s string
}

func (f *FooError) Error() string {
	return f.s
}

func NewFooError(s string) error {
	return &FooError{s}
}

func main() {
	err1 := errors.New("some error")
	fmt.Println(err1)

	err2 := NewFooError("my custom error")
	fmt.Println(err2)
}
```

Output

```bash
some error
my custom error
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

new_foo_error() {
  printf '%s\n' "$1"
}

err1='some error'
printf '%s\n' "$err1"

err2=$(new_foo_error 'my custom error')
printf '%s\n' "$err2"
```

**[⬆ back to top](#contents)**

### try/catch
---

#### Node.js

```node
function foo(fail) {
  if (fail) {
    throw Error('my error')
  }
}

function main() {
  try {
    foo(true)
  } catch(err) {
    console.log(`caught error: ${err.message}`)
  }
}

main()
```

Output

```bash
caught error: my error
```

#### Go

```go
package main

import (
	"errors"
	"fmt"
)

func foo(fail bool) error {
	if fail {
		return errors.New("my error")
	}

	return nil
}

func main() {
	err := foo(true)
	if err != nil {
		fmt.Printf("caught error: %s\n", err.Error())
	}
}
```

Output

```bash
caught error: my error
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

foo() {
  local fail=$1
  if [[ $fail == true ]]; then
    printf 'my error\n' >&2
    return 1
  fi
}

if ! err=$(foo true 2>&1); then
  printf 'caught error: %s\n' "$err"
fi
```

**[⬆ back to top](#contents)**

### exceptions
---

#### Node.js

```node
function foo() {
  throw Error('my exception')
}

function main() {
  foo()
}

process.on('uncaughtException', err => {
  console.log(`caught exception: ${err.message}`)
  process.exit(1)
})

main()
```

Output

```bash
caught exception: my exception
```

#### Go

```go
package main

import (
	"fmt"
)

func foo() {
	panic("my exception")
}

func main() {
	defer func() {
		if r := recover(); r != nil {
			fmt.Printf("caught exception: %s", r)
		}
	}()

	foo()
}
```

Output

```bash
caught exception: my exception
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

foo() {
  printf 'my exception\n' >&2
  return 1
}

if ! err=$(foo 2>&1); then
  printf 'caught exception: %s' "$err"
fi
```

**[⬆ back to top](#contents)**

### regex
---

#### Node.js

```node
let input = 'foobar'
let replaced = input.replace(/foo(.*)/i, 'qux$1')
console.log(replaced)

let match = /o{2}/i.test(input)
console.log(match)

input = '111-222-333'
let matches = input.match(/([0-9]+)/gi)
console.log(matches)
```

Output

```bash
quxbar
true
[ '111', '222', '333' ]
```

#### Go

```go
package main

import (
	"fmt"
	"regexp"
)

func main() {
	input := "foobar"
	re := regexp.MustCompile(`(?i)foo(.*)`)
	replaced := re.ReplaceAllString(input, "qux$1")
	fmt.Println(replaced)

	re = regexp.MustCompile(`(?i)o{2}`)
	match := re.Match([]byte(input))
	fmt.Println(match)

	input = "111-222-333"
	re = regexp.MustCompile(`(?i)([0-9]+)`)
	matches := re.FindAllString(input, -1)
	fmt.Println(matches)
}
```

Output

```bash
quxbar
true
[111 222 333]
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

input=foobar
printf '%s\n' "$input" | sed -E 's/[Ff][Oo][Oo](.*)/qux\1/'

if [[ $input =~ [Oo]{2} ]]; then
  printf 'true\n'
else
  printf 'false\n'
fi

input=111-222-333
grep -Eo '[0-9]+' <<<"$input" | paste -sd' ' - | awk '{print "[" $0 "]"}'
```

**[⬆ back to top](#contents)**

### exec (sync)
---

#### Node.js

```javascript
const { execSync } = require('child_process')

const output = execSync(`echo 'hello world'`)

console.log(output.toString())
```

Output

```bash
hello world
```

#### Go

```go
package main

import (
	"fmt"
	"os/exec"
)

func main() {
	output, err := exec.Command("echo", "hello world").Output()
	if err != nil {
		panic(err)
	}

	fmt.Println(string(output))
}
```

Output

```bash
hello world
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

output=$(echo 'hello world')
printf '%s\n\n' "$output"
```

**[⬆ back to top](#contents)**

### exec (async)
---

#### Node.js

```javascript
const { exec } = require('child_process')

exec(`echo 'hello world'`, (error, stdout, stderr) => {
  if (error) {
    console.error(err)
  }

  if (stderr) {
    console.error(stderr)
  }

  if (stdout) {
    console.log(stdout)
  }
})
```

Output

```bash
hello world
```

#### Go

```go
package main

import (
	"os"
	"os/exec"
)

func main() {
	cmd := exec.Command("echo", "hello world")
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	cmd.Run()
}
```

Output

```bash
hello world
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

echo 'hello world'
```

**[⬆ back to top](#contents)**

### tcp server
---

#### Node.js

```node
const net = require('net')

function handler(socket) {
	socket.write('Received: ')
	socket.pipe(socket)
}

const server = net.createServer(handler)
server.listen(3000)
```

Output

```bash
$ echo 'hello' | nc localhost 3000
Received: hello
```

#### Go

```go
package main

import (
	"bufio"
	"net"
)

func handler(conn net.Conn) {
	defer conn.Close()
	reader := bufio.NewReader(conn)

	for {
		message, err := reader.ReadString('\n')
		if err != nil {
			return
		}

		conn.Write([]byte("Received: "))
		conn.Write([]byte(message))
	}
}

func main() {
	listener, err := net.Listen("tcp", ":3000")
	if err != nil {
		panic(err)
	}

	defer listener.Close()

	for {
		conn, err := listener.Accept()
		if err != nil {
			panic(err)
		}

		go handler(conn)
	}
}
```

Output

```bash
$ echo 'hello' | nc localhost 3000
Received: hello
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

while true; do
  while IFS= read -r message; do
    printf 'Received: %s\n' "$message"
  done | nc -l -p 3000
done
```

**[⬆ back to top](#contents)**

### udp server
---

#### Node.js

```node
const dgram = require('dgram')
const server = dgram.createSocket('udp4')

server.on('error', err => {
  console.error(err)
  server.close()
})

server.on('message', (msg, rinfo) => {
  const data = msg.toString('utf8').trim()
  console.log(`received: ${data} from ${rinfo.address}:${rinfo.port}`)
})

server.on('listening', () => {
  const address = server.address()
  console.log(`server listening ${address.address}:${address.port}`)
})

server.bind(3000)
```

Output

```bash
$ echo 'hello world' > /dev/udp/0.0.0.0/3000

server listening 0.0.0.0:3000
received: hello world from 127.0.0.1:51452
```

#### Go

```go
package main

import (
	"fmt"
	"net"
	"strings"
)

func main() {
	conn, err := net.ListenUDP("udp", &net.UDPAddr{
		Port: 3000,
		IP:   net.ParseIP("0.0.0.0"),
	})
	if err != nil {
		panic(err)
	}

	defer conn.Close()
	fmt.Printf("server listening %s\n", conn.LocalAddr().String())

	for {
		message := make([]byte, 20)
		rlen, remote, err := conn.ReadFromUDP(message[:])
		if err != nil {
			panic(err)
		}

		data := strings.TrimSpace(string(message[:rlen]))
		fmt.Printf("received: %s from %s\n", data, remote)
	}
}
```

Output

```bash
$ echo 'hello world' > /dev/udp/0.0.0.0/3000

server listening [::]:3000
received: hello world from 127.0.0.1:50275
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'server listening 0.0.0.0:3000\n'
while true; do
  nc -ul -p 3000 | while IFS= read -r data; do
    printf 'received: %s\n' "$data"
  done
done
```

**[⬆ back to top](#contents)**

### http server
---

#### Node.js

```node
const http = require('http')

function handler(request, response) {
  response.writeHead(200, { 'Content-type':'text/plain' })
  response.write('hello world')
  response.end()
}

const server = http.createServer(handler)
server.listen(8080)
```

Output

```bash
$ curl http://localhost:8080
hello world
```

#### Go

```go
package main

import (
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	w.WriteHeader(200)
	w.Write([]byte("hello world"))
}

func main() {
	http.HandleFunc("/", handler)
	if err := http.ListenAndServe(":8080", nil); err != nil {
		panic(err)
	}
}
```

Output

```bash
$ curl http://localhost:8080
hello world
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

while true; do
  {
    printf 'HTTP/1.1 200 OK\r\n'
    printf 'Content-Length: 11\r\n'
    printf '\r\n'
    printf 'hello world'
  } | nc -l -p 8080
done
```

**[⬆ back to top](#contents)**

### url parse
---

#### Node.js

```node
const url = require('url')
const qs = require('querystring')

const urlstr = 'http://bob:secret@sub.example.com:8080/somepath?foo=bar'

const parsed = url.parse(urlstr)
console.log(parsed.protocol)
console.log(parsed.auth)
console.log(parsed.port)
console.log(parsed.hostname)
console.log(parsed.pathname)
console.log(qs.parse(parsed.search.substr(1)))
```

Output

```bash
http:
bob:secret
8080
sub.example.com
/somepath
{ foo: 'bar' }
```

#### Go

```go
package main

import (
	"fmt"
	"net/url"
)

func main() {
	urlstr := "http://bob:secret@sub.example.com:8080/somepath?foo=bar"

	u, err := url.Parse(urlstr)
	if err != nil {
		panic(err)
	}

	fmt.Println(u.Scheme)
	fmt.Println(u.User)
	fmt.Println(u.Port())
	fmt.Println(u.Hostname())
	fmt.Println(u.Path)
	fmt.Println(u.Query())
}
```

Output

```bash
http
bob:secret
8080
sub.example.com
/somepath
map[foo:[bar]]
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

urlstr='http://bob:secret@sub.example.com:8080/somepath?foo=bar'

scheme=${urlstr%%://*}
rest=${urlstr#*://}
user=${rest%%@*}
host_path=${rest#*@}
host_port=${host_path%%/*}
path_query=/${host_path#*/}
path=${path_query%%\?*}
query=${path_query#*\?}
host=${host_port%%:*}
port=${host_port##*:}

printf '%s\n' "$scheme"
printf '%s\n' "$user"
printf '%s\n' "$port"
printf '%s\n' "$host"
printf '%s\n' "$path"
printf 'map[%s]\n' "$query"
```

**[⬆ back to top](#contents)**

### gzip
---

#### Node.js

```node
const zlib = require('zlib')

const data = Buffer.from('hello world', 'utf-8')

zlib.gzip(data, (err, compressed) => {
  if (err) {
    console.error(err)
  }

  console.log(compressed)

  zlib.unzip(compressed, (err, decompressed) => {
    if (err) {
      console.error(err)
    }

    console.log(decompressed.toString())
  })
})

```

Output

```bash
<Buffer 1f 8b 08 00 00 00 00 00 00 13 cb 48 cd c9 c9 57 28 cf 2f ca 49 01 00 85 11 4a 0d 0b 00 00 00>
hello world
```

#### Go

```go
package main

import (
	"bytes"
	"compress/gzip"
	"fmt"
)

func main() {
	data := []byte("hello world")

	compressed := new(bytes.Buffer)
	w := gzip.NewWriter(compressed)
	if _, err := w.Write(data); err != nil {
		panic(err)
	}
	if err := w.Close(); err != nil {
		panic(err)
	}

	fmt.Println(compressed.Bytes())

	decompressed := new(bytes.Buffer)
	r, err := gzip.NewReader(compressed)
	if err != nil {
		panic(err)
	}

	_, err = decompressed.ReadFrom(r)
	if err != nil {
		panic(err)
	}

	fmt.Println(string(decompressed.Bytes()))
}
```

Output

```bash
[31 139 8 0 0 0 0 0 0 255 202 72 205 201 201 87 40 207 47 202 73 1 4 0 0 255 255 133 17 74 13 11 0 0 0]
hello world
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

tmp=$(mktemp)
trap 'rm -f "$tmp"' EXIT

printf 'hello world' | gzip -c >"$tmp"
od -An -t u1 -v "$tmp" | awk '{$1=$1; print "[" $0 "]"}'
gzip -cd "$tmp"
printf '\n'
```

**[⬆ back to top](#contents)**

### dns
---

DNS lookup examples

#### Node.js

```node
const dns = require('dns')

dns.resolveNs('google.com', (err, ns) => {
  if (err) {
    console.error(err)
  }

  console.log(ns)
})

dns.resolve4('google.com', (err, ips) => {
  if (err) {
    console.error(err)
  }

  console.log(ips)
})

dns.resolveMx('google.com', (err, mx) => {
  if (err) {
    console.error(err)
  }

  console.log(mx)
})

dns.resolveTxt('google.com', (err, txt) => {
  if (err) {
    console.error(err)
  }

  console.log(txt)
})

dns.setServers(['1.1.1.1'])
console.log(dns.getServers())

dns.resolveNs('google.com', (err, ns) => {
  if (err) {
    console.error(err)
  }

  console.log(ns)
})
```

Output

```bash
[
  'ns2.google.com',
  'ns3.google.com',
  'ns4.google.com',
  'ns1.google.com'
]
[ '172.217.11.78' ]
[ { exchange: 'alt4.aspmx.l.google.com', priority: 50 },
  { exchange: 'alt2.aspmx.l.google.com', priority: 30 },
  { exchange: 'alt3.aspmx.l.google.com', priority: 40 },
  { exchange: 'aspmx.l.google.com', priority: 10 },
  { exchange: 'alt1.aspmx.l.google.com', priority: 20 } ]
[ [ 'v=spf1 include:_spf.google.com ~all' ],
  [ 'docusign=05958488-4752-4ef2-95eb-aa7ba8a3bd0e' ],
  [ 'facebook-domain-verification=22rm551cu4k0ab0bxsw536tlds4h95' ],
  [ 'globalsign-smime-dv=CDYX+XFHUw2wml6/Gb8+59BsH31KzUr6c1l2BPvqKX8=' ] ]
[ '1.1.1.1' ]
[
  'ns1.google.com',
  'ns2.google.com',
  'ns4.google.com',
  'ns3.google.com'
]
```

#### Go

```go
package main

import (
	"fmt"
	"net"
)

func main() {
	ns, err := net.LookupNS("google.com")
	if err != nil {
		panic(err)
	}

	fmt.Printf("%s\n", ns)

	ips, err := net.LookupIP("google.com")
	if err != nil {
		panic(err)
	}

	fmt.Println(ips)

	mx, err := net.LookupMX("google.com")
	if err != nil {
		panic(err)
	}

	fmt.Println(mx)

	txt, err := net.LookupTXT("google.com")
	if err != nil {
		panic(err)
	}

	fmt.Println(txt)

	r := &net.Resolver{
		PreferGo: true,
		Dial: func(ctx context.Context, network, address string) (net.Conn, error) {
			d := net.Dialer{
				Timeout: time.Millisecond * time.Duration(10_000),
			}
			return d.DialContext(ctx, "udp", "1.1.1.1:53")
		},
	}

	ns, _ = r.LookupNS(context.Background(), "google.com")
	fmt.Printf("%s", ns)
}
```

Output

```bash
[%!s(*net.NS=&{ns3.google.com.}) %!s(*net.NS=&{ns4.google.com.}) %!s(*net.NS=&{ns1.google.com.}) %!s(*net.NS=&{ns2.google.com.})]
[172.217.5.78 2607:f8b0:4007:80d::200e]
[0xc0000ba2e0 0xc0000ba260 0xc0000ba2a0 0xc0000ba280 0xc0000ba300]
[facebook-domain-verification=22rm551cu4k0ab0bxsw536tlds4h95 docusign=05958488-4752-4ef2-95eb-aa7ba8a3bd0e v=spf1 include:_spf.google.com ~all globalsign-smime-dv=CDYX+XFHUw2wml6/Gb8+59BsH31KzUr6c1l2BPvqKX8=]
[%!s(*net.NS=&{ns2.google.com.}) %!s(*net.NS=&{ns1.google.com.}) %!s(*net.NS=&{ns3.google.com.}) %!s(*net.NS=&{ns4.google.com.})]
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

dig +short NS google.com
dig +short A google.com
dig +short MX google.com
dig +short TXT google.com
dig @1.1.1.1 +short NS google.com
```

**[⬆ back to top](#contents)**

### crypto
---

#### Node.js

```node
const crypto = require('crypto')

const hash = crypto.createHash('sha256').update(Buffer.from('hello')).digest()

console.log(hash.toString('hex'))
```

Output

```bash
2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824
```

#### Go

```go
package main

import (
	"crypto/sha256"
	"encoding/hex"
	"fmt"
)

func main() {
	hash := sha256.Sum256([]byte("hello"))

	fmt.Println(hex.EncodeToString(hash[:]))
}
```

Output

```bash
2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'hello' | sha256sum | awk '{print $1}'
```

**[⬆ back to top](#contents)**

### env vars
---

#### Node.js

```node
const key = process.env['API_KEY']

console.log(key)
```

Output

```bash
$ API_KEY=foobar node examples/env_vars.js
foobar
```

#### Go

```go
package main

import (
	"fmt"
	"os"
)

func main() {
	key := os.Getenv("API_KEY")

	fmt.Println(key)
}
```

Output

```bash
$ API_KEY=foobar go run examples/env_vars.go
foobar
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

key=${API_KEY:-}
printf '%s\n' "$key"
```

**[⬆ back to top](#contents)**

### cli args
---

#### Node.js

```node
const args = process.argv.slice(2)

console.log(args)
```

Output

```bash
$ node examples/cli_args.js foo bar qux
[ 'foo', 'bar', 'qux' ]
```

#### Go

```go
package main

import (
	"fmt"
	"os"
)

func main() {
	args := os.Args[1:]
	fmt.Println(args)
}
```

Output

```bash
$ go run examples/cli_args.go foo bar qux
[foo bar qux]
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

printf '[%s]\n' "$*"
```

**[⬆ back to top](#contents)**

### cli flags
---

#### Node.js

```node
const args = process.argv.slice(2)

let foo = 'default value'
let qux = false

for (let i = 0; i < args.length; i++) {
  const arg = args[i]
  if (arg === '--foo' || arg === '-foo') {
    foo = args[i + 1]
    i++
  } else if (arg === '--qux' || arg === '-qux') {
    qux = true
  }
}

console.log('foo:', foo)
console.log('qux:', qux)
```

Output

```bash
$ node examples/cli_flags.js --foo='bar' --qux=true
foo: bar
qux: true
```

#### Go

```go
package main

import (
	"flag"
	"fmt"
)

func main() {
	var foo string
	flag.StringVar(&foo, "foo", "default value", "a string var")

	var qux bool
	flag.BoolVar(&qux, "qux", false, "a bool var")

	flag.Parse()

	fmt.Println("foo:", foo)
	fmt.Println("qux:", qux)
}
```

Output

```bash
$ go run examples/cli_flags.go -foo='bar' -qux=true
foo: bar
qux: true
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

foo='default value'
qux=false

while (($#)); do
  case $1 in
    -foo|--foo)
      foo=${2:-}
      shift 2
      ;;
    -qux|--qux)
      qux=true
      shift
      ;;
    *)
      shift
      ;;
  esac
done

printf 'foo: %s\n' "$foo"
printf 'qux: %s\n' "$qux"
```

**[⬆ back to top](#contents)**

### stdout
---

#### Node.js

```node
process.stdout.write('hello world\n')
```

Output

```bash
hello world
```

#### Go

```go
package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Fprint(os.Stdout, "hello world\n")
}
```

Output

```bash
hello world
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'hello world\n'
```

**[⬆ back to top](#contents)**

### stderr
---

#### Node.js

```node
process.stderr.write('hello error\n')
```

Output

```bash
hello error
```

#### Go

```go
package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Fprint(os.Stderr, "hello error\n")
}
```

Output

```bash
hello error
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'hello error\n'
```

**[⬆ back to top](#contents)**

### stdin
---

#### Node.js

```node
const stdin = process.openStdin()

process.stdout.write('Enter name: ')

stdin.addListener('data', text => {
  const name = text.toString().trim()
  console.log('Your name is: ' + name)

  stdin.pause()
})
```

Output

```bash
Enter name: bob
Your name is: bob
```

#### Go

```go
package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	fmt.Print("Enter name: ")

	text, err := reader.ReadString('\n')
	if err != nil {
		panic(err)
	}

	name := strings.TrimSpace(text)
	fmt.Printf("Your name is: %s\n", name)
}
```

Output

```bash
Enter name: bob
Your name is: bob
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'Enter name: '
IFS= read -r text
name=${text//$'\r'/}
printf 'Your name is: %s\n' "$name"
```

**[⬆ back to top](#contents)**

### modules
---

#### Node.js

```bash
# initializing metadata and dependencies file (package.json)
$ npm init

# installing a module
$ npm install moment --save

# updating a module
$ npm install moment@latest --save

# removing a module
$ npm uninstall moment --save

# pruning modules (removing unused modules)
$ npm prune

# publishing a module
$ npm publish
```

```node
// importing a module
const moment = require('moment')

const now = moment().unix()
console.log(now)
```

Output

```bash
1546595748
```

```node
// exporting a module
module.exports = {
  greet(name) {
    console.log(`hello ${name}`)
  }
}
```

```node
// importing exported module
const greeter = require('./greeter')

greeter.greet('bob')
```

Output

```bash
hello bob
```

#### Go

Setup

```bash
# enable Go modules support
GO111MODULE=on

# initializing dependencies file (go.mod)
$ go mod init

# installing a module
$ go get github.com/go-shadow/moment

# updating a module
$ go get -u github.com/go-shadow/moment

# removing a module
$ rm -rf $GOPATH/pkg/mod/github.com/go-shadow/moment@v<tag>-<checksum>/

# pruning modules (removing unused modules from dependencies file)
$ go mod tidy

# download modules being used to local vendor directory (equivalent of downloading node_modules locally)
$ go mod vendor

# publishing a module:
# Note: Go doesn't have an index of repositories like NPM.
# Go modules are hosted as public git repositories.
# To publish, simply push to the repository and tag releases.
```

```go
package main

import (
	"fmt"

	// importing a module
	"github.com/go-shadow/moment"
)

func main() {
	now := moment.New().Now().Unix()
	fmt.Println(now)
}
```

Output

```bash
1546595748
```

```go
package greeter

import (
	"fmt"
)

// exporting a module (use a capitalized name to export function)
func Greet(name string) {
	fmt.Printf("hello %s", name)
}
```

```go
package main

import (
	// importing exported module
	greeter "github.com/tieukhachngao/funny-for-nodejs-developers/examples/greeter_go"
)

func main() {
	greeter.Greet("bob")
}
```

Output

```bash
hello bob
```

#### Shell Script

```bash
# importing a module
now=$(date +%s)
printf '%s\n' "$now"
```

Output

```bash
1546595748
```

```bash
# exporting a module
#!/usr/bin/env bash
set -euo pipefail

greet() {
  printf 'hello %s' "$1"
}

if [[ ${BASH_SOURCE[0]} == "$0" ]]; then
  greet "${1:-bob}"
fi
```

```bash
# importing exported module
#!/usr/bin/env bash
set -euo pipefail

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
# shellcheck source=getter_shellscript/index.sh
source "$script_dir/getter_shellscript/index.sh"

greet bob
```

Output

```bash
hello bob
```

**[⬆ back to top](#contents)**

### stack trace
---

#### Node.js

```node
function foo() {
  throw new Error('failed')
}

try {
  foo()
} catch(err) {
  console.trace(err)
}

```

Output

```bash
Trace: Error: failed
    at foo (/Users/bob/examples/stack_trace.js:2:9)
    at Object.<anonymous> (/Users/bob/examples/stack_trace.js:6:3)
    at Module._compile (internal/modules/cjs/loader.js:688:30)
    at Object.Module._extensions..js (internal/modules/cjs/loader.js:699:10)
    at Module.load (internal/modules/cjs/loader.js:598:32)
    at tryModuleLoad (internal/modules/cjs/loader.js:537:12)
    at Function.Module._load (internal/modules/cjs/loader.js:529:3)
    at Function.Module.runMain (internal/modules/cjs/loader.js:741:12)
    at startup (internal/bootstrap/node.js:285:19)
    at bootstrapNodeJSCore (internal/bootstrap/node.js:739:3)
    at Object.<anonymous> (/Users/bob/examples/stack_trace.js:8:11)
    at Module._compile (internal/modules/cjs/loader.js:688:30)
    at Object.Module._extensions..js (internal/modules/cjs/loader.js:699:10)
    at Module.load (internal/modules/cjs/loader.js:598:32)
    at tryModuleLoad (internal/modules/cjs/loader.js:537:12)
    at Function.Module._load (internal/modules/cjs/loader.js:529:3)
    at Function.Module.runMain (internal/modules/cjs/loader.js:741:12)
    at startup (internal/bootstrap/node.js:285:19)
    at bootstrapNodeJSCore (internal/bootstrap/node.js:739:3)
```

#### Go

```go
package main

import (
	"errors"
	"fmt"
	"runtime/debug"
)

func foo() {
	panic(errors.New("failed"))
}

func main() {
	defer func() {
		if r := recover(); r != nil {
			fmt.Println(string(debug.Stack()))
		}
	}()

	foo()
}
```

Output

```bash
goroutine 1 [running]:
runtime/debug.Stack(0xc000090eb8, 0x10a8400, 0xc00007e1c0)
        /Users/mota/.gvm/gos/go1.11/src/runtime/debug/stack.go:24 +0xa7
main.main.func1()
        /Users/bob/examples/stack_trace.go:16 +0x46
panic(0x10a8400, 0xc00007e1c0)
        /Users/mota/.gvm/gos/go1.11/src/runtime/panic.go:513 +0x1b9
main.foo(...)
        /Users/bob/examples/stack_trace.go:10
main.main()
        /Users/bob/examples/stack_trace.go:20 +0xa2
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

foo() {
  return 1
}

if ! foo; then
  caller 0 || true
  printf 'failed\n'
fi
```

**[⬆ back to top](#contents)**

### databases
---

Example of creating a table, inserting rows, and reading rows from a sqlite3 database

#### Node.js

```node
const { execFileSync } = require('child_process')
const fs = require('fs')

const db = 'sqlite3.db'
if (fs.existsSync(db)) {
  fs.unlinkSync(db)
}

const sql = [
  'CREATE TABLE persons (name TEXT);',
  "INSERT INTO persons VALUES ('alice'),('bob'),('charlie');",
  'SELECT rowid, name FROM persons;',
].join(' ')

const output = execFileSync('sqlite3', [db, sql], { encoding: 'utf8' })
process.stdout.write(output.replace(/\|/g, ' '))
```

Output

```bash
1 alice
2 bob
3 charlie
```

#### Go

```go
package main

import (
	"database/sql"
	"fmt"

	_ "github.com/mattn/go-sqlite3"
)

func main() {
	db, err := sql.Open("sqlite3", "./sqlite3.db")
	if err != nil {
		panic(err)
	}
	defer db.Close()

	_, err = db.Exec("CREATE TABLE persons (name TEXT)")
	if err != nil {
		panic(err)
	}

	tx, err := db.Begin()
	if err != nil {
		panic(err)
	}

	stmt, err := tx.Prepare("INSERT INTO persons VALUES (?)")
	if err != nil {
		panic(err)
	}
	defer stmt.Close()

	names := []string{"alice", "bob", "charlie"}

	for _, name := range names {
		_, err := stmt.Exec(name)
		if err != nil {
			panic(err)
		}
	}
	tx.Commit()

	rows, err := db.Query("SELECT rowid AS id, name FROM persons")
	if err != nil {
		panic(err)
	}
	defer rows.Close()

	for rows.Next() {
		var id int
		var name string
		err = rows.Scan(&id, &name)
		if err != nil {
			panic(err)
		}
		fmt.Println(id, name)
	}

	err = rows.Err()
	if err != nil {
		panic(err)
	}
}
```

Output

```bash
1 alice
2 bob
3 charlie
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

db=./sqlite3.db
rm -f "$db"

sqlite3 "$db" 'CREATE TABLE persons (name TEXT);'

for name in alice bob charlie; do
  sqlite3 "$db" "INSERT INTO persons VALUES ('$name');"
done

sqlite3 "$db" 'SELECT rowid, name FROM persons;' | tr '|' ' '
```

**[⬆ back to top](#contents)**

### testing
---

#### Node.js

```node
const test = require('tape')

test(t => {
  const tt = [
		{a:1, b:1, ret:2},
		{a:2, b:3, ret:5},
		{a:5, b:5, ret:10}
  ]

  t.plan(tt.length)

  tt.forEach(tt => {
    t.equal(sum(tt.a, tt.b), tt.ret)
  })
})

function sum(a, b) {
	return a + b
}
```

Output

```bash
$ node examples/example_test.js
TAP version 13
# (anonymous)
ok 1 should be equal
ok 2 should be equal
ok 3 should be equal

1..3
# tests 3
# pass  3

# ok
```

#### Go

```go
package example

import (
	"fmt"
	"testing"
)

func TestSum(t *testing.T) {
	for _, tt := range []struct {
		a   int
		b   int
		ret int
	}{
		{1, 1, 2},
		{2, 3, 5},
		{5, 5, 10},
	} {
		t.Run(fmt.Sprintf("(%v + %v)", tt.a, tt.b), func(t *testing.T) {
			ret := sum(tt.a, tt.b)
			if ret != tt.ret {
				t.Errorf("want %v, got %v", tt.ret, ret)
			}
		})
	}
}

func sum(a, b int) int {
	return a + b
}
```

Output

```bash
$ go test -v examples/example_test.go
=== RUN   TestSum
=== RUN   TestSum/(1_+_1)
=== RUN   TestSum/(2_+_3)
=== RUN   TestSum/(5_+_5)
--- PASS: TestSum (0.00s)
    --- PASS: TestSum/(1_+_1) (0.00s)
    --- PASS: TestSum/(2_+_3) (0.00s)
    --- PASS: TestSum/(5_+_5) (0.00s)
PASS
ok      command-line-arguments  0.008s
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

sum() {
  printf '%d\n' "$(($1 + $2))"
}

tests=(
  '1 1 2'
  '2 3 5'
  '5 5 10'
)

for test_case in "${tests[@]}"; do
  read -r a b want <<<"$test_case"
  got=$(sum "$a" "$b")
  if [[ $got != "$want" ]]; then
    printf 'want %s, got %s\n' "$want" "$got" >&2
    exit 1
  fi
done
```

**[⬆ back to top](#contents)**

### benchmarking
---

#### Node.js

```node
const Benchmark = require('benchmark')

const suite = new Benchmark.Suite
suite.add('fib#recursion', () => {
  fibRec(10)
})
.add('fib#loop', () => {
  fibLoop(10)
})
.on('complete', () => {
  console.log(suite[0].toString())
  console.log(suite[1].toString())
})
.run({
  async: true
})

function fibRec(n) {
  if (n <= 1) {
    return n
  }

  return fibRec(n-1) + fibRec(n-2)
}

function fibLoop(n) {
  let f = [0, 1]
  for (let i = 2; i <= n; i++) {
    f[i] = f[i-1] + f[i-2]
  }
  return f[n]
}
```

Output

```bash
$ node examples/benchmark_test.js
fib#recursion x 1,343,074 ops/sec ±1.26% (84 runs sampled)
fib#loop x 20,104,517 ops/sec ±3.78% (78 runs sampled)
```

#### Go

```go
package example

import (
	"testing"
)

func BenchmarkFibRec(b *testing.B) {
	for n := 0; n < b.N; n++ {
		fibRec(10)
	}
}

func BenchmarkFibLoop(b *testing.B) {
	for n := 0; n < b.N; n++ {
		fibLoop(10)
	}
}

func fibRec(n int) int {
	if n <= 1 {
		return n
	}

	return fibRec(n-1) + fibRec(n-2)
}

func fibLoop(n int) int {
	f := make([]int, n+1, n+2)
	if n < 2 {
		f = f[0:2]
	}
	f[0] = 0
	f[1] = 1
	for i := 2; i <= n; i++ {
		f[i] = f[i-1] + f[i-2]
	}
	return f[n]
}
```

Output

```bash
$ go test -v -bench=. -benchmem examples/benchmark_test.go
goos: darwin
goarch: amd64
BenchmarkFibRec-8        5000000               340 ns/op               0 B/op          0 allocs/op
BenchmarkFibLoop-8      30000000                46.5 ns/op            96 B/op          1 allocs/op
PASS
ok      command-line-arguments  3.502s
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

fib_rec() {
  local n=$1
  if (( n <= 1 )); then
    printf '%d\n' "$n"
    return
  fi
  local a b
  a=$(fib_rec "$((n - 1))")
  b=$(fib_rec "$((n - 2))")
  printf '%d\n' "$((a + b))"
}

fib_loop() {
  local n=$1
  local -a f
  f[0]=0
  f[1]=1
  for ((i = 2; i <= n; i++)); do
    f[$i]=$((f[i - 1] + f[i - 2]))
  done
  printf '%d\n' "${f[$n]}"
}

for fn in fib_rec fib_loop; do
  start=$SECONDS
  for ((n = 0; n < 100; n++)); do
    "$fn" 10 >/dev/null
  done
  printf '%s completed in %ss\n' "$fn" "$((SECONDS - start))"
done
```

**[⬆ back to top](#contents)**

### documentation
---

#### Node.js

[jsdoc](http://usejsdoc.org/)

```node
/**
 * Creates a new Person.
 * @class
 * @example
 * const person = new Person('bob')
 */
class Person {
  /**
   * Create a person.
   * @param {string} [name] - The person's name.
   */
  constructor(name) {
    this.name = name
  }

  /**
   * Get the person's name.
   * @return {string} The person's name
   * @example
   * person.getName()
   */
  getName() {
    return this.name
  }

  /**
   * Set the person's name.
   * @param {string} name - The person's name.
   * @example
   * person.setName('bob')
   */
  setName(name) {
    this.name = name
  }
}
```

#### Go

[godoc](https://blog.golang.org/examples)

`person.go`

```go
package person

import "fmt"

// Person is the structure of a person
type Person struct {
	name string
}

// NewPerson creates a new person. Takes in a name argument.
func NewPerson(name string) *Person {
	return &Person{
		name: name,
	}
}

// GetName returns the person's name
func (p *Person) GetName() string {
	return p.name
}

// SetName sets the person's name
func (p *Person) SetName(name string) string {
	return p.name
}
```

`person_test.go`

```go
// Example of creating a new Person.
func ExampleNewPerson() {
	person := NewPerson("bob")
	_ = person
}

// Example of getting person's name.
func ExamplePerson_GetName() {
	person := NewPerson("bob")
	fmt.Println(person.GetName())
	// Output: bob
}

// Example of setting person's name.
func ExamplePerson_SetName() {
	person := NewPerson("alice")
	person.SetName("bob")
}
```

#### Shell Script

```bash
#!/usr/bin/env bash
set -euo pipefail

# Person is represented by a name variable.

# NewPerson creates a new person. Takes in a name argument.
new_person() {
  PERSON_NAME=$1
}

# GetName returns the person's name.
person_get_name() {
  printf '%s\n' "$PERSON_NAME"
}

# SetName sets the person's name.
person_set_name() {
  PERSON_NAME=$1
}

example_new_person() {
  new_person bob
}

example_person_get_name() {
  new_person bob
  person_get_name
}

example_person_set_name() {
  new_person alice
  person_set_name bob
}

example_person_get_name
```

**[⬆ back to top](#contents)**

<!--
### title
---

#### Node.js

```node
```

Output

```bash
```

#### Go

```go
```

Output

```bash
```

**[⬆ back to top](#contents)**
-->

## Contributing

Pull requests are welcome!

Please submit a pull request for new interesting additions or for general content fixes.

If updating code, update both the README and the code in the [examples](examples/) folder.

## License

Released under the [MIT](./LICENSE) license.

This repository inherits and extends work from [miguelmota/golang-for-nodejs-developers](https://github.com/miguelmota/golang-for-nodejs-developers). The original 2016 copyright notice is preserved in the license, and the 2026 notice covers the additional work in this repository. The project is free for the community to use, copy, modify, distribute, and build on under the MIT License.

© [tieukhachngao/funny-for-nodejs-developers](https://github.com/tieukhachngao/funny-for-nodejs-developers)
