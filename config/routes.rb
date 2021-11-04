Rails.application.routes.draw do
  get 'games/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: "home#index"
  resources :games
  resources :game_users
end
