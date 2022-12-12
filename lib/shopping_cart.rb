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
        (@product_total.fdiv(@capacity)*100).round(2)
    end

    def sorted_products_by_quantity
        @products.sort_by{|product| product.quantity}.reverse
    end

    def product_breakdown
        cat_array = []

        @products.each do |product|
            cat_array << product.category
        end

        return cat_array.sort_by{|cat| cat.chr.ord}.reverse
    end
end