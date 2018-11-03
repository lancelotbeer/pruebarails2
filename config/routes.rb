Rails.application.routes.draw do
  get 'works/index'
  resources :works, only: [:index, :show]do
  resources :to_buys, only: [:create, :destroy]

  end
  root to: "works#index"
  get 'to_buys/index', as: 'to_buy'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
