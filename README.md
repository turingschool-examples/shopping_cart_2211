## Setup

* Fork this Repository
* Clone YOUR fork
* Compete the activity below
* Push your solution to your fork
* Submit a pull request from your repository to the turingschool-examples repository
* Make sure to put your name in your PR!


## Iteration 1

Start by making the existing tests pass (removing the skips as you go), and then use TDD to update the `Product` class that responds to the following interaction pattern:

```ruby
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

## Iteration 2

Use TDD to create a `ShoppingCart` class that responds to the following interaction pattern:

```ruby
pry(main)> require './lib/product'
#=> true

pry(main)> require './lib/shopping_cart'
#=> true

pry(main)> cart = ShoppingCart.new("King Soopers", "30items")
#=> #<ShoppingCart:0x00007fccd30375f8...>

pry(main)> cart.name
#=> 'King Soopers'

pry(main)> cart.capacity
#=> 30

pry(main)> cart.products
#=> []

pry(main)> product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
#=> #<Product:0x00007fccd29b5720...>

pry(main)> product2 = Product.new(:meat, 'chicken', 4.50, '2')   
#=> #<Product:0x00007fccd2985f48...>

pry(main)> cart.add_product(product1)

pry(main)> cart.add_product(product2)  

pry(main)> cart.products
#=> [#<Product:0x00007fccd29b5720...>, #<Product:0x00007fccd2985f48...>]

pry(main)> cart.details
#=> {name: "King Soopers", capacity: 30}
```

## Iteration 3

Use TDD to update your `ShoppingCart` class so that it responds to the following interaction pattern. A shopping cart is full if its total number of products exceeds its capacity.

```ruby
pry(main)> require './lib/product'
#=> true

pry(main)> require './lib/shopping_cart'
#=> true

pry(main)> cart = ShoppingCart.new("King Soopers", "30items")

#=> #<ShoppingCart:0x00007fccd30375f8...>

pry(main)> product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
#=> #<Product:0x00007fccd29b5720...>

pry(main)> product2 = Product.new(:meat, 'chicken', 4.50, '2')   
#=> #<Product:0x00007fccd2985f48...>

pry(main)> product3 = Product.new(:paper, 'tissue paper', 1.25, '1')

#=> #<Product:0x00007fccd2985f51...>

pry(main)> cart.add_product(product1)

pry(main)> cart.add_product(product2)

pry(main)> cart.add_product(product3)

pry(main)> cart.total_number_of_products
#=> 13

pry(main)> cart.is_full?
#=> false

pry(main)> product4 = Product.new(:produce, 'apples', 0.99, '20')

#=> #<Product:0x00007fccd2985f53...>

pry(main)> cart.add_product(product4)

pry(main)> cart.is_full?
#=> true

pry(main)> cart.products_by_category(:paper)
#=> [#<Product:0x00007fccd29b5720...>, #<Product:0x00007fccd2985f51...>]
```

## Iteration 4

Use TDD to update your `ShoppingCart` class so that it responds to the following interaction pattern. The calculation for a cart's percentage occupied begins by dividing how much it currently has in it by the amount that it can hold.

```ruby
pry(main)> require './lib/product'
#=> true

pry(main)> require './lib/shopping_cart'
#=> true

pry(main)> cart = ShoppingCart.new("King Soopers", "30items")

#=> #<ShoppingCart:0x00007fccd30375f8...>

pry(main)> product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
#=> #<Product:0x00007fccd29b5720...>

pry(main)> product2 = Product.new(:meat, 'chicken', 4.50, '2')   
#=> #<Product:0x00007fccd2985f48...>

pry(main)> product3 = Product.new(:paper, 'tissue paper', 1.25, '1')

#=> #<Product:0x00007fccd2985f51...>

pry(main)> cart.add_product(product1)

pry(main)> cart.add_product(product2)

pry(main)> cart.add_product(product3)

pry(main)> cart.percentage_occupied
#=> 43.33

pry(main)> product4 = Product.new(:produce, 'apples', 0.99, '20')

#=> #<Product:0x00007fccd2985f53...>

pry(main)> cart.add_product(product4)

pry(main)> cart.sorted_products_by_quantity
#=> [#<Product:0x00007fccd2985f53...>, #<Product:0x00007fccd29b5720...>, #<Product:0x00007fccd2985f48...>, #<Product:0x00007fccd2985f51...>]

pry(main)> cart.product_breakdown
#=> {:meat=>[#<Product:0x00007fccd2985f48...>], :paper=> [#<Product:0x00007fccd29b5720...>, #<Product:0x00007fccd2985f51...>], :produce=> [#<Product:0x00007fccd2985f53...>]}
```
