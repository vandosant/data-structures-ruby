class Queue
  def initialize
    @empty = true
    @items = []
  end

  def empty?
    size == 0
  end

  def size
    @items.length
  end

  def enqueue(item)
    @items << item
  end

  def dequeue
    @items.delete_at(0)
  end

  def each
    @items.each do |item|
      yield item
    end
  end
end