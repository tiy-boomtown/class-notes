require 'rspec'

class Musician
  attr_reader :name, :instrument

  def initialize name, instrument
    @name, @instrument = name, instrument
  end
end

class Band
  # Write your code here!
end

describe Band do
  it 'has a name' do
    b = Band.new 'The Beatles'
    expect(b.name).to eq 'The Beatles'
  end

  it 'can add members' do
    b = Band.new 'The Beatles'

    expect(b.members.count).to eq 0

    ringo = Musician.new('Ringo', 'Drums')
    b.add_member ringo

    expect(b.members.count).to eq 1
  end
end
