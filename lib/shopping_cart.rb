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
        products.
    end

end