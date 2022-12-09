class ShoppingCart
  attr_reader :name, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @products = []
  end

  def capacity
    @capacity.delete "items"
    @capacity.to_i
  end

  def add_product(product)
    @products << product
  end

  def details
    details = {}
    details[:name] = @name
    details[:capacity] = capacity
    details
  end

  def total_number_of_products
    product_quantities = []
    @products.each {|product| product_quantities << product.quantity}
    product_quantities.sum
  end

  def is_full?
    if @products.count >= 4 
      true
    else 
      false 
    end
  end

  def products_by_category(category)
    @products.find_all { |product| product.category == category }
  end
end