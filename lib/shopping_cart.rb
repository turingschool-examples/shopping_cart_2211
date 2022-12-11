class ShoppingCart

    attr_reader :name

    def initialize(name, capacity)
        @name = name
        @capacity = capacity
    end

    def capacity
        @capacity.split('items')[0].to_i
    end

    
end