class ShoppingCart
    attr_reader :name, :capacity, :products

    def initialize(name, capacity)
        @name = name
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

    def total_number_of_products
        total = 0
        @products.each do |product|
            total += product.quantity
        end
        total
    end

    def is_full?
        if total_number_of_products < 30
            false
        else
            true
        end
    end

    def percentage_occupied
        ((total_number_of_products.to_f / 30) * 100).round(2)
    end

    def sorted_products_by_quantity
        @products.sort_by(&:quantity)
    end

    def product_breakdown
        breakdown = {
            meat: @products.select {|product| product.category == :meat},
            paper: @products.select {|product| product.category == :paper},
            produce: @products.select {|product| product.category == :produce}
        }
    end
end