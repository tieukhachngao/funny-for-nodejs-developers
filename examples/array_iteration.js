const array = ['a', 'b', 'c']
const formatArray = values => `[${values.join(' ')}]`

array.forEach((value, i) => {
  console.log(i, value)
})

const mapped = array.map(value => {
  return value.toUpperCase()
})

console.log(formatArray(mapped))

const filtered = array.filter((value, i) => {
  return i % 2 == 0
})

console.log(formatArray(filtered))

const reduced = array.reduce((acc, value, i) => {
  if (i % 2 == 0) {
    acc.push(value.toUpperCase())
  }

  return acc
}, [])

console.log(formatArray(reduced))
