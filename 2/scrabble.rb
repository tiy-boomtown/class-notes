def prompt(label)
  print "#{label} > "
  gets.chomp
end

def prompt_for_number(label)
  # print "#{label} > "
  # input = gets.chomp
  input = prompt label
  loop do
    begin
      x = Integer(input)
      return x
      # return Integer(input)
    rescue
      puts "\"#{input}\" is not a number"
      print 'Try again > '
      input = gets.chomp
    end
  end
end

number = prompt_for_number "Test"
puts "Got number=#{number}"

exit

p1 = prompt 'Player 1, what is your name?'
score1 = 0

p2 = prompt 'Player 2, what is your name?'
score2 = 0

loop do
  # Player 1's turn
  input = prompt_for_number "#{p1}, your score"
  if input == -1
    break
  end

  score1 += input

  # Player 2's turn
  input = prompt_for_number "#{p2}, your score"
  if input == -1
    break
  end

  score2 += input
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