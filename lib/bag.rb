class Bag
  def initialize
    @items = []
  end

  def empty?
    size == 0
  end

  def size
    @items.length
  end

  def add(item)
    @items << item
  end

  def each(&block)
    @items.each do |item|
      block.call(item)
    end
  end
end