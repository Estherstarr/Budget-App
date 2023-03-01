require 'rails_helper'

RSpec.describe Budget, type: :model do
  let(:user) { User.new(name: 'Onomeh', email: 'onwuanibeonome@gmail.com', password: '123456') }
  let(:category) { Category.new(name: 'Groceries') }

  context 'Testing validations' do
    it 'Budget should have category' do
      budget = Budget.new(user: user, name: 'Rice', amount: 50)
      expect(budget).not_to be_valid
    end

    it 'Budget should have a name' do
      budget = Budget.new(user: user, category: category, amount: 50)
      expect(budget).not_to be_valid
    end

    it 'Budget should have a user id' do
      budget = Budget.new(name: 'Rice', category: category, amount: 50)
      expect(budget).not_to be_valid
    end

    it 'Budget should have amount' do
      budget = Budget.new(user: user, category: category, amount: 50)
      expect(budget).not_to be_valid
    end
  end
end
