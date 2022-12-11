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

  def is_full?
    total_number_of_products > capacity
  end 

  def products_by_category(category)
    products.select do |product|
      product.category == category
    end 
  end 

  def percentage_occupied
    ((total_number_of_products.to_f / capacity.to_f) * 100).round(2)
  end 

  def sorted_products_by_quantity
    products.sort_by do |product|
      product.quantity
    end
  end 

  def product_breakdown
    products.to_h do |product|
      [product.category, product]
    end
  end 
end