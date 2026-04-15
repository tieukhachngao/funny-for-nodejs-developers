const nowUnix = Math.floor(Date.now() / 1000)
console.log(nowUnix)

const datestr = '2019-01-17T09:24:23+00:00'
const date = new Date(datestr)
console.log(Math.floor(date.getTime() / 1000))

function formatUTC(value) {
  const pad = number => String(number).padStart(2, '0')
  return `${value.getUTCFullYear()}-${pad(value.getUTCMonth() + 1)}-${pad(value.getUTCDate())} ${pad(value.getUTCHours())}:${pad(value.getUTCMinutes())}:${pad(value.getUTCSeconds())} +0000 UTC`
}

console.log(formatUTC(date))

const futureDate = new Date(date)
futureDate.setUTCDate(date.getUTCDate()+14)
console.log(formatUTC(futureDate))

const formatted = `${String(date.getMonth()+1).padStart(2, 0)}/${String(date.getDate()).padStart(2, 0)}/${date.getFullYear()}`
console.log(formatted)
