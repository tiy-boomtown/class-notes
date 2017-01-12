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

  def reset
    @n = 0
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

  it 'can reset' do
    c = Counter.new 5

    c.reset

    expect(c.count).to be_zero
  end
end