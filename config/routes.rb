Rails.application.routes.draw do
  resource :users

  root to: 'static_pages#home'

  get 'user/new', to: 'users#new'
  get 'users/:id', to: 'users#show'

  post 'users/create'

  get 'static_pages/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
