require 'rspec'
require './lib/product'

RSpec.describe Product do
  let(:product) {Product.new(:paper, 'toilet paper', 3.70, '10')}

  describe 'Iteration 1' do

    it 'exists' do
      expect(product).to be_a(Product)
    end

    it 'has attributes' do 
      expect(product.category).to eq(:paper)
      expect(product.name).to eq('toilet paper')
      expect(product.unit_price).to eq(3.70)
      expect(product.quantity).to eq('10')
      # maybe .quantity would work better as an integer?? 
    end
    
    it 'starts out as not hoarded' do
      expect(product.is_hoarded?).to eq(false)
    end

    xit 'can be hoarded' do
      product.hoard
      expect(product.is_hoarded?).to eq(true)
    end
  end
end