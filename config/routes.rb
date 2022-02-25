Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  resources :artworks do
    resources :bookings
  end

  resources :bookings do
    member do
      patch '/accepted', to: 'bookings#accepted'
      patch '/rejected', to: 'bookings#rejected'
      patch '/cancelled', to: 'bookings#cancelled'
    end
  end

  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'dashboard', to: 'pages#dashboard'
end
