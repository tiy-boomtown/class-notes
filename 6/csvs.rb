require 'csv'
require 'pry'

prices = []
CSV.foreach('/Users/james/Code/class-notes/6/orders.csv', headers: true) do |x|
  # [id, name, item, price, address, quantity, date]
  # prices.push x[3]
  prices.push x['Price'].to_f
end

puts "Max price is #{prices.max}"