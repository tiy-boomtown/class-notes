require 'rspec'

# 1. Repeater

class Repeater
  def initialize(word)
    @word = word
  end

  def repeat(n)
    # ("#{@word}\n" * n).chomp

    # words = n.times.map do
    #   @word
    # end

    words = []
    n.times do
      words.push @word
    end
    words.join("\n")
  end
end

describe Repeater do
  it 'can repeat' do
    r = Repeater.new "Hello!"

    result = r.repeat 3

    expect(result).to eq "Hello!\nHello!\nHello!"
  end
end