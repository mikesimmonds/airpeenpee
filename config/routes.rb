Rails.application.routes.draw do

  get 'open_times/index'

  get 'open_times/show'

  get 'open_times/new'

  get 'open_times/create'

  get 'open_times/edit'

  get 'open_times/update'

  get 'open_times/delete'

  resources :users, :toilets, :visits

  devise_for :accounts
  devise_for :installs
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
