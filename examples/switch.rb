value = 'b'
case value
when 'a' then puts 'A'
when 'b' then puts 'B'
when 'c' then puts 'C'
else puts 'first default'
end

case value
when 'a'
  puts 'A - falling through'
  puts 'B - falling through'
  puts 'C - falling through'
  puts 'second default'
when 'b'
  puts 'B - falling through'
  puts 'C - falling through'
  puts 'second default'
when 'c'
  puts 'C - falling through'
  puts 'second default'
else
  puts 'second default'
end
