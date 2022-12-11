class ShoppingCart
    attr_reader :name, 
                :capacity,
                :products,
                :is_full

    def initialize(name, capacity)
        @name = name
        @capacity = capacity.to_i
        @products = []
        @is_full = false
        
    end 
    
    def add_product(product)
        @products << product
    end

    def details
        details = {
            :name => name,
            :capacity => capacity.to_i
        }
    end
    def total_number_of_products
        products[0].quantity.to_i + products[1].quantity.to_i + products[2].quantity.to_i
    end

    def is_full?
        @is_full
    end



    
end