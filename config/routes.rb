Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :post_images, only: [:new, :index, :show]
  resources :books
  resources :homes
  get '/about', to: 'books#about', as: 'about'
  
end
