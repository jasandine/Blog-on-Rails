Rails.application.routes.draw do
  devise_for :users
  root :to => "posts#index"
  get '/new_post' => 'posts#new'
  post '/new_post' => 'posts#create'
  resources :users 
  resources :posts do 
    resources :comments, :except => [:show, :index]
end
end
