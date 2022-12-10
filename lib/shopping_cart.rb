class ShoppingCart
  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name 
    @capacity = capacity.delete("items").to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end
 
  def details 
    cart_details = {}

    cart_details[:name] = @name 
    cart_details[:capacity] = @capacity
    cart_details
  end

end