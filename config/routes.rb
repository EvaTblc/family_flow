Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "pages#home"

  resources :organizations, only: [:index, :new, :create, :show, :destroy, :edit, :update] do
    resources :members, only: [:create]
    resources :messages, only: [:create, :new]
    resources :tasks, only: [:index, :show, :create, :update]
  end
  resources :users, only: [:index] do
    member do
      get :profile
    end
  end
end
