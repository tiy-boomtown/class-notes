class GuessingGame
  def initialize(max)
    @max = max
    @answer = rand 1 .. max
    @tries_left = 5
    @won = false
  end

  def out_of_turns?
    @tries_left == 0
  end

  def got_answer?
    @won
  end

  def ask_for_number
    print "Guess a number (1 - #{@max}) > "
    gets.chomp.to_i
  end

  def check_number(guess)
    @tries_left -= 1
    if guess == @answer
      @won = true
    elsif guess < @answer
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

print 'Max number > '
n = gets.chomp.to_i

g = GuessingGame.new n

until g.out_of_turns? || g.got_answer?
  guess = g.ask_for_number
  g.check_number(guess)
end

if g.got_answer?
  puts 'You won!'
else
  puts "You lost! The answer was #{g.answer}"
end

# win or lose?