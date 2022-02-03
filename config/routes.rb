Rails.application.routes.draw do
  root "static_pages#home"

  devise_for :users, controllers: {
    registrations: "users/registrations",
    passwords: "users/passwords"
  }

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
  
  resources :users, only: [:show] do
    collection do
      get :likes
      get :reviews
    end
  end

  resources :areas
  
  resources :shops do
    resource :likes, only: [:create, :destroy]
    resources :reviews
  end
end
