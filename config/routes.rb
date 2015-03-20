Rails.application.routes.draw do
  resources :posts
  root :to => 'posts#index'
  get '/new_post' => 'posts#new'
  post '/new_post' => 'posts#create'
end
