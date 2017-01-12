require 'rspec'

describe Counter do
  it 'increments' do
    # Setup / Given
    c = Counter.new

    # Exercise / When
    c.up
    c.up

    # Expectation / Then
    expect(c.count).to == 2
  end
end