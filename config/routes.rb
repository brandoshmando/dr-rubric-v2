Rails.application.routes.draw do

  devise_for :users, controllers: {sessions:'sessions'}, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout' }

  namespace :v1, defaults: { format: :json } do
  end

  post '/professors/', to: 'professor#create'
end
