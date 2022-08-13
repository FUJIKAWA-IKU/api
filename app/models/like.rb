class Like < ApplicationRecord
  belongs_to :user

  validates :from_user_id, presence: true
  validates :to_user_id, presence: true
  validates :status, presence: true, inclusion: {in: [true, false]}
end
