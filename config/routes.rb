Rails.application.routes.draw do

  resources :gossips
  resources :users
  resources :sessions, only:[:new, :create, :destroy]
  root 'sessions#new'
  get 'welcome/', to: 'index#index', as: 'home'
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
