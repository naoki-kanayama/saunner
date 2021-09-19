Rails.application.routes.draw do
  get 'chats/show'
  devise_for :users
  root to: 'posts#index'
  resources :users, only: [:show, :edit, :update]
  resources :posts do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  get '/posts/prefecture/:id', to: "posts#prefecture"
  post '/like/:post_id' => 'likes#like', as: 'like'
  delete '/like/:post_id' => 'likes#unlike', as: 'unlike'
  get 'chat/:id', to: 'chats#show', as: 'chat'
  resources :chats, only: [:create]
end
