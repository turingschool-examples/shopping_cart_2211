class ShoppingCart
  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def details
    details_hash = {}
    details_hash[:name] = @name
    details_hash[:capacity] = @capacity
    details_hash
  end

  def total_number_of_products
    products.sum do |product|
      product.quantity
    end
  end

  def is_full?
    total_number_of_products >= @capacity ? true : false
  end

  def products_by_category(category)
    products.find_all do |product|
      product.category == category
    end
  end

  def percentage_occupied
    ((total_number_of_products.to_f. / @capacity.to_f) * 100).round(2)
  end

  def sorted_products_by_quantity
    products.sort_by do |product|
      product.quantity
    end
  end

  # def products_by_category
  # end

end