class Product
    attr_reader :category, :name, :unit_price, :quantity

    def initialize(category, name, unit_price, quantity)
        @category = category
        @name = name
        @unit_price = unit_price
        @quantity = quantity.to_i
        @stash = 0
    end

    def is_hoarded?
        @stash >= 1
    end

    def hoard
        @stash += 1
    end

end