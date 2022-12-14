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

  def products_by_category(category) 
    @products.select do |product| 
      next if product.category != category
      product
    end
  end

  def percentage_occupied 
    ((total_number_of_products / @capacity.to_f) * 100).round(2)
  end

  def sorted_products_by_quantity 
    @products.sort_by do |product|
      product.quantity
    end.reverse
  end

  #sure 

  # def product_breakdown 
  #   product_breakdown_hash = {}
    
  #   @products.map do |product| 
  #     product_breakdown_hash[product.category] = []
  #   end

  #   product_breakdown_hash.map do |category, product|
  #      product_breakdown_hash[category] << products_by_category(category)
  #      product_breakdown_hash[category] = product.flatten
  #   end

  #   product_breakdown_hash
  #   require 'pry'; binding.pry
    
  # end

  #better

  # def product_breakdown
  #   product_breakdown_hash = {} 
  #   @products.each do |product|
  #     product_breakdown_hash[product.category] = product_by_category_array(product.category)
  #   end
  #   product_breakdown_hash
  # end

  #even better

  def product_breakdown
    @products.group_by do |product| 
      product.category
    end
  end

  def product_by_category_array(category)
    products_by_category(category)
  end
end