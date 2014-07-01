class Node
  attr_accessor :next
  attr_reader :item

  def initialize(item)
    @item = item
  end
end