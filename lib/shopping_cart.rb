require './lib/product'

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
    details_list = {}
    details_list[:name] = @name
    details_list[:capacity] = @capacity
    details_list
  end

  def products_by_category(category)
    products_by_category = []
    @products.each do |product|
      if category == product.category
        products_by_category << product
      end
    end
    products_by_category
  end

  def total_number_of_products
    total_number_of_products = 0
    @products.each do |product|
      total_number_of_products += product.quantity
    end
    total_number_of_products
  end

  def is_full?
    if total_number_of_products > @capacity
      true
    else false
    end
  end

  def percentage_occupied
    percentage_occupied = total_number_of_products.to_f / @capacity * 100
    percentage_occupied.round(2)
  end

  # def sort_products_by_quanity
  #   @products[:quantity].sort
  # end
end