Rails.application.routes.draw do
  get 'password_resets/new'

  root 'albums#index'

  #########################################################
  # The "Golden 7" for accessing the "albums" resource

  # get '/albums/new' => 'albums#new', as: 'new_album'
  # post '/albums' => 'albums#create', as: 'albums'

  # get '/albums' => 'albums#index'
  # get '/albums/:id' => 'albums#show', as: 'album'

  # get '/albums/:id/edit' => 'albums#edit', as: 'edit_album'
  # patch '/albums/:id' => 'albums#update'

  # delete '/albums/:id' => 'albums#destroy'

  get "/users/:id" => 'users#show'
  get "/collections/:album_id" => 'collections#new'
  delete "collections/:album_id" => 'collections#destroy'

  get "/signup" => 'users#new'
  post "/users" => 'users#create'

  get "/login" => 'sessions#new'
  get "/logout" => 'sessions#destroy'
  post "/sessions" => 'sessions#create'

  get "/descriptions/increase/:id" => 'descriptions#increase'
  get "/descriptions/decrease/:id" => 'descriptions#decrease'
  get "/descriptions/new/:album_id" => 'descriptions#new'
  post "/descriptions" => 'descriptions#create'

  get "/reviews/increase/:id" => 'reviews#increase'
  get "/reviews/decrease/:id" => 'reviews#decrease'

  get "/tracks/new/:album_id" => 'tracks#new'
  post "/tracks" => 'tracks#create'
  get "/tracks/:id/edit" => 'tracks#edit'
  patch "/tracks/:id" => 'tracks#update'
  delete "/tracks/:id" => 'tracks#destroy'

  


  post "/reviews" => 'reviews#create'
  
  resources :albums
  resources :password_resets

end
