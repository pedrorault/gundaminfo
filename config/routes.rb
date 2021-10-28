Rails.application.routes.draw do
  root "gundam_model#index"

  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  resources :articles
  resources :gundam_model

end
# https://guides.rubyonrails.org/routing.html
