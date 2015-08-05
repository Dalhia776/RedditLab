class AddDetailsToLink < ActiveRecord::Migration
  def change
    add_column :links, :user_id, :integer
    add_column :links, :subreddit_id, :integer
  end
end
