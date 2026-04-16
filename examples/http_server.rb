require 'webrick'
server = WEBrick::HTTPServer.new(Port: 8080)
server.mount_proc('/') { |_req, res| res.status = 200; res.body = 'hello world' }
server.start
