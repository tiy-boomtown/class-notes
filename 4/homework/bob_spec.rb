require 'rspec'
require_relative 'bob'

describe Bob do
  let(:bob) { Bob.new }
  
  it 'can state something' do
    remark = 'Tom-ay-to, tom-aaaah-to.'
    expect(bob.hey remark).to eq 'Whatever.'
  end

  it 'can shout' do
    remark = 'WATCH OUT!'
    expect(bob.hey remark).to eq 'Whoa, chill out!'
  end

  it 'can shout gibberish' do
    remark = ('A'..'Z').to_a.shuffle[0, 10].join
    expect(bob.hey remark).to eq 'Whoa, chill out!'
  end

  it 'can ask a question' do
    remark = 'Does this cryogenic chamber make me look fat?'
    expect(bob.hey remark).to eq 'Sure.'
  end

  it 'can ask a numeric question' do
    remark = 'You are, what, like 15?'
    expect(bob.hey remark).to eq 'Sure.'
  end

  it 'can ask gibberish' do
    remark = ('a'..'z').to_a.shuffle[0, 10].join << '?'
    expect(bob.hey remark).to eq 'Sure.'
  end

  it 'can talk forcefully' do
    remark = "Let's go make out behind the gym!"
    expect(bob.hey remark).to eq 'Whatever.'
  end

  it 'can use acronyms in regular speech' do
    remark = "It's OK if you don't want to go to the DMV."
    expect(bob.hey remark).to eq 'Whatever.'
  end

  it 'can ask forceful questions' do
    remark = 'WHAT THE HELL WERE YOU THINKING?'
    expect(bob.hey remark).to eq 'Whoa, chill out!'
  end

  it 'can shout numbers' do
    remark = '1, 2, 3 GO!'
    expect(bob.hey remark).to eq 'Whoa, chill out!'
  end

  it 'can say only numbers' do
    remark = '1, 2, 3'
    expect(bob.hey remark).to eq 'Whatever.'
  end

  it 'can question with only numbers' do
    remark = '4?'
    expect(bob.hey remark).to eq 'Sure.'
  end

  it 'can shout with special characters' do
    remark = 'ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!'
    expect(bob.hey remark).to eq 'Whoa, chill out!'
  end

  it 'can shout with no exclamation mark' do
    remark = 'I HATE YOU'
    expect(bob.hey remark).to eq 'Whoa, chill out!'
  end

  it 'can make a statement containing a question mark' do
    remark = 'Ending with ? means a question.'
    expect(bob.hey remark).to eq 'Whatever.'
  end

  it 'can prattle on' do
    remark = 'Wait! Hang on. Are you going to be OK?'
    expect(bob.hey remark).to eq 'Sure.'
  end

  it 'can be silent' do
    remark = ''
    expect(bob.hey remark).to eq 'Fine. Be that way!'
  end

  it 'can be really silent' do
    remark = ' ' * rand(1..10)
    expect(bob.hey remark).to eq 'Fine. Be that way!'
  end

  it 'can alternate silences' do
    remark = "\t" * rand(1..10)
    expect(bob.hey remark).to eq 'Fine. Be that way!'
  end

  it 'can handle multiple line questions' do
    remark = %(
Does this cryogenic chamber make me look fat?
no)
    expect(bob.hey remark).to eq 'Whatever.'
  end
end