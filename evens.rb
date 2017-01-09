# require 'pry'

words_that_quit = ["quit", "q", "exit", "stop", "help"]

loop do
  print 'Enter a number (or "quit" to exit) > '
  input = gets.chomp

  if words_that_quit.include?(input.downcase)
    break
  end

  number = nil
  loop do
    begin
      number = Integer(input)
      break # out of this loop; I now have a `number`
    rescue
      puts "\"#{input}\" is not a number"
      print 'Try again > '
      input = gets.chomp
    end
  end

  if number.even?
    puts "#{number} is even"
  else
    puts "#{number} is odd"
  end
end

puts "We're done"