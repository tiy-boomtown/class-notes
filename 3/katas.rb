# 1. Print the numbers 1-100 using `each`

range = 1 .. 100
range.each do |n|
  puts n
end

# 2. Fizz
# Print 1-100
# except if number is divisible by 3, print Fizz instead of number

ns = 1 .. 100
ns.each do |n|
  if n % 3 == 0
    puts 'Fizz'
  else
    puts n
  end
end

# fizz = []
# ns.each do |n|
#   if n % 3 == 0
#     fizz.push 'Fizz'
#   else
#     fizz.push n
#   end
# end
fizz = ns.map do |n|
  if n % 3 == 0
    'Fizz'
  else
    n
  end
end
puts fizz

# 3. People

people = [
  {
      name: 'Tom',
      role: 'iOS'
  },
  {
      name: 'Kelly',
      role: 'Frontend'
  },
  {
      name: 'James',
      role: 'Ruby'
  },
  {
      name: 'Su',
      role: 'CD'
  }
]

