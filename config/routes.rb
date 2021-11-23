Rails.application.routes.draw do
  resources :users
  get "/", to: "toys#index"
  resources :toys
 
end
# https://guides.rubyonrails.org/routing.html
