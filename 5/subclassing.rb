module Floopable
  # included in classes with a `floop` method
  def something
    'This is something in a module'
  end

  def floop_twice
    floop
    floop
  end
end

class A
  def a_method
    'this is a method from a'
  end

  def multiply(n)
    10000000000
  end
end

class B < A
  include Floopable

  def floop
    puts "Flooping"
  end

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

# c = Doubler.new
# puts c.multiply(3)

b = B.new
puts b.something

b.floop_twice

class Person
  def first_name
    "Me"
  end
end

# p = Person.new
# p.first_name
#
# Person.first_name