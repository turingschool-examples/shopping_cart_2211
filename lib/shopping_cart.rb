class ShoppingCart
    attr_reader :name, :capacity

    def initialize(name, capacity)
        @name = "King Soopers"
        @capacity = capacity
        @products = products
    end 

    def products
        @products = ([])
    end

    def add_product
        products.add(product_1)
    end



end