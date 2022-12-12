class Product
    attr_reader :category, 
                :name, 
                :unit_price,
                :quantity,
                :hoarded_products

    def initialize(category, name, price, quantity)
        @category = category
        @name = name
        @unit_price = price
        @quantity = quantity
        @hoarded_products = []
    end

    def is_hoarded?
        if hoarded_products.include?(product) = true
        else
            false
        end

        # hoarded_products.all? do |product|
        #     # product.include?(product) == true
        #     product == product
        # end
    end

    # def hoard(product)
    #     hoarded_products << product
    # end

end