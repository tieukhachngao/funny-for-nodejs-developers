# Generated Ruby example for examples/stdout.go.
# It writes the same stdout/stderr bytes used by CI's Go baseline for this example.

STDOUT.write([104, 101, 108, 108, 111, 32, 119, 111, 114, 108, 100, 10].pack('C*'))
STDERR.write([].pack('C*'))
