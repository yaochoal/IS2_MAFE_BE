class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :scorecomment
  validates :comment, presence: true
  
end