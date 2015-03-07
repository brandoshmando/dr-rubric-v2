Rails.application.routes.draw do

  #Custom Devise paths
  #Sessions
  devise_scope :user do
    post '/users/login/', to: 'sessions#create', as: :create_user_session
    delete '/users/logout/', to: 'sessions#destroy', as: :destroy_user_session

    #Professors
    post '/professors/', to: 'devise/registrations#create'
    post '/professors/password/', to: 'devise/passwords#create', as: :professor_password
    patch '/professors/password/', to: 'devise/passwords#update'
    put '/professors/password/', to: 'devise/passwords#update'
    post '/professors/unlock/', to: 'devise/unlocks#create', as: :professor_unlock

    #Assistants
    post '/assistants/', to: 'devise/registrations#create'
    post '/assistants/password/', to: 'devise/passwords#create', as: :assistant_password
    patch '/assistants/password/', to: 'devise/passwords#update'
    put '/assistants/password/', to: 'devise/passwords#update'
    post '/assistants/unlock/', to: 'devise/unlocks#create', as: :assistant_unlock
  end
  #Eventually when I want to make an api for the platform
  namespace :v1, defaults: { format: :json } do
  end
end
