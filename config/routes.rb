Rails.application.routes.draw do

  resources :gossips
  root 'index#index'
  get 'welcome/:first_name', to: 'index#index', as: 'home'
  get 'users/:id', to: 'users#user', as: 'user'
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
