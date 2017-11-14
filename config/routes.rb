Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"

  resources :orders, only: [:show] # Order-items are within the order, does not need own path
  resources :plants, only: [:index, :show] do
    resources :order_items, only: [:create, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
