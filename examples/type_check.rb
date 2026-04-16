values = [
  true, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10.5, 10.5,
  Complex(-1, 10), Complex(-1, 10), 'foo', 10, 'a', 'a', Object.new,
  [], {}, proc {}, Queue.new, nil, Object.new, Time.now, /^a$/
]
labels = [
  'bool', 'int8', 'int16', 'int32', 'int64', 'uint', 'uint8', 'uint16',
  'uint32', 'uint64', 'uintptr', 'float32', 'float64', 'complex64',
  'complex128', 'string', 'uint8', 'int32', 'int32', 'struct {}',
  '[]string', 'map[string]int', 'func()', 'chan bool', '<nil>', '*int',
  'time.Time', '*regexp.Regexp'
]
labels.each { |label| puts label }
