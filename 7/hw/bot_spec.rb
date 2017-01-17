require_relative './bot'

describe Bot do
  it 'starts at the start' do
    bot = Bot.new
    expect(bot.heading).to eq :n
    expect(bot.x).to eq 0
    expect(bot.y).to eq 0
  end

  it 'can set a heading' do
    bot = Bot.new

    direction = [:n, :s, :e, :w].sample
    bot.heading = direction
    expect(bot.heading).to eq direction
  end

  it 'can move forward' do
    bot = Bot.new
    bot.forward

    expect(bot.x).to eq 0
    expect(bot.y).to eq 1
  end

  it 'can turn right' do
    bot = Bot.new
    bot.right
    bot.forward

    expect(bot.heading).to eq :e
    expect(bot.x).to eq 1
    expect(bot.y).to eq 0
  end

  it 'can turn left' do
    bot = Bot.new
    bot.left

    expect(bot.heading).to eq :w
  end

  it 'can turn around' do
    bot = Bot.new
    4.times { bot.left }
    expect(bot.heading).to eq :n
  end

  it 'can follow directions' do
    bot = Bot.new
    bot.follow('LF')

    expect(bot.heading).to eq :w
    expect(bot.x).to eq -1
    expect(bot.y).to eq 0
  end

  it 'can follow long directions' do
    bot = Bot.new
    bot.follow('FRFFLFRRRRF')

    expect(bot.heading).to eq :n
    expect(bot.x).to eq 2
    expect(bot.y).to eq 3
  end
end