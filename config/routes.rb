Rails.application.routes.draw do
  get 'dashboard/index'
  get 'dashboard/properties'
  get 'dashboard/reports'
  resources :properties
  devise_for :users
  root to: 'public#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
