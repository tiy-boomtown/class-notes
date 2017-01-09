n = [
    [1,2,3],
    [2,3,4],
    [4,5,6]
]

total = 0
n.each do |subarray|
  total += subarray.length
  # puts total
end

puts "Total is #{total}"

puts 'Done'

x = puts 'Hello!'
puts x.upcase