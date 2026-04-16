array = %w[a b c]
array.each_with_index { |value, index| puts "#{index} #{value}" }

mapped = array.map(&:upcase)
puts "[#{mapped.join(' ')}]"

filtered = array.each_with_index.select { |_value, index| index.even? }.map(&:first)
puts "[#{filtered.join(' ')}]"

reduced = array.each_with_index.each_with_object([]) do |(value, index), acc|
  acc << value.upcase if index.even?
end
puts "[#{reduced.join(' ')}]"
