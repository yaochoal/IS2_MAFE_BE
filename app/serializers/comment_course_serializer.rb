# == Schema Information
#
# Table name: comment_courses
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  course_id  :integer
#  comment    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CommentCourseSerializer < ActiveModel::Serializer
	attributes :id,:comment,:user_id,:course_id
	has_many :score_comment_courses
end
