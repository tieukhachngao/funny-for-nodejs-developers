def sum(a, b)
  a + b
end

[[1, 1, 2], [2, 3, 5], [5, 5, 10]].each { |a, b, expected| raise unless sum(a, b) == expected }
