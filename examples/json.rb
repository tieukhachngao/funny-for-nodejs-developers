T = Struct.new(:foo) do
  def to_s
    "&{#{foo}}"
  end
end

json = '{"foo":"bar"}'
foo = json[/\"foo\":\"([^\"]+)\"/, 1]
t = T.new(foo)
puts t
puts "{\"foo\":\"#{t.foo}\"}"
