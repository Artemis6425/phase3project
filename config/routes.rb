Rails.application.routes.draw do
  get 'users/login', to: 'users#login', as: "loginuser"
  post 'users/login', to: 'users#signin'
  get 'users/logout', to: 'users#logout', as: "logoutuser"
  resources :users
  resources :games
  resources :runs

  #resources :games do
  #  resources :runs, only: [:index, :new, :edit]
  #end
  #get 'games/:id/new/', to: 'runs#new'
  #get 'games/:id/edit/:id2', to: 'runs#edit'
  get 'users/new', to: 'users#new', as: "newuser"
  get 'games/:id/runs', to: 'runs#index', as: "gameindex"
  get 'games/:id/runs/new', to: 'runs#new', as: "newrun"
  get 'games/:id/runs/:id2/edit', to: 'runs#edit', as: "editrun"
  get 'auth/:provider/callback', to: 'sessions#omniauth'
  get 'auth/failure', to: redirect('/')
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
