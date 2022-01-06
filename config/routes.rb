Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: "users/registrations",
    passwords: "users/passwords"
  }

  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'static_pages#home'

  resources :users
  resources :static_pages
end
