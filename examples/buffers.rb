value = 0x1234567890ab
be = [value].pack('Q>').bytes.last(6)
le = be.reverse
puts be.pack('C*').unpack1('H*')
puts le.pack('C*').unpack1('H*')
puts (be == le)
puts (be == be)
