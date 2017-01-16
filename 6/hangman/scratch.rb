class Hangman
  def initialize
    @guesses = []
  end

  def ask_for_user_input
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