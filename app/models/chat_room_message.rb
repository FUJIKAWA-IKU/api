class ChatRoomMessage < ApplicationRecord
  belongs_to :user
  belongs_to :chat_room

  validates :chat_room_id, presence: true
  validates :user_id, presence: true
  validates :message, presence: true, limit { maximum: 500 }
end
