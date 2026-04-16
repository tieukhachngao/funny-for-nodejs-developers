require 'socket'
socket = UDPSocket.new
socket.bind('0.0.0.0', 3000)
puts "server listening #{socket.addr.inspect}"
loop do
  data, remote = socket.recvfrom(20)
  puts "received: #{data.strip} from #{remote.inspect}"
end
