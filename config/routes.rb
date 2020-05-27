Rails.application.routes.draw do
  root 'welcome#index'
  resources :reviews, only: [:index, :show]
  resources :musicals do
    resources :reviews, only: [:create, :update, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
