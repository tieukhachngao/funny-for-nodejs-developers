array = [1, 2]
puts 'array exists' unless array.nil?
if array.length == 2
  puts 'length is 2'
elsif array.length == 1
  puts 'length is 1'
else
  puts 'length is other'
end
puts(array.length.odd? ? 'yes' : 'no')
