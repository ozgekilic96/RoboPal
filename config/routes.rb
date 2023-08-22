Rails.application.routes.draw do
  devise_for :users
  root to: 'robots#index'

  resources :users, only: %i[show] do
    resources :robots, only: %i[destroy]
    resources :bookings, only: %i[index show destroy]
  end

  resources :robots, only: %i[index show] do
    collection do
      get 'search'
    end
    resources :bookings, only: %i[new create]
  end
end
