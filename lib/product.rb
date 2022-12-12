class Product
  attr_reader :category, :name, :unit_price, :quantity
  
  def initialize(category, name, unit_price, quantity)
    @category = :paper
    @name = 'toilet paper'
    @unit_price = 3.70
    @quantity = 10
    @hoarded = false
  end

  def is_hoarded?
    @hoarded
  end

  def hoard
    @hoarded = true
  end
  require 'pry'; binding.pry
end