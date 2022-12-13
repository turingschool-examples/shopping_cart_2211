class Product
    
    attr_reader :category,
                :name,
                :unit_price,
                :quantity

    def initialize (category, name, unit_price, quantity)
        @category = category
        @name = name
        @unit_price = unit_price
        @quantity = quantity
    end

    def is_hoarded?
        hoarded = false
    end

    
end