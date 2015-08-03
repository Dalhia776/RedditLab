class AddDetailsToVote < ActiveRecord::Migration
  def change
    add_column :votes, :value, :integer
    add_column :votes, :link_id, :integer
  end
end
