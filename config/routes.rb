Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :bars, only:[:index, :show] do
    resources :promotions, only: [:show]
  end

  resources :promotions, only: [:destroy] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index, :destroy, :edit, :update] do
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
