Rails.application.routes.draw do
  # Your routes here!

  namespace :api, defaults: { format: :json } do  
    resources :guests, only: %i(show index) do  
      resources :gifts, only: :index 
    end
    resources :parties, only: %i(show index) 
    resources :gifts, only: %i(show) 
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
