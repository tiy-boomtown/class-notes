require_relative 'player'
require_relative 'xos'

g = XOs.new
x = Player.new 'X'
o = Player.new 'O'

current_player = x
until g.winner || g.board_full?
  puts g.show_board
  pos = current_player.prompt_for_move

  begin
    g.take_turn current_player.letter, pos

    # Move was valid; it's the next persons' turn
    if current_player == x
      current_player = o
    else
      current_player = x
    end
  rescue => e
    # Move was invalid
    puts "Invalid move! #{e}"
  end
end

if g.winner
  puts "#{g.winner} wins!"
else
  puts "It's a draw!"
end