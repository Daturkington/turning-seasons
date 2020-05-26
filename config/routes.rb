Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :recipes, only: [:index, :show]
  resources :shopping_lists
end

#homepage
#recipes/index(select recipes for shoppinglist new)
#shoppinglist/create
#shoppinglist/show
#recipe/show
