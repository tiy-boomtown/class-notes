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

puts "Odds"
odds = []
numbers.each do |n|
  if n.odd?
    odds.push n
  end
  # odds.push n if n.odd?
end
print_numbers odds

puts "5s" # 15, 25, 53, ...
fives = []
numbers.each do |n|
  # fives.push n if n.to_s.include? "5"
  if n.to_s.include? "5"
    fives.push n
  end
end
print_numbers fives

puts "Sum"
sum = 0
numbers.each do |n|
  # sum += n ~> sum = sum + n
  sum = n + sum
end
puts sum

puts "Sum of even numbers"
# Take 1
evens = []
numbers.each do |n|
  if n.even?
    evens.push n
  end
end
sum = 0
evens.each do |n|
  sum = n + sum
end
puts sum

# Take 2
sum = 0
numbers.each do |n|
  if n.even?
    sum += n
  end
end
puts sum

# Count of numbers greater than 40
puts "> 40"

gt40s = []
numbers.each do |n|
  if n > 40
    gt40s.push n
  end
end
puts gt40s.length

count = 0
numbers.each do |n|
  if n > 40
    count += 1
  end
end
puts count

puts "Partition"
hash = {
    evens: [], # :evens => []
    odds:  []  # :odds  => []
}
numbers.each do |n|
  if n.even?
    hash[:evens].push n
  else
    hash[:odds].push n
  end
end
puts hash