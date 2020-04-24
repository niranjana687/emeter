Rails.application.routes.draw do
  #get '/meters/:id', to: 'meters#show', as: 'meter'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :meters 
      
    end
  end
  
end
