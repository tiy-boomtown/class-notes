require_relative 'todotron'

m = TodoTron.new

puts 'Welcome to TodoTron'
loop do
  puts 'Please make a selection:'
  puts '1. List todos'
  puts '2. Add todo'
  puts '3. Complete todo'

  print '> '
  input = gets.chomp

  if input == '1'
    m.list_todos
  elsif input == '2'
    # m.add_todo ...
  elsif input == '3'
    # m.complete_todo
  else
    puts "Unrecognized input: #{input}. Try again"
  end
end