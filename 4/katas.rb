# 1) How many of these words end with an x?
# n.b. they currently all end with a "\n"

words = File.readlines '/usr/share/dict/words'
puts words.count # => 235886 on my machine

x_words = []
words.each do |word|
  # if word[-2] == 'x'
  if word.chomp.end_with? 'x'
    x_words.push word
  end
end
puts x_words.count

x_words = words.select do |word|
  word.chomp.end_with? 'x'
end
x_words = words.select { |w| w.chomp.end_with? 'x' }
puts x_words.count

# 2. Class practice

class Person
  # Fill this out!
end

p = Person.new 'Your', 'Name'
puts p.greet # => 'Hi, my name is Your Name'