require_relative 'player'
require_relative 'xos'

g = XOs.new
x = Player.new 'X'
o = Player.new 'O'

current_player = x
until g.winner || g.board_full?
  puts g.show_board
  pos = current_player.prompt_for_move
  g.take_turn current_player.letter, pos

  # Toggle current player to the other person
  if current_player == x
    current_player = o
  else
    current_player = x
  end
end

if g.winner
  puts "#{g.winner} wins!"
else
  puts "It's a draw!"
end