require 'product'

class ShoppingCart
attr_reader :name, :capacity

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
  end
end