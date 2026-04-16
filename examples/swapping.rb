a = 'foo'
b = 'bar'
puts "#{a} #{b}"
a, b = b, a
puts "#{a} #{b}"
