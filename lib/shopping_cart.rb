class ShoppingCart
attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.sub('items','').to_i
    @products = []
    @is_full = false
    @cart_details = {
      name: @name,
      capacity: @capacity,
    }
  end

  def capacity
    @capacity
  end

  def add_product(product)
    @products << product
  end

  def details
    @cart_details
  end

  def total_number_of_products
    @capacity
  end

  def is_full?
    @is_full
  end
end