require 'rspec'

class Counter
  def initialize(start=0)
    @n = start
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

  it 'can start with non-zero value' do
    c = Counter.new 5

    c.up

    expect(c.count).to eq 6
  end
end