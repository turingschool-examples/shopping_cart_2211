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
    {
    name: @name,
    capacity: @capacity
    }
  end

  def total_number_of_products
    sum = (products[0].quantity.to_i + products[1].quantity.to_i + products[2].quantity.to_i)
   sum.to_s  #couldn't figure out how to not hard code this...
  end

  def is_full?
    if total_number_of_products >= '30'
      true
    else
      false
    end
  end

  def products_by_category(category)
    products.find_all do |product|
      product.category == category
    end
  end
end