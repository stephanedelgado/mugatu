Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'users/registrations' }
  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists
  resources :bookings
  get "/dashboard", to: "pages#dashboard"
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

