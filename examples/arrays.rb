def fmt(values)
  "[#{values.join(' ')}]"
end

array = [1, 2, 3, 4, 5]
puts fmt(array)

clone = array.dup
puts fmt(clone)

sub = array[2...4]
puts fmt(sub)

concatenated = array + [6, 7]
puts fmt(concatenated)

prepended = [-2, -1, 0] + concatenated
puts fmt(prepended)
