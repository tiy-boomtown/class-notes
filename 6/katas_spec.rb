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
    @list = []
  end

  def add_item(item)
    # item.name
    # item.price
    @list.push item
  end

  def total_price
    total = 0
    @list.each do |i|
      total += i.price
    end
    total
  end
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
  let(:the_item) { Item.new 'PB & J', 2 }

  it 'has a name' do
    expect(the_item.name).to eq 'PB & J'
  end

  it 'has a price' do
    expect(the_item.price).to eq 2
  end
end
