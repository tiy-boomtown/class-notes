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

  # ____
  # _ | _ | _ | _
  # _ | a | _ | _
  def show_board
    array = []
    @word.chars.each do |char|
      if @guesses.include? char
        array.push char
      else
        array.push '_'
      end
    end
    array.join(' ')
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
  puts g.show_board
  g.show_guesses
end