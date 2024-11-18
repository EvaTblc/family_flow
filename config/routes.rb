Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "pages#home"

  resources :tasks, only: [:index, :show, :create, :update]
  resources :organizations, only: [:new, :create, :show, :destroy, :update]

  resources :users, only: [:index] do
    member do
      get :profile
    end
  end
end
