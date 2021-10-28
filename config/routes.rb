Rails.application.routes.draw do
  get 'gundam_model/index'
  get 'gundam_model/show'
  get 'gundam_model/new'
  get 'gundam_model/edit'
  get 'gundam_model/_form'
  root "articles#index"

  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  resources :articles

end
# https://guides.rubyonrails.org/routing.html
