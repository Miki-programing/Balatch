Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  resources :histories, only: [:index, :new, :create, :destroy]
  get "methods" => "pay_deposit_methods#index"
  resources :pay_deposit_methods, only: [:create, :destroy, :update]
end
