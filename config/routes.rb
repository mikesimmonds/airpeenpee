Rails.application.routes.draw do

  devise_for :accounts, controllers: { registrations: "registrations"}
  resources :open_times

  resources :users #, only: [:edit, :update] is this slow
  resources :toilets, :visits

  # devise_for :accounts, :controllers => { registrations: "accounts"}


  root to: 'toilets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
