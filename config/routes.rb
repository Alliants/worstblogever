Rails.application.routes.draw do
  root to: "homepage#index"
  get 'homepage/index'
  resources :posts, only: [:create, :update]
end
