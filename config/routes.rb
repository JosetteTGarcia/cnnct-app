Rails.application.routes.draw do
  
    
    resources :users
    resources :activities
    resources :gathering
    resources :interests
    resources :activity
  

    # post "/login", to: "sessions#create"
    # delete "/logout", to: "sessions#destroy"
    # post "/signup", to: "users#create"
    # get "/me", to: "users#show"

    
  

  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
