class XOs
  def initialize
    @turns_left = 9
  end

  def winner
  end

  def board_full?
    @turns_left == 0
  end

  def take_turn
    @turns_left -= 1
  end
end