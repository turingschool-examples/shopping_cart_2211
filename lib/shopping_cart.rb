class ShoppingCart

  attr :name,
       :capacity,
       :products
       :total

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @products = []
    @total = 0
  end

  def convert_capacity

    @capacity.chomp('items').to_i

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

   @products.map do |product|
     @total += product.quantity
   end
     @total
  end

  def is_full?
    if @total > 30
        true
    else
        false
    end
  end

  def percentage_occupied

    @total/30

  end

end