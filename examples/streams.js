const { Readable, Writable } = require('stream')

const inStream = new Readable()

inStream.push(Buffer.from('foo'))
inStream.push(Buffer.from('bar'))
inStream.push(null) // end stream
process.stdout.write(inStream.read().toString())
process.stdout.write('\n')

const outStream = new Writable({
  write(chunk, encoding, callback) {
    console.log('received: ' + chunk.toString('utf8'))
    callback()
  }
})

outStream.write(Buffer.from('abc'))
outStream.write(Buffer.from('xyc'))
outStream.end()
