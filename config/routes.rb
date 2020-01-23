Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  resources :locations do
    resources :characters
  end

end
