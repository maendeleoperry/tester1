Rails.application.routes.draw do
  root to: 'practise#index'
  get "/practise/about", to: 'practise#about'
  resources :practise
end
