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

  it 'can fill up the board' do
    x = XOs.new

    expect(x.board_full?).to eq false

    # I fill up the board
    (1 .. 9).each do |pos|
      x.take_turn 'O', pos
    end

    expect(x.board_full?).to eq true
  end

  it 'finds three in a row' do
    x = XOs.new

    expect(x.winner).to eq nil

    x.take_turn 'X', 5
    x.take_turn 'X', 4
    x.take_turn 'X', 6

    expect(x.winner).to eq 'X'
  end

  it 'finds three in a column' do
    x = XOs.new

    x.take_turn 'O', 1
    x.take_turn 'O', 4
    x.take_turn 'O', 7

    expect(x.winner).to eq 'O'
  end
end