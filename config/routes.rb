Rails.application.routes.draw do

  get "/", to: "toys#index"
  root :to => "toys#index"
  resources :toys
  resources :users, only: [:new, :create, :show]
  get '/login', to: 'sessions#new'
  post'/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
 
end
# https://guides.rubyonrails.org/routing.html
