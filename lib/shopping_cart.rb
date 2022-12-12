class ShoppingCart
    attr_reader :name, :capacity, :products
    def initialize(store, capacity)
        @name = store
        @capacity = capacity.to_i
        @products = []
    end

    def add_product(product)
        @products << product
    end

    def details
        details = {
            name: @name,
            capacity: @capacity
        }
    end

    def total_number_of_products
        total_number_of_products = 0
        @products.each do |product|
            total_number_of_products += product.quantity
        end
        total_number_of_products
    end

    def is_full?
        if total_number_of_products >= @capacity
            true
        else
            false
        end
        
    end
end