Gitmadleaderboard::Application.routes.draw do
  resources :scores, only: [:index, :create]
  root to: 'scores#index'
end
