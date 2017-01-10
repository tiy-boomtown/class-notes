def prompt(label)
  print "#{label} > "
  gets.chomp
end

p1 = prompt 'Player 1, what is your name?'
score1 = 0

p2 = prompt 'Player 2, what is your name?'
score2 = 0

loop do
  # Player 1's turn
  input = prompt "#{p1}, your score"
  if input == 'quit'
    break
  end

  score1 += Integer(input)

  # Player 2's turn
  input = prompt "#{p2}, your score"
  if input == 'quit'
    break
  end

  score2 += Integer(input)
end

# Print final scores
puts 'Final scores'
puts "#{p1}: #{score1}"
puts "#{p2}: #{score2}"

# Print winner
if score1 > score2
  puts "#{p1} wins!"
elsif score2 > score1
  puts "#{p2} wins!"
else
  puts "It's a tie!"
end