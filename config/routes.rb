Rails.application.routes.draw do
  get '/team', to: 'team#show_team'

  get '/contact', to: 'getintouch#show_contact'

  get '/home', to: 'homepage#homepage'

  get '/home/:user', to: 'homepage#homepage_user'
  
  get 'home/gossip/:id', to: 'gossip#show_gossip'
end
