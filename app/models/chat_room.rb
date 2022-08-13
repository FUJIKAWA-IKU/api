class ChatRoom < ApplicationRecord
  has_many :chat_room_message
  has_many :chat_room_user
end
