class ShoppingCart

  attr :name,
       :capacity,
       :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @products = []
  end

  def convert_capacity

    @capacity.chomp('items').to_i

  end

  def add_product(product)

    @products << product

  end

  def details

    
  end


end