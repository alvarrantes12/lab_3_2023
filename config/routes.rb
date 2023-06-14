Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"'
  resources :directors

  scope module: :api do
    resources :movies
  end

  root "dashboards#index"
end