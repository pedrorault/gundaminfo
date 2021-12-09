Rails.application.routes.draw do

  get "/", to: "toys#index"
  root :to => "toys#index"
  resources :toys do
    member do
      patch :change_moderado
    end
  end
  resources :users, only: [:new, :create, :show]
  get '/login', to: 'sessions#new'
  post'/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'  
  get '/comparacao', to: 'toys#compare'
  get '/moderacao', to: 'toys#moderar' 

end
# https://guides.rubyonrails.org/routing.html
