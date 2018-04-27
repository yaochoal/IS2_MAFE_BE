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

class CommentResourceSerializer < ActiveModel::Serializer
	attributes :id,:comment, :user_id, :resource_id
	has_many :score_comment_resources
end
