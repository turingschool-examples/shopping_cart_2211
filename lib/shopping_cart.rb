class ShoppingCart
  attr_reader :name, :capacity, :products, :details
  def initialize(name, capacity)
    @name = name
    @capacity = 30
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def details
    {capacity: @capacity,
     name: @name
    }
  end
end