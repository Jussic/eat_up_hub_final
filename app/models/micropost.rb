class Micropost < ApplicationRecord
  belongs_to :user, dependent: :destroy
  validates :content, presence:true, length: {maximum: 140}
  validates :user_id, presence:true
end
