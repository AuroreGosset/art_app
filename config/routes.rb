Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  resources :artworks do
    resources :bookings do
      member do
        patch '/accepted', to: 'bookings#accepted'
        patch '/denied', to: 'bookings#denied'
        patch '/cancelled', to: 'bookings#cancelled'
      end
    end
  end

  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'dashboard', to: 'pages#dashboard'
end
