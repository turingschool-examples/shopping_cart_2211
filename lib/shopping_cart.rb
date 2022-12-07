class ShoppingCart
    attr_reader :name, :capacity

    def initialize(name, capacity)
        @name = name
        @capacity = capacity.to_i
    end
end