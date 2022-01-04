# require "./lib/oystercard.rb" #if you dont use lib as folder
require "oystercard"

describe Oystercard do

  it "new Oystercard has a balance of zero" do
  expect(subject.balance).to eq(0)
  end

end