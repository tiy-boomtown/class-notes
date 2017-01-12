class Fizzbuzzer
  def register_rule(number, replacement)
    @base = number
    @replacement = replacement
  end

  def apply_one(n)
    if n == @base
      @replacement
    end
  end
end