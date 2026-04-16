begin
  raise 'failed'
rescue
  puts caller.join("\n")
end
