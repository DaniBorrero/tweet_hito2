class TweetsController < ApplicationController 
  def index
    @tweets = Tweet.order(:created_at).reverse_order.page params[:page]
    @tweet = Tweet.new
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      flash[:notice] = "Fake Tweet creado con exito."      
    else
      flash[:notice] = "Fake Tweet  no pudo ser creado."      
    end
    redirect_to :tweets
  end

  def show    
    @tweet = Tweet.find(params[:id])
  end

  def edit
  end

 

  def update
  end

  def destroy
  end

  private
  def tweet_params
    params.require(:tweet).permit(:content, :image_url)
  end
end
