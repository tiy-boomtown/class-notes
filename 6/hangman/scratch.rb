Dictionary = [
    "banana",
    "jazz",
    "something"
]

class Hangman
  attr_reader :word

  def initialize
    @guesses = []

    # position = rand 0 .. (Dictionary.length - 1)
    # @word = Dictionary[position]
    # @word = Dictionary.sample

    good_words = []
    File.foreach('/usr/share/dict/words') do |line|
      word = line.chomp
      if 4 <= word.length && word.length <= 9 && word.downcase == word
        good_words.push word
      end
    end
    puts "Ended up with #{good_words.count} good words from readlines"

    contents   = File.read '/usr/share/dict/words'
    words      = contents.split
    puts "There are #{words.count} total words"
    good_words = words.select do |w|
      4 <= w.length && w.length <= 9 && w.downcase == w
    end
    puts "There are #{good_words.count} good words"

    @word  = good_words.sample
    @turns = 7
  end

  def ask_for_user_input
    # puts "The answer is #{@word}"
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

  def found_answer?
    # 1. the board includes no underscores
    !show_board.include?('_')

    # 2. every letter in the answer (@word) has been guessed
    # (@words.chars - @guesses).count == 0
    @word.chars.all? do |letter|
      @guesses.include? letter
    end
  end
end

g = Hangman.new
until g.out_of_turns? || g.found_answer? do
  puts g.show_board
  g.ask_for_user_input
  g.show_guesses
end

puts "The answer was: #{g.word}"