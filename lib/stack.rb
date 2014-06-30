class Stack
  attr_reader :stack

  def initialize
    @empty = false
    @stack = []
    @size = 0
  end

  def empty?
    @size == 0
  end

  def size
    @size
  end

  def push(item)
    @stack << item
    @size +=1
  end

  def pop
    @stack.last
  end
end