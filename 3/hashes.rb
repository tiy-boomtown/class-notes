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
  # {
  #     a: letter_count(str, 'a'),
  #     b: letter_count(str, 'b'),
  #     c: letter_count(str, 'c')
  # }

  result = {}
  # result['a'] = letter_count(str, 'a')
  # result['b'] = letter_count(str, 'b')
  ('a' .. 'z').each do |letter|
    result[ letter ] = letter_count(str, letter)
  end
  result
end

# ----

str = "where's the beef?"

n = letter_count(str, 'e')
puts "#{n} e's"

puts "#{letter_count(str, 'a')} a's"

freq = letter_frequencies(str)

puts "There are #{freq['e']} many e's"