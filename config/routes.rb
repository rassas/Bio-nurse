Rails.application.routes.draw do
  post 'cart' => 'cart#create'
  get '/carts/:id' => 'cart#show'
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
