Dirtyinformation::Application.routes.draw do
  get '/login', controller: 'login', action: 'new'
  
  namespace :admin do
    root to: 'home#show'
  end
end
