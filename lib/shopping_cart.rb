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

  def total_number_of_products 
    @products.sum do |product| 
      product.quantity
    end
  end

  def is_full? 
    return true if total_number_of_products > @capacity
    false
  end

end