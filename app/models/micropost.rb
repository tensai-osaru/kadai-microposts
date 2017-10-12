class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :user_id, presence: true
  validates :email, presence: true, length: { maximum: 255 }
end
