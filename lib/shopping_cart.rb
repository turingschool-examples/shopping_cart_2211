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
        cart_details = {
            name: 'King Soopers',
            capacity: 30
        }
    end

    def total_number_of_products
        quantity_sum = 0
        @products.each do |product|
            quantity_sum += product.quantity
        end
        return quantity_sum
    end

    def is_full?
        if  total_number_of_products >= details[:capacity]
            true
        else
            false
        end
    end

    def products_by_category(category)


    end
end

# could not finish products_by_category