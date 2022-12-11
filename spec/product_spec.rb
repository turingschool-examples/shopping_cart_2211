require './lib/product'

RSpec.describe Product do
  describe 'Iteration 1' do
    it 'exists' do
      product = Product.new(:paper, 'toilet paper', 3.70, '10')

      expect(product).to be_a(Product)
    end
  end

    it 'has attributes' do 
      product = Product.new(:paper, 'toilet paper', 3.70, '10')

      expect(product.category).to eq(:paper)
      expect(product.name).to eq('toilet paper')
      expect(product.unit_price).to eq(3.70)
      expect(product.quantity).to eq(10)
      expect(product.total_price).to eq(37.0)
    end
    
    it 'starts out as not hoarded' do
      product = Product.new(:paper, 'toilet paper', 3.70, '10')

      expect(product.is_hoarded?).to eq(false)
    end

    xit 'can be hoarded' do
      product = Product.new(:paper, 'toilet paper', 3.70, '10')

      product.hoard
      expect(product.is_hoarded?).to eq(true)
    end 
end