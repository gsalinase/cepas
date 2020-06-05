Rails.application.routes.draw do
  get 'homes/index'
  resources :ratings
  resources :positions
  resources :enologists
  resources :magazines
  resources :contracts
  resources :strains
  resources :wines
  resources :assemblies
  root 'wines#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
