path = 'test.txt'
File.write(path, 'hello world.')
puts File.read(path)
File.delete(path)
