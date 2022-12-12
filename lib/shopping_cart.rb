class ShoppingCart
    attr_reader :name, :capacity
    def initialize(store, capacity)
        @name = store
        @capacity = capacity.to_i
    end
end