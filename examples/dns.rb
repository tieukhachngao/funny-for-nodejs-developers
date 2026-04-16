require 'resolv'
resolver = Resolv::DNS.new
resolver.getresources('google.com', Resolv::DNS::Resource::IN::NS).each { |r| puts r.name }
