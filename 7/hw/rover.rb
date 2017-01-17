class Rover
  attr_reader :heading, :x, :y

  def initialize
    @heading, @x, @y = :n, 0, 0
  end

  def forward
    # could also do if heading == :n ... elsif heading == :s ...
    case heading
    when :n
      @y += 1
    when :s
      @y -= 1
    when :e
      @x += 1
    when :w
      @x -= 1
    end
  end

  def right
    @heading = {
      n: :e,
      e: :s,
      s: :w,
      w: :n
    }[@heading]
  end

  def left
    # I'm not an ambi-turner
    3.times { right }
  end

  # or attr_accessor :heading ?
  def heading= h
    @heading = h
  end

  def follow(commands)
    commands.chars.each do |l|
      if l == 'L'
        left
      elsif l == 'R'
        right
      elsif l == 'F'
        forward
      end
    end
  end
end
