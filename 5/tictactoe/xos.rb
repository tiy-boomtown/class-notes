class XOs
  attr_reader :turns_left

  def initialize
    @turns_left = 9
    @board = Array.new 9
  end

  def winner
  end

  def board_full?
    # if @board.include?(nil)
    #   false
    # else
    #   true
    # end
    !@board.include?(nil)
  end

  def take_turn(letter, position)
    @turns_left -= 1
    @board[position - 1] = letter
  end

  def letter_at(position)
    @board[position - 1]
  end
end