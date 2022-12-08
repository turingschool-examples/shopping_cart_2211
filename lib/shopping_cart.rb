class ShoppingCart
  attr_reader :name, 
              :capacity, 
              :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @products = []
  end

  #method to convert capacity to number
  # def capacity
  #   capacity.chomp.to_i
  # end

  def add_product(product)
    @products << product
  end

  def details
    { 
      name: name, 
      capacity: capacity
    }
  end

end