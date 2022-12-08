class ShoppingCart
  attr_reader :name, 
              :capacity, 
              :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @products = []
    @is_full = false
  end

  #method to convert capacity to number
  # def capacity
  #   capacity.chomp.to_i
  # end

  def add_product(product)
    @products << product
  end

  def details
    { 
      name: name, 
      capacity: capacity
    }
  end

  def is_full?
    if @products.size >= 3
      @is_full
    elsif @products.size >= 4
      @is_full = true
    end
  end
end