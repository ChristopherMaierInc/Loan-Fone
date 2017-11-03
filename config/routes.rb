Rails.application.routes.draw do

  root 'pages#index'

  get '/new_fone', to: 'pages#new_fone'

  devise_for :users, controllers: { sessions: 'users/sessions' }

  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply, :restore, :mark_as_read
    end
    collection do
      delete :empty_trash
    end
  end

  resources :messages, only: [:new, :create]
  resources :users, only: [:index]

end
