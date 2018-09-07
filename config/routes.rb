Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  devise_scope :user do
    get '/users/sign_out', to:'devise/sessions#destroy'
  end

  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  get 'funaiwiki', to: 'pages#funaiwiki', as: :funaiwiki
  resources :returns
  resources :images, only: [ :destroy]
  namespace :shipping do
    resources :returns
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
