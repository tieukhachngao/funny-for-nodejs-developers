Obj = Struct.new(:key, :value) do
  def read
    [key, value]
  end
end

obj = Obj.new('foo', 'bar')
key, value = obj.key, obj.value
puts "#{key} #{value}"
key, value = obj.read
puts "#{key} #{value}"
