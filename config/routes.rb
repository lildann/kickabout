Rails.application.routes.draw do
  get 'about/index'
  get 'games/index'
  post 'games/index'
  get "game_users/profile"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
	delete 'users/sign_out', to:'home#index'
  root to: "home#index"
  resources :games
  resources :game
  patch 'games/:id', to: 'games#update'
  resources :posts
  resources :game_users
  resources :about
end
