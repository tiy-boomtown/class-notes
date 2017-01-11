# def number_of_es(str)
#   str.split('').select { |c| c == 'e' }.count
# end
# def number_of_as(str)
#   str.split('').select { |c| c == 'a' }.count
# end

def letter_count(str, letter)
  str.split('').select { |c| c == letter }.count
end

def letter_frequencies(str)
  # TOO MUCH WORK!
  # result = {}
  # ('a' .. 'z').each do |letter|
  #   result[ letter ] = letter_count(str, letter)
  # end
  # result

  counts = {}
  str.split('').each do |letter|
    # unless counts.include? letter
    #   count[letter] = 0
    # end
    if counts[letter] == nil # letter is not in the hash
      counts[letter] = 0
    end
    counts[letter] += 1
  end
  counts
end

# ----

str = "where's the beef?"

n = letter_count(str, 'e')
puts "#{n} e's"

puts "#{letter_count(str, 'a')} a's"

freq = letter_frequencies(str)
puts "freq=#{freq}"
puts "There are #{freq['e']} many e's"

counts = letter_frequencies(File.read './katas.rb')
puts counts
counts.delete " "
counts.delete "\n"

# How many different 'letters' appear in the file?
puts "Different letters"
key_count = 0
counts.each do |_|
  key_count += 1
end
puts key_count
puts counts.length

puts "Total letters"
total = 0
counts.each do |key, value|
  # puts "#{key} ~~~> #{value}"
  total += value
end
puts total
puts counts.values.reduce(:+)

puts "How many letters show up an even number of times?"
total = 0
counts.each do |key, value|
  if value.even?
    total += 1
  end
end
puts total
puts counts.values.select { |v| v.even? }.length

evens = counts.select { |k,v| v.even? }
puts evens
puts evens.length

puts "Most times a letter shows up?"
puts counts.values.max
puts counts.sort_by { |k,v| -v }.to_s
puts counts.max_by { |k,v| v }
