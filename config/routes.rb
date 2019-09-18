Rails.application.routes.draw do
  root to: 'practice#index'
  get "/practice/about", to: 'practice#about'
  resources :practice
end
