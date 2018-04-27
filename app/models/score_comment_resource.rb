# == Schema Information
#
# Table name: score_comment_resources
#
#  id                  :integer          not null, primary key
#  user_id             :integer
#  comment_resource_id :integer
#  negative            :integer
#  positive            :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class ScoreCommentResource < ApplicationRecord
	belongs_to :user, required: false
	belongs_to :comment_resource, required: false
end
