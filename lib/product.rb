class Product
    attr_reader :category,
                :name,
                :unit_price,
                :quantity,
                :change_value


    def initialize(category, name, unit_price, quantity)
        @category = category
        @name = name
        @unit_price = unit_price
        @quantity = quantity.to_i
        @change_value = false
    end

    def is_hoarded?
        return change_value
    end

    def total_price
        (quantity.to_i * unit_price)
    end

    def hoard
        @change_value = true
    end

end