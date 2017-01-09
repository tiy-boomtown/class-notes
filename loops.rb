# while / util
# loop

puts "Using `loop`"
i = 0
loop do
  puts i
  i += 1
  if i > 5
    break
  end
end

puts "i is now #{i}"

puts "Using `until`"
x = 0
until x > 5
  puts x
  x += 1
end

puts "Using `while`"
y = 0
while y <= 5 # or < 6
  puts y
  y += 1
end