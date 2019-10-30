Rails.application.routes.draw do

  resources :gossips
  resources :users
  resources :city
  root 'gossips#index'
  
  get '/team', to: 'static_pages#show_team'

  get '/contact', to: 'static_pages#show_contact'
end
