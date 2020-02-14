Rails.application.routes.draw do
  get 'static_pages/about'
  get '/stats', to: 'posts#stats'
  resources :posts
  root 'posts#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
