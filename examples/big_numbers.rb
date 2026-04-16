bn = 75
puts bn.to_s
puts '75'.to_i(10).to_s
puts 0x4b.to_s
puts '4b'.to_i(16).to_s
puts [0x4b].pack('C*').unpack1('H*').to_i(16).to_s
puts bn
puts '4b'
puts '[75]'
bn2 = 100
puts (bn == bn2)
puts (bn > bn2)
puts (bn < bn2)
