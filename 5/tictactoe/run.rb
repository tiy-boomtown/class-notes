require_relative 'player'
require_relative 'xos'

g = XOs.new
x = Player.new 'X'
o = Player.new 'O'

until g.winner || g.board_full?
  puts g.show_board
  pos = x.prompt_for_move
  g.take_turn 'X', pos

  puts g.show_board
  pos = o.prompt_for_move
  g.take_turn 'O', pos
end

if g.winner
  puts "#{g.winner} wins!"
else
  puts "It's a draw!"
end