class ShoppingCart
    attr_reader :name, :capacity, :products, :cart
    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @products = []
    end

    def capacity
        @capacity.to_i
    end

    def add_product(product)
        @products << product
    end

    def details
       details = {
            name: @name,
            capacity: 30,
        }
    end
    
    def total_number_of_products
        @products.map { |product| product.quantity }.sum
    end

    def is_full?
        total_number_of_products > details[:capacity]
    end

end