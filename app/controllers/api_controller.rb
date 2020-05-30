class ApiController < ActionController::API
  def new
    @tweet = Tweet.last(50).map do |f|  
      {
        id: f.id,
        content: f.content,
        user_id: f.user.id,
        like_count: f.total_like,
        retweets_count: f.total_retweet,
        retweetitted_from: f.retweets.first&.user&.id
      }    
    end
    render json: @tweet
  end

  def date_between
    #fecha1 = params[:fecha1].strptime('%y/%m/%d')
    fecha1 = Date.parse(params[:fecha1])    
    fecha2 = Date.parse(params[:fecha2])        
    
    @tweets = Tweet.where(created_at:fecha1..fecha2)
    render  json: @tweets 
  end
  
  def create_tweet
    
  end
  
end
