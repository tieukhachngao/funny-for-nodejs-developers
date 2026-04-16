def fib_rec(n)
  n <= 1 ? n : fib_rec(n - 1) + fib_rec(n - 2)
end

def fib_loop(n)
  f = [0, 1]
  (2..n).each { |i| f[i] = f[i - 1] + f[i - 2] }
  f[n]
end
