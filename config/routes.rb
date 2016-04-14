Rails.application.routes.draw do

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')

  resources :users
  resources :messages
  resources :sessions, only: [:create] 

  delete 'logout' => 'sessions#destroy'
  get '/conversations/:id', to: 'conversations#show'

  resources :results
  resources :songs
  get "/welcome/index" #, to: 'welcome#index'
  root 'results#index'

end