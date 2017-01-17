require_relative './rover'

describe Rover do
  it 'starts at the start' do
    rover = Rover.new
    expect(rover.heading).to eq :n
    expect(rover.x).to eq 0
    expect(rover.y).to eq 0
  end

  it 'can set a heading' do
    rover = Rover.new

    direction = [:n, :s, :e, :w].sample
    rover.heading = direction
    expect(rover.heading).to eq direction
  end

  it 'can move forward' do
    rover = Rover.new
    rover.forward

    expect(rover.x).to eq 0
    expect(rover.y).to eq 1
  end

  it 'can turn right' do
    rover = Rover.new
    rover.right
    rover.forward

    expect(rover.heading).to eq :e
    expect(rover.x).to eq 1
    expect(rover.y).to eq 0
  end

  it 'can turn left' do
    rover = Rover.new
    rover.left

    expect(rover.heading).to eq :w
  end

  it 'can turn around' do
    rover = Rover.new
    4.times { rover.left }
    expect(rover.heading).to eq :n
  end

  it 'can follow directions' do
    rover = Rover.new
    rover.follow('LF')

    expect(rover.heading).to eq :w
    expect(rover.x).to eq -1
    expect(rover.y).to eq 0
  end

  it 'can follow long directions' do
    rover = Rover.new
    rover.follow('FRFFLFRRRRF')

    expect(rover.heading).to eq :n
    expect(rover.x).to eq 2
    expect(rover.y).to eq 3
  end
end