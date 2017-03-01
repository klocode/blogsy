Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/posts' => 'posts#index'
  get '/users' => 'users#index'
  post '/users' => 'users#create'
  get '/posts/:id' => 'posts#show'
  get '/posts/:id/comments' => 'posts#search'
  get '/users/:id/posts' => 'users#search'
  delete '/posts/:id' => 'posts#destroy'
  post '/posts/:id/upvote' => 'posts#upvote'



end
