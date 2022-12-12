class ShoppingCart
attr_reader :name, :capacity

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
  end

  def capacity
    @capacity.sub('items', '').to_i
  end
end