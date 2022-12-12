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
end