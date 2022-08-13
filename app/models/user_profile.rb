class UserProfile < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :name, presence: true, uniqueness: true, length: { maximum: 20 }
  validates :age, length: { maximum: 3 }
  validates :self_introduction, length: { maximum: 2000 }
end
