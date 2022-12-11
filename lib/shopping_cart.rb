class ShoppingCart

    attr_reader :name

    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @products = []
    end

    def capacity
        @capacity.split('items')[0].to_i
    end

    def products
        @products
    end

    def add_product(product_name)
        @products << product_name
    end

    def details
        {name: @name, capacity: @capacity.split('items')[0].to_i}
    end

    
end