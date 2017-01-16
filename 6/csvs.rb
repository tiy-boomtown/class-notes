require 'csv'
require 'pry'

prices  = []
revenue = 0
CSV.foreach('/Users/james/Code/class-notes/6/orders.csv', headers: true) do |order|
  # [id, name, item, price, address, quantity, date]
  # prices.push x[3]
  prices.push order['Price'].to_f

  revenue_for_order = order['Price'].to_f * order['Quantity'].to_f
  revenue += revenue_for_order
end

puts "Max price is #{prices.max}"
puts "Total revenue is #{revenue}"

CSV.open('/Users/james/Code/class-notes/6/output.csv', 'w') do |csv|
  csv << ['Max Price', 'Total Revenue', 'Some Commas']
  csv << [prices.max, revenue, 'a string, with, commas']

  (1 .. 10).each do |n|
    csv << [n, n*2, n*3]
  end
end