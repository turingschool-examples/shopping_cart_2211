require './lib/product'
require './lib/shopping_cart'

RSpec.describe ShoppingCart do
  describe 'Iteration 2' do
    it 'exists' do
      cart = ShoppingCart.new("King Soopers", "30items")

      expect(cart).to be_a(ShoppingCart)
    end

    it 'has attributes' do
      cart = ShoppingCart.new("King Soopers", "30items")

      expect(cart.name).to eq("King Soopers")
      expect(cart.capacity).to eq(30)
    end

    it 'starts with no products' do
      cart = ShoppingCart.new("King Soopers", "30items")

      expect(cart.products).to eq([])
    end

    it 'can add products to the cart' do
      cart = ShoppingCart.new("King Soopers", "30items")
      product_1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product_2 = Product.new(:meat, 'chicken', 4.50, '2')

      cart.add_product(product_1)
      cart.add_product(product_2)

      expect(cart.products).to eq([product_1, product_2])
    end

    it 'creates a hash of cart details' do
      cart = ShoppingCart.new("King Soopers", "30items")

      expect(cart.details).to eq({name: 'King Soopers', capacity: 30})
    end
  end

  describe '#total_number_of_products' do 
    it 'returns the sum of the products' do 
      cart = ShoppingCart.new("King Soopers", "30items")

      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2')  
      product3 = Product.new(:paper, 'tissue paper', 1.25, '1')

      cart.add_product(product1)
      cart.add_product(product2)
      cart.add_product(product3)

      expect(cart.total_number_of_products).to eq(13)
    end
  end

   describe '#is_full?' do 
    it 'will determine if a cart is full or not, based on its capacity' do 
      cart = ShoppingCart.new("King Soopers", "30items")

      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2')  
      product3 = Product.new(:paper, 'tissue paper', 1.25, '1')

      cart.add_product(product1)
      cart.add_product(product2)
      cart.add_product(product3)

      cart.total_number_of_products

      expect(cart.is_full?).to eq(false)

      product4 = Product.new(:produce, 'apples', 0.99, '20') 

      cart.add_product(product4) 

      expect(cart.is_full?).to eq(true)
    end
  end

  describe '#products_by_category' do 
    it 'returns the products associated with the given category' do
      cart = ShoppingCart.new("King Soopers", "30items")

      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2')  
      product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
      product4 = Product.new(:produce, 'apples', 0.99, '20') 

      cart.add_product(product1)
      cart.add_product(product2)
      cart.add_product(product3)
      cart.add_product(product4)

      expect(cart.products_by_category(:paper)).to eq([product1, product3])
      expect(cart.products_by_category(:meat)).to eq([product2])
      expect(cart.products_by_category(:produce)).to eq([product4])
    end
  end

  describe '#percentage_occupied' do 
    it 'calculates the carts percentage occupied' do 
      cart = ShoppingCart.new("King Soopers", "30items")

      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2')  
      product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
      product4 = Product.new(:produce, 'apples', 0.99, '20') 

      cart.add_product(product1)
      cart.add_product(product2)
      cart.add_product(product3)

      expect(cart.percentage_occupied).to eq(43.33)
    end
  end

  describe '#sorted_products_by_quantity' do 
    it 'sorts the products by quantity from the largest quantity to the least' do 
      cart = ShoppingCart.new("King Soopers", "30items")

      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2')  
      product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
      product4 = Product.new(:produce, 'apples', 0.99, '20') 

      cart.add_product(product1)
      cart.add_product(product2)
      cart.add_product(product3)
      cart.add_product(product4)

      expect(cart.sorted_products_by_quantity).to eq([product4, product1, product2, product3])
    end
  end

  describe '#product_breakdown' do 
    it 'is a hash of products, sorted by their categories' do 
      cart = ShoppingCart.new("King Soopers", "30items")

      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2')  
      product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
      product4 = Product.new(:produce, 'apples', 0.99, '20') 

      cart.add_product(product1)
      cart.add_product(product2)
      cart.add_product(product3)
      cart.add_product(product4)

      expected = {
                    meat: [product2],
                    paper: [product1, product3],
                    produce: [product4]
      }
      #require 'pry'; binding.pry
      expect(cart.product_breakdown).to eq(expected)
    end
  end
end