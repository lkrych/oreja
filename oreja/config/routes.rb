Rails.application.routes.draw do
  get 'signup', to: 'users#new'
  
  resources :users
  resources :episodes
  resources :podcasts
  resources :providers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
