Rails.application.routes.draw do
  # doorkeeper で root_path が必要なので仮で設定
  root :to => 'users#root'

  use_doorkeeper

  resources :users, only: [:create, :show]
end
