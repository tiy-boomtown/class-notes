require 'rspec'
require_relative 'xos'

describe XOs do
  it 'can take one turn' do
    x = XOs.new

    # I take one turn ...
    # where I place an X at 3
    x.take_turn('X', 3)

    # Something happens ...
    expect(x.turns_left).to eq 8

    # I see the X on the board (at 3?)
    expect(x.letter_at 3).to eq 'X'
  end

  it 'can see an empty square' do
    x = XOs.new

    expect(x.letter_at 7).to eq nil
  end

  it 'rejects out-of-bounds moves'
  it 'rejects squares that are already taken'

  skip 'can fill up the board' do
    x = XOs.new

    # I fill up the board
    9.times do
      x.take_turn
    end

    expect(x.board_full?).to eq true
  end
end