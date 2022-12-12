require './lib/product'

class ShoppingCart
    attr_reader :name,
                :capacity,
                :products,
                :details,
                :product_total

    def initialize(name, capacity)
        @name = name
        @capacity = capacity.delete_suffix("items").to_i

        @products = []
        @details = {
            name: @name,
            capacity: @capacity
        }
        @product_total = 0
    end

    def add_product(product)
        @products << product
        @product_total = 0
        @products.each do |product|
             @product_total += product.quantity
        end
    end

    def total_number_of_products
        return @product_total
    end

    def is_full?
        if @product_total > @capacity
            true
        else
            false
        end
    end

    def products_by_category(category)
        @products.find_all {|product| product.category == category}
    end

    def percentage_occupied
        
    end
end