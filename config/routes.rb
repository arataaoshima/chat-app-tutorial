Rails.application.routes.draw do
 
  get '/user/signup'
  get '/signup' => 'sessions#signup'
  post 'user/create' => 'sessions#user_create'
  root to: 'chatroom#index'
  get "/login" => 'sessions#new'
  post "/login" => "sessions#create"
  delete 'logout' => 'sessions#destroy'
  post 'message' => 'messages#create'
  
  mount ActionCable.server, at: '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
