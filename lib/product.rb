class Product

    attr :category,
         :name,
         :quantity,
         :unit_price

def initialize(category, name, quantity, unit_price)
    @category = category
    @name = name
    @quantity = quantity
    @unit_price = unit_price
end

end