Rails.application.routes.draw do

  resources :open_times

  resources :users, only: [:edit, :update]
  resources :toilets do
    resources :visits
  end

  devise_for :accounts, :controllers => { registrations: "registrations"}

  root to: 'toilets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
