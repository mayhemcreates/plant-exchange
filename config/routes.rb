Rails.application.routes.draw do
  devise_for :users
  root "pages#home"

  resources :plants
  resources :categories, only: [:index, :show]
  resources :conversations, only: [:index, :create, :show] do
    resources :messages, only: :create
  end

end
