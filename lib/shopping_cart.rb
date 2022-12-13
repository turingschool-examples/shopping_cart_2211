class ShoppingCart
    attr_reader :name,
                :capacity,
                :products,
                :details

    def initialize(name, capacity)
        @name = name
        @capacity = capacity.to_i
        @products = []
        @details = {
            :name => @name,
            :capacity => @capacity
        }
    end

    def add_product(product)
        @products << product
    end

    def total_number_of_products
        # require 'pry'; binding.pry
        total = 0
        products.each do |product|
           total += product.quantity
        end
        return total
    end

    def is_full?
        @capacity <= total_number_of_products
    end

end