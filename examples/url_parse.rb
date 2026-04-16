require 'uri'
u = URI.parse('http://bob:secret@sub.example.com:8080/somepath?foo=bar')
puts u.scheme
puts u.userinfo
puts u.port
puts u.hostname
puts u.path
puts u.query
