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
    # puts @rules
    # puts "1. #{@rules[2 + 2]}"
    # x = 3
    # puts "2. #{@rules[x + 1]}"
    # number = 5
    # puts "3. #{@rules[number]}"
    matches = @rules.select do |base,replacement|
      n % base == 0
    end

    if matches.empty? # matches.count == 0
      n
    else
      matches.values.join ''
    end
  end

  def run(range_max)
    (1 .. range_max).to_a.map do |x|
      # self.apply_one x
      apply_one x
    end
  end
end