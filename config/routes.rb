Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # root to: "home#index"
  resources :rackets do
    resources :bookings, only: [:new]
  end
  resources :bookings, only: [:create, :show, :delete]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
