Rails.application.routes.draw do
  post 'likes/:tweet_id' , to: 'likes#create', as: 'likes'
  post 'retweets/:tweet_id' , to: 'retweets#create', as: 'retweets'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }    
  resources :tweets
  root to: "tweets#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
