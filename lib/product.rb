class Product

    attr :category,
         :name,
         :quantity,
         :unit_price

def initialize(category, name, quantity, unit_price)
    @category = :paper
    @name = 'toilet paper'
    @quantity = 10
    @unit_price = 3.7
end

end