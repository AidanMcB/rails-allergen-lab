Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :recipes
  resources :users 
  get('users/:id', to: "users#show")
  delete('users/:id', to: "users#destroy")
  resources :ingredients
end
