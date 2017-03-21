Rails.application.routes.draw do
  resources :artists, only: [:show]
  devise_for :users
  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists
end
