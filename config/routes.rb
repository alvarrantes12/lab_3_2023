Rails.application.routes.draw do
  resources :directors
  resources :movies
  root "dashboards#index"
end
