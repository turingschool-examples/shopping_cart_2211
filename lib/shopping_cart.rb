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


end