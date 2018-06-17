Rails.application.routes.draw do
  resources :articles
  
  root 'articles#index'
  
  # resources :notes
  
  post '/comments' => 'comments#create'
  
  delete '/comments/:id' => 'comments#destroy'
  
  
end
