class A
  def a_method
    "this is a method from a"
  end

  def multiply(n)
    10000000000
  end
end

class B < A
  def multiply(n)
    n * 5
  end
end

class Doubler < B
  def multiply(n)
    super(n) * 2
  end
end

# class D < (C, String)

c = Doubler.new
puts c.multiply(3)