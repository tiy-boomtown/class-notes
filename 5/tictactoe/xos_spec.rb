require 'rspec'
require_relative 'xos'

describe XOs do
  skip 'can fill up the board' do
    x = XOs.new

    # I fill up the board
    9.times do
      x.take_turn
    end

    expect(x.board_full?).to eq true
  end
end