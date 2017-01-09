# require 'pry'

puts 'Enter a number >'
result = gets.chomp
number = result.to_i

if number.to_s == result
  # user typed in a number
else
  # user typed in garbage
  puts 'NO!'
end

# number = Integer(result)

# equivalently:
# number = gets.chomp.to_i

# binding.pry

if number.even?
  puts "#{number} is even"
else
  puts "#{number} is odd"
end