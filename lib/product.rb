class Product
        attr_reader :category, :name, :unit_price, :quantity
    
    def initialize(category, name, unit_price, quantity)
        @category = category
        @name = name
        @unit_price = unit_price
        @quantity = quantity.to_f
    end

    def total_price
        @unit_price * @quantity
    end

    def is_hoarded?
        @quantity <= 1   
    end
end