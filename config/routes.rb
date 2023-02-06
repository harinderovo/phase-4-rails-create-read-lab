Rails.application.routes.draw do
  # get '/plants', to: 'plants#index'
  # get '/plants/:id', to: 'plants#show'
  # get 'plants/price', to: 'plants#price'
  resources :plants, only: [:index, :show, :create]
end
