require_relative 'todotron'

m = if File.exists? 'database.csv'
  TodoTron.load_csv 'database.csv'
else
  TodoTron.new
end

puts 'Welcome to TodoTron'
loop do
  puts 'Please make a selection:'
  puts '1. List todos'
  puts '2. Add todo'
  puts '3. Complete todo'
  puts '4. Export to CSV'

  print '> '
  input = gets.chomp

  if input == '1'
    # m.items.each do |item|
    #   puts "* #{item.description}"
    # end
    puts m.items

  elsif input == '2'
    print 'New item > '
    description = gets.chomp
    m.add_item description

  elsif input == '3'
    print 'Which item > '
    description = gets.chomp
    m.mark_complete description

  elsif input == '4'
    print 'Export to what file (default: out.csv) > '
    path = gets.chomp
    if path == ''
      path = 'out.csv'
    end
    m.export_csv path

  elsif input == 'quit'
    m.export_csv 'database.csv'
    exit

  else
    puts "Unrecognized input: #{input}. Try again"
  end
end