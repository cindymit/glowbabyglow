Rails.application.routes.draw do
  post '/auth/login', to: 'authentication#login'
  get '/auth/verify', to: 'authentication#verify'
  put '/comments/:comment_id/posts/:id', to: 'posts#add_comment'
  resources :comments, only: [:index, :show, :create]
  resources :posts
  resources :users, only: :create
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
