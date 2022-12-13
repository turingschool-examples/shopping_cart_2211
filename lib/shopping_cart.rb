require 'product'

class ShoppingCart
attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.chop.chop.chop.chop.chop.to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def details
    details_hash = {}
    details_hash[:name] = @name
    details_hash[:capacity] = @capacity
    details_hash
  end

  def total_number_of_products
    total = 0
    @products.each { |product| total += product.quantity }
    total
  end

  def is_full?
    total_number_of_products == @capacity
  end
end