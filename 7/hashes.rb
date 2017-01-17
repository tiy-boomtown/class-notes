numbers = []
1000.times do
  numbers.push rand(1 .. 10)
end

# Question: how many times does each number show up?
# 1 => 50
# 2 => 75
# ...
counts = {}
numbers.each do |x|
  old_count_for_x = counts[x]
  if old_count_for_x == nil
    old_count_for_x = 0
  end

  new_count_for_x = old_count_for_x + 1
  counts[x] = new_count_for_x
end
puts counts

# 2.
counts = {}
numbers.each do |x|
  if counts[x] == nil
    counts[x] = 0
  end
  # ^ guard clause

  counts[x] = counts[x] + 1
end
puts counts

# 3.
counts = {}
numbers.each do |x|
  counts[x] = counts[x] || 0
  # ^ guard clause

  counts[x] = counts[x] + 1
end
puts counts

# 4.
counts = {}
numbers.each do |x|
  counts[x] ||= 0
  counts[x]  += 1
end
puts counts

# 5.
counts = Hash.new(0)
numbers.each do |x|
  counts[x] += 1
end
puts counts