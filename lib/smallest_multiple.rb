def gcd(x, y)
  while x != y
    if x > y
      x = x - y
    else
      y = y - x
    end
  end
  x
end

def lcm(x, y)
  x * y / gcd(x, y)
end

def multi_lcm(range)
  while range.length > 2
    n = lcm(range[0], range[1])
    range.shift
    range[0] = n
  end
  lcm(range[0], range[1])
end

def smallest_multiple(input)
  input = input.to_i
  range = Array.new
  (1..input).each do |x|
    range << x
  end
  multi_lcm(range)
end