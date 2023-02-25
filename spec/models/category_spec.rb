require 'rails_helper'

RSpec.describe Category, type: :model do
  subject do
    User.create(name: 'Onomeh', email: 'onwuanibeonome@gmail.com', password: '123456')
  end

  before(:each) do
    @category = Category.new(user_id: subject.id, name: 'Groceries')
  end

  context 'Testing validations' do
    it 'Validation should be successful' do
      expect(@category).to be_valid
    end

    it 'Category should have a name' do
      expect(@category.name).to be_present
    end

    it 'Category should have a user id' do
      expect(@category.user_id).to be_present
    end
  end
end
