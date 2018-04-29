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
	attributes :id,:comment,:user,:image,:date,:likes,:dislikes
	
	def user
 	   User.find(object.user_id).username
	end

	def image
		User.find(object.user_id).avatar
	end

	def date
		object.created_at
	end

	def likes
		object.scorecommentresources.where(positive: 1).size
	end
	def dislikes
		object.scorecommentresources.where(negative: 1).size
	end
end
