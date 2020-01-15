Rails.application.routes.draw do
  get '/stats', to: 'posts#stats'
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
