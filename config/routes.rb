Rails.application.routes.draw do
  get 'static_pages/about'
  get '/stats', to: 'posts#stats'
  resources :posts
  resources :comments
  get '/posts_with_tag/:id', to: 'posts#posts_with_tag', as: :posts_with_tag
  get '/posts_with_category/:id', to: 'posts#posts_with_category', as: :posts_with_category
  root 'posts#index'
  
    
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
