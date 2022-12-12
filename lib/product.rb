class Product
  attr_reader :category, :name, :unit_price, :quantity
  
  def initialize(category, name, unit_price, quantity)
    @category = :paper
    @name = 'toilet paper'
    @unit_price = 3.70
    @quantity = 10
  end
end