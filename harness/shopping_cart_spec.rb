require 'rspec'
require 'pry'
require 'simplecov'
SimpleCov.start

require './lib/product'
require './lib/shopping_cart'

RSpec.configure do |config|
  config.default_formatter = 'doc'
end

RSpec.describe 'Shopping Cart Spec Harness' do
  before(:each) do
    @cart = ShoppingCart.new("King Soopers", "30items")
    @product_1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    @product_2 = Product.new(:meat, 'chicken', 4.50, '2')
    @product_3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    @product_4 = Product.new(:produce, 'apples', 0.99, '20')
  end

  describe 'Iteration 1' do
    it '1. Product Instantiation' do
      expect(Product).to respond_to(:new).with(4).argument
      expect(@product_1).to be_a(Product)

      expect(@product_1).to respond_to(:category).with(0).argument
      expect(@product_1.category).to eq(:paper)
      expect(@product_2.category).to eq(:meat)

      expect(@product_1).to respond_to(:name).with(0).argument
      expect(@product_1.name).to eq('toilet paper')
      expect(@product_2.name).to eq('chicken')
      
      expect(@product_1).to respond_to(:unit_price).with(0).argument
      expect(@product_1.unit_price).to eq(3.70)
      expect(@product_2.unit_price).to eq(4.50)
     
      expect(@product_1).to respond_to(:quantity).with(0).argument
      expect(@product_1.quantity).to eq(10)
      expect(@product_2.quantity).to eq(2)
    end

    it '2. Product #is_hoarded?' do
      expect(@product_1.is_hoarded?).to eq(false)
      expect(@product_2.is_hoarded?).to eq(false)
    end

    it '3. Product #hoard' do
      expect(@product_1.is_hoarded?).to eq(false)
      @product_1.hoard
      expect(@product_1.is_hoarded?).to eq(true)
      expect(@product_2.is_hoarded?).to eq(false)
    end
  end

  describe 'Iteration 2' do
    it '4. ShoppingCart Instantiation' do
      expect(ShoppingCart).to respond_to(:new).with(2).argument
      expect(@cart).to be_a(ShoppingCart)

      expect(@cart).to respond_to(:name).with(0).argument
      expect(@cart).to respond_to(:capacity).with(0).argument

      expect(@cart.name).to eq("King Soopers")
      expect(@cart.capacity).to eq(30)
    end

    it '5. ShoppingCart #products' do
      expect(@cart).to respond_to(:products).with(0).argument
      expect(@cart.products).to eq([])
    end

    it '6. ShoppingCart #add_product' do
      @cart.add_product(@product_1)
      @cart.add_product(@product_2)

      expect(@cart.products).to eq([@product_1, @product_2])
    end

    it '7. ShoppingCart #details' do
      expect(@cart).to respond_to(:details).with(0).argument
      expect(@cart.details).to eq({name: "King Soopers", capacity: 30})
    end
  end

  describe 'Iteration 3' do
    it '8. ShoppingCart #total_number_of_products' do
      @cart.add_product(@product_1)
      @cart.add_product(@product_2)
      @cart.add_product(@product_3)
      expect(@cart).to respond_to(:total_number_of_products).with(0).argument
      expect(@cart.total_number_of_products).to eq(13)
    end

    it '9. ShoppingCart #is_full?' do
      @cart.add_product(@product_1)
      @cart.add_product(@product_2)
      @cart.add_product(@product_3)

      expect(@cart).to respond_to(:is_full?).with(0).argument
      expect(@cart.is_full?).to eq(false)

      @cart.add_product(@product_4)

      expect(@cart.is_full?).to eq(true)
    end

    it '10. ShoppingCart #products_by_category' do
      @cart.add_product(@product_1)
      @cart.add_product(@product_2)
      @cart.add_product(@product_3)

      expect(@cart).to respond_to(:products_by_category).with(1).argument
      expect(@cart.products_by_category(:paper)).to eq([@product_1, @product_3])
    end
  end

  describe 'Iteration 4' do
    it '11. ShoppingCart #percentage_occupied' do
      @cart.add_product(@product_1)
      @cart.add_product(@product_2)
      @cart.add_product(@product_3)

      expect(@cart).to respond_to(:percentage_occupied).with(0).argument
      expect(@cart.percentage_occupied).to eq(43.33)
    end

    it '12. ShoppingCart #sorted_products_by_quantity' do
      @cart.add_product(@product_1)
      @cart.add_product(@product_2)
      @cart.add_product(@product_3)
      @cart.add_product(@product_4)
      
      expect(@cart).to respond_to(:sorted_products_by_quantity).with(0).argument
      expect(@cart.sorted_products_by_quantity).to eq([@product_4, @product_1, @product_2, @product_3])
    end

    it '13. ShoppingCart #product_breakdown' do
      @cart.add_product(@product_1)
      @cart.add_product(@product_2)
      @cart.add_product(@product_3)
      @cart.add_product(@product_4)
      
      expect(@cart).to respond_to(:product_breakdown).with(0).argument
      expect(@cart.product_breakdown).to eq({
        meat: [@product_2],
        paper: [@product_1, @product_3],
        produce: [@product_4]
      })
    end
  end
end