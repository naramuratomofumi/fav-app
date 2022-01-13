Rails.application.routes.draw do
  resources :protos
  devise_for :users
  root 'home#index'
end
