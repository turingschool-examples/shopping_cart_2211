require './lib/product'

class ShoppingCart
    attr_reader :name, :capacity, :products

    def initialize(name, capacity)
        @name = name
        @capacity = capacity.delete("^0-9").to_i
        @products = []
    end

    def add_product(item)
        @products << item
    end

    def details
        {
        name: @name,
        capacity: @capacity 
        }
    end

    def total_number_of_products
       num_arr = @products.map do |product|
                 product.quantity
                 end
        num_arr.sum
    end

    def is_full?
        total_number_of_products >= @capacity
    end

end