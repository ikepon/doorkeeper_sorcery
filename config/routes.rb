Rails.application.routes.draw do
  get 'users/create'

  get 'users/show'

  use_doorkeeper
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
