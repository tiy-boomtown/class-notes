require 'rspec'

class Item
  # Write your code here!
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
