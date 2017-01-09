# require 'pry'

loop do
  print 'Enter a number (or "quit" to exit) > '
  input = gets.chomp

  if input == "quit"
    break
  end

  begin
    number = Integer(input)

    # raise 'Forced raise'

    if number.even?
      puts "#{number} is even"
    else
      puts "#{number} is odd"
    end

  rescue ArgumentError => e
    puts "\"#{input}\" is not a number"
  rescue RuntimeError => e
    puts "Other error: #{e}"
  end
end

puts "We're done"