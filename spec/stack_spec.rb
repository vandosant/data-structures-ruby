require_relative '../lib/stack'

describe Stack do

  it "creates an empty stack" do
    stack = Stack.new
    expect(stack.empty?).to eq true
    expect(stack.size).to eq 0
  end

  it "increases in size when an item is added" do
    stack = Stack.new
    stack.push("Fish")
    expect(stack.empty?).to eq false
    expect(stack.size).to eq 1
  end

  it "pushes a new item to the top of the stack" do
    stack = Stack.new

    stack.push("Fish")
    stack.push("Whale")
    stack.push("Shark")

    expect(stack.stack).to eq ["Fish", "Whale", "Shark"]
  end

  it "returns the item at the top of the stack" do
    stack = Stack.new

    stack.push("Fish")
    stack.push("Whale")

    expect(stack.pop).to eq "Whale"
    expect(stack.size).to eq 2
  end
end