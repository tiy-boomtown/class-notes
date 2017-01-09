# Get player names
print 'Player 1, what is your name > '
player1 = gets.chomp
puts 'Thanks!'

print 'Player 2, what is your name > '
player2 = gets.chomp
puts 'Cool!'

# Take turns until one player quits
totals = {}

# totals["James"] = 0
totals[player1] = 0
totals[player2] = 0

current_player = player1
loop do
  # Current player takes a turn
  puts "#{current_player}, your score > "
  input = gets.chomp
  round_score = input.to_i

  # if current_player == player1
  #   player1_total += round_score
  # else
  #   player2_total += round_score
  # end
  totals[current_player] += round_score
  puts "Your score is #{totals[current_player]}"

  # Check for a quit
  if input == "quit"
    break
  end

  # Next player
  if current_player == player1
    current_player = player2
  else # current_player == player2
    current_player = player1
  end
end

# To be continued ...
# Print final scores
puts 'Final scores:'
puts "#{player1}: #{player1_total}"
puts "#{player2}: #{player2_total}"

# Display winner
if player1_total > player2_total
  puts "#{player1} wins!"
elsif player2_total > player1_total
  puts "#{player2} wins!"
else
  puts "It's a tie!"
end