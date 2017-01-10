# `each`

numbers = []
10.times do
  numbers.push rand(1..100)
end

# Convert array to string with commas
def print_numbers(array)
  array.each do |n|
    print "#{n}, "
  end
  puts
end

puts "Initial numbers"
print_numbers numbers


puts "Doubles"
doubles = []
numbers.each do |n|
  doubles.push n * 2
end
print_numbers doubles