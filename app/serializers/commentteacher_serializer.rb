# == Schema Information
#
# Table name: commentteachers
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  teacher_id :integer
#  comment    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CommentteacherSerializer < ActiveModel::Serializer
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
		object.scorecommentteachers.where(positive: 1).size
	end
	def dislikes
		object.scorecommentteachers.where(negative: 1).size
	end
end
