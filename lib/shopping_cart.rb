class ShoppingCart
  attr_reader :name, 
              :capacity,
              :products,
              :details
  def initialize(name, capacity)
    @name = name
    @capacity = 30
    @products = []
    @details = {name: 'King Soopers', capacity: 30}
  end

  def add_product(item)
    @products << item
  end

  # This one took some googling
  def total_number_of_products
    @products.map(&:quantity).inject(:+)
  end

  def is_full?
    if total_number_of_products > 30
      true
    else
      false
    end
  end
end