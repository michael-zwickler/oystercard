# require "./lib/oystercard.rb" #if you dont use lib as folder
require "oystercard"

describe Oystercard do

  it "new Oystercard has a balance of zero" do
    expect(subject.balance).to eq(0)
  end

  describe '#top_up!' do
    it 'adds money to the oystercard' do
      expect { subject.top_up!(10) }.to change{ subject.balance }.by 10
    end
  end

end