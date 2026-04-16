require 'optparse'

options = { foo: 'default value', qux: false }
OptionParser.new do |parser|
  parser.on('--foo VALUE') { |value| options[:foo] = value }
  parser.on('--qux') { options[:qux] = true }
end.parse!

puts "foo: #{options[:foo]}"
puts "qux: #{options[:qux]}"
