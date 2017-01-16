require 'csv'
require 'faker'

class Item
  attr_reader :name, :price

  def initialize name, price
    @name, @price = name, price
  end
end

class Person
  attr_reader :name, :addresses

  def initialize(name)
    @name, @addresses = name, []
  end

  def add_address(address)
    @addresses.push address
  end
end

class Order
  attr_reader :id, :person, :item, :quantity, :address, :placed_at

  def initialize id, person, item, quantity, address, placed_at
    @id, @person, @item, @quantity, @address, @placed_at = \
       id, person, item, quantity, address, placed_at
  end
end

class Store
  attr_reader :orders

  def initialize(order_count)
    @orders = []

    @order_count  = order_count
    @person_count = @order_count / rand(9 .. 12)
    @item_count   = @order_count / rand(11 .. 14)

    generate_all
  end

  def generate_all
    @people = []
    @person_count.times do
      p = Person.new Faker::Name.name
      [1,1,2].sample.times do
        p.add_address Faker::Address.full_address
      end
      @people.push p
    end

    @items = []
    @item_count.times do
      @items.push Item.new(Faker::Commerce.product_name, rand(1000 .. 10000) / 5.0)
    end

    @orders = []
    @order_count.times do |i|
      person = @people.sample
      @orders.push Order.new(
        i + 1,
        person,
        @items.sample,
        rand(1 .. 10),
        person.addresses.sample,
        Faker::Date.backward
      )
    end
  end
end

order_count = if n = ARGV.shift
                n.to_i
              else
                1000
              end
Faker::Name.name


store = Store.new order_count
CSV.open "orders.csv", "w" do |csv|
  csv << [
    "Id",
    "Customer Name",
    "Address",
    "Item",
    "Price",
    "Quantity",
    "Placed At"
  ]
  store.orders.each do |order|
    csv << [
      order.id,
      order.person.name,
      order.item.name,
      order.item.price,
      order.address,
      order.quantity,
      order.placed_at
    ]
  end
end
