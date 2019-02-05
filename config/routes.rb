Rails.application.routes.draw do
  resources :gossips
  root 'index#home'
  get 'welcome/:first_name', to: 'index#home', as: 'home'
  get 'user/:id', to: 'user#user', as: 'user'
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
