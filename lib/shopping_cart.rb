class ShoppingCart
    attr_reader :name,
                :capacity,
                :products


    def initialize(name, capacity)
        @name = name
        @capacity = capacity.to_i
        @products = []
    end

    def add_product(product)
        @products << product
    end

    def details
        cart = {
            name: @name,
            capacity: @capacity
        }
    end

    def total_number_of_products
        @products.length
    end

    def is_full?
        @products.length >= 4
    end

    def products_by_category(type_of_product)
        @products.find_all do |product|
            product.category == type_of_product
        end
    end

end
