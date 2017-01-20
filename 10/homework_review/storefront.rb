require 'sqlite3'
require 'active_record'

ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3',
    database: 'store.sqlite3'
)

class User < ActiveRecord::Base

  has_many :addresses
  has_many :orders

  def full_name
    first_name + " " + last_name
  end

  def spent
    orders.joins(:item).sum("price * quantity")
  end

end

puts "#{User.count} users"

class Item < ActiveRecord::Base

  has_many :orders

end

class Address < ActiveRecord::Base

  belongs_to :user

  def full_address
    "#{street}, #{city}, #{state}  #{zip}"
  end

end

class Order < ActiveRecord::Base

  belongs_to :item
  belongs_to :user

end

items = Item.order(price: :desc).limit(5)

puts "Item   |   Price"
items.each do |item|
  puts "#{item.title} | #{item.price}"
end


book = Item.where(category: "Books").order(price: :asc).first

puts "#{book.title} is our cheapest book."

person = Address.find_by(
          street: "6439 Zetta Hills",
          city: "Willmouth",
          state: "WY"
        ).user

# Address.find(3)

puts "#{person.full_name} lives there"

virginie = User.find_by(first_name: "Virginie", last_name: "Mitchell")

virginie.addresses.update_all(city: "New York", state: "NY", zip: "10108")

# update
virginie.addresses.each do |addy|
  # MAKE SURE DATA IS VALID
  puts "UPDATE addresses SET (stuff) WHERE id = #{addy.id}"
end

# update_all

puts "UPDATE addresses SET (stuff) WHERE user_id = #{virginie.id}"

puts "Virginie's addresses are now:"

virginie.addresses.each do |add|
  puts add.full_address
end

total = Item.where(category: "Tools").sum(:price)

puts "It would cost #{total} to buy all the tools."

total_orders = Order.sum(:quantity)

puts "We had #{total_orders} items ordered"

revenue = Order.joins(:item).where("category LIKE '%Book%'").sum("price * quantity")

puts "We made #{revenue} on books."

me = User.create(
      first_name: "Chris",
      last_name: "Vannoy",
      email: "chris@chrisvannoy.com"
    )

item = Item.find(42)

# order = Order.create(user: me, item: item, quantity: 23)

me.orders << Order.new(item: item, quantity: 23)

puts "I've ordered a #{me.orders.last.item.title}"

often = Order.group(:item).sum(:quantity).max_by{|key, value| value}

puts often.inspect

puts "#{often.first.title} was ordered #{often.last} times"

most = Order.group(:item).joins(:item).order("sum_price_all_quantity DESC").limit(1).sum("price * quantity")

puts most.class

puts "#{most.keys.first.title} made #{most.values.first} money"

spender = User.joins(orders: :item)
              .select("users.*, SUM(price * quantity) AS total")
              .order("total desc").group(:id).first

puts spender.inspect

puts "#{spender.full_name} spent the most: #{spender.total}."

categories = Item.joins(:orders)
                 .group(:category)
                 .order("sum_price_all_quantity DESC")
                 .limit(3)
                 .sum("price * quantity")

puts categories.inspect

categories.each do |category, revenue|
  puts "#{category} made us #{revenue}"
end