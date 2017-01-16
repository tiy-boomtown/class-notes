Dictionary = [
    "banana",
    "jazz",
    "something"
]

class Hangman
  def initialize
    @guesses = []

    # position = rand 0 .. (Dictionary.length - 1)
    # @word = Dictionary[position]
    @word = Dictionary.sample
  end

  def ask_for_user_input
    puts "The answer is #{@word}"
    print '> '
    letter = gets.chomp
    @guesses.push letter
  end

  def show_guesses
    puts @guesses.join(',')
  end
end

g = Hangman.new
loop do
  g.ask_for_user_input
  g.show_guesses
end