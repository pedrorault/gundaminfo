Rails.application.routes.draw do
  get "/", to: "toys#index"
  resources :toys
 
end
# https://guides.rubyonrails.org/routing.html
