# == Schema Information
#
# Table name: retweets
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  tweet_id   :integer          not null
#  active     :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Retweet < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  def up_retweet
    tweet.update_attributes(total_retweet: tweet.total_retweet +=1)
  end
end
