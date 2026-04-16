class Foo
  attr_accessor :item

  def initialize(value)
    @item = value
  end
end

foo = Foo.new('bar')
puts foo.item
foo.item = 'qux'
puts foo.item
