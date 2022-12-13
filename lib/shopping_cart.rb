require './lib/product'

class ShoppingCart
    attr_reader :name, :capacity, :products
    def initialize(name, capacity)
        @name = name
        @capacity = capacity.to_i
        @products = []
    end

    def add_product(product)
        @products << product
        # require 'pry'; binding.pry
    end

    def details
        # require 'pry'; binding.pry
        name_array = @products.map do |product|
            product.name
        end

        capacity_array = @products.map do |product|
            product.capacity
        end

        {
            name: name_array,
            capacity: capacity_array
        }
        # require 'pry'; binding.pry

    end

    def total_number_of_products
        @products.product.quantity.to_i.count
    end

end