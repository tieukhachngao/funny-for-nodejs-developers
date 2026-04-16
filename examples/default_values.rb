def greet(name = nil)
  "hello #{name || 'stranger'}"
end

puts greet
puts greet('bob')
