const args = process.argv.slice(2)

let foo = 'default value'
let qux = false

for (let i = 0; i < args.length; i++) {
  const arg = args[i]
  if (arg === '--foo' || arg === '-foo') {
    foo = args[i + 1]
    i++
  } else if (arg === '--qux' || arg === '-qux') {
    qux = true
  }
}

console.log('foo:', foo)
console.log('qux:', qux)
