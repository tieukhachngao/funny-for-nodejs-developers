const array = [1, 2, 3, 4, 5]
const formatArray = values => `[${values.join(' ')}]`
console.log(formatArray(array))

const clone = array.slice(0)
console.log(formatArray(clone))

const sub = array.slice(2,4)
console.log(formatArray(sub))

const concatenated = clone.concat([6, 7])
console.log(formatArray(concatenated))

const prepended = [-2,-1,0].concat(concatenated)
console.log(formatArray(prepended))
