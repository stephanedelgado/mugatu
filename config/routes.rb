Rails.application.routes.draw do
  # get 'bookings/new'

  # get 'bookings/create'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'users/registrations' }
  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists do
    resources :bookings, only: [:new, :create]
  end
  get "/dashboard", to: "pages#dashboard"
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

