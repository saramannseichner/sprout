Rails.application.routes.draw do
  devise_for :users

  resources :users, only: :index do
    resources :orders, only: [:show] do # Order-items are within the order, does not need own path
      resources :order_items, only: [:create, :update, :destroy]
    end
  end
  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"

  resources :plants, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
