Rails.application.routes.draw do
  devise_for :users
  root to: 'robots#index'

  get '/robots/category/:category', to: 'robots#category', as: :category_robots

  resources :users, only: %i[show] do
    resources :robots, only: %i[destroy]
  end

  resources :bookings, only: %i[destroy]

  resources :robots, only: %i[index show] do
    collection do
      get 'search'
    end
    resources :bookings, only: %i[new create]
  end
end
