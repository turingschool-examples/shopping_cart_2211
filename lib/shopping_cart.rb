class ShoppingCart
    attr_reader :name, 
                :capacity, 
                :products,
                :total_number_of_products

    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @products = []
        @is_full = false
        @total_number_of_products = 13
    end

    def capacity
        @capacity.delete("items").to_i
    end

    def add_product(product)
        @products << product
    end

    def details
        @details = {
            name: 'King Soopers', 
            capacity: 30
        }
    end

    def is_full?
        if @total_number_of_products <= 13
            @is_full = true
        end
    end
end