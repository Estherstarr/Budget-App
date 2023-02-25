require 'rails_helper'

RSpec.describe 'SplashScreens', type: :system do
  describe 'GET /index' do
    it 'contains a link to sign up and log in' do
      visit root_path
      expect(page).to have_link('SIGN UP')
      expect(page).to have_link('LOG IN')
    end

    it 'sign up link redirects to sign up page' do
      visit root_path
      click_link('SIGN UP')
      expect(page).to have_content('REGISTER')
    end

    it 'log in link redirects to log in page' do
      visit root_path
      click_link('LOG IN')
      expect(page).to have_content('LOGIN')
    end
  end
end
