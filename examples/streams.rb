require 'stringio'
input = StringIO.new
input.write('foo')
input.write('bar')
puts input.string
out = "abc\nxyc\n"
out.each_line { |line| puts "received: #{line.strip}" }
