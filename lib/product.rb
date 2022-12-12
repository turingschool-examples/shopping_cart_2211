class Product
    attr_reader :category, 
                :name, 
                :unit_price,
                :quantity,
                :hoarded_products, 
                :is_hoarded

    def initialize(category, name, price, quantity)
        @category = category
        @name = name
        @unit_price = price
        @quantity = quantity
        @hoarded_products = []
        @is_hoarded = false
    end

    def is_hoarded? 
        if is_hoarded == true
            true
        else
            false
        end
    end

    def hoard
        @hoarded_products << product
    end

end