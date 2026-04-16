def hello(name)
  Thread.new do
    Thread.current.report_on_exception = false if Thread.current.respond_to?(:report_on_exception=)
    sleep 1
    raise 'failed' if name == 'fail'
    "hello #{name}"
  end
end

begin
  puts hello('bob').value
rescue => e
  warn e.message
end

begin
  puts hello('fail').value
rescue => e
  warn e.message
end
