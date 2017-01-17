require 'csv'
require 'erb'


template = "Hello <%= name %>, how are you this <%= time %>?"

name = "James"
time = "morning"

output = ERB.new(template).result(binding)
puts output

name = "Brian"

output = ERB.new(template).result(binding)
puts output


x = 1
puts x
x = 2
puts x

# ------

revenues_per_planet = Hash.new(0)
CSV.foreach('/Users/james/Code/class-notes/6/planet_express_logs.csv', headers: true) do |row|
  revenue_for_order = row['Money'].to_i * row['Crates'].to_i
  planet = row['Destination']

  # revenues_per_planet[planet] ||= 0
  revenues_per_planet[planet] += revenue_for_order
end

template = File.read '/Users/james/Code/class-notes/7/report.html'
result = ERB.new(template).result(binding)

puts result