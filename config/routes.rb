Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :reports
   
      post "/login", to: "auth#login"
      get "/login", to: "auth#token_authenticate"
    end
  end
end

      # post "/auth", to: "auth#create"
      # get '/current_user', to: 'auth#show'

      # get "/auto_login", to: "auth#auto_login"
      # get "/user_is_authed", to: "auth#user_is_authed"
         # only: [:create, :update, :destroy, :show]
      # post '/users/:id/report', :to => 'user#show'
      # only: [:index, :create, :show]
