Rails.application.routes.draw do
  get 'signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users
  resources :episodes
  resources :podcasts
  resources :providers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
