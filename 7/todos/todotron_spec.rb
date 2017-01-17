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

  it 'mark items complete' do
    tron = TodoTron.new
    tron.add_item 'Learn ruby'

    # Record that task as done
    tron.mark_complete 'Learn ruby'

    # Can see that its done
    item = tron.items.first
    expect(item.done?).to eq true
  end

  it 'can find items' do
    tron = TodoTron.new
    tron.add_item 'Fix the thing'

    i = tron.find_item 'Fix the thing'

    # expect(tron.items).to include i
    expect(i.class).to eq Todo
  end
end