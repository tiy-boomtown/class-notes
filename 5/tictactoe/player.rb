class Player
  def initialize letter
    @letter = letter
  end

  def prompt_for_move
    print "Your move #{@letter} > "
    gets.chomp.to_i
  end
end