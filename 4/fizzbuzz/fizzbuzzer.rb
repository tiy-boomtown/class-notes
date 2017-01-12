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
    # if n % @base == 0
    #   @replacement
    # else
    #   n
    # end
    @rules.each do |base,replacement|
      if n % base == 0
        return replacement
      else
        return n
      end
    end
  end
end