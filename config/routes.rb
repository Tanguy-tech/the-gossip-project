Rails.application.routes.draw do

  resources :gossips, only: [:new, :create]
  
  get '/team', to: 'static_pages#show_team'

  get '/contact', to: 'static_pages#show_contact'

  get '/home', to: 'static_pages#homepage_user'

  get '/home/:user', to: 'static_pages#homepage_user'
  
  get 'home/gossips/:id', to: 'gossips#show'

  get '/gossips/new', to: 'gossips#new'

end
