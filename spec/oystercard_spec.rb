require 'oystercard'

describe Oystercard do
  let (:oystercard) { Oystercard.new }

  it 'creates an instance of Oystercard' do
    expect(oystercard).to be_instance_of(Oystercard)
  end

  it 'has 0 balance' do
    expect(oystercard.balance).to eq 0
  end

  it 'adds to the balance' do
   expect(oystercard).to respond_to(:top_up).with(1).argument
  end

  it 'raises an error if maximum balance is exceeeded' do
   expect{oystercard.top_up(91)}.to raise_error('balance cannot exceed #{LIMIT}')
  end

  it 'can deduct from the balance' do
   expect(oystercard).to respond_to(:deduct).with(1).argument
  end
end
