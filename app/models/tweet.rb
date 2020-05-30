# == Schema Information
#
# Table name: tweets
#
#  id            :integer          not null, primary key
#  content       :string
#  image_url     :string
#  total_like    :integer          default(0)
#  total_retweet :integer          default(0)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Tweet < ApplicationRecord
    belongs_to :user
    has_many :likes
    has_many :retweets    
    validates :content, presence: true
    paginates_per 50
end
