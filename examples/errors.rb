class FooError < StandardError; end

err1 = StandardError.new('some error')
puts err1.message
err2 = FooError.new('my custom error')
puts err2.message
