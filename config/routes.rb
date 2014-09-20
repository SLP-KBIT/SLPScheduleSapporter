Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'

  resources :events do
    resources :attends, only: %i(index create destroy)
  end
end
