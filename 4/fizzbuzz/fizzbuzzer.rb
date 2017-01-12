class Fizzbuzzer
  def initialize
    @rules = {}
  end

  def register_rule(number, replacement)
    # @rules[2] = "A"
    @rules[number] = replacement
  end

  # @rules = {
  #   2 => "A",
  #   3 => "B"
  # }
  def rule_for(number)
    # @rules[2] => "A"
    @rules[number]
  end

  def apply_one(n)
    @rules.each do |base,replacement|
      if n % base == 0
        return replacement
      end
    end

    n # return n
  end

  def run(range_max)
    (1 .. range_max).to_a.map do |x|
      # self.apply_one x
      apply_one x
    end
  end
end