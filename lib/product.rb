class Product
    attr_reader :category, :name, :unit_price, :quantity
    def initialize(category, name, unit_price, quantity)
        @category = category
        @name = name
        @unit_price = unit_price
        @quantity = quantity
    end

    def is_hoarded?
       if category == true
        true
       else
        false
       end
    end

    def hoard
    end
end