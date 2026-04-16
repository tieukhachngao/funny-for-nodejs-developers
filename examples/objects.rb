class Obj
  attr_reader :some_properties

  def initialize
    @some_properties = { 'foo' => 'bar' }
  end

  def some_method(prop)
    @some_properties[prop]
  end
end

obj = Obj.new
puts obj.some_properties['foo']
puts obj.some_method('foo')
