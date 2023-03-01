# frozen_string_literal: true

Rails.application.routes.draw do
  resources :budgets
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  resources :categories

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/user' => "categories#index", :as => :user_root

  # Defines the root path route ("/")
  # root "articles#index"
  root 'splash_screens#index'
end
