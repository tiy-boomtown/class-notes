class GuessingGame
  def initialize
    @answer = rand 1 .. 100
    @tries_left = 5
  end

  def out_of_turns?
    @tries_left == 0
  end

  def got_answer?
    @n == @answer
  end

  def ask_for_number
    print 'Guess a number (1 - 100) > '
    @n = gets.chomp.to_i
  end

  def check_number
    @tries_left -= 1
    if @n == @answer
      puts 'You win!'
    elsif @n < @answer
      puts 'Too low!'
    else
      puts 'Too high'
    end
  end

  # attr_reader :answer
  def answer
    @answer
  end
end

# ---

g = GuessingGame.new

until g.out_of_turns? || g.got_answer?
  g.ask_for_number
  g.check_number
end

if g.got_answer?
  puts 'You won!'
else
  puts "You lost! The answer was #{g.answer}"
end

# win or lose?