class Comment < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :scorecomment, required: false
end
