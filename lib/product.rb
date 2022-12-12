class Product
    attr_reader :category,
                :name,
                :unit_price,
                :quantity,
                :hoard_check

    def initialize(category, name, unit_price, quantity)
        @category = category
        @name = name
        @unit_price = unit_price
        @quantity = quantity.to_i
        @hoard_check = false
    end

    def is_hoarded?
        return @hoard_check
    end

    def hoard
        @hoard_check = true
    end
end