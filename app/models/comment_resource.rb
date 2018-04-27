# == Schema Information
#
# Table name: comment_resources
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  resource_id :integer
#  comment     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CommentResource < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :resource, required: false
  has_many :score_comment_resources
end
