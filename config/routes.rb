Rails.application.routes.draw do
  get "/", to: "toys#index"
  root :to => "toys#index"
  resources :toys
  resources :users, only: [:new, :create, :show]

 
end
# https://guides.rubyonrails.org/routing.html
