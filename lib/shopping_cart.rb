require './lib/product'

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
        products << product
    end

    def details
        { name: @name, capacity: @capacity }
    end

    def total_number_of_products
        total = 0

        @products.each { |product| total += product.quantity }

        total
    end

    def is_full?
        @capacity <= total_number_of_products
    end

    def products_by_category(category)
        products = @products.find_all { |product| product.category == category }        
    end
    
    def percentage_occupied
        (total_number_of_products.to_f / @capacity * 100).round(2)
    end

    def sorted_products_by_quantity
        sorted_products = @products.sort_by { |product| product.quantity }
        sorted_products.reverse
    end
end