# require "./lib/oystercard.rb" #if you dont use lib as folder
require "oystercard"

describe OysterCard do

  it "Fresh Oystercard has a balance of zero" do
    expect(subject.balance).to eq(0)
  end

  describe '#top_up!' do
    it 'Adds money to the Oystercard' do
      expect { subject.top_up!(10) }.to change{ subject.balance }.by(10)
    end
    it 'Throws an error when a certain limit reached' do
      limit = OysterCard::MAX_BALANCE
      subject.top_up!(limit)
      expect { subject.top_up!(1)}.to raise_error("Limit reached. Limit is #{limit}!")
    end
  end

  describe '#deduct!' do
    it 'Deducts money from the Oystercard' do
      subject.top_up!(20)
      expect { subject.deduct!(10) }.to change {subject.balance}.by(-10)
    end
  end

end
