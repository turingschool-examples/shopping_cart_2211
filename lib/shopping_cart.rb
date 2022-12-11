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

    def total_number_of_products
        total_number = 0
        @products.each do |product|
            total_number += product.quantity
       end    
           total_number
    end

    def is_full?
        total_number_of_products >= @capacity.to_i
    end

    def products_by_category(category_name)
        @products.find_all do |product|
            product.category == category_name
        end
    end

    
end