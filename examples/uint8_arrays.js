const array = new Uint8Array(10)
const formatArray = values => `[${Array.from(values).join(' ')}]`
console.log(formatArray(array))

const offset = 1

array.set([1, 2, 3], offset)
console.log(formatArray(array))

const sub = array.subarray(2)
console.log(formatArray(sub))

const sub2 = array.subarray(2,4)
console.log(formatArray(sub2))

console.log(formatArray(array))
const value = 9
const start = 5
const end = 10
array.fill(value, start, end)
console.log(formatArray(array))

console.log(array.byteLength)
