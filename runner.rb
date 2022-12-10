## Iteration 1

# Start by making the existing tests pass (removing the skips as you go), and then use TDD to update the `Product` class that responds to the following interaction pattern:

pry(main)> require './lib/product'
#=> true

pry(main)> product = Product.new(:paper, 'toilet paper', 3.70, '10')

#=> #<Product:0x00007fa53b9ca0a8 @category=:paper, @name="toilet paper", @quantity='10', @unit_price=3.70>

pry(main)> product.category
#=> :paper

pry(main)> product.name
#=> 'toilet paper'

pry(main)> product.unit_price
#=> 3.70

pry(main)> product.quantity
#=> 10

pry(main)> product.total_price
#=> 37.0

pry(main)> product.is_hoarded?
#=> false

pry(main)> product.hoard

pry(main)> product.is_hoarded?
#=> true
```