text = "Tacos must not have lettuce Only meat and cheese and salsa"
count = text.split.select { |w| w.length == 5 }.count
puts "Count is #{count}"
