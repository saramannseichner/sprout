Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"

  post 'journey', to: 'pages#home'

  resources :plants, only: [:index, :show]
  resources :orders, only: [:show]
  # Order-items are within the order, does not need own path
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
