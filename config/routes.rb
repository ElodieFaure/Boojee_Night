Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  
  resources :bars, only[:index, :show] do
    resources :promotions, only: [:show] do
      resources :bookings, only: [:index, :create, :destroy] do
        resources :reviews, only: [:new, :create]
      end
    end
  end
  namespace :barman do
    resources :bars do
      resources :promotions, only: [:new, :create, :edit, :update, :destroy] do
        resources :bookings, only: [:index, :edit, :update]
      end
    end
  end
end
