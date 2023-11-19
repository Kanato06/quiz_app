# アプリケーションのルーティング（URLとアクションのマッピング）を定義

Rails.application.routes.draw do
  root 'questions#index'

  get "up" => "rails/health#show", as: :rails_health_check
  resources :questions
  resources :scores, only: [:create]
  post 'questions/save_score', to: 'questions#save_score'
end
