require './lib/bag'

describe Bag do
  let(:bag) {Bag.new}

  it 'can create an empty bag' do
    expect(bag.empty?).to eq true
    expect(bag.size).to eq 0
  end

  it 'changes size when item is added' do
    bag.add("One")

    expect(bag.empty?).to eq false
    expect(bag.size).to eq 1
  end

  it 'allows for iteration' do
    bag.add("One")
    bag.add("Two")
    bag.add("Three")
    bag.add("One")

    actual = []
    bag.each do |item|
      actual << item
    end

    expect(actual).to match_array ["One", "Two", "Three", "One"]
  end
end