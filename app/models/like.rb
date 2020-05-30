# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  tweet_id   :integer          not null
#  active     :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Like < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  def up_like
    tweet.update_attributes(total_like: tweet.total_like +=1)
  end
  
  def down_like
    tweet.update_attributes(total_like: tweet.total_like -=1)
  end

 
end
