Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"

  resources :plants, only: [:index, :show]
  resources :orders, only: [:show] # Order-items are within the order, does not need own path
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
