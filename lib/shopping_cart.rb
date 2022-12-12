require './lib/product'

class ShoppingCart
    attr_reader :name,
                :capacity,
                :products,
                :details

    def initialize(name, capacity)
        @name = name
        @capacity = capacity.delete_suffix("items").to_i
        
        @products = []
        @details = {
            name: @name,
            capacity: @capacity
        }
    end

    def add_product(product)
        @products << product
    end
end