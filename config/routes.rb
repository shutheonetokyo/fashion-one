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

  resources :users, only: [:show]

  resources :areas

  resources :genres

  resources :shops do
    resource :likes, only: [:create, :destroy]
    resources :reviews
  end

end
