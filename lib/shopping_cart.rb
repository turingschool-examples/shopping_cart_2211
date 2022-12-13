require 'product'

class ShoppingCart
attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.chop.chop.chop.chop.chop.to_i
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
    total = 0
    @products.each { |product| total += product.quantity }
    total
  end

  def is_full?
    total_number_of_products == @capacity
  end

  def products_by_category(category_symbol)
    products_by_cat = []
    @products.each do |product|
      products_by_cat << product if product.category == category_symbol
    end
    products_by_cat
  end

  def percentage_occupied
    ((total_number_of_products.to_f / capacity) * 100).to_f.round(2)
  end

  def sorted_products_by_quantity
    @products.sort_by do |product|
      product.quantity
    end
  end

  def product_breakdown
    breakdown_hash = {}
    @products.each do |product|
      breakdown_hash[product.category]= [product]
    end
    breakdown_hash

    sorted = breakdown_hash.sort_by do |key, key_value| 
      key
    end
    sorted.to_h

  end

end