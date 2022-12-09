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
        product_category = []
        @products.select do |product|
        product_category << product if product.category == :paper
        end
        return product_category
    end

    def percentage_occupied
        number_of_products = self.total_number_of_products
        percent = (number_of_products.to_f/@capacity.to_f)
        (percent*100).round(2)
              
    end

    def sorted_products_by_quantity
        sorted_array = []
        sorted = []
        @products.each do |product|
        sorted_array << [product.quantity, product]
        end 
        sorted_array = sorted_array.sort 
        sorted_array.each do |product|
            sorted << product.slice(1)
        end
        return sorted 
        # end
    end
    
end