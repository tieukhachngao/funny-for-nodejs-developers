const now = new Date()
const pad = value => String(value).padStart(2, '0')
const timestamp = [
  now.getFullYear(),
  pad(now.getMonth() + 1),
  pad(now.getDate()),
].join('/') + ' ' + [
  pad(now.getHours()),
  pad(now.getMinutes()),
  pad(now.getSeconds()),
].join(':')

process.stderr.write(`${timestamp} hello world\n`)
