function foo() {
  throw Error('my exception')
}

function main() {
  foo()
}

process.on('uncaughtException', err => {
  process.stdout.write(`caught exception: ${err.message}`)
  process.exit(0)
})

main()
