Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'
  resources :users, only: [:edit, :update, :show]
  resources :photos, only: [:create, :destroy]
  resources :events do
    resources :attends, only: %i(index create destroy)
  end
end
