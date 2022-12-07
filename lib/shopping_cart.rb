class ShoppingCart
    attr_reader :name, :capacity, :products

    def initialize(name, capacity)
        @name = name
        @capacity = capacity.to_i
        @products = []
        @full = false
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
        total = 0
        @products.each do |product|
            total += product.quantity
        end
        total
    end

    def is_full?
        @full
    end
end