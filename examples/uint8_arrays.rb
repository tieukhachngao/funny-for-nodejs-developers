def fmt(values)
  "[#{values.join(' ')}]"
end

array = Array.new(10, 0)
puts fmt(array)
array[1, 3] = [1, 2, 3]
puts fmt(array)
puts fmt(array[2..])
puts fmt(array[2...4])
puts fmt(array)
(5...10).each { |i| array[i] = 9 }
puts fmt(array)
puts array.length
