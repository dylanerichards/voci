Rails.application.routes.draw do
  root "updates#index"

  resources :updates
  resources :one_on_ones
end
