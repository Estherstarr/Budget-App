require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(
      name: 'Onomeh',
      email: 'onomeh@gmail.com',
      password: 'onome123'
    )
  end

  before { subject.save }

  context 'Testing validations' do
    it 'Validation should be successful' do
      expect(subject).to be_valid
    end

    it 'User should have a name' do
      subject.name
      expect(subject).to be_valid
    end

    it 'User should have an email' do
      subject.email
      expect(subject).to be_valid
    end

    it 'User should have a password' do
      subject.password
      expect(subject).to be_valid
    end
  end

  context 'Testing associations' do
    it 'User should have many catergories items' do
      subject = User.reflect_on_association(:categories)
      expect(subject.macro).to eq(:has_many)
    end

    it 'User should have many budgets items' do
      subject = User.reflect_on_association(:budgets)
      expect(subject.macro).to eq(:has_many)
    end
  end
end
