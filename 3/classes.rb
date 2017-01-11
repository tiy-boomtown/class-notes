class Counter
  def initialize
    # puts "init"
    @number = 0
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

  def reset
    @number = 0
  end
end

c = Counter.new
d = Counter.new

c.up
d.up
c.up

puts c.count # 2
puts d.count # 1

c.reset

puts c.count # 0
puts d.count # 1