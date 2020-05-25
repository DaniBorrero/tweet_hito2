class LikesController < ApplicationController
  before_action :authenticate_user! 

  def create
    @like = Like.find_by(user_id: current_user.id, tweet_id: params[:tweet_id])
    if @like && @like.active
      @like.update(active: false)
      @like.down_like
    elsif @like && !@like.active
      @like.update(active: true)
      @like.up_like
    else
      @like = Like.create(user_id: current_user.id, tweet_id: params[:tweet_id])
      @like.up_like
    end
    redirect_to :tweets
  end
end