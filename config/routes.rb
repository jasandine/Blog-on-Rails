Rails.application.routes.draw do
  root :to => "posts#index"
  get '/new_post' => 'posts#new'
  post '/new_post' => 'posts#create'
  resources :posts do 
    resources :comments, :except => [:show, :index]
end
end
