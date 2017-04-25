Rails.application.routes.draw do



  # get 'sessions/new'
  #
  # get 'sessions/create'
  #
  # get 'sessions/destroy'

root 'users#index'
resources :users
resources :comments
resources :posts

get '/post/:id/new' => 'post#new'

delete '/logout' => 'sessions#destroy'
resources :sessions, only: [:new, :create]


post '/users/:id ' => 'comments#create'

get '/post' => 'post#show'
# get '/comments/new' => 'comments#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# Prefix Verb   URI Pattern                  Controller#Action
#         root GET    /                            users#index
#        users GET    /users(.:format)             users#index
#              POST   /users(.:format)             users#create
#     new_user GET    /users/new(.:format)         users#new
#    edit_user GET    /users/:id/edit(.:format)    users#edit
#         user GET    /users/:id(.:format)         users#show
#              PATCH  /users/:id(.:format)         users#update
#              PUT    /users/:id(.:format)         users#update
#              DELETE /users/:id(.:format)         users#destroy
#     comments GET    /comments(.:format)          comments#index
#              POST   /comments(.:format)          comments#create
#  new_comment GET    /comments/new(.:format)      comments#new
# edit_comment GET    /comments/:id/edit(.:format) comments#edit
#      comment GET    /comments/:id(.:format)      comments#show
#              PATCH  /comments/:id(.:format)      comments#update
#              PUT    /comments/:id(.:format)      comments#update
#              DELETE /comments/:id(.:format)      comments#destroy
#        posts GET    /posts(.:format)             posts#index
#              POST   /posts(.:format)             posts#create
#     new_post GET    /posts/new(.:format)         posts#new
#    edit_post GET    /posts/:id/edit(.:format)    posts#edit
#         post GET    /posts/:id(.:format)         posts#show
#              PATCH  /posts/:id(.:format)         posts#update
#              PUT    /posts/:id(.:format)         posts#update
#              DELETE /posts/:id(.:format)         posts#destroy
#       logout DELETE /logout(.:format)            sessions#destroy
#     sessions POST   /sessions(.:format)          sessions#create
#  new_session GET    /sessions/new(.:format)      sessions#new
#              POST   /users/:id%20(.:format)      comments#create
#              GET    /post(.:format)              post#show
