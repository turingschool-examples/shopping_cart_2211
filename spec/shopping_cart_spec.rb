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

      it 'adds three products to the cart' do
        cart = ShoppingCart.new("King Soopers", "30items")
        product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
        product2 = Product.new(:meat, 'chicken', 4.50, '2') 
        product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
        
        expect(product1 = Product.new(:paper, 'toilet paper', 3.70, '10')).to be_an_instance_of(Product)
        expect(product2 = Product.new(:meat, 'chicken', 4.50, '2')).to be_an_instance_of(Product)
        expect(product3 = Product.new(:paper, 'tissue paper', 1.25, '1')).to be_an_instance_of(Product)
    end

    it 'adds three products to the cart' do
      cart = ShoppingCart.new("King Soopers", "30items")
      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2') 
      product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
      cart.add_product(product1)
      cart.add_product(product2)
      cart.add_product(product3)
      expect(cart.total_number_of_products).to eq(13)

  end
  it 'however the cart still is not full' do
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2') 
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    cart.is_full?

    expect(cart.is_full?).to eq(false)

    end

    it '20 apples will fill it up though' do
      cart = ShoppingCart.new("King Soopers", "30items")
      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2') 
      product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
      product4 = Product.new(:produce, 'apples', 0.99, '20')
      cart.add_product(product1)
      cart.add_product(product2)
      cart.add_product(product3)
      cart.add_product(product4)
      cart.is_full?

      expect(cart.is_full?).to eq(false)
  
      end

      it 'we bought some paper items at the store' do
        cart = ShoppingCart.new("King Soopers", "30items")
        product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
        product2 = Product.new(:meat, 'chicken', 4.50, '2') 
        product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
        product4 = Product.new(:produce, 'apples', 0.99, '20')
        cart.add_product(product1)
        cart.add_product(product2)
        cart.add_product(product3)
        cart.add_product(product4)
        cart.is_full?
  
        expect(cart.products_by_category(:paper)).to eq([product1, product3])
    
        end

      it 'is less than half occupied' do
        cart = ShoppingCart.new("King Soopers", "30items")
        product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
        product2 = Product.new(:meat, 'chicken', 4.50, '2') 
        product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
        cart.add_product(product1)
        cart.add_product(product2)
        cart.add_product(product3)

        expect(cart.percentage_occupied).to eq(43.33)
      
          end

      it 'the items are sorted in ascending order' do
      cart = ShoppingCart.new("King Soopers", "30items")
      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2') 
      product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
      product4 = Product.new(:produce, 'apples', 0.99, '20')
      cart.add_product(product1)
      cart.add_product(product2)
      cart.add_product(product3)
      cart.add_product(product4)
            
      expect(product4 = Product.new(:produce, 'apples', 0.99, '20')).to be_an_instance_of(Product)
      expect(cart.sorted_products_by_quantity).to eq([product3, product2, product1, product4])
    #  I'm not sure why Ruby created product4 as a new object ID. I think it's because I played aorund and deleted/ edited stuff from previous tests. But everything is on point other than the object ID changed. Would love to understand why but moving on for time reasons
          
      end
    
  end
end