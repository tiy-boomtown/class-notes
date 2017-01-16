require 'rspec'

class Item
  attr_reader :name, :price

  def initialize(name, price)
    # @name, @price = name, price
    @name = name
    @price = price
  end
end

class Cart
  def initialize
    @total_price = 0
  end

  def add_item(item)
    @total_price = @total_price + item.price
  end

  attr_reader :total_price
  # def total_price
  #   @total_price
  # end
end

describe Cart do
  it 'can hold items' do
    c = Cart.new

    expect(c.total_price).to eq 0

    c.add_item Item.new('Coffee', 4)
    c.add_item Item.new('Coffee', 4)

    expect(c.total_price).to eq 8
  end
end

describe Item do
  it 'has a name' do
    the_item = Item.new 'PB & J', 2
    expect(the_item.name).to eq 'PB & J'
  end

  it 'has a price' do
    the_item = Item.new 'PB & J', 2
    expect(the_item.price).to eq 2
  end
end
