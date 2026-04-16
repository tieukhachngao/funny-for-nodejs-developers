map1 = {}
map1['foo'] = 'bar'
puts map1.key?('foo')
puts map1['foo']
map1.delete('foo')
puts map1.key?('foo')
puts ''
map2 = { 'foo' => 100, 'bar' => 200, 'baz' => 300 }
%w[foo bar baz].each { |key| puts "#{key} #{map2[key]}" }
