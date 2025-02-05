Rails.application.routes.draw do
      resources :panoramas, only: [ :create, :show, :index ]  # Allow only create, show, and index actions
end
