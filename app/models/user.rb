class User < ApplicationRecord
  has_one :user_profile
  has_many :sns_url
  has_many :chat_room_user
  has_many :chat_room_message
  has_many :like

  validates :login_email, presence: true, uniqueness: true
  validates :login_password, presence: true, uniqueness: true, length: { minimum: 4, maximum: 16 }
end
