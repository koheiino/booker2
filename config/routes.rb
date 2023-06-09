Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'devise/sessions',
    registrations: 'devise/registrations'
  }
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :post_images, only: [:new, :index, :show]
  resources :users
  resources :books
  get 'home/about', to: 'homes#about', as: 'about'
  get 'top', to: 'homes#top', as: 'top_home'

end
