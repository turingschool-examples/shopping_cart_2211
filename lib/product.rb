class Product
    attr_reader :category, 
                :name, 
                :unit_price,   
                :quantity
                # :boolean = false
                

    def initialize(category, name, unit_price, quantity)
        @category = category
        @name = name
        @unit_price = unit_price
        @quantity = quantity.to_i
        @boolean = false
    end

    def total_price
        (quantity.to_i * unit_price)
    end

    def is_hoarded?
        return boolean
    end

    # def hoard
    #     @boolean = true
    # end
end

# could not get is_hoarded to switch from false to true 
# till after the 2 hours. 
