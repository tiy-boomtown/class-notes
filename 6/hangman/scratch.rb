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
    @turns = 7
  end

  def ask_for_user_input
    puts "The answer is #{@word}"
    print '> '
    letter = gets.chomp
    if @word.include? letter
      puts 'Correct!'
    else
      puts 'No!'
      # Player loses a turn
      @turns -= 1
    end
    @guesses.push letter
  end

  def show_guesses
    puts @guesses.join(',')
    puts "You have #{@turns} turns left"
  end

  def out_of_turns?
    # if @turns == 0
    #   true
    # else
    #   false
    # end
    @turns == 0
  end
end

g = Hangman.new
until g.out_of_turns? do
  g.ask_for_user_input
  g.show_guesses
end