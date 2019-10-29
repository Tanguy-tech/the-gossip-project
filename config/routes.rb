Rails.application.routes.draw do
  get '/team', to: 'static_pages#show_team'

  get '/contact', to: 'static_pages#show_contact'

  get '/home', to: 'static_pages#homepage'

  get '/home/:user', to: 'static_pages#homepage_user'
  
  get 'home/gossip/:id', to: 'gossip#show'
end
