require './lib/product'

class ShoppingCart
  attr_reader :name, :capacity, :products
  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def details
    details_list = {}
    details_list[:name] = @name
    details_list[:capacity] = @capacity
    details_list
  end
end