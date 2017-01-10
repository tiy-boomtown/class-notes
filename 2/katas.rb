# 1. Print the numbers 1-10 using `loop`

# number = 0
# while number < 10
#   number += 1
#   puts number
# end

# number = 1
# loop do
#   puts number
#   number += 1
#   if number > 10
#     break
#   end
# end

# 2. Print the numbers 1-10 using `each`

# range = 1 .. 10 # (1 .. 10).to_a
# range.to_a.each do |number|
#   puts number
# end

# 3. Same, but print "Fizz" if number is divisible by 3 (instead of number)
# 1
# 2
# Fizz
# 4
# 5
# Fizz
# 7
# 8
# Fizz
# 10

range = 1 .. 10
range.to_a.each do |number|
  if number % 3 == 0
    puts 'Fizz'
  else
    puts number
  end
end