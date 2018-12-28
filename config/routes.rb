Rails.application.routes.draw do
  resources :estados
  resources :vehiculos
  resources :solicituds
  resources :tpedidos
  resources :pedidos
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
