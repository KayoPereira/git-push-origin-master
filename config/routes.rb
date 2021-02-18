Rails.application.routes.draw do
  get 'ingredients/new'
  get 'ingredients/create'
  get 'doses/new'
  get 'doses/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :new, :show, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
