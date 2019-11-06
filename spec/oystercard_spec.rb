require 'oystercard'

describe Oystercard do
  it 'creates an instance of Oystercard' do
    oystercard = Oystercard.new
    expect(oystercard).to be_instance_of(Oystercard)
  end


it 'has 0 balance' do
  oystercard = Oystercard.new
  expect(oystercard.balance).to eq 0
end

end
