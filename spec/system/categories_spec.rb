require 'rails_helper'

RSpec.describe 'Categories', type: :system do
  before(:each) do
    @user = User.create(name: 'Onomeh', email: 'onome@gmail.com', password: 'onome123',
                        password_confirmation: 'onome123')
    sign_in @user
  end

  describe 'GET /index' do
    it 'renders the index template' do
      visit user_root_path
      expect(page).to have_text('Categories')
    end

    it 'redirect to new category page' do
      visit user_root_path
      click_button 'New category'
      expect(page).to have_content('New category')
    end
  end

  describe 'GET /show' do
    it 'renders a successful response and page' do
      category = Category.create(name: 'Groceries', user_id: @user.id)
      visit category_path(category)
      expect(page).to have_content('Groceries')
    end
  end

  describe 'GET /new' do
    it 'renders a form' do
      visit new_category_path
      expect(page).to have_content('New category')
    end
  end
end
