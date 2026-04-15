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
