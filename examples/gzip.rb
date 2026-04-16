require 'stringio'
require 'zlib'

data = 'hello world'
compressed_io = StringIO.new
writer = Zlib::GzipWriter.new(compressed_io)
writer.write(data)
writer.close
puts 'compressed: true'
reader = Zlib::GzipReader.new(StringIO.new(compressed_io.string))
puts reader.read
