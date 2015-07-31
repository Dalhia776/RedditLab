class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :vote
      t.integer :user_id
      t.reference :voteable, polymorphic: true
      t.timestamps null: false
    end
  end
end
