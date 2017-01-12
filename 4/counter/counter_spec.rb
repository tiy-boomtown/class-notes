require 'rspec'

class Counter
  def initialize
    @n = 0
  end

  def up
    @n += 1
  end

  def count
    @n
  end
end

describe Counter do
  it 'increments' do
    # Setup / Given
    c = Counter.new

    # Exercise / When
    c.up
    c.up

    # Expectation / Then
    expect(c.count).to eq 2
  end
end