Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :beerposts
  resources :beercolours

  get 'welcome/index'
  root 'welcome#index'
end
