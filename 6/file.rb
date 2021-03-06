# 1. Using a string

def path(p)
  "/Users/james/Code/class-notes/6/#{p}"
end

# File.write('/Users/james/Code/class-notes/6/example', 'Using File.write')

File.write(path('example'), 'Expanded file path')
contents = File.read(path('example'))
puts "We read: #{contents}"

# 2. Using puts

f = File.open path('example2'), 'w' # open file for writing
f.puts 'First'
f.puts 'Second'
f.puts 'Third'
f.close

# Use this instead of ^
File.open(path('example3'), 'w') do |f|
  f.puts 'In a block'
end

f = File.open(path('example2'), 'r')
result = f.gets
puts "Result was #{result}"
f.close

# Use this instead of ^
puts 'Reading with block syntax'
i = 1
File.open(path('example2'), 'r') do |f|
  # result = f.gets
  # puts "Result was #{result}"
  loop do
    line = f.gets
    if line == nil
      break
    end
    puts "#{i}. #{line}"
    i += 1
  end
end

i = 1
File.foreach(path('example2')) do |line|
  puts "#{i}. #{line}"
  i += 1
end