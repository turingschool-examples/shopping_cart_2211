class ShoppingCart
    attr_reader :name, :capacity

    def initialize(name, capacity)
        @name = name
        @capacity = capacity.delete("^0-9").to_i
    end

end