listeners = Hash.new { |hash, key| hash[key] = [] }
listeners['my-event'] << proc { |message| puts message }
listeners['my-other-event'] << proc { |message| puts message }
listeners['my-event'].each { |listener| listener.call('hello world') }
listeners['my-other-event'].each { |listener| listener.call('hello other world') }
