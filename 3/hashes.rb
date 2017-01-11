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