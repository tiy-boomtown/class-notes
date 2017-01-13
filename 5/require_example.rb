require_relative "subclassing"

puts "Starting require_example"
A.new.a_method

b = B.new
puts b.b_method

puts c.to_s