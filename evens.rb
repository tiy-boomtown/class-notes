# require 'pry'

print 'Enter a number > '
input = gets.chomp

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
