Rails.application.routes.draw do
  resources :directors
  scope module: :api do
    resources :movies
  end
  root "dashboards#index"
end
