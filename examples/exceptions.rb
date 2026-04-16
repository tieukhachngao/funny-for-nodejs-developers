def foo
  raise 'my exception'
end

begin
  foo
rescue => e
  print "caught exception: #{e.message}"
end
