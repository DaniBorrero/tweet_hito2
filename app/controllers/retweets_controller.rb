class RetweetsController < ApplicationController
  before_action :authenticate_user! 

  def create    
    @retweet = Retweet.new(user_id: current_user.id, tweet_id: params[:tweet_id])
    if @retweet.save      
      @retweet = Retweet.create(user_id: current_user.id, tweet_id: params[:tweet_id]) 
      @retweet.up_retweet   
      Tweet.create(user_id: current_user.id, content: @retweet.tweet.content, image_url: @retweet.tweet.image_url)            
    end
    redirect_to :tweets
  end
end


