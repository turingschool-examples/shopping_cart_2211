class ShoppingCart
  attr_reader :name,
              :capacity,
              :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product)
    products.push(product)
  end

  def details
    {
    name: @name,
    capacity: @capacity
    }
  end

  def total_number_of_products
    sum = 0
    products.each do |product|
      sum += product.quantity
    end
    return sum
  end 
end