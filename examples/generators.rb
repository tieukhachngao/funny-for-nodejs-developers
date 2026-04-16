def generator
  return enum_for(:generator) unless block_given?
  yield 'hello'
  yield 'world'
end

gen = generator
gen.each { |value| puts "#{value} true" }
puts ' false'
generator.each { |value| puts value }
genfn = generator.each
genfn.each { |value| puts "#{value} true" }
puts ' false'
