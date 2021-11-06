Rails.application.routes.draw do
  get 'about/index'
  get 'games/index'
  get "game_users/profile"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: "home#index"
  resources :games
  resources :game_users



end
