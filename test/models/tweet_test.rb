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
require 'test_helper'

class TweetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
