require 'rspec'
require_relative 'bob'

describe Bob do
  let(:bob) { ::Bob.new }
  
  it 'can state something' do
    remark = 'Tom-ay-to, tom-aaaah-to.'
    expect(bob.hey remark).to eq 'Whatever.'
  end

  skip 'can shout' do
    remark = 'WATCH OUT!'
    expect(bob.hey remark).to eq 'Whoa, chill out!'
  end

  skip 'can shout gibberish' do
    remark = ('A'..'Z').to_a.shuffle[0, 10].join
    expect(bob.hey remark).to eq 'Whoa, chill out!'
  end

  skip 'can ask a question' do
    remark = 'Does this cryogenic chamber make me look fat?'
    expect(bob.hey remark).to eq 'Sure.'
  end

  skip 'can ask a numeric question' do
    remark = 'You are, what, like 15?'
    expect(bob.hey remark).to eq 'Sure.'
  end

  skip 'can ask gibberish' do
    remark = ('a'..'z').to_a.shuffle[0, 10].join << '?'
    expect(bob.hey remark).to eq 'Sure.'
  end

  skip 'can talk forcefully' do
    remark = "Let's go make out behind the gym!"
    expect(bob.hey remark).to eq 'Whatever.'
  end

  skip 'can use acronyms in regular speech' do
    remark = "It's OK if you don't want to go to the DMV."
    expect(bob.hey remark).to eq 'Whatever.'
  end

  skip 'can ask forceful questions' do
    remark = 'WHAT THE HELL WERE YOU THINKING?'
    expect(bob.hey remark).to eq 'Whoa, chill out!'
  end

  skip 'can shout numbers' do
    remark = '1, 2, 3 GO!'
    expect(bob.hey remark).to eq 'Whoa, chill out!'
  end

  skip 'can say only numbers' do
    remark = '1, 2, 3'
    expect(bob.hey remark).to eq 'Whatever.'
  end

  skip 'can question with only numbers' do
    remark = '4?'
    expect(bob.hey remark).to eq 'Sure.'
  end

  skip 'can shout with special characters' do
    remark = 'ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!'
    expect(bob.hey remark).to eq 'Whoa, chill out!'
  end

  skip 'can shout with no exclamation mark' do
    remark = 'I HATE YOU'
    expect(bob.hey remark).to eq 'Whoa, chill out!'
  end

  skip 'can make a statement containing a question mark' do
    remark = 'Ending with ? means a question.'
    expect(bob.hey remark).to eq 'Whatever.'
  end

  skip 'can prattle on' do
    remark = 'Wait! Hang on. Are you going to be OK?'
    expect(bob.hey remark).to eq 'Sure.'
  end

  skip 'can be silent' do
    remark = ''
    expect(bob.hey remark).to eq 'Fine. Be that way!'
  end

  skip 'can be really silent' do
    remark = ' ' * rand(1..10)
    expect(bob.hey remark).to eq 'Fine. Be that way!'
  end

  skip 'can alternate silences' do
    remark = "\t" * rand(1..10)
    expect(bob.hey remark).to eq 'Fine. Be that way!'
  end

  skip 'can handle multiple line questions' do
    remark = %(
Does this cryogenic chamber make me look fat?
no)
    expect(bob.hey remark).to eq 'Whatever.'
  end
end