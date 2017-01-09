# require 'pry'

print 'Enter a number > '
input = gets.chomp
number = input.to_i

if number.to_s == input
  # user typed in a number
  if number.even?
    puts "#{number} is even"
  else
    puts "#{number} is odd"
  end

else
  # user typed in garbage
  puts "\"#{input}\" is not a number"
end

# number = Integer(result)

# equivalently:
# number = gets.chomp.to_i

# binding.pry