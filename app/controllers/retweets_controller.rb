class RetweetsController < ApplicationController
  before_action :authenticate_user! 

  def create
    @retweet = Retweet.new(user_id: current_user.id, tweet_id: params[:tweet_id])

    if @retweet.save      
      @retweet = Retweet.create(user_id: current_user.id, tweet_id: params[:tweet_id])
      @retweet.up_retweet
    end
    redirect_to :tweets
  end
end


