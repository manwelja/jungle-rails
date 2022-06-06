require 'rails_helper'

#Test for the Product Controller
RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'should validate that a name is present' do
      @category = Category.new(name: 'Category')
      @product = Product.new(name: 'Name', quantity: 5, price: 599, category: @category)
      expect(@product).to be_valid
    end
    it 'should validate that a name is present' do
      @category = Category.new(name: 'Category')
      @product = Product.new(name: nil, quantity: 5, price: 599, category: @category)
      expect(@product).to_not be_valid
    end
    it 'should validate that a price is present' do
      @category = Category.new(name: 'Category')
      @product = Product.new(name: 'Name', quantity: 5, price: '', category: @category)
      expect(@product).to_not be_valid
    end
    it 'should validate that a quantity is present' do
      @category = Category.new(name: 'Category')
      @product = Product.new(name: 'Name', quantity: nil, price: 599, category: @category)
      expect(@product).to_not be_valid
    end
    it 'should validate that a category is present' do
      @product = Product.new(name: 'Name', quantity: 5, price: 599, category: nil)
      expect(@product).to_not be_valid          
    end
    it 'should validate that an error message is generated' do
      @product = Product.new(name: 'Name', description: 'Description', image: 'plante_12.jpg', quantity: 5, price: 599, category: nil)
      expect(@product).to_not be_valid 
      expect(@product.errors.full_messages).to_not be_empty
    end
  end
end
