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
	attributes :id,:user_id, :teacher_id,:comment,:scorecommentteachers
end
