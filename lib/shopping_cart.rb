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
        if capacity < total_number_of_products
        @is_full = true
        else
            false
        end
    end

    def products_by_category(product)
        
        products.map do |product|
            product
        end
        
    end

end