class Product
            attr_reader :category,
                        :name,
                        :unit_price, 
                        :quantity

    def initialize(category, name, unit_price, quantity)

    @category = category
    @name = name
    @unit_price = unit_price
    @quantity = quantity.to_i 
    @is_hoarded = false 

    end 

    def is_hoarded?
        @is_hoarded 
    end

    def hoard 
        @is_hoarded = true
    end
end