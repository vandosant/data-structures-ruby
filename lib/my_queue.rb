require './lib/node'

class MyQueue
  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def empty?
    @head == nil && @tail == nil
  end

  def size
    @size
  end

  def enqueue(item)
    node = Node.new(item)
    if @head.nil?
      @head = node
      @tail= node
    else
      @tail.next = node
      @tail = node
    end
    @size += 1
  end

  def dequeue
    result = @head.item
    @head = @head.next
    @size -= 1
    result
  end

  def each
    current = @head
    while current
      yield current.item
      current = current.next
    end
  end
end