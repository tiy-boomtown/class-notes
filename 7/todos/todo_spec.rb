require 'rspec'

require_relative 'todo'

describe Todo do
  it 'has a description' do
    t = Todo.new 'Fix the thing'
    expect(t.description).to eq 'Fix the thing'
  end

  it 'can be completed' do
    t = Todo.new 'Learn ruby'

    expect(t.done?).to eq false

    t.done!

    expect(t.done?).to eq true
  end
end