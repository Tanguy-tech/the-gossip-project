class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
       # 1-N association with users, gossips, comments
       t.belongs_to :user, index: true
       t.belongs_to :gossip, index: true
       t.belongs_to :comment, index: true
      t.timestamps
    end
  end
end
