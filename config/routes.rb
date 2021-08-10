Rails.application.routes.draw do
  # verb '/path', to: 'controller#action', as: :prefix
  get '/restaurants', to: 'restaurants#index', as: :restaurants
  # Create a restaurant
  # 1. we need a form
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post '/restaurants', to: 'restaurants#create' # this already has prefix
  # See details about one restaurant
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  # Update a restaurant
  get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  patch '/restaurants/:id', to: 'restaurants#update'
  # Destroy a restaurant
  delete '/restaurants/:id', to: 'restaurants#destroy'
end
