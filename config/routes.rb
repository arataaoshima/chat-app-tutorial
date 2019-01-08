Rails.application.routes.draw do
 
  root to: 'chatroom#index'
  get "/login" => 'sessions#new'
  post "/login" => "sessions#create"
  delete 'logout' => 'sessions#destroy'
  post 'message' => 'messages#create'
  
  mount ActionCable.server, at: '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
