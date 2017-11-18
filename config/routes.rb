Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"
  mount Messenger::Bot::Space => "/webhook"

  post 'journey', to: 'pages#journey'

  resources :orders, only: [:show, :new, :create] do
    # member do
    #   get 'payment', to: 'orders#payment'
    # end
    resources :addresses, only: [:new, :create]
  end
  # Order-items are within the order, does not need own path
  resources :plants, only: [:index, :show] do
    resources :order_items, only: [:create, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

