class Queue
  def initialize
    @empty = true
    @size = 0
    @items = []
  end

  def empty?
    @size == 0
  end

  def size
    @size
  end

  def enqueue(item)
    @items.reverse!
    @items << item
    @items.reverse!

    @size += 1
  end

  def dequeue
    @items[0]
  end

  def each
    @items.each do |item|
      yield item
    end
  end
end