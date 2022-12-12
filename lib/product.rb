class Product
    attr_reader :category, 
                :name, 
                :unit_price,
                :quantity

    def initialize(category, name, price, quantity)
        @category = category
        @name = name
        @unit_price = price
        @quantity = quantity
    end

    def is_hoarded?
        if quantity > 10 
            true
        else
            false
        end
    end

end