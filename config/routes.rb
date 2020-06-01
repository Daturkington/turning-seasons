Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :recipes, only: [:index, :show] do
    resources :shopping_list_items, except: [:destroy]
    resources :reviews, only: [:new, :create, :update, :destroy]
  end
  resources :shopping_list_items, only: [:destroy]
  resources :shopping_lists
  resources :users, only: [:show]
  resources :favourites
  resources :markets, only: [:index]
end
