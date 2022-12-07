class Product
  attr_reader :category, :name, :quantity, :unit_price

  def initialize(category, name, unit_price, quantity)
    @category = category
    @name = name
    @quantity = quantity.to_i
    @unit_price = unit_price.to_f
    @is_hoarded = false
  end

  def is_hoarded?
    @is_hoarded
  end

  def hoard
    @is_hoarded = true
  end

end