require 'oystercard'

describe Oystercard do
  it 'creates an instance of Oystercard' do
    oystercard = Oystercard.new
    expect(oystercard).to be_instance_of(Oystercard)
  end
end
