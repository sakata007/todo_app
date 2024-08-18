Rails.application.routes.draw do
  get '/', to: 'trip#index', as: :top
  resources :trip, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :task, only: [:create, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
