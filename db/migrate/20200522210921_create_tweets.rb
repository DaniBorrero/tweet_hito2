class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :content
      t.string :image_url
      t.integer :total_like, default: 0
      t.integer :total_retweet, default: 0

      t.timestamps
    end
  end
end
