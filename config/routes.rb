Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts do
    resources :comments, only: :create
  end
  get '/posts/prefecture/:id', to: "posts#prefecture"
  resources :users, only: [:show, :edit, :update]
  post '/like/:post_id' => 'likes#like', as: 'like'
  delete '/like/:post_id' => 'likes#unlike', as: 'unlike'
end
