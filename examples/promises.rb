def async_method(value)
  Thread.new do
    sleep 1
    "resolved: #{value}"
  end
end

puts async_method('foo').value
values = [async_method('A'), async_method('B'), async_method('C')].map(&:value)
puts "[#{values.join(' ')}]"
