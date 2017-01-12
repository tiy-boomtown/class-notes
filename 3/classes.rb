class Counter
  def initialize(n)
    # puts "init"
    @number = n
  end

  def up
    # puts "up"
    @number += 1
    # puts "@number=#{@number}"
  end

  def count
    # puts "count"
    @number
  end

  # def reset(n=nil)
  #   if n == nil
  #     @number = 0
  #   else
  #     @number = n
  #   end
  # end
  def reset(n=0)
    @number = n
  end
end

c = Counter.new
c.up
c.up
puts c.count # => 2

c = Counter.new 5
d = Counter.new 10

c.up
d.up
c.up

puts c.count # 7
puts d.count # ...

c.reset 20
puts c.count # 20
puts d.count # 1

c.reset
puts c.count # 0