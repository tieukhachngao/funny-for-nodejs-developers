input = 'foobar'
puts input.sub(/foo(.*)/i, 'qux\1')
puts !!(input =~ /o{2}/i)
input = '111-222-333'
puts "[#{input.scan(/[0-9]+/i).join(' ')}]"
