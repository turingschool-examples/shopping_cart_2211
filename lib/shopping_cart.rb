class ShoppingCart
    attr_reader :name,
                :capacity,
                :products

    def initialize(name, capacity)
        @name = name
        @capacity = capacity.to_i
        @products = []
    end

    def add_product(item)
        @products << item
    end
     
    def details
        { name: @name,
          capacity: @capacity  
        }
    end

    def total_number_of_products
        total_products = []
        @products.each do |product|
            total_products << product.quantity
        end
        total_products.reduce(0, :+)
    end

    def is_full?
        unless total_number_of_products >= 31
            false
        else 
            true
        end
    end


end