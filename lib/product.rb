class Product
    attr_reader :category, :name, :unit_price, :quantity
    def initialize(category, name, unit_price, quantity)
        @category = category
        @name = name
        @unit_price = unit_price
        @quantity = quantity.to_i
        @hoard_count = 0
    end

    def is_hoarded?
        return true if @hoard_count > 0
        false
    end

    def hoard
        @hoard_count += 1
    end
end