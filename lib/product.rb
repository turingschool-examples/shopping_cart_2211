class Product
    attr_reader :category,
                :name,
                :unit_price,
                :quantity,
                :is_hoarded

    def initialize(category, name, unit_price, quantity)
        @category = category
        @name = name.to_s
        @unit_price = unit_price.to_f
        @quantity = quantity.to_i
        @is_hoarded = false
    end

    def is_hoarded?
        @is_hoarded
    end

end