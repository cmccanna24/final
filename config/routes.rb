Rails.application.routes.draw do
  root 'albums#index'

  #########################################################
  # The "Golden 7" for accessing the "albums" resource

  get '/albums/new' => 'albums#new', as: 'new_album'
  post '/albums' => 'albums#create', as: 'albums'

  get '/albums' => 'albums#index'
  get '/albums/:id' => 'albums#show', as: 'album'

  get '/albums/:id/edit' => 'albums#edit', as: 'edit_album'
  patch '/albums/:id' => 'albums#update'

  delete '/albums/:id' => 'albums#destroy'

end
