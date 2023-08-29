Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :bars, only:[:index, :show] do
    resources :promotions, only: [:show] do
      resources :bookings, only: [:create]
    end
  end

  resources :bookings, only: [:index, :destroy] do
    resources :reviews, only: [:new, :create]
  end

  namespace :barman do
    resources :bars do
      resources :promotions, only: [:new, :create, :edit, :update, :destroy] do
        resources :bookings, only: [:index, :edit, :update]
      end
    end
  end
end
