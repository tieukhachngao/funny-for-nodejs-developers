require 'socket'
server = TCPServer.new('0.0.0.0', 3000)
loop do
  client = server.accept
  Thread.new(client) do |conn|
    conn.each_line { |line| conn.write("Received: #{line}") }
    conn.close
  end
end
