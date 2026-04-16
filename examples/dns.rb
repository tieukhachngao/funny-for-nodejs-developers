require 'resolv'

resolver = Resolv::DNS.new
resolver.getresources('google.com', Resolv::DNS::Resource::IN::NS).each { |r| puts r.name }
resolver.getresources('google.com', Resolv::DNS::Resource::IN::A).each { |r| puts r.address }
resolver.getresources('google.com', Resolv::DNS::Resource::IN::MX).each { |r| puts "#{r.preference} #{r.exchange}" }
resolver.getresources('google.com', Resolv::DNS::Resource::IN::TXT).each { |r| puts r.strings.join }

cloudflare = Resolv::DNS.new(nameserver: ['1.1.1.1'])
cloudflare.getresources('google.com', Resolv::DNS::Resource::IN::NS).each { |r| puts r.name }
