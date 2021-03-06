class XOs
  attr_reader :turns_left

  def initialize
    @turns_left = 9
    @board = Array.new 9
  end

  def winner
    rows = [
        [1,2,3],
        [4,5,6],
        [7,8,9],
        [1,4,7],
        [2,5,8],
        [3,6,9],
        [1,5,9],
        [3,5,7]
    ]
    rows.each do |row|
      if did_win_row?(row, 'X')
        return 'X'
      elsif did_win_row?(row, 'O')
        return 'O'
      end
    end
    return nil
  end

  def did_win_row?(row, player)
    row.select { |pos| letter_at(pos) == player }.count == 3
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
    if letter_at(position) # is not nil
      raise "#{position} is already taken!"
    elsif position < 1 || position > 9
      raise "#{position} is out of bounds!"
    end

    @turns_left -= 1
    @board[position - 1] = letter
  end

  def letter_at(position)
    @board[position - 1]
  end

  def show_board
    [
        show_row([1,2,3]),
        '---------',
        show_row([4,5,6]),
        '---------',
        show_row([7,8,9])
    ].join "\n"
  end

  def show_row(row)
    row.map { |pos| letter_at(pos) || pos }.join(' | ')
  end
end