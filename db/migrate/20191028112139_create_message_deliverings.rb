class CreateMessageDeliverings < ActiveRecord::Migration[5.2]
  def change
    create_table :message_deliverings do |t|
       # 1-N association with recipients (users) table
       t.belongs_to :recipient, index: true
       # 1-N association with received_messages (private_messages) table
       t.belongs_to :received_message, index: true
      t.timestamps
    end
  end
end
