require './lib/product'
require './lib/shopping_cart'

RSpec.describe ShoppingCart do
  let(:cart) {ShoppingCart.new("King Soopers", "30items")}

  let(:product_1) {Product.new(:paper, 'toilet paper', 3.70, '10')}
  let(:product_2) {Product.new(:meat, 'chicken', 4.50, '2')}
  let(:product_3) {Product.new(:paper, 'tissue paper', 1.25, '1')}

  describe 'Iteration 2' do
    it 'exists' do
      expect(cart).to be_a(ShoppingCart)
      expect(product_1).to be_a(Product)
      expect(product_2).to be_a(Product)
      expect(product_3).to be_a(Product)
    end

    it 'has attributes' do
      expect(cart.name).to eq("King Soopers")
      expect(cart.capacity).to eq(30)
    end

    it 'starts with no products' do
      expect(cart.products).to eq([])
    end

    it 'can add products to the cart' do
      cart.add_product(product_1)
      cart.add_product(product_2)

      expect(cart.products).to eq([product_1, product_2])
    end

    it 'creates a hash of cart details' do
      expect(cart.details).to eq({name: 'King Soopers', capacity: 30})
    end
  end

  describe 'Iteration 3' do

    it 'exists' do
      expect(product_1).to be_a(Product)
      expect(product_2).to be_a(Product)
      expect(product_3).to be_a(Product)
    end

    it 'total_number_of_products' do
      cart.add_product(product_1)
      cart.add_product(product_2)
      cart.add_product(product_3)

      expect(cart.total_number_of_products).to eq(3)    
    end

  end
end