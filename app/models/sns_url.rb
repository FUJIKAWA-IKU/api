class SnsUrl < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :type, presence: true
  validates :sns_url, presence: true, uniqueness: true
end
