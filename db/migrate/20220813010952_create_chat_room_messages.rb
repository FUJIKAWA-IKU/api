class CreateChatRoomMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :chat_room_messages do |t|
      t.integer :chat_room_id, null: false
      t.integer :user_id, null: false
      t.text :message, null: false, limit: 500

      t.timestamps
    end
  end
end
