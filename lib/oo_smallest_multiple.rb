class SmallestMultiple

  def initialize(input=nil)
    input = input.to_i
    @range = Array.new
    (1..input).each do |x|
      @range << x
    end
  end

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

  def two_arg_lcm(x, y)
    x * y / gcd(x, y)
  end

  def lcm
    while @range.length > 2
      n = two_arg_lcm(@range[0], @range[1])
      @range.shift
      @range[0] = n
    end
    two_arg_lcm(@range[0], @range[1])
  end

end