def foo(fail)
  raise 'my error' if fail
end

begin
  foo(true)
rescue => e
  puts "caught error: #{e.message}"
end
