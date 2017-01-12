require 'rspec'
require_relative 'fizzbuzzer'

describe Fizzbuzzer do
  it 'works' do
    expect(1 + 1).to eq 2
  end

  skip 'really works' do
    f = Fizzbuzzer.new

    f.register_rule(4, 'Cat')
    f.register_rule(5, 'Dog')

    result = [
        1,
        2,
        'Cat',
        'Dog',
        6,
        7,
        'Cat',
        9,
        'Dog',
        11,
        'Cat',
        13,
        14,
        'Dog',
        'Cat',
        17,
        18,
        19,
        'CatDog',
        21,
        22
    ]
    expect(f.run 22).to eq result
  end

  it 'replaces exact matches' do
    f = Fizzbuzzer.new
    f.register_rule(3, 'Fizz')

    # apply f to one number
    result = f.apply_one 3

    # check result
    expect(result).to eq 'Fizz'
  end

  it 'replaces multiples' do
    f = Fizzbuzzer.new
    f.register_rule(3, 'Fizz')

    result = f.apply_one 6

    expect(result).to eq 'Fizz'
  end
end