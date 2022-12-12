class Product
    attr_reader :category, 
                :name, 
                :price,
                :quantity

    def initialize(category, name, price, quantity)
        @category = category
        @name = name
        @price = price
        @quantity = quantity
    end
end