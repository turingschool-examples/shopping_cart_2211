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
        
        number = 0
        products.each do |product|
            number += product.quantity
        end
        number
        
    end

    def is_full?
        if shopping_cart.capacity <= total_number_of_products
        @is_full = true
        end
    end



    
end