require './lib/product'
require './lib/shopping_cart'

RSpec.describe ShoppingCart do
  let(:cart) {ShoppingCart.new("King Soopers", "30items")}

  let(:product_1) {Product.new(:paper, 'toilet paper', 3.70, '10')}
  let(:product_2) {Product.new(:meat, 'chicken', 4.50, '2')}


  describe 'Iteration 2' do
    it 'exists' do
      expect(cart).to be_a(ShoppingCart)
    end

    it 'has attributes' do
      expect(cart.name).to eq("King Soopers")
      expect(cart.capacity).to eq(30)
    end

    it 'starts with no products' do
      expect(cart.products).to eq([])
    end

    xit 'can add products to the cart' do
      cart.add_product(product_1)
      cart.add_product(product_2)

      expect(cart.products).to eq([product_1, product_2])
    end

    xit 'creates a hash of cart details' do
      expect(cart.details).to eq({name: 'King Soopers', capacity: 30})
    end
  end
end