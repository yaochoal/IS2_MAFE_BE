# == Schema Information
#
# Table name: commentresources
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  resource_id :integer
#  comment     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CommentresourceSerializer < ActiveModel::Serializer
	attributes :id,:comment, :user_id, :resource_id,:scorecommentresources

end
