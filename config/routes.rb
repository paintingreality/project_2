Rails.application.routes.draw do



root 'users#index'
resources :users
resources :comments

post '/users/:id ' => 'comments#create'

get '/post' => 'post#show'
# get '/comments/new' => 'comments#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# root GET    /                            users#index
#       users GET    /users(.:format)             users#index
#             POST   /users(.:format)             users#create
#    new_user GET    /users/new(.:format)         users#new
#   edit_user GET    /users/:id/edit(.:format)    users#edit
#        user GET    /users/:id(.:format)         users#show
#             PATCH  /users/:id(.:format)         users#update
#             PUT    /users/:id(.:format)         users#update
#             DELETE /users/:id(.:format)         users#destroy
#    comments GET    /comments(.:format)          comments#index
#             POST   /comments(.:format)          comments#create
# new_comment GET    /comments/new(.:format)      comments#new
# edit_comment GET    /comments/:id/edit(.:format) comments#edit
#     comment GET    /comments/:id(.:format)      comments#show
#             PATCH  /comments/:id(.:format)      comments#update
#             PUT    /comments/:id(.:format)      comments#update
#             DELETE /comments/:id(.:format)      comments#destroy
#        post GET    /post(.:format)              post#show
