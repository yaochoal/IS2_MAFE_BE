# == Schema Information
#
# Table name: commentcourses
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  course_id  :integer
#  comment    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CommentcourseSerializer < ActiveModel::Serializer
	attributes :id,:comment,:user_id,:course_id, :scorecommentcourses
	
	
end
