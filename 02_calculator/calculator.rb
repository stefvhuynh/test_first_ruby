def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(arr)
  arr.inject(0) { |sum, x| sum += x }
end

def multiply(*args)
  args.inject(1) { |prod, x| prod *= x }
end

def power(x, y)
  x ** y
end

def factorial(n)
  n == 0 ? 1 : (1..n).to_a.inject(1) { |prod, x| prod *= x }
end


