require_relative '../lib/my_queue'

describe MyQueue do
  let(:queue) { MyQueue.new }

  it 'creates an empty queue' do
    expect(queue.empty?).to eq true
    expect(queue.size).to eq 0
  end

  it 'changes size when an item is queued' do
    queue.enqueue("Anything")

    expect(queue.empty?).to eq false
    expect(queue.size).to eq 1
  end

  it 'allows for iteration' do
    queue.enqueue("Anything")
    queue.enqueue("Another thing")
    queue.enqueue("Another thing")
    queue.enqueue("A thing")

    result = []
    queue.each do |item|
      result << item
    end

    expect(result).to eq ["Anything", "Another thing", "Another thing", "A thing"]
  end

  it "returns the last item in the queue" do
    queue.enqueue("Anything")
    queue.enqueue("Another thing")
    queue.enqueue("Another thing")
    queue.enqueue("A thing")

    expect(queue.dequeue).to eq "Anything"
    expect(queue.dequeue).to eq "Another thing"
  end
end