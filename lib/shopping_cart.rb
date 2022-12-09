class ShoppingCart
        attr_reader :name, 
                    :capacity, 
                    :products
    
    def initialize(name, capacity)
         @name = name
         @capacity = capacity.to_i 
         @products = []
         @is_full = false
         @total = 0

    end

    def add_product(product)
        @products << product
    end

    def details
        {name: @name, capacity: @capacity}
    end

    def total_number_of_products
        
        @products.each do |product|
         @total += product.quantity
        end
        return @total

    end 

    def is_full?
       if @total > 30
         @is_full = true 
       end 
        return @is_full
    end

    def products_by_category(category)
        paper_products = []
        @products.select do |product|
        paper_products << product if product.category == :paper
        end
        return paper_products
    end
    
end