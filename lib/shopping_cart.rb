class ShoppingCart
attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @products = []
  end

  def capacity
    @capacity.sub('items', '').to_i
  end

  def add_product(product)
    @products << product
  end
end