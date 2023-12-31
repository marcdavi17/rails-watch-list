Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "lists#index"
  resources :lists, only: [:new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
  end

  # resources :movies, only: [:index, :destroy]
end
