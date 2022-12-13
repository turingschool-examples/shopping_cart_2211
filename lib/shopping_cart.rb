class ShoppingCart
attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
    @cart_details = {
      name: @name,
      capacity: @capacity,
    }
  end

  def capacity
    @capacity
  end
require 'pry'; binding.pry
  def add_product(product)
    @products << product
  end

  def details
    @cart_details
  end
end