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
    m.items.each do |item|
      puts "* #{item.description}"
    end
    # puts m.items

  elsif input == '2'
    print 'New item > '
    description = gets.chomp
    m.add_item description

  elsif input == '3'
    m.mark_complete

  else
    puts "Unrecognized input: #{input}. Try again"
  end
end