Rails.application.routes.draw do
  root "pages#index"

  namespace :api do
    namespace :v1 do
      resources :companies, params: :slug
    end
  end

  # Add a route for Active Storage
  get "rails/active_storage/blobs/redirect/*path", to: "active_storage/blobs/redirect#show"

  # Define a catch-all route for your React app
  get "*path", to: "pages#index", via: :all
end
