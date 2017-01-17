require 'rspec'
require_relative 'todo'
require_relative 'todotron'

describe TodoTron do
  it 'can track todos' do
    tron = TodoTron.new

    # It has no todo items
    expect(tron.items.count).to eq 0

    # I add an item
    tron.add_item 'Buy groceries'

    # It has one item
    expect(tron.items.count).to eq 1
  end
end